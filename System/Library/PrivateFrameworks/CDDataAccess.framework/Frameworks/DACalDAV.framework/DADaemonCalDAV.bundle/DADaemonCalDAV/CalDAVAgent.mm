@interface CalDAVAgent
+ (id)launchingAgentWithAccount:(id)account;
- (CalDAVAgent)initWithAccount:(id)account;
- (id)initForLaunchingWithAccount:(id)account;
- (void)_setupNotifications;
- (void)_validateAndSync;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)reallyRefresh;
- (void)refreshDidCompleteWithError:(id)error;
- (void)refreshFolderListRequireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
@end

@implementation CalDAVAgent

- (CalDAVAgent)initWithAccount:(id)account
{
  accountCopy = account;
  v7.receiver = self;
  v7.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v7 initWithAccount:accountCopy];
  if (v5)
  {
    [accountCopy setConsumer:v5];
    [accountCopy bumpRefreshReason:32];
  }

  return v5;
}

- (id)initForLaunchingWithAccount:(id)account
{
  accountCopy = account;
  v7.receiver = self;
  v7.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v7 initWithAccount:accountCopy];
  if (v5)
  {
    [accountCopy setConsumer:v5];
    [accountCopy bumpRefreshReason:1];
  }

  return v5;
}

+ (id)launchingAgentWithAccount:(id)account
{
  accountCopy = account;
  v5 = [[self alloc] initForLaunchingWithAccount:accountCopy];

  return v5;
}

- (void)_validateAndSync
{
  if ([(CalDAVAgent *)self isWaitingForPassword])
  {
    account3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(account3, v4))
    {
      account = [(CalDAVAgent *)self account];
      accountDescription = [account accountDescription];
      *buf = 138412290;
      v13 = accountDescription;
      _os_log_impl(&dword_0, account3, v4, "Account %@ is waiting for a password, so we're going to ignore this refresh request", buf, 0xCu);
    }

LABEL_8:

    return;
  }

  account2 = [(CalDAVAgent *)self account];
  shouldAutodiscoverAccountProperties = [account2 shouldAutodiscoverAccountProperties];

  if (shouldAutodiscoverAccountProperties)
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v10, "Account doesn't have a principal URL. Running autodiscovery.", buf, 2u);
    }

    account3 = [(CalDAVAgent *)self account];
    [account3 discoverInitialPropertiesWithConsumer:self];
    goto LABEL_8;
  }

  account4 = [(CalDAVAgent *)self account];
  [account4 _refresh];
}

- (void)reallyRefresh
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    account = [(CalDAVAgent *)self account];
    accountDescription = [account accountDescription];
    v9 = 138412290;
    v10 = accountDescription;
    _os_log_impl(&dword_0, v3, v4, "Account %@ is refreshing in response to a calendar database change", &v9, 0xCu);
  }

  account2 = [(CalDAVAgent *)self account];
  [account2 bumpRefreshReason:2];

  account3 = [(CalDAVAgent *)self account];
  [account3 setFullRefresh:1];

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)_setupNotifications
{
  objc_initWeak(&location, self);
  v3 = +[DADAgentManager sharedManager];
  rem_localDBWatcher = [v3 rem_localDBWatcher];

  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = rem_localDBWatcher;
    _os_log_impl(&dword_0, v5, v6, "DDDDDDDDDD: Registering %p for database change notifications to watcher %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1788;
  v7[3] = &unk_20470;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [rem_localDBWatcher registerConcernedRemindersParty:self withChangedBlock:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  errorCopy = error;
  domain = [errorCopy domain];
  v9 = DAAccountValidationDomain;
  if ([domain isEqualToString:DAAccountValidationDomain])
  {
    code = [errorCopy code];

    if (code == &stru_20.flags + 3)
    {
      account2 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(account2, v12))
      {
        account = [(CalDAVAgent *)self account];
        accountDescription = [account accountDescription];
        *buf = 138412290;
        v28 = accountDescription;
        _os_log_impl(&dword_0, account2, v12, "Validation for account %@ was cancelled, so we're not going to save the account properties we just discovered. Better luck next time.", buf, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v9])
  {
    code2 = [errorCopy code];

    if (code2 == &stru_20.flags + 2)
    {
      [(CalDAVAgent *)self setIsWaitingForPassword:1];
      account2 = [(CalDAVAgent *)self account];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1B60;
      v26[3] = &unk_20498;
      v26[4] = self;
      [account2 handleValidationError:errorCopy completion:v26];
LABEL_9:

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (validCopy)
  {
    account3 = [(CalDAVAgent *)self account];
    [account3 setShouldDoInitialAutodiscovery:0];

    account4 = [(CalDAVAgent *)self account];
    [account4 saveAccountProperties];

    account5 = [(CalDAVAgent *)self account];
    [account5 setSafeToRefresh:1];
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v20, v21))
    {
      account6 = [(CalDAVAgent *)self account];
      accountDescription2 = [account6 accountDescription];
      *buf = 138412290;
      v28 = accountDescription2;
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
  account = [(CalDAVAgent *)self account];
  if ([account enabledForDADataclass:4])
  {
  }

  else
  {
    account2 = [(CalDAVAgent *)self account];
    v5 = [account2 enabledForDADataclass:16];

    if (!v5)
    {
      return;
    }
  }

  [(CalDAVAgent *)self setIsMonitoring:1];
  account3 = [(CalDAVAgent *)self account];
  [account3 setFullRefresh:1];

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v7, v8))
  {
    account4 = [(CalDAVAgent *)self account];
    accountDescription = [account4 accountDescription];
    *buf = 138412290;
    v20 = accountDescription;
    _os_log_impl(&dword_0, v7, v8, "CalDAV has started monitoring for the account %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1F94;
  v17[3] = &unk_204C0;
  objc_copyWeak(&v18, buf);
  [(CalDAVAgent *)self observeReachabilityWithBlock:v17];
  account5 = [(CalDAVAgent *)self account];
  shouldDoInitialAutodiscovery = [account5 shouldDoInitialAutodiscovery];

  if (shouldDoInitialAutodiscovery)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v13, v14, "Account doesn't have a principal URL. Running autodiscovery.", v16, 2u);
    }

    account6 = [(CalDAVAgent *)self account];
    [account6 discoverInitialPropertiesWithConsumer:self];
  }

  else
  {
    account6 = [(CalDAVAgent *)self account];
    [account6 setSafeToRefresh:1];
  }

  [(CalDAVAgent *)self _setupNotifications];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  rem_localDBWatcher = [v7 rem_localDBWatcher];
  [rem_localDBWatcher removeConcernedRemindersParty:self];

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v6))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v9, v6, "Unregistered %p for database change notifications", buf, 0xCu);
  }

  account = [(CalDAVAgent *)self account];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2200;
  v12[3] = &unk_204E8;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [account cancelRefreshWithCompletion:v12];
}

- (void)refreshDidCompleteWithError:(id)error
{
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412290;
    v12 = errorCopy;
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

    account = [(CalDAVAgent *)self account];
    [account setFullRefresh:1];
  }

  [(CalDAVAgent *)self setSyncWhenReachable:ShouldTurnOnReachability];
}

- (void)refreshFolderListRequireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    account = [(CalDAVAgent *)self account];
    accountDescription = [account accountDescription];
    v11 = 138412290;
    v12 = accountDescription;
    _os_log_impl(&dword_0, v6, v7, "Account %@ was told to refresh its folder list", &v11, 0xCu);
  }

  if (requestedCopy)
  {
    account2 = [(CalDAVAgent *)self account];
    [account2 bumpRefreshReason:16];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dsCopy = ds;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    account = [(CalDAVAgent *)self account];
    accountDescription = [account accountDescription];
    v14 = 138412546;
    v15 = accountDescription;
    v16 = 2112;
    v17 = dsCopy;
    _os_log_impl(&dword_0, v8, v9, "Account %@ was told to sync the folders %@", &v14, 0x16u);
  }

  account2 = [(CalDAVAgent *)self account];
  [account2 setFullRefresh:1];

  if (requestedCopy)
  {
    account3 = [(CalDAVAgent *)self account];
    [account3 bumpRefreshReason:16];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

@end