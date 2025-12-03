@interface CalDAVAgent
- (BOOL)isDisabledDelegateAccount;
- (CalDAVAgent)initWithAccount:(id)account;
- (void)_probeIfNeededAndThenRefresh;
- (void)_setupNotifications;
- (void)_validateAndSync;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)preferredDaysToSyncDidChange;
- (void)reallyRefresh;
- (void)refreshDidCompleteWithError:(id)error;
- (void)refreshFolderListRequireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (void)refreshWillBegin;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
@end

@implementation CalDAVAgent

- (CalDAVAgent)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v9 initWithAccount:accountCopy];
  if (v5)
  {
    mobileCalDAVAccount = [accountCopy mobileCalDAVAccount];
    [mobileCalDAVAccount setConsumer:v5];

    mobileCalDAVAccount2 = [accountCopy mobileCalDAVAccount];
    [mobileCalDAVAccount2 setRefreshReason:16];
  }

  return v5;
}

- (void)_validateAndSync
{
  if ([(CalDAVAgent *)self isDisabledDelegateAccount])
  {
    account5 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(account5, v4))
    {
      account = [(CalDAVAgent *)self account];
      accountID = [account accountID];
      *buf = 138543362;
      v19 = accountID;
      _os_log_impl(&dword_0, account5, v4, "Account %{public}@ is a disabled delegate account, so we're not going to refresh it", buf, 0xCu);
    }

LABEL_11:

    return;
  }

  if ([(CalDAVAgent *)self isWaitingForPassword])
  {
    account5 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(account5, v7))
    {
      account2 = [(CalDAVAgent *)self account];
      accountDescription = [account2 accountDescription];
      *buf = 138412290;
      v19 = accountDescription;
      _os_log_impl(&dword_0, account5, v7, "Account %@ is waiting for a password, so we're going to ignore this refresh request", buf, 0xCu);
    }

    goto LABEL_11;
  }

  account3 = [(CalDAVAgent *)self account];
  shouldAutodiscoverAccountProperties = [account3 shouldAutodiscoverAccountProperties];

  if (shouldAutodiscoverAccountProperties)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v13, "Account doesn't have a principal URL. Running autodiscovery.", buf, 2u);
    }

    account4 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount = [account4 mobileCalDAVAccount];
    [mobileCalDAVAccount syncStarted];

    account5 = [(CalDAVAgent *)self account];
    [account5 discoverInitialPropertiesWithConsumer:self];
    goto LABEL_11;
  }

  account6 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount2 = [account6 mobileCalDAVAccount];
  [mobileCalDAVAccount2 _refresh];
}

- (void)reallyRefresh
{
  account = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account mobileCalDAVAccount];
  refreshReason = [mobileCalDAVAccount refreshReason];

  if (!refreshReason)
  {
    account2 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount2 = [account2 mobileCalDAVAccount];
    [mobileCalDAVAccount2 setRefreshReason:1];

    account3 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount3 = [account3 mobileCalDAVAccount];
    [mobileCalDAVAccount3 setFullRefresh:1];

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      account4 = [(CalDAVAgent *)self account];
      accountDescription = [account4 accountDescription];
      account5 = [(CalDAVAgent *)self account];
      publicDescription = [account5 publicDescription];
      v16 = 138412546;
      v17 = accountDescription;
      v18 = 2114;
      v19 = publicDescription;
      _os_log_impl(&dword_0, v10, v11, "Account %@ (%{public}@) is refreshing in response to a calendar database change", &v16, 0x16u);
    }

    [(CalDAVAgent *)self _validateAndSync];
  }
}

- (void)_setupNotifications
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, v4, "Registering %p for database change notifications", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = +[DALocalDBWatcher sharedDBWatcher];
  account = [(CalDAVAgent *)self account];
  accountID = [account accountID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_198C;
  v12[3] = &unk_28718;
  objc_copyWeak(&v13, buf);
  [v5 registerConcernedCalParty:self forAccountID:accountID withChangedBlock:v12];

  account2 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account2 mobileCalDAVAccount];
  [mobileCalDAVAccount setPreferredEventDaysToSync:{-[CalDAVAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  account3 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount2 = [account3 mobileCalDAVAccount];
  [mobileCalDAVAccount2 setPreferredToDoDaysToSync:{-[CalDAVAgent preferredToDoDaysToSync](self, "preferredToDoDaysToSync")}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
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
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v11, v12))
      {
        account = [(CalDAVAgent *)self account];
        accountDescription = [account accountDescription];
        *buf = 138412290;
        v31 = accountDescription;
        _os_log_impl(&dword_0, v11, v12, "Validation for account %@ was cancelled, so we're not going to save the account properties we just discovered. Better luck next time.", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqualToString:v9])
  {

    goto LABEL_11;
  }

  code2 = [errorCopy code];

  if (code2 != &stru_20.flags + 2)
  {
LABEL_11:
    if (validCopy)
    {
      account2 = [(CalDAVAgent *)self account];
      [account2 setShouldDoInitialAutodiscovery:0];

      account3 = [(CalDAVAgent *)self account];
      [account3 saveAccountProperties];

      account4 = [(CalDAVAgent *)self account];
      mobileCalDAVAccount = [account4 mobileCalDAVAccount];
      [mobileCalDAVAccount setSafeToRefresh:1];
LABEL_20:

      goto LABEL_21;
    }

    v22 = DALoggingwithCategory();
    v23 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v22, v23))
    {
      account5 = [(CalDAVAgent *)self account];
      accountDescription2 = [account5 accountDescription];
      *buf = 138412290;
      v31 = accountDescription2;
      _os_log_impl(&dword_0, v22, v23, "Account %@ can't figure out its principalPath. ", buf, 0xCu);
    }

    if (statusAndErrorIndicateWeShouldTurnOnReachability())
    {
      v26 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, v27, "We'll refresh if we find a better network connection.", buf, 2u);
      }

      [(CalDAVAgent *)self setSyncWhenReachable:1];
    }

LABEL_19:
    account4 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount = [account4 mobileCalDAVAccount];
    [mobileCalDAVAccount syncEndedWithError:errorCopy];
    goto LABEL_20;
  }

  [(CalDAVAgent *)self setIsWaitingForPassword:1];
  account6 = [(CalDAVAgent *)self account];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1E50;
  v28[3] = &unk_28740;
  v28[4] = self;
  v29 = errorCopy;
  [account6 handleValidationError:v29 completion:v28];

LABEL_21:
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
  mobileCalDAVAccount = [account3 mobileCalDAVAccount];
  [mobileCalDAVAccount setFullRefresh:1];

  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    account4 = [(CalDAVAgent *)self account];
    accountDescription = [account4 accountDescription];
    *buf = 138412290;
    v15 = accountDescription;
    _os_log_impl(&dword_0, v8, v9, "CalDAV has started monitoring for the account %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2220;
  v12[3] = &unk_28718;
  objc_copyWeak(&v13, buf);
  [(CalDAVAgent *)self observeReachabilityWithBlock:v12];
  [(CalDAVAgent *)self _probeIfNeededAndThenRefresh];
  [(CalDAVAgent *)self _setupNotifications];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)_probeIfNeededAndThenRefresh
{
  if ([(CalDAVAgent *)self isDisabledDelegateAccount])
  {
    account2 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(account2, v4))
    {
      account = [(CalDAVAgent *)self account];
      accountID = [account accountID];
      v12 = 138543362;
      v13 = accountID;
      _os_log_impl(&dword_0, account2, v4, "Account %{public}@ is a disabled delegate account, so we're not going to refresh it.", &v12, 0xCu);

LABEL_11:
    }
  }

  else
  {
    account2 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount = [account2 mobileCalDAVAccount];
    safeToRefresh = [mobileCalDAVAccount safeToRefresh];

    if (safeToRefresh)
    {
      [(CalDAVAgent *)self reallyRefresh];
    }

    else
    {
      if (![account2 shouldDoInitialAutodiscovery])
      {
        account = [account2 mobileCalDAVAccount];
        [account setSafeToRefresh:1];
        goto LABEL_11;
      }

      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v9, v10))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v9, v10, "Account doesn't have a principal URL. Running autodiscovery.", &v12, 2u);
      }

      mobileCalDAVAccount2 = [account2 mobileCalDAVAccount];
      [mobileCalDAVAccount2 syncStarted];

      [account2 discoverInitialPropertiesWithConsumer:self];
    }
  }
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
  v7 = +[DALocalDBWatcher sharedDBWatcher];
  account = [(CalDAVAgent *)self account];
  accountID = [account accountID];
  [v7 removeConcernedCalParty:self forAccountID:accountID];

  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v6))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v10, v6, "Unregistered %p for database change notifications", buf, 0xCu);
  }

  account2 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account2 mobileCalDAVAccount];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_26A8;
  v14[3] = &unk_28768;
  v14[4] = self;
  v15 = blockCopy;
  v13 = blockCopy;
  [mobileCalDAVAccount cancelRefreshWithCompletion:v14];
}

- (void)refreshWillBegin
{
  account = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account mobileCalDAVAccount];
  [mobileCalDAVAccount syncStarted];
}

- (void)refreshDidCompleteWithError:(id)error
{
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v31 = errorCopy;
    _os_log_impl(&dword_0, v5, v6, "Refresh completed with this error: %@", buf, 0xCu);
  }

  ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  account = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account mobileCalDAVAccount];
  refreshContext = [mobileCalDAVAccount refreshContext];
  calendarSyncFailures = [refreshContext calendarSyncFailures];

  v12 = [calendarSyncFailures countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(calendarSyncFailures);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (statusAndErrorIndicateWeShouldTurnOnReachability())
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v6))
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&dword_0, v18, v6, "Calendar refresh failed with connectivity error: %@", buf, 0xCu);
          }

          goto LABEL_16;
        }
      }

      v13 = [calendarSyncFailures countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (ShouldTurnOnReachability)
  {
LABEL_16:
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v20, "We encountered a network error when refreshing. Scheduling a refresh for when the network reachability changes", buf, 2u);
    }

    account2 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount2 = [account2 mobileCalDAVAccount];
    v17 = 1;
    [mobileCalDAVAccount2 setFullRefresh:1];
  }

  else
  {
    v17 = 0;
  }

  [(CalDAVAgent *)self setSyncWhenReachable:v17];
  account3 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount3 = [account3 mobileCalDAVAccount];
  [mobileCalDAVAccount3 syncEndedWithError:errorCopy];
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
    v12 = 138412290;
    v13 = accountDescription;
    _os_log_impl(&dword_0, v6, v7, "Account %@ was told to refresh its folder list", &v12, 0xCu);
  }

  if (requestedCopy)
  {
    account2 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount = [account2 mobileCalDAVAccount];
    [mobileCalDAVAccount setRefreshReason:8];
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
    v16 = 138412546;
    v17 = accountDescription;
    v18 = 2112;
    v19 = dsCopy;
    _os_log_impl(&dword_0, v8, v9, "Account %@ was told to sync the folders %@", &v16, 0x16u);
  }

  account2 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account2 mobileCalDAVAccount];
  [mobileCalDAVAccount setFullRefresh:1];

  if (requestedCopy)
  {
    account3 = [(CalDAVAgent *)self account];
    mobileCalDAVAccount2 = [account3 mobileCalDAVAccount];
    [mobileCalDAVAccount2 setRefreshReason:8];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)preferredDaysToSyncDidChange
{
  account = [(CalDAVAgent *)self account];
  mobileCalDAVAccount = [account mobileCalDAVAccount];
  [mobileCalDAVAccount setPreferredEventDaysToSync:{-[CalDAVAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  account2 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount2 = [account2 mobileCalDAVAccount];
  [mobileCalDAVAccount2 setPreferredToDoDaysToSync:{-[CalDAVAgent preferredToDoDaysToSync](self, "preferredToDoDaysToSync")}];

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    account3 = [(CalDAVAgent *)self account];
    accountDescription = [account3 accountDescription];
    v15 = 138412290;
    v16 = accountDescription;
    _os_log_impl(&dword_0, v7, v8, "Refreshing account %@ because the days to sync setting changed", &v15, 0xCu);
  }

  account4 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount3 = [account4 mobileCalDAVAccount];
  [mobileCalDAVAccount3 setFullRefresh:1];

  account5 = [(CalDAVAgent *)self account];
  mobileCalDAVAccount4 = [account5 mobileCalDAVAccount];
  [mobileCalDAVAccount4 setForcedRefresh:1];

  [(CalDAVAgent *)self _validateAndSync];
}

- (BOOL)isDisabledDelegateAccount
{
  v3 = objc_autoreleasePoolPush();
  account = [(CalDAVAgent *)self account];
  if ([account isDelegateAccount])
  {
    accountID = [account accountID];
    mobileCalDAVAccount = [account mobileCalDAVAccount];
    dbHelper = [mobileCalDAVAccount dbHelper];
    [dbHelper calOpenDatabaseAsGenericClientForAccountID:accountID];

    mobileCalDAVAccount2 = [account mobileCalDAVAccount];
    dbHelper2 = [mobileCalDAVAccount2 dbHelper];
    [dbHelper2 calDatabaseForAccountID:accountID];

    v10 = CalDatabaseCopyStoreWithExternalID();
    if (v10)
    {
      IsEnabled = CalStoreIsEnabled();
      CFRelease(v10);
      LOBYTE(v10) = IsEnabled ^ 1;
    }

    mobileCalDAVAccount3 = [account mobileCalDAVAccount];
    dbHelper3 = [mobileCalDAVAccount3 dbHelper];
    [dbHelper3 calCloseDatabaseForAccountID:accountID save:0];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v10;
}

@end