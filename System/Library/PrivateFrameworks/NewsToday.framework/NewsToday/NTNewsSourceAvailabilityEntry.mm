@interface NTNewsSourceAvailabilityEntry
- (NTNewsSourceAvailabilityEntry)init;
- (NTNewsSourceAvailabilityEntry)initWithNetworkReachability:(id)a3 queue:(id)a4;
@end

@implementation NTNewsSourceAvailabilityEntry

- (NTNewsSourceAvailabilityEntry)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsSourceAvailabilityEntry init]";
    v10 = 2080;
    v11 = "NTNewsSourceAvailabilityEntry.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsSourceAvailabilityEntry init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsSourceAvailabilityEntry)initWithNetworkReachability:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsSourceAvailabilityEntry initWithNetworkReachability:queue:];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsSourceAvailabilityEntry initWithNetworkReachability:queue:];
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = NTNewsSourceAvailabilityEntry;
  v9 = [(NTNewsSourceAvailabilityEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_networkReachability, a3);
    objc_storeStrong(&v10->_queue, a4);
    v10->_available = [v7 offlineReason] != 3;
  }

  return v10;
}

- (void)initWithNetworkReachability:queue:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
  *buf = 136315906;
  v3 = "[NTNewsSourceAvailabilityEntry initWithNetworkReachability:queue:]";
  v4 = 2080;
  v5 = "NTNewsSourceAvailabilityEntry.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithNetworkReachability:queue:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
  *buf = 136315906;
  v3 = "[NTNewsSourceAvailabilityEntry initWithNetworkReachability:queue:]";
  v4 = 2080;
  v5 = "NTNewsSourceAvailabilityEntry.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end