@interface DAAgent
+ (id)launchingAgentWithAccount:(id)account;
- (BOOL)monitorFoldersWithSyncKeyMap:(id)map;
- (DAAgent)initWithAccount:(id)account;
- (DATrustHandler)trustHandler;
- (id)description;
- (id)stateString;
- (void)_reachabilityChanged:(id)changed;
- (void)observeReachabilityWithBlock:(id)block;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)resumeMonitoringFoldersWithSyncKeyMap:(id)map;
- (void)saveXpcActivity:(id)activity;
- (void)shutdown;
- (void)stopObservingReachability;
@end

@implementation DAAgent

- (DAAgent)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = DAAgent;
  v5 = [(DAAgent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DAAgent *)v5 setAccount:accountCopy];
    [accountCopy addToCoreDAVLoggingDelegates];
  }

  return v6;
}

+ (id)launchingAgentWithAccount:(id)account
{
  accountCopy = account;
  v5 = [[self alloc] initWithAccount:accountCopy];

  return v5;
}

- (DATrustHandler)trustHandler
{
  account = [(DAAgent *)self account];
  trustHandler = [account trustHandler];

  return trustHandler;
}

- (id)stateString
{
  account = [(DAAgent *)self account];
  stateString = [account stateString];

  return stateString;
}

- (void)_reachabilityChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = changedCopy;
    _os_log_impl(&dword_2424DF000, v5, v6, "Reachability changed notification %@", &v15, 0xCu);
  }

  name = [changedCopy name];
  v8 = [name isEqualToString:*MEMORY[0x277CEC508]];

  if (v8)
  {
    userInfo = [changedCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEC510]];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      if ([(DAAgent *)self syncWhenReachable])
      {
        networkReachableBlock = [(DAAgent *)self networkReachableBlock];

        if (networkReachableBlock)
        {
          [(DAAgent *)self setSyncWhenReachable:0];
          networkReachableBlock2 = [(DAAgent *)self networkReachableBlock];
          networkReachableBlock2[2]();
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)observeReachabilityWithBlock:(id)block
{
  [(DAAgent *)self setNetworkReachableBlock:block];
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] addNetworkReachableObserver:self selector:sel__reachabilityChanged_];
}

- (void)stopObservingReachability
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

  [(DAAgent *)self setNetworkReachableBlock:0];
}

- (BOOL)monitorFoldersWithSyncKeyMap:(id)map
{
  mapCopy = map;
  account = [(DAAgent *)self account];
  allKeys = [mapCopy allKeys];

  LOBYTE(mapCopy) = [account monitorFoldersWithIDs:allKeys];
  return mapCopy;
}

- (void)resumeMonitoringFoldersWithSyncKeyMap:(id)map
{
  mapCopy = map;
  account = [(DAAgent *)self account];
  allKeys = [mapCopy allKeys];

  [account resumeMonitoringFoldersWithIDs:allKeys];
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(DAAgent *)self setIsMonitoring:0];
  blockCopy[2](blockCopy, self);
}

- (void)shutdown
{
  account = [(DAAgent *)self account];
  [account shutdown];

  account2 = [(DAAgent *)self account];
  [account2 removeFromCoreDAVLoggingDelegates];

  [(DAAgent *)self setAccount:0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  account = [(DAAgent *)self account];
  accountID = [account accountID];
  account2 = [(DAAgent *)self account];
  accountDescription = [account2 accountDescription];
  account3 = [(DAAgent *)self account];
  protocolVersion = [account3 protocolVersion];
  v11 = [v3 stringWithFormat:@"<%@: %p - accountID: %@, displayName: %@, protocolVersion: %@>", v4, self, accountID, accountDescription, protocolVersion];

  return v11;
}

- (void)saveXpcActivity:(id)activity
{
  activityCopy = activity;
  account = [(DAAgent *)self account];
  [account saveXpcActivity:activityCopy];
}

@end