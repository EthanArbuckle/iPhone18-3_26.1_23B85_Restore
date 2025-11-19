@interface CalDAVAgent
- (BOOL)isDisabledDelegateAccount;
- (CalDAVAgent)initWithAccount:(id)a3;
- (void)_probeIfNeededAndThenRefresh;
- (void)_setupNotifications;
- (void)_validateAndSync;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)preferredDaysToSyncDidChange;
- (void)reallyRefresh;
- (void)refreshDidCompleteWithError:(id)a3;
- (void)refreshFolderListRequireChangedFolders:(BOOL)a3 isUserRequested:(BOOL)a4;
- (void)refreshWillBegin;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
@end

@implementation CalDAVAgent

- (CalDAVAgent)initWithAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CalDAVAgent;
  v5 = [(CalDAVAgent *)&v9 initWithAccount:v4];
  if (v5)
  {
    v6 = [v4 mobileCalDAVAccount];
    [v6 setConsumer:v5];

    v7 = [v4 mobileCalDAVAccount];
    [v7 setRefreshReason:16];
  }

  return v5;
}

- (void)_validateAndSync
{
  if ([(CalDAVAgent *)self isDisabledDelegateAccount])
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [(CalDAVAgent *)self account];
      v6 = [v5 accountID];
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_0, v3, v4, "Account %{public}@ is a disabled delegate account, so we're not going to refresh it", buf, 0xCu);
    }

LABEL_11:

    return;
  }

  if ([(CalDAVAgent *)self isWaitingForPassword])
  {
    v3 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v7))
    {
      v8 = [(CalDAVAgent *)self account];
      v9 = [v8 accountDescription];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_0, v3, v7, "Account %@ is waiting for a password, so we're going to ignore this refresh request", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = [(CalDAVAgent *)self account];
  v11 = [v10 shouldAutodiscoverAccountProperties];

  if (v11)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v13, "Account doesn't have a principal URL. Running autodiscovery.", buf, 2u);
    }

    v14 = [(CalDAVAgent *)self account];
    v15 = [v14 mobileCalDAVAccount];
    [v15 syncStarted];

    v3 = [(CalDAVAgent *)self account];
    [v3 discoverInitialPropertiesWithConsumer:self];
    goto LABEL_11;
  }

  v17 = [(CalDAVAgent *)self account];
  v16 = [v17 mobileCalDAVAccount];
  [v16 _refresh];
}

- (void)reallyRefresh
{
  v3 = [(CalDAVAgent *)self account];
  v4 = [v3 mobileCalDAVAccount];
  v5 = [v4 refreshReason];

  if (!v5)
  {
    v6 = [(CalDAVAgent *)self account];
    v7 = [v6 mobileCalDAVAccount];
    [v7 setRefreshReason:1];

    v8 = [(CalDAVAgent *)self account];
    v9 = [v8 mobileCalDAVAccount];
    [v9 setFullRefresh:1];

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = [(CalDAVAgent *)self account];
      v13 = [v12 accountDescription];
      v14 = [(CalDAVAgent *)self account];
      v15 = [v14 publicDescription];
      v16 = 138412546;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
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
    v15 = self;
    _os_log_impl(&dword_0, v3, v4, "Registering %p for database change notifications", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = +[DALocalDBWatcher sharedDBWatcher];
  v6 = [(CalDAVAgent *)self account];
  v7 = [v6 accountID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_198C;
  v12[3] = &unk_28718;
  objc_copyWeak(&v13, buf);
  [v5 registerConcernedCalParty:self forAccountID:v7 withChangedBlock:v12];

  v8 = [(CalDAVAgent *)self account];
  v9 = [v8 mobileCalDAVAccount];
  [v9 setPreferredEventDaysToSync:{-[CalDAVAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  v10 = [(CalDAVAgent *)self account];
  v11 = [v10 mobileCalDAVAccount];
  [v11 setPreferredToDoDaysToSync:{-[CalDAVAgent preferredToDoDaysToSync](self, "preferredToDoDaysToSync")}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
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
        v31 = v14;
        _os_log_impl(&dword_0, v11, v12, "Validation for account %@ was cancelled, so we're not going to save the account properties we just discovered. Better luck next time.", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = [v7 domain];
  if (![v15 isEqualToString:v9])
  {

    goto LABEL_11;
  }

  v16 = [v7 code];

  if (v16 != &stru_20.flags + 2)
  {
LABEL_11:
    if (v5)
    {
      v18 = [(CalDAVAgent *)self account];
      [v18 setShouldDoInitialAutodiscovery:0];

      v19 = [(CalDAVAgent *)self account];
      [v19 saveAccountProperties];

      v20 = [(CalDAVAgent *)self account];
      v21 = [v20 mobileCalDAVAccount];
      [v21 setSafeToRefresh:1];
LABEL_20:

      goto LABEL_21;
    }

    v22 = DALoggingwithCategory();
    v23 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v22, v23))
    {
      v24 = [(CalDAVAgent *)self account];
      v25 = [v24 accountDescription];
      *buf = 138412290;
      v31 = v25;
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
    v20 = [(CalDAVAgent *)self account];
    v21 = [v20 mobileCalDAVAccount];
    [v21 syncEndedWithError:v7];
    goto LABEL_20;
  }

  [(CalDAVAgent *)self setIsWaitingForPassword:1];
  v17 = [(CalDAVAgent *)self account];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1E50;
  v28[3] = &unk_28740;
  v28[4] = self;
  v29 = v7;
  [v17 handleValidationError:v29 completion:v28];

LABEL_21:
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
  v7 = [v6 mobileCalDAVAccount];
  [v7 setFullRefresh:1];

  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(CalDAVAgent *)self account];
    v11 = [v10 accountDescription];
    *buf = 138412290;
    v15 = v11;
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
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [(CalDAVAgent *)self account];
      v6 = [v5 accountID];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_0, v3, v4, "Account %{public}@ is a disabled delegate account, so we're not going to refresh it.", &v12, 0xCu);

LABEL_11:
    }
  }

  else
  {
    v3 = [(CalDAVAgent *)self account];
    v7 = [v3 mobileCalDAVAccount];
    v8 = [v7 safeToRefresh];

    if (v8)
    {
      [(CalDAVAgent *)self reallyRefresh];
    }

    else
    {
      if (![v3 shouldDoInitialAutodiscovery])
      {
        v5 = [v3 mobileCalDAVAccount];
        [v5 setSafeToRefresh:1];
        goto LABEL_11;
      }

      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v9, v10))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v9, v10, "Account doesn't have a principal URL. Running autodiscovery.", &v12, 2u);
      }

      v11 = [v3 mobileCalDAVAccount];
      [v11 syncStarted];

      [v3 discoverInitialPropertiesWithConsumer:self];
    }
  }
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
  v7 = +[DALocalDBWatcher sharedDBWatcher];
  v8 = [(CalDAVAgent *)self account];
  v9 = [v8 accountID];
  [v7 removeConcernedCalParty:self forAccountID:v9];

  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v6))
  {
    *buf = 134217984;
    v17 = self;
    _os_log_impl(&dword_0, v10, v6, "Unregistered %p for database change notifications", buf, 0xCu);
  }

  v11 = [(CalDAVAgent *)self account];
  v12 = [v11 mobileCalDAVAccount];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_26A8;
  v14[3] = &unk_28768;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v12 cancelRefreshWithCompletion:v14];
}

- (void)refreshWillBegin
{
  v3 = [(CalDAVAgent *)self account];
  v2 = [v3 mobileCalDAVAccount];
  [v2 syncStarted];
}

- (void)refreshDidCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_0, v5, v6, "Refresh completed with this error: %@", buf, 0xCu);
  }

  ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(CalDAVAgent *)self account];
  v9 = [v8 mobileCalDAVAccount];
  v10 = [v9 refreshContext];
  v11 = [v10 calendarSyncFailures];

  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v11);
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

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

    v21 = [(CalDAVAgent *)self account];
    v22 = [v21 mobileCalDAVAccount];
    v17 = 1;
    [v22 setFullRefresh:1];
  }

  else
  {
    v17 = 0;
  }

  [(CalDAVAgent *)self setSyncWhenReachable:v17];
  v23 = [(CalDAVAgent *)self account];
  v24 = [v23 mobileCalDAVAccount];
  [v24 syncEndedWithError:v4];
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
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_0, v6, v7, "Account %@ was told to refresh its folder list", &v12, 0xCu);
  }

  if (v4)
  {
    v10 = [(CalDAVAgent *)self account];
    v11 = [v10 mobileCalDAVAccount];
    [v11 setRefreshReason:8];
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
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_0, v8, v9, "Account %@ was told to sync the folders %@", &v16, 0x16u);
  }

  v12 = [(CalDAVAgent *)self account];
  v13 = [v12 mobileCalDAVAccount];
  [v13 setFullRefresh:1];

  if (v5)
  {
    v14 = [(CalDAVAgent *)self account];
    v15 = [v14 mobileCalDAVAccount];
    [v15 setRefreshReason:8];
  }

  [(CalDAVAgent *)self _validateAndSync];
}

- (void)preferredDaysToSyncDidChange
{
  v3 = [(CalDAVAgent *)self account];
  v4 = [v3 mobileCalDAVAccount];
  [v4 setPreferredEventDaysToSync:{-[CalDAVAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  v5 = [(CalDAVAgent *)self account];
  v6 = [v5 mobileCalDAVAccount];
  [v6 setPreferredToDoDaysToSync:{-[CalDAVAgent preferredToDoDaysToSync](self, "preferredToDoDaysToSync")}];

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [(CalDAVAgent *)self account];
    v10 = [v9 accountDescription];
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_0, v7, v8, "Refreshing account %@ because the days to sync setting changed", &v15, 0xCu);
  }

  v11 = [(CalDAVAgent *)self account];
  v12 = [v11 mobileCalDAVAccount];
  [v12 setFullRefresh:1];

  v13 = [(CalDAVAgent *)self account];
  v14 = [v13 mobileCalDAVAccount];
  [v14 setForcedRefresh:1];

  [(CalDAVAgent *)self _validateAndSync];
}

- (BOOL)isDisabledDelegateAccount
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CalDAVAgent *)self account];
  if ([v4 isDelegateAccount])
  {
    v5 = [v4 accountID];
    v6 = [v4 mobileCalDAVAccount];
    v7 = [v6 dbHelper];
    [v7 calOpenDatabaseAsGenericClientForAccountID:v5];

    v8 = [v4 mobileCalDAVAccount];
    v9 = [v8 dbHelper];
    [v9 calDatabaseForAccountID:v5];

    v10 = CalDatabaseCopyStoreWithExternalID();
    if (v10)
    {
      IsEnabled = CalStoreIsEnabled();
      CFRelease(v10);
      LOBYTE(v10) = IsEnabled ^ 1;
    }

    v12 = [v4 mobileCalDAVAccount];
    v13 = [v12 dbHelper];
    [v13 calCloseDatabaseForAccountID:v5 save:0];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v10;
}

@end