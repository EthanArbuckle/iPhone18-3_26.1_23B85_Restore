@interface DARefreshWrapper
- (DARefreshManagerDelegate)delegate;
- (DARefreshWrapper)init;
- (const)fetchActivityIdentifier;
- (const)retryActivityIdentifier;
- (id)_fetchActivityCriteriaInOnPowerMode;
- (id)_fetchActivityCriteriaWithInterval:(int64_t)a3;
- (id)_stringForStyle:(int)a3;
- (id)description;
- (int64_t)XPCActivityInterval;
- (void)_retryActivityFired;
- (void)cancelAllTokenRegistrations;
- (void)cancelDailyRefreshActivity;
- (void)cancelFetchActivity;
- (void)cancelRetryActivity;
- (void)dailyRefreshActivityFired;
- (void)performTokenRegistrationRequestsWithToken:(id)a3 onBehalfOf:(id)a4;
- (void)setCurStyle:(int)a3;
- (void)startDailyRefreshActivity;
- (void)startFetchActivityForFetch;
- (void)startFetchActivityForPush;
- (void)startFetchActivityWithInterval:(int64_t)a3;
- (void)stopCollectionsRefresh;
- (void)tokenRegistrationRequest:(id)a3 finishedWithError:(id)a4;
@end

@implementation DARefreshWrapper

- (DARefreshWrapper)init
{
  v5.receiver = self;
  v5.super_class = DARefreshWrapper;
  v2 = [(DARefreshWrapper *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DARefreshWrapper *)v2 setTokenRegistrations:v3];

    v2->_fetchInterval = -1;
  }

  return v2;
}

- (const)retryActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DARefreshWrapper *)self delegate];
  v4 = [v3 scheduleIdentifier];
  v5 = [v2 stringWithFormat:@"com.apple.dataaccess.dataaccessd.retry.%@", v4];

  v6 = [v5 UTF8String];
  return v6;
}

- (void)cancelRetryActivity
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DARefreshWrapper *)self delegate];
    v6 = [v5 getDAAccount];
    v7 = [v6 accountDescription];
    v8 = [(DARefreshWrapper *)self delegate];
    v9 = [v8 getDAAccount];
    v10 = [v9 publicDescription];
    v12 = 138412802;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    v16 = 2080;
    v17 = [(DARefreshWrapper *)self retryActivityIdentifier];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Cancelling Retry Activity for account %@ (%{public}@) retryActivityIdentifier: %s", &v12, 0x20u);
  }

  xpc_activity_unregister([(DARefreshWrapper *)self retryActivityIdentifier]);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelDailyRefreshActivity
{
  v3 = +[DARefreshManager sharedManager];
  [v3 endDailyRefreshActivityForWrapper:self];
}

- (void)startDailyRefreshActivity
{
  v3 = +[DARefreshManager sharedManager];
  [v3 startDailyRefreshActivityForWrapper:self];
}

- (void)stopCollectionsRefresh
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_248524000, v3, v4, "%@: Stopping XPC Activities for Refreshing Collections", &v7, 0xCu);
  }

  [(DARefreshWrapper *)self cancelRetryActivity];
  [(DARefreshWrapper *)self cancelDailyRefreshActivity];
  [(DARefreshWrapper *)self cancelFetchActivity];
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v4))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_248524000, v5, v4, "%@: Cancelling pending Token Registration request", &v7, 0xCu);
  }

  [(DARefreshWrapper *)self cancelAllTokenRegistrations];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_stringForStyle:(int)a3
{
  if (a3 > 2)
  {
    return @"UNKNOWN!";
  }

  else
  {
    return off_278F1D4A8[a3];
  }
}

- (const)fetchActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DARefreshWrapper *)self delegate];
  v4 = [v3 getDAAccount];
  v5 = [v4 accountID];
  v6 = [v2 stringWithFormat:@"com.apple.dataaccess.dataaccessd.fetch.%@", v5];

  v7 = [v6 UTF8String];
  return v7;
}

- (int64_t)XPCActivityInterval
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DARefreshWrapper *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 fetchInterval];
    v5 = v4;
    if (v4 >= -2)
    {
      if (v4 != -2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138412546;
        v12 = v3;
        v13 = 2048;
        v14 = v5;
        _os_log_impl(&dword_248524000, v6, v7, "Delegate (%@) returned invalid fetch interval %lli; using system default", &v11, 0x16u);
      }
    }
  }

  v8 = [(DARefreshWrapper *)self delegate];
  [v8 scheduleIdentifier];
  LODWORD(v5) = PCSettingsGetPollInterval();

  if (v5 <= -2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v5;
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_fetchActivityCriteriaWithInterval:(int64_t)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], a3);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], a3 / 5);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return v4;
}

- (id)_fetchActivityCriteriaInOnPowerMode
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  v3 = *MEMORY[0x277D862A0];
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86250], *MEMORY[0x277D862A0]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3 / 5);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86390], 1);

  return v2;
}

- (void)startFetchActivityWithInterval:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(DARefreshWrapper *)self delegate];
  v6 = [v5 getDAAccount];
  if (v6)
  {
    v7 = v6;
    v8 = [(DARefreshWrapper *)self delegate];
    v9 = [v8 getDAAccount];
    v10 = [v9 accountDescription];

    if (v10)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v12))
      {
        v24 = [(DARefreshWrapper *)self delegate];
        v13 = [v24 getDAAccount];
        v14 = [v13 accountDescription];
        v15 = [(DARefreshWrapper *)self delegate];
        v16 = [v15 getDAAccount];
        v17 = [v16 publicDescription];
        *buf = 138413058;
        v27 = v14;
        v28 = 2114;
        v29 = v17;
        v30 = 2080;
        v31 = [(DARefreshWrapper *)self fetchActivityIdentifier];
        v32 = 2048;
        v33 = [(DARefreshWrapper *)self fetchInterval];
        _os_log_impl(&dword_248524000, v11, v12, "XPC: Registering Fetch Activity for account %@ (%{public}@) retryActivityIdentifier: %s, Interval %lld", buf, 0x2Au);
      }

      v18 = [(DARefreshWrapper *)self fetchInterval];
      v19 = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v20 = *MEMORY[0x277D86238];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke;
      handler[3] = &unk_278F1D488;
      handler[4] = self;
      handler[5] = a3;
      handler[6] = v18;
      xpc_activity_register(v19, v20, handler);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v21 = DALoggingwithCategory();
  v22 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v21, v22))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v21, v22, "Don't start fetch because either DAAccount is nil or account description is nil", buf, 2u);
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v6 = xpc_activity_set_state(v3, 4);
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6)
    {
      v9 = MEMORY[0x277D03988];
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v10))
      {
        v11 = [*(a1 + 32) delegate];
        v12 = [v11 getDAAccount];
        v13 = [v12 accountID];
        *buf = 138543362;
        v45 = v13;
        _os_log_impl(&dword_248524000, v8, v10, "XPC: Successfully set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %{public}@", buf, 0xCu);
      }

      v14 = DALoggingwithCategory();
      v15 = *(v9 + 7);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = [*(a1 + 32) delegate];
        v17 = [v16 getDAAccount];
        v18 = [v17 accountDescription];
        v19 = [*(a1 + 32) delegate];
        v20 = [v19 getDAAccount];
        v21 = [v20 publicDescription];
        *buf = 138412546;
        v45 = v18;
        v46 = 2114;
        v47 = v21;
        _os_log_impl(&dword_248524000, v14, v15, "Start fetching in automatically mode for account %@ (%{public}@)", buf, 0x16u);
      }

      v22 = [*(a1 + 32) delegate];
      [v22 saveXpcActivity:v3];

      v23 = objc_alloc(MEMORY[0x277D03750]);
      v8 = [*(a1 + 32) delegate];
      v24 = [v8 getDAAccount];
      v25 = [v23 initWithAccount:v24];
    }

    else
    {
      v26 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, *(MEMORY[0x277D03988] + 3)))
      {
        v27 = [*(a1 + 32) delegate];
        v28 = [v27 getDAAccount];
        v29 = [v28 accountID];
        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_248524000, v8, v26, "XPC: Failed to set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %{public}@", buf, 0xCu);
      }

      v25 = 0;
    }

    v30 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_21;
    block[3] = &unk_278F1CD98;
    block[4] = *(a1 + 32);
    v43 = v25;
    v31 = v25;
    dispatch_async(v30, block);

    goto LABEL_22;
  }

  if (!state)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 40) < 1)
    {
      [v5 _fetchActivityCriteriaInOnPowerMode];
    }

    else
    {
      [v5 _fetchActivityCriteriaWithInterval:*(a1 + 48)];
    }
    v31 = ;
    v32 = xpc_activity_copy_criteria(v3);
    if (!v32 || !xpc_equal(v31, v32))
    {
      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v33, v34))
      {
        v41 = [*(a1 + 32) delegate];
        v35 = [v41 getDAAccount];
        v36 = [v35 accountDescription];
        v37 = [*(a1 + 32) delegate];
        v38 = [v37 getDAAccount];
        v39 = [v38 publicDescription];
        *buf = 138412546;
        v45 = v36;
        v46 = 2114;
        v47 = v39;
        _os_log_impl(&dword_248524000, v33, v34, "Updating criteria for fetch xpc activity for account %@ (%{public}@)", buf, 0x16u);
      }

      xpc_activity_set_criteria(v3, v31);
    }

LABEL_22:
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_21(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 getDAAccount];
    v6 = [v5 accountDescription];
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 getDAAccount];
    v9 = [v8 publicDescription];
    v10 = [*(a1 + 32) fetchActivityIdentifier];
    v11 = [*(a1 + 32) fetchInterval];
    v16 = 138413058;
    v17 = v6;
    v18 = 2114;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_248524000, v2, v3, "XPC: Performing Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v16, 0x2Au);
  }

  v12 = *(a1 + 32);
  v13 = [v12 delegate];
  v14 = [v13 watchedCollections];
  [v12 refreshCollections:v14 withReason:1];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startFetchActivityForFetch
{
  v22 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:[(DARefreshWrapper *)self XPCActivityInterval]];
  if ([(DARefreshWrapper *)self fetchInterval]< 0)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(DARefreshWrapper *)self delegate];
      v8 = [v7 getDAAccount];
      v9 = [v8 accountDescription];
      v10 = [(DARefreshWrapper *)self delegate];
      v11 = [v10 getDAAccount];
      v12 = [v11 publicDescription];
      v14 = 138413058;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      v18 = 2080;
      v19 = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v20 = 2048;
      v21 = [(DARefreshWrapper *)self XPCActivityInterval];
      _os_log_impl(&dword_248524000, v5, v6, "XPC: Manual Sync Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v14, 0x2Au);
    }

    [(DARefreshWrapper *)self cancelFetchActivity];
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = [(DARefreshWrapper *)self fetchInterval];
    v4 = *MEMORY[0x277D85DE8];

    [(DARefreshWrapper *)self startFetchActivityWithInterval:v3];
  }
}

- (void)startFetchActivityForPush
{
  v20 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:*MEMORY[0x277D862B0]];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DARefreshWrapper *)self delegate];
    v6 = [v5 getDAAccount];
    v7 = [v6 accountDescription];
    v8 = [(DARefreshWrapper *)self delegate];
    v9 = [v8 getDAAccount];
    v10 = [v9 publicDescription];
    v12 = 138413058;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    v16 = 2080;
    v17 = [(DARefreshWrapper *)self fetchActivityIdentifier];
    v18 = 2048;
    v19 = [(DARefreshWrapper *)self fetchInterval];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Starting a Temp Sync Fetch Activity before Transitioning to Push for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v12, 0x2Au);
  }

  [(DARefreshWrapper *)self startFetchActivityWithInterval:[(DARefreshWrapper *)self fetchInterval]];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelFetchActivity
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DARefreshWrapper *)self delegate];
    v6 = [v5 getDAAccount];
    v7 = [v6 accountDescription];
    v8 = [(DARefreshWrapper *)self delegate];
    v9 = [v8 getDAAccount];
    v10 = [v9 publicDescription];
    v12 = 138412802;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    v16 = 2080;
    v17 = [(DARefreshWrapper *)self fetchActivityIdentifier];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Cancelling Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s", &v12, 0x20u);
  }

  xpc_activity_unregister([(DARefreshWrapper *)self fetchActivityIdentifier]);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<DARefreshWrapper "];
  [v3 appendFormat:@"%p", self];
  v4 = [(DARefreshWrapper *)self delegate];
  [v3 appendFormat:@" for delegate %@", v4];

  v5 = [(DARefreshWrapper *)self pushState];
  v6 = [(DARefreshWrapper *)self _stringForStyle:self->_curStyle];
  [v3 appendFormat:@": Push state %d, style %@", v5, v6];

  v7 = [(DARefreshWrapper *)self pushRegistrationTime];
  [v3 appendFormat:@", last registration: %@", v7];

  v8 = [(DARefreshWrapper *)self tokenRegistrations];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(DARefreshWrapper *)self tokenRegistrations];
    [v3 appendFormat:@", %ld outstanding token registrations", objc_msgSend(v10, "count")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setCurStyle:(int)a3
{
  if (a3)
  {
    [(DARefreshWrapper *)self cancelDailyRefreshActivity];
  }

  self->_curStyle = a3;
}

- (void)cancelAllTokenRegistrations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(DARefreshWrapper *)self tokenRegistrations];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(DARefreshWrapper *)self tokenRegistrations];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)tokenRegistrationRequest:(id)a3 finishedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(v8);
  if (v7)
  {
    v9 = +[DARefreshManager sharedManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DARefreshWrapper_tokenRegistrationRequest_finishedWithError___block_invoke;
    v11[3] = &unk_278F1CDC0;
    v12 = v6;
    [v9 _performBlockOnRefreshManagerThread:v11];
  }

  else
  {
    [(DARefreshWrapper *)self startDailyRefreshActivity];
  }

  v10 = [(DARefreshWrapper *)self tokenRegistrations];
  [v10 removeObject:v6];

  objc_sync_exit(v8);
}

void __63__DARefreshWrapper_tokenRegistrationRequest_finishedWithError___block_invoke(uint64_t a1)
{
  v3 = +[DARefreshManager sharedManager];
  v2 = [*(a1 + 32) wrapper];
  [v3 _pushRegistrationForDelegateFailed:v2];
}

- (void)performTokenRegistrationRequestsWithToken:(id)a3 onBehalfOf:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  obj = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(obj);
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(DARefreshWrapper *)self delegate];
    v11 = [(DARefreshWrapper *)self delegate];
    v12 = [v11 watchedCollections];
    *buf = 138412546;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_248524000, v8, v9, "Performing token registration request for %@ with watched collections %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [(DARefreshWrapper *)self delegate];
  v23 = [v13 watchedCollections];

  v14 = [v23 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v23);
        }

        v17 = [DATokenRegistrationRequest requestWithToken:v6 pushKey:*(*(&v24 + 1) + 8 * i) wrapper:self onBehalfOf:v7, obj];
        [v17 setDelegate:self];
        v18 = [(DARefreshWrapper *)self tokenRegistrations];
        [v18 addObject:v17];

        v19 = [(DARefreshWrapper *)self delegate];
        v20 = [v19 getDAAccount];

        [v17 sendRegistrationRequestForAccount:v20];
      }

      v14 = [v23 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obj);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_retryActivityFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DARefreshWrapper *)self delegate];
    v6 = [v5 scheduleIdentifier];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_248524000, v3, v4, "Retry activity  fired for delegate %{public}@", &v9, 0xCu);
  }

  v7 = [(DARefreshWrapper *)self refreshCollections];
  [(DARefreshWrapper *)self refreshCollections:v7 withReason:[(DARefreshWrapper *)self refreshReason]];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dailyRefreshActivityFired
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DARefreshWrapper *)self delegate];
    v6 = [v5 scheduleIdentifier];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_248524000, v3, v4, "Daily refresh activity fired for delegate %{public}@", &v10, 0xCu);
  }

  v7 = [(DARefreshWrapper *)self delegate];
  v8 = [v7 watchedCollections];
  [(DARefreshWrapper *)self refreshCollections:v8 withReason:1];

  v9 = *MEMORY[0x277D85DE8];
}

void __50__DARefreshWrapper_retryCollections_after_reason___block_invoke(uint64_t a1)
{
  v2 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DARefreshWrapper_retryCollections_after_reason___block_invoke_2;
  block[3] = &unk_278F1CDC0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (DARefreshManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end