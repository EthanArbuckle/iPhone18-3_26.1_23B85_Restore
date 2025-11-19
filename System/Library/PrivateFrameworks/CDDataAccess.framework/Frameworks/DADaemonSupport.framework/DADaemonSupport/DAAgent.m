@interface DAAgent
+ (id)launchingAgentWithAccount:(id)a3;
- (BOOL)monitorFoldersWithSyncKeyMap:(id)a3;
- (DAAgent)initWithAccount:(id)a3;
- (DATrustHandler)trustHandler;
- (id)description;
- (id)stateString;
- (void)_reachabilityChanged:(id)a3;
- (void)observeReachabilityWithBlock:(id)a3;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)resumeMonitoringFoldersWithSyncKeyMap:(id)a3;
- (void)saveXpcActivity:(id)a3;
- (void)shutdown;
- (void)stopObservingReachability;
@end

@implementation DAAgent

- (DAAgent)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DAAgent;
  v5 = [(DAAgent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DAAgent *)v5 setAccount:v4];
    [v4 addToCoreDAVLoggingDelegates];
  }

  return v6;
}

+ (id)launchingAgentWithAccount:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccount:v4];

  return v5;
}

- (DATrustHandler)trustHandler
{
  v2 = [(DAAgent *)self account];
  v3 = [v2 trustHandler];

  return v3;
}

- (id)stateString
{
  v2 = [(DAAgent *)self account];
  v3 = [v2 stateString];

  return v3;
}

- (void)_reachabilityChanged:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_2424DF000, v5, v6, "Reachability changed notification %@", &v15, 0xCu);
  }

  v7 = [v4 name];
  v8 = [v7 isEqualToString:*MEMORY[0x277CEC508]];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CEC510]];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      if ([(DAAgent *)self syncWhenReachable])
      {
        v12 = [(DAAgent *)self networkReachableBlock];

        if (v12)
        {
          [(DAAgent *)self setSyncWhenReachable:0];
          v13 = [(DAAgent *)self networkReachableBlock];
          v13[2]();
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)observeReachabilityWithBlock:(id)a3
{
  [(DAAgent *)self setNetworkReachableBlock:a3];
  v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v4 addNetworkReachableObserver:self selector:sel__reachabilityChanged_];
}

- (void)stopObservingReachability
{
  v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  [(DAAgent *)self setNetworkReachableBlock:0];
}

- (BOOL)monitorFoldersWithSyncKeyMap:(id)a3
{
  v4 = a3;
  v5 = [(DAAgent *)self account];
  v6 = [v4 allKeys];

  LOBYTE(v4) = [v5 monitorFoldersWithIDs:v6];
  return v4;
}

- (void)resumeMonitoringFoldersWithSyncKeyMap:(id)a3
{
  v4 = a3;
  v6 = [(DAAgent *)self account];
  v5 = [v4 allKeys];

  [v6 resumeMonitoringFoldersWithIDs:v5];
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(DAAgent *)self setIsMonitoring:0];
  v4[2](v4, self);
}

- (void)shutdown
{
  v3 = [(DAAgent *)self account];
  [v3 shutdown];

  v4 = [(DAAgent *)self account];
  [v4 removeFromCoreDAVLoggingDelegates];

  [(DAAgent *)self setAccount:0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DAAgent *)self account];
  v6 = [v5 accountID];
  v7 = [(DAAgent *)self account];
  v8 = [v7 accountDescription];
  v9 = [(DAAgent *)self account];
  v10 = [v9 protocolVersion];
  v11 = [v3 stringWithFormat:@"<%@: %p - accountID: %@, displayName: %@, protocolVersion: %@>", v4, self, v6, v8, v10];

  return v11;
}

- (void)saveXpcActivity:(id)a3
{
  v4 = a3;
  v5 = [(DAAgent *)self account];
  [v5 saveXpcActivity:v4];
}

@end