--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS settings (
  key varchar NOT NULL,
  value varchar
);

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS voters (
  id SERIAL PRIMARY KEY,
  address varchar NOT NULL,
  username varchar,
  balance double precision NOT NULL,
  poolpercent double precision NOT NULL,
  total double precision NOT NULL,
  active boolean NOT NULL,
  status integer NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `poolfees`
--

CREATE TABLE IF NOT EXISTS poolfees (
  id SERIAL PRIMARY KEY,
  address varchar NOT NULL,
  balance double precision NOT NULL,
  percent double precision NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `voters balance history`
--

CREATE TABLE IF NOT EXISTS balance_history (
  id SERIAL PRIMARY KEY,
  voter_id integer NOT NULL REFERENCES voters,
  balance double precision NOT NULL,
  timestamp varchar NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `voters withdrawal history`
--

CREATE TABLE IF NOT EXISTS withdrawal_history (
  id SERIAL PRIMARY KEY,
  voter_id integer NOT NULL REFERENCES voters,
  reward double precision NOT NULL,
  fees varchar NOT NULL,
  txid varchar NOT NULL,
  timestamp varchar NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `pool statistic history`
--

CREATE TABLE IF NOT EXISTS pool_history (
  approval real NOT NULL,
  rank int NOT NULL,
  balance double precision NOT NULL,
  vcount int NOT NULL,
  timestamp varchar NOT NULL
);

-- --------------------------------------------------------