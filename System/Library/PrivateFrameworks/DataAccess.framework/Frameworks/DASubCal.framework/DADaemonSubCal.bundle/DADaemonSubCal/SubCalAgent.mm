@interface SubCalAgent
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)scheduleIdentifier;
- (void)accountDidCompleteRefresh:(id)a3 withError:(id)a4;
- (void)refreshCollections:(id)a3 withReason:(int)a4;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
@end

@implementation SubCalAgent

- (void)startMonitoring
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_0, v3, v4, "%@ asked to start monitoring", &v9, 0xCu);
  }

  [(SubCalAgent *)self setIsMonitoring:1];
  v6 = [(SubCalAgent *)self account];
  [v6 setDelegate:self];

  v7 = [(SubCalAgent *)self account];
  [v7 monitorFoldersWithIDs:0];

  v8 = +[DARefreshManager sharedManager];
  [v8 registerDelegate:self];
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_0, v5, v6, "%@ asked to stop monitoring", &v10, 0xCu);
  }

  v8 = [(SubCalAgent *)self account];
  [v8 stopMonitoringFolders];

  [(SubCalAgent *)self setIsMonitoring:0];
  [(SubCalAgent *)self stopObservingReachability];
  v9 = +[DARefreshManager sharedManager];
  [v9 unregisterDelegate:self];

  v4[2](v4, self);
}

- (void)accountDidCompleteRefresh:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSubCalReachabilityError])
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(SubCalAgent *)self account];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_0, v8, v9, "Account %@ couldn't reach the server. Monitoring for reachability.", &buf, 0xCu);
    }

    [(SubCalAgent *)self setSyncWhenReachable:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_489C;
    v16 = sub_48AC;
    v17 = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_48B4;
    v12[3] = &unk_1C508;
    v12[4] = &buf;
    [(SubCalAgent *)v17 observeReachabilityWithBlock:v12];
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [(SubCalAgent *)self setSyncWhenReachable:0];
  }

  v11 = +[DARefreshManager sharedManager];
  [v11 delegateDidCompleteRefresh:self];
}

- (void)refreshCollections:(id)a3 withReason:(int)a4
{
  v6 = [a3 allObjects];
  [(SubCalAgent *)self syncFolderIDs:v6 forDataclasses:4 isUserRequested:a4 == 3];
}

- (NSString)scheduleIdentifier
{
  v2 = [(SubCalAgent *)self account];
  v3 = [v2 scheduleIdentifier];

  return v3;
}

- (NSString)onBehalfOfBundleIdentifier
{
  v2 = [(SubCalAgent *)self account];
  v3 = [v2 onBehalfOfBundleIdentifier];

  return v3;
}

@end