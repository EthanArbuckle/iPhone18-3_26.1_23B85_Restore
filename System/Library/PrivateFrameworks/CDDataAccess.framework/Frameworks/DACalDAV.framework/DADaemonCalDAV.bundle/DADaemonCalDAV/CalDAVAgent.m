@interface CalDAVAgent
+ (id)launchingAgentWithAccount:(id)a3;
- (CalDAVAgent)initWithAccount:(id)a3;
- (id)initForLaunchingWithAccount:(id)a3;
- (void)_setupNotifications;
- (void)_validateAndSync;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)reallyRefresh;
- (void)refreshDidCompleteWithError:(id)a3;
- (void)refreshFolderListRequireChangedFolders:(BOOL)a3 isUserRequested:(BOOL)a4;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
@end

@implementation CalDAVAgent

- (CalDAVAgent)initWithAccount:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v7 initWithAccount:v4];
  if (v5)
  {
    [v4 setConsumer:v5];
    [v4 bumpRefreshReason:32];
  }

  return v5;
}

- (id)initForLaunchingWithAccount:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v7 initWithAccount:v4];
  if (v5)
  {
    [v4 setConsumer:v5];
    [v4 bumpRefreshReason:1];
  }

  return v5;
}

+ (id)launchingAgentWithAccount:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForLaunchingWithAccount:v4];

  return v5;
}

- (void)_validateAndSync
{
  if ([(CalDAVAgent *)self isWaitingForPassword])
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [(CalDAVAgent *)self account];
      v6 = [v5 accountDescription];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v3, v4, "Account %@ is waiting for a password, so we're going to ignore this refresh request", buf, 0xCu);
    }

LABEL_8:

    return;
  }

  v7 = [(CalDAVAgent *)self account];
  v8 = [v7 shouldAutodiscoverAccountProperties];

  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v10, "Account doesn't have a principal URL. Running autodiscovery.", buf, 2u);
    }

    v3 = [(CalDAVAgent *)self account];
    [v3 discoverInitialPropertiesWithConsumer:self];
    goto LABEL_8;
  }

  v11 = [(CalDAVAgent *)self account];
  [v11 _refresh];
}

- (void)reallyRefresh
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(CalDAVAgent *)self account];
    v6 = [v5 accountDescription];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v3, v4, "Account %@ is refreshing in response to a calendar database change", &v9, 0xCu);
  }

  v7 = [(CalDAVAgent *)self account];
  [v7 bumpRefreshReason:2];

  v8 = [(CalDAVAgent *)self account];
  [v8 setFullRefresh:1];

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)_setupNotifications
{
  objc_initWeak(&location, self);
  v3 = +[DADAgentManager sharedManager];
  v4 = [v3 rem_localDBWatcher];

  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v5, v6, "DDDDDDDDDD: Registering %p for database change notifications to watcher %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1788;
  v7[3] = &unk_20470;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v4 registerConcernedRemindersParty:self withChangedBlock:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [v7 domain];
  v9 = DAAccountValidationDomain;
  if ([v8 isEqualToString:DAAccountValidationDomain])
  {
    v10 = [v7 code];

    if (v10 == &stru_20.flags + 3)
    {
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v11, v12))
      {
        v13 = [(CalDAVAgent *)self account];
        v14 = [v13 accountDescription];
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&dword_0, v11, v12, "Validation for account %@ was cancelled, so we're not going to save the account properties we just discovered. Better luck next time.", buf, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [v7 domain];
  if ([v15 isEqualToString:v9])
  {
    v16 = [v7 code];

    if (v16 == &stru_20.flags + 2)
    {
      [(CalDAVAgent *)self setIsWaitingForPassword:1];
      v11 = [(CalDAVAgent *)self account];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1B60;
      v26[3] = &unk_20498;
      v26[4] = self;
      [v11 handleValidationError:v7 completion:v26];
LABEL_9:

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v5)
  {
    v17 = [(CalDAVAgent *)self account];
    [v17 setShouldDoInitialAutodiscovery:0];

    v18 = [(CalDAVAgent *)self account];
    [v18 saveAccountProperties];

    v19 = [(CalDAVAgent *)self account];
    [v19 setSafeToRefresh:1];
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v20, v21))
    {
      v22 = [(CalDAVAgent *)self account];
      v23 = [v22 accountDescription];
      *buf = 138412290;
      v28 = v23;
      _os_log_impl(&dword_0, v20, v21, "Account %@ can't figure out its principalPath. ", buf, 0xCu);
    }

    if (statusAndErrorIndicateWeShouldTurnOnReachability())
    {
      v24 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, v25, "We'll refresh if we find a better network connection.", buf, 2u);
      }

      [(CalDAVAgent *)self setSyncWhenReachable:1];
    }
  }

LABEL_19:
}

- (void)startMonitoring
{
  v3 = [(CalDAVAgent *)self account];
  if ([v3 enabledForDADataclass:4])
  {
  }

  else
  {
    v4 = [(CalDAVAgent *)self account];
    v5 = [v4 enabledForDADataclass:16];

    if (!v5)
    {
      return;
    }
  }

  [(CalDAVAgent *)self setIsMonitoring:1];
  v6 = [(CalDAVAgent *)self account];
  [v6 setFullRefresh:1];

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [(CalDAVAgent *)self account];
    v10 = [v9 accountDescription];
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_0, v7, v8, "CalDAV has started monitoring for the account %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1F94;
  v17[3] = &unk_204C0;
  objc_copyWeak(&v18, buf);
  [(CalDAVAgent *)self observeReachabilityWithBlock:v17];
  v11 = [(CalDAVAgent *)self account];
  v12 = [v11 shouldDoInitialAutodiscovery];

  if (v12)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v13, v14, "Account doesn't have a principal URL. Running autodiscovery.", v16, 2u);
    }

    v15 = [(CalDAVAgent *)self account];
    [v15 discoverInitialPropertiesWithConsumer:self];
  }

  else
  {
    v15 = [(CalDAVAgent *)self account];
    [v15 setSafeToRefresh:1];
  }

  [(CalDAVAgent *)self _setupNotifications];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(CalDAVAgent *)self setIsMonitoring:0];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, v6, "The CalDAV agent was told to stop monitoring.", buf, 2u);
  }

  [(CalDAVAgent *)self stopObservingReachability];
  v7 = +[DADAgentManager sharedManager];
  v8 = [v7 rem_localDBWatcher];
  [v8 removeConcernedRemindersParty:self];

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v6))
  {
    *buf = 134217984;
    v15 = self;
    _os_log_impl(&dword_0, v9, v6, "Unregistered %p for database change notifications", buf, 0xCu);
  }

  v10 = [(CalDAVAgent *)self account];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2200;
  v12[3] = &unk_204E8;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [v10 cancelRefreshWithCompletion:v12];
}

- (void)refreshDidCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_0, v5, v6, "Refresh completed with this error: %@", &v11, 0xCu);
  }

  ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();
  if (ShouldTurnOnReachability)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v8, v9, "We encountered a network error when refreshing. Scheduling a refresh for when the network reachability changes", &v11, 2u);
    }

    v10 = [(CalDAVAgent *)self account];
    [v10 setFullRefresh:1];
  }

  [(CalDAVAgent *)self setSyncWhenReachable:ShouldTurnOnReachability];
}

- (void)refreshFolderListRequireChangedFolders:(BOOL)a3 isUserRequested:(BOOL)a4
{
  v4 = a4;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(CalDAVAgent *)self account];
    v9 = [v8 accountDescription];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_0, v6, v7, "Account %@ was told to refresh its folder list", &v11, 0xCu);
  }

  if (v4)
  {
    v10 = [(CalDAVAgent *)self account];
    [v10 bumpRefreshReason:16];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(CalDAVAgent *)self account];
    v11 = [v10 accountDescription];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_0, v8, v9, "Account %@ was told to sync the folders %@", &v14, 0x16u);
  }

  v12 = [(CalDAVAgent *)self account];
  [v12 setFullRefresh:1];

  if (v5)
  {
    v13 = [(CalDAVAgent *)self account];
    [v13 bumpRefreshReason:16];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

@end