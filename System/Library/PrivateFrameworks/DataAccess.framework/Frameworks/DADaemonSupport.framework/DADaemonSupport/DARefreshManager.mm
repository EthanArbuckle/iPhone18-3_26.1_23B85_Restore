@interface DARefreshManager
+ (DARefreshManager)sharedManager;
- (BOOL)_wrapperIsSuspended:(id)a3;
- (DARefreshManager)init;
- (id)_apsEnvStringForDAEnvString:(id)a3;
- (id)_connectionForEnv:(id)a3;
- (id)_enabledTopicsForWrapper:(id)a3;
- (id)_portNameForEnvironmentName:(id)a3;
- (id)_refreshWrapperForDelegate:(id)a3;
- (id)_suspendedTopicsForWrapper:(id)a3;
- (id)pushTokenForEnvironment:(id)a3;
- (id)stateString;
- (int)_currentTruePCStyleForDelegate:(id)a3;
- (void)_dailyRefreshActivityFired;
- (void)_pushRegistrationForDelegateFailed:(id)a3;
- (void)_registerAPSTopics;
- (void)_registerAPSTopicsForDelegates:(id)a3 withConnection:(id)a4;
- (void)_resumeTopicsForSuspendedDelegate:(id)a3;
- (void)_suspendTopicsForDelegate:(id)a3;
- (void)_tearDownAPS;
- (void)_tearDownAllApsConnections;
- (void)_unregisterTopicLocked:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5;
- (void)_unregisterWrapper:(id)a3 forTopic:(id)a4 inTopicDictionary:(id)a5;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)delegateDidCompleteRefresh:(id)a3;
- (void)delegateDidSuccessfullyRecoverFromBeingUnauthenticated:(id)a3;
- (void)endDailyRefreshActivityForWrapper:(id)a3;
- (void)establishAllApsConnections;
- (void)pushPreferenceDidChange;
- (void)registerDelegate:(id)a3;
- (void)registerTopic:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5;
- (void)retryRefreshForDelegate:(id)a3 withCollections:(id)a4 after:(double)a5 originalRefreshReason:(int)a6;
- (void)startDailyRefreshActivityForWrapper:(id)a3;
- (void)unregisterDelegate:(id)a3;
- (void)unregisterTopic:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5;
@end

@implementation DARefreshManager

+ (DARefreshManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[DARefreshManager sharedManager];
  }

  v3 = sSharedManager;

  return v3;
}

uint64_t __33__DARefreshManager_sharedManager__block_invoke()
{
  sSharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DARefreshManager)init
{
  v14.receiver = self;
  v14.super_class = DARefreshManager;
  v2 = [(DARefreshManager *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    enabledTopicWrappersByEnv = v2->_enabledTopicWrappersByEnv;
    v2->_enabledTopicWrappersByEnv = v3;

    v5 = objc_opt_new();
    suspendedTopicWrappersByEnv = v2->_suspendedTopicWrappersByEnv;
    v2->_suspendedTopicWrappersByEnv = v5;

    v7 = objc_opt_new();
    wrappers = v2->_wrappers;
    v2->_wrappers = v7;

    v9 = objc_opt_new();
    wrappersForDailyRefresh = v2->_wrappersForDailyRefresh;
    v2->_wrappersForDailyRefresh = v9;

    *&v2->_persistAPSAfterShutdown = 0;
    v11 = dispatch_queue_create("com.apple.dataaccessd.darefresh.pcqueue", 0);
    pcQueue = v2->_pcQueue;
    v2->_pcQueue = v11;
  }

  return v2;
}

- (void)dealloc
{
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DARefreshManager_dealloc__block_invoke;
  block[3] = &unk_278F1CDC0;
  block[4] = self;
  dispatch_sync(pcQueue, block);
  v4.receiver = self;
  v4.super_class = DARefreshManager;
  [(DARefreshManager *)&v4 dealloc];
}

void __27__DARefreshManager_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _tearDownAllApsConnections];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setDelegate:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  if ([(NSMutableSet *)self->_wrappers count])
  {
    v3 = [MEMORY[0x277CCAB68] string];
    pcQueue = self->_pcQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__DARefreshManager_stateString__block_invoke;
    v9[3] = &unk_278F1CD98;
    v9[4] = self;
    v5 = v3;
    v10 = v5;
    dispatch_sync(pcQueue, v9);
    v6 = v10;
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __31__DARefreshManager_stateString__block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) mutableCopy];
  if ([*(*(a1 + 32) + 16) count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager enabled wrappers:\n"];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [*(*(a1 + 32) + 16) allValues];
    v37 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v37)
    {
      v35 = *v72;
      do
      {
        v3 = 0;
        do
        {
          if (*v72 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v3;
          v4 = *(*(&v71 + 1) + 8 * v3);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v45 = v4;
          v41 = [v4 allKeys];
          v5 = [v41 countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (v5)
          {
            v6 = v5;
            v43 = *v68;
            do
            {
              for (i = 0; i != v6; ++i)
              {
                if (*v68 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v8 = *(*(&v67 + 1) + 8 * i);
                [*(a1 + 40) appendFormat:@"Topic %@ {\n", v8];
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v9 = [v45 objectForKeyedSubscript:v8];
                v10 = [v9 countByEnumeratingWithState:&v63 objects:v79 count:16];
                if (v10)
                {
                  v11 = v10;
                  v12 = *v64;
                  do
                  {
                    for (j = 0; j != v11; ++j)
                    {
                      if (*v64 != v12)
                      {
                        objc_enumerationMutation(v9);
                      }

                      v14 = *(*(&v63 + 1) + 8 * j);
                      [v2 removeObject:v14];
                      [*(a1 + 40) appendFormat:@"\t%@\n", v14];
                    }

                    v11 = [v9 countByEnumeratingWithState:&v63 objects:v79 count:16];
                  }

                  while (v11);
                }

                [*(a1 + 40) appendString:@"}\n"];
              }

              v6 = [v41 countByEnumeratingWithState:&v67 objects:v80 count:16];
            }

            while (v6);
          }

          v3 = v39 + 1;
        }

        while (v39 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v37);
    }
  }

  if ([*(*(a1 + 32) + 24) count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager suspended wrappers:\n"];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obja = [*(*(a1 + 32) + 24) allValues];
    v38 = [obja countByEnumeratingWithState:&v59 objects:v78 count:16];
    if (v38)
    {
      v36 = *v60;
      do
      {
        v15 = 0;
        do
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(obja);
          }

          v40 = v15;
          v16 = *(*(&v59 + 1) + 8 * v15);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v46 = v16;
          v42 = [v16 allKeys];
          v17 = [v42 countByEnumeratingWithState:&v55 objects:v77 count:16];
          if (v17)
          {
            v18 = v17;
            v44 = *v56;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v56 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v20 = *(*(&v55 + 1) + 8 * k);
                [*(a1 + 40) appendFormat:@"Topic %@ {\n", v20];
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v21 = [v46 objectForKeyedSubscript:v20];
                v22 = [v21 countByEnumeratingWithState:&v51 objects:v76 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v52;
                  do
                  {
                    for (m = 0; m != v23; ++m)
                    {
                      if (*v52 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v26 = *(*(&v51 + 1) + 8 * m);
                      [v2 removeObject:v26];
                      [*(a1 + 40) appendFormat:@"\t%@\n", v26];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v51 objects:v76 count:16];
                  }

                  while (v23);
                }

                [*(a1 + 40) appendString:@"}\n"];
              }

              v18 = [v42 countByEnumeratingWithState:&v55 objects:v77 count:16];
            }

            while (v18);
          }

          v15 = v40 + 1;
        }

        while (v40 + 1 != v38);
        v38 = [obja countByEnumeratingWithState:&v59 objects:v78 count:16];
      }

      while (v38);
    }
  }

  if ([v2 count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager wrappers:\n"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v2;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v75 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (n = 0; n != v29; ++n)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(a1 + 40) appendFormat:@"\t%@\n", *(*(&v47 + 1) + 8 * n)];
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v75 count:16];
      }

      while (v29);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownAPS
{
  connection = self->_connection;
  self->_connection = 0;

  [(NSTimer *)self->_tokenRegistrationTimer invalidate];
  tokenRegistrationTimer = self->_tokenRegistrationTimer;
  self->_tokenRegistrationTimer = 0;
}

- (void)_tearDownAllApsConnections
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_apsConnections allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSTimer *)self->_tokenRegistrationTimer invalidate];
  tokenRegistrationTimer = self->_tokenRegistrationTimer;
  self->_tokenRegistrationTimer = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)establishAllApsConnections
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DARefreshManager.m" lineNumber:173 description:{@"Couldn't come up with an env string for DAEnvString %@", a3}];
}

- (id)_apsEnvStringForDAEnvString:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CEE9F0];
  if (([v3 isEqualToString:@"production"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"development"])
    {
      v5 = MEMORY[0x277CEE9E8];
    }

    else
    {
      if (![v3 isEqualToString:@"demo"])
      {
        goto LABEL_7;
      }

      v5 = MEMORY[0x277CEE9E0];
    }

    v6 = *v5;

    v4 = v6;
  }

LABEL_7:

  return v4;
}

- (id)_portNameForEnvironmentName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"production"])
  {
    v4 = @"com.apple.dataaccess.dataaccessd.aps";
  }

  else if ([v3 isEqualToString:@"development"])
  {
    v4 = @"com.apple.dataaccess.dataaccessd.aps.dev";
  }

  else if ([v3 isEqualToString:@"demo"])
  {
    v4 = @"com.apple.dataaccess.dataaccessd.aps.demo";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_connectionForEnv:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEE9F0];
  if (!self->_apsConnections)
  {
    v7 = objc_opt_new();
    apsConnections = self->_apsConnections;
    self->_apsConnections = v7;
  }

  v9 = [MEMORY[0x277D03910] APSEnv];

  if (v9)
  {
    v10 = [MEMORY[0x277D03910] APSEnv];

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&dword_248524000, v11, v12, "Forcing APS environment to %@", &v21, 0xCu);
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = [(NSMutableDictionary *)self->_apsConnections objectForKeyedSubscript:v10];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (v10)
    {
      v15 = [(DARefreshManager *)self _apsEnvStringForDAEnvString:v10];

      v6 = v15;
    }

    if (!v6)
    {
      [(DARefreshManager *)a2 _connectionForEnv:v10];
    }

    v16 = objc_alloc(MEMORY[0x277CEEA10]);
    v17 = [(DARefreshManager *)self _portNameForEnvironmentName:v6];
    v18 = dataaccess_get_global_queue();
    v14 = [v16 initWithEnvironmentName:v6 namedDelegatePort:v17 queue:v18];

    [v14 setDelegate:self];
    [(NSMutableDictionary *)self->_apsConnections setObject:v14 forKeyedSubscript:v6];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_registerAPSTopicsForDelegates:(id)a3 withConnection:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [v5 allKeys];
    *buf = 138412290;
    v55 = v9;
    _os_log_impl(&dword_248524000, v7, v8, "Setting our enabled APS topics to %@", buf, 0xCu);
  }

  v10 = [v5 allKeys];
  [v6 setEnabledTopics:v10];

  v45 = [v6 publicToken];
  if (v45)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = [v5 allValues];
    v42 = [v11 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v42)
    {
      v38 = v6;
      v39 = v5;
      v40 = *v51;
      v41 = v11;
      do
      {
        v12 = 0;
        do
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(v11);
          }

          v43 = v12;
          v13 = *(*(&v50 + 1) + 8 * v12);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          obj = v13;
          v14 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v47;
            do
            {
              v17 = 0;
              do
              {
                if (*v47 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v46 + 1) + 8 * v17);
                v19 = [v18 delegate];
                v20 = [v19 onBehalfOfBundleIdentifier];

                if ([v18 pushState] != 2)
                {
                  goto LABEL_17;
                }

                v21 = [v18 pushRegistrationTime];
                if (!v21)
                {
                  goto LABEL_17;
                }

                v22 = v21;
                v23 = [v18 pushRegistrationTime];
                [v23 timeIntervalSinceNow];
                v25 = v24;

                if (v25 >= -86400.0)
                {
                  v31 = DALoggingwithCategory();
                  if (os_log_type_enabled(v31, v8))
                  {
                    v32 = [v18 pushState];
                    v33 = [v18 pushRegistrationTime];
                    v34 = [v18 pushRegistrationTime];
                    [v34 timeIntervalSinceNow];
                    *buf = 138413058;
                    v55 = v18;
                    v56 = 1024;
                    v57 = v32;
                    v58 = 2112;
                    v59 = v33;
                    v60 = 2048;
                    v61 = v35;
                    _os_log_impl(&dword_248524000, v31, v8, "Skipping token re-registration; wrapper %@ is in state %d and its last push registration time was %@ (%f)", buf, 0x26u);
                  }
                }

                else
                {
LABEL_17:
                  v26 = DALoggingwithCategory();
                  if (os_log_type_enabled(v26, v8))
                  {
                    v27 = [v18 pushState];
                    v28 = [v18 pushRegistrationTime];
                    v29 = [v18 pushRegistrationTime];
                    [v29 timeIntervalSinceNow];
                    *buf = 138413058;
                    v55 = v18;
                    v56 = 1024;
                    v57 = v27;
                    v58 = 2112;
                    v59 = v28;
                    v60 = 2048;
                    v61 = v30;
                    _os_log_impl(&dword_248524000, v26, v8, "Performing token registration; Wrapper %@ is in state %d and its last push registration time was %@ (%f)", buf, 0x26u);
                  }

                  [v18 performTokenRegistrationRequestsWithToken:v45 onBehalfOf:v20];
                }

                ++v17;
              }

              while (v15 != v17);
              v36 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
              v15 = v36;
            }

            while (v36);
          }

          v12 = v43 + 1;
          v11 = v41;
        }

        while (v43 + 1 != v42);
        v42 = [v41 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v42);
      v6 = v38;
      v5 = v39;
    }
  }

  else
  {
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v11, v8, "No public token. We won't be re-registering our tokens with the server", buf, 2u);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_registerAPSTopics
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v5, "Timer fired. Re-registering everything with APS", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v11];
        v13 = [(DARefreshManager *)self _connectionForEnv:v11];
        [(DARefreshManager *)self _registerAPSTopicsForDelegates:v12 withConnection:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  if (!self->_tokenRegistrationTimer)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      v14 = DALoggingwithCategory();
      v15 = *(v4 + 2);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v14, v15, "APS token timer set outside main thread. Timer needs to be run on main thread. Push notification may be missed.", buf, 2u);
      }
    }

    v16 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__registerAPSTopics selector:0 userInfo:1 repeats:(arc4random() % 0x12C + 86400)];
    tokenRegistrationTimer = self->_tokenRegistrationTimer;
    self->_tokenRegistrationTimer = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (int)_currentTruePCStyleForDelegate:(id)a3
{
  v3 = a3;
  [v3 scheduleIdentifier];
  Style = PCSettingsGetStyle();
  if (!Style)
  {
    if (objc_opt_respondsToSelector())
    {
      Style = [v3 pushDisabled];
    }

    else
    {
      Style = 0;
    }
  }

  return Style;
}

- (void)_pushRegistrationForDelegateFailed:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 delegate];
    v7 = [v6 scheduleIdentifier];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_248524000, v4, v5, "Push registration failed for delegate %@. Falling back to poll.", &v10, 0xCu);
  }

  [v3 setPushState:3];
  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v5))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_248524000, v8, v5, "Resuming XPC Activities for polling", &v10, 2u);
  }

  [v3 startFetchActivityForPush];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_wrapperIsSuspended:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v25 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v11 = [v10 allValues];
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          v26 = v7;
          v27 = *v33;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v29;
                while (2)
                {
                  for (k = 0; k != v19; ++k)
                  {
                    if (*v29 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    if (*(*(&v28 + 1) + 8 * k) == v4)
                    {

                      v22 = 1;
                      goto LABEL_26;
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = v27;
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
            v8 = v25;
            v7 = v26;
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      v22 = 0;
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

LABEL_26:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_suspendTopicsForDelegate:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DARefreshManager *)self _enabledTopicsForWrapper:v4];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v27)
  {
    v26 = *v35;
    v6 = *(MEMORY[0x277D03988] + 6);
    *&v5 = 138412546;
    v23 = v5;
    type = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = DALoggingwithCategory();
        if (os_log_type_enabled(v9, v6))
        {
          v10 = [v4 delegate];
          v11 = [v10 scheduleIdentifier];
          *buf = v23;
          v40 = v8;
          v41 = 2112;
          v42 = v11;
          _os_log_impl(&dword_248524000, v9, v6, "Suspending topic %@ for delegate %@", buf, 0x16u);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
        v12 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(v29);
              }

              v16 = *(*(&v30 + 1) + 8 * i);
              v17 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v16, v23];
              v18 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:v16];
              if (!v18)
              {
                v18 = objc_opt_new();
                [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv setObject:v18 forKeyedSubscript:v16];
              }

              v19 = [v17 objectForKeyedSubscript:v8];
              v20 = [v18 objectForKeyedSubscript:v8];
              if (!v20)
              {
                v20 = objc_opt_new();
                [v18 setObject:v20 forKeyedSubscript:v8];
              }

              [v4 setPushRegistrationTime:0];
              [v20 addObject:v4];
              [v19 removeObject:v4];
              if (![v19 count])
              {
                [v17 removeObjectForKey:v8];
              }
            }

            v13 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v13);
        }

        [v4 setPushState:0];
        v21 = DALoggingwithCategory();
        v6 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 0;
          _os_log_impl(&dword_248524000, v21, type, "Resuming XPC Fetch Activities for polling", buf, 2u);
        }

        [v4 startFetchActivityForFetch];
        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v27);
  }

  [(DARefreshManager *)self _registerAPSTopics];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_resumeTopicsForSuspendedDelegate:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DARefreshManager *)self _suspendedTopicsForWrapper:v4];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v24)
  {
    v23 = *v33;
    type = *(MEMORY[0x277D03988] + 6);
    *&v5 = 138412546;
    v21 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = DALoggingwithCategory();
        if (os_log_type_enabled(v8, type))
        {
          v9 = [v4 delegate];
          v10 = [v9 scheduleIdentifier];
          *buf = v21;
          v38 = v7;
          v39 = 2112;
          v40 = v10;
          _os_log_impl(&dword_248524000, v8, type, "Resuming topic %@ for delegate %@", buf, 0x16u);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allKeys];
        v11 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v27);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:v15, v21];
              v17 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v15];
              if (!v17)
              {
                v17 = objc_opt_new();
                [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv setObject:v17 forKeyedSubscript:v15];
              }

              v18 = [v16 objectForKeyedSubscript:v7];
              v19 = [v17 objectForKeyedSubscript:v7];
              if (!v19)
              {
                v19 = objc_opt_new();
                [v17 setObject:v19 forKeyedSubscript:v7];
              }

              [v4 setPushRegistrationTime:0];
              [v19 addObject:v4];
              [v18 removeObject:v4];
              if (![v18 count])
              {
                [v16 removeObjectForKey:v7];
              }
            }

            v12 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v12);
        }

        v6 = v26 + 1;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v24);
  }

  [(DARefreshManager *)self _registerAPSTopics];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)pushPreferenceDidChange
{
  v2 = self;
  v51 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_wrappers;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (!v3)
  {
    v35 = 0;
    goto LABEL_26;
  }

  v6 = v3;
  v35 = 0;
  v7 = *v39;
  *&v4 = 138412546;
  v30 = v4;
  v31 = *v39;
  v32 = v2;
  type = *(MEMORY[0x277D03988] + 6);
  do
  {
    v8 = 0;
    v33 = v6;
    do
    {
      if (*v39 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v38 + 1) + 8 * v8);
      v10 = [v9 curStyle];
      v11 = [v9 delegate];
      v12 = [(DARefreshManager *)v2 _currentTruePCStyleForDelegate:v11];

      if (v12 != v10 && v12 == 0)
      {
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v5))
        {
          v34 = [v9 delegate];
          v15 = [v34 getDAAccount];
          v16 = [v15 accountDescription];
          v17 = [v9 delegate];
          v18 = [v17 getDAAccount];
          v19 = [v18 publicDescription];
          *buf = 138413058;
          v43 = v16;
          v44 = 2114;
          v45 = v19;
          v46 = 1024;
          v47 = v10;
          v48 = 1024;
          v49 = 0;
          _os_log_impl(&dword_248524000, v14, type, "Account %@ (%{public}@): Resuming Push Delegate's PC style changed from %d to %d", buf, 0x22u);

          v6 = v33;
          v5 = type;

          v7 = v31;
          v2 = v32;
        }

        [v9 startFetchActivityForPush];
        [(DARefreshManager *)v2 _resumeTopicsForSuspendedDelegate:v9];
      }

      else
      {
        if (v12 == v10)
        {
          if (([v9 isSetToExpectedFetchInterval] & 1) != 0 || (v10 - 3) < 0xFFFFFFFE)
          {
LABEL_21:
            ++v35;
            goto LABEL_22;
          }
        }

        else if ((v12 - 1) > 1)
        {
          goto LABEL_21;
        }

        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v5))
        {
          v21 = [v9 delegate];
          v22 = [v21 getDAAccount];
          v23 = [v22 accountDescription];
          v24 = [v9 delegate];
          v25 = [v24 getDAAccount];
          v26 = [v25 publicDescription];
          *buf = v30;
          v43 = v23;
          v44 = 2114;
          v45 = v26;
          _os_log_impl(&dword_248524000, v20, type, "Account %@ (%{public}@): Suspending push and resuming XPC Activity for polling", buf, 0x16u);

          v7 = v31;
          v5 = type;

          v2 = v32;
          v6 = v33;
        }

        [(DARefreshManager *)v2 _suspendTopicsForDelegate:v9];
        [v9 startFetchActivityForFetch];
      }

LABEL_22:
      [v9 setCurStyle:v12];
      ++v8;
    }

    while (v6 != v8);
    v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  }

  while (v6);
LABEL_26:

  v27 = DALoggingwithCategory();
  if (os_log_type_enabled(v27, v5))
  {
    v28 = [(NSMutableSet *)v2->_wrappers count];
    *buf = 134218240;
    v43 = v28 - v35;
    v44 = 1024;
    LODWORD(v45) = v35;
    _os_log_impl(&dword_248524000, v27, v5, "Push settings changed for %lu accounts and remained the same for %i.", buf, 0x12u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_248524000, v6, v7, "Received token %@ from APS. Registering all delegates with their servers", buf, 0xCu);
  }

  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DARefreshManager_connection_didReceivePublicToken___block_invoke;
  block[3] = &unk_278F1CDC0;
  block[4] = self;
  dispatch_sync(pcQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_248524000, v9, v10, "Received a message from APS for topic %@ with user info %@.", buf, 0x16u);
  }

  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke;
  block[3] = &unk_278F1D0B0;
  v16 = v8;
  v17 = self;
  v18 = v7;
  v12 = v7;
  v13 = v8;
  dispatch_sync(pcQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) objectForKeyedSubscript:@"key"];
  if (!v1)
  {
LABEL_21:
    if (shouldDALogAtLevel())
    {
      v17 = DALoggingwithCategory();
      v18 = MEMORY[0x277D03988];
      v19 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v17, v19))
      {
        v20 = *(a1 + 48);
        *buf = 138412290;
        v95 = v20;
        _os_log_impl(&dword_248524000, v17, v19, "Received an APS push for %@ but we don't have any enabled delegates registered for that topic.", buf, 0xCu);
      }

      v52 = v1;

      v21 = DALoggingwithCategory();
      v22 = *(v18 + 6);
      if (os_log_type_enabled(v21, v22))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v21, v22, "Enabled waiters: ", buf, 2u);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obja = [*(*(a1 + 40) + 16) allValues];
      v60 = [obja countByEnumeratingWithState:&v78 objects:v99 count:16];
      if (v60)
      {
        v57 = *v79;
        do
        {
          v23 = 0;
          do
          {
            if (*v79 != v57)
            {
              objc_enumerationMutation(obja);
            }

            v63 = v23;
            v24 = *(*(&v78 + 1) + 8 * v23);
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v25 = [v24 objectForKeyedSubscript:{*(a1 + 48), v52}];
            v26 = [v25 countByEnumeratingWithState:&v74 objects:v98 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v75;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v75 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v74 + 1) + 8 * i);
                  v31 = DALoggingwithCategory();
                  if (os_log_type_enabled(v31, v22))
                  {
                    v32 = [v30 delegate];
                    v33 = [v32 scheduleIdentifier];
                    v34 = [v30 delegate];
                    v35 = [v34 watchedCollections];
                    *buf = 138412546;
                    v95 = v33;
                    v96 = 2112;
                    v97 = v35;
                    _os_log_impl(&dword_248524000, v31, v22, "Waiter %@: %@", buf, 0x16u);
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v74 objects:v98 count:16];
              }

              while (v27);
            }

            v23 = v63 + 1;
          }

          while (v63 + 1 != v60);
          v60 = [obja countByEnumeratingWithState:&v78 objects:v99 count:16];
        }

        while (v60);
      }

      v36 = DALoggingwithCategory();
      if (os_log_type_enabled(v36, v22))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v36, v22, "Suspended waiters: ", buf, 2u);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      objb = [*(*(a1 + 40) + 24) allValues];
      v61 = [objb countByEnumeratingWithState:&v70 objects:v93 count:16];
      if (v61)
      {
        v58 = *v71;
        do
        {
          v37 = 0;
          do
          {
            if (*v71 != v58)
            {
              objc_enumerationMutation(objb);
            }

            v64 = v37;
            v38 = *(*(&v70 + 1) + 8 * v37);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v39 = [v38 objectForKeyedSubscript:{*(a1 + 48), v52}];
            v40 = [v39 countByEnumeratingWithState:&v66 objects:v92 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v67;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v67 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v66 + 1) + 8 * j);
                  v45 = DALoggingwithCategory();
                  if (os_log_type_enabled(v45, v22))
                  {
                    v46 = [v44 delegate];
                    v47 = [v46 scheduleIdentifier];
                    v48 = [v44 delegate];
                    v49 = [v48 watchedCollections];
                    *buf = 138412546;
                    v95 = v47;
                    v96 = 2112;
                    v97 = v49;
                    _os_log_impl(&dword_248524000, v45, v22, "Waiter %@: %@", buf, 0x16u);
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v66 objects:v92 count:16];
              }

              while (v41);
            }

            v37 = v64 + 1;
          }

          while (v64 + 1 != v61);
          v61 = [objb countByEnumeratingWithState:&v70 objects:v93 count:16];
        }

        while (v61);
      }

      v1 = v52;
    }

    goto LABEL_61;
  }

  v2 = [MEMORY[0x277CBEB98] setWithObject:v1];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v3 = [*(*(a1 + 40) + 16) allValues];
  v59 = [v3 countByEnumeratingWithState:&v88 objects:v101 count:16];
  if (!v59)
  {

    goto LABEL_21;
  }

  v51 = v1;
  obj = v3;
  v4 = 0;
  v56 = *v89;
  do
  {
    v5 = 0;
    do
    {
      if (*v89 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v62 = v5;
      v6 = *(*(&v88 + 1) + 8 * v5);
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v7 = [v6 objectForKeyedSubscript:{*(a1 + 48), v51}];
      v8 = [v7 countByEnumeratingWithState:&v84 objects:v100 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v85;
        do
        {
          for (k = 0; k != v9; ++k)
          {
            if (*v85 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v84 + 1) + 8 * k);
            v13 = [v12 delegate];
            v14 = [v13 watchedCollections];
            v15 = [v14 mutableCopy];

            [v15 intersectSet:v2];
            if ([v15 count])
            {
              v16 = dataaccess_get_global_queue();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke_2;
              block[3] = &unk_278F1CD98;
              block[4] = v12;
              v83 = v15;
              dispatch_async(v16, block);

              v4 = 1;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v84 objects:v100 count:16];
        }

        while (v9);
      }

      v5 = v62 + 1;
    }

    while (v62 + 1 != v59);
    v59 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
  }

  while (v59);

  v1 = v51;
  if ((v4 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_61:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)_refreshWrapperForDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_wrappers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 delegate];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_enabledTopicsForWrapper:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allValues];
  v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  v5 = 0;
  if (v21)
  {
    v20 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v25 = v7;
        v23 = [v7 allKeys];
        v8 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v24 = *v31;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v23);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v12 = [v25 objectForKeyedSubscript:v11];
              v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v27;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v27 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (*(*(&v26 + 1) + 8 * j) == v4)
                    {
                      if (!v5)
                      {
                        v5 = [MEMORY[0x277CBEB58] set];
                      }

                      [v5 addObject:v11];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
                }

                while (v14);
              }
            }

            v9 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v9);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_suspendedTopicsForWrapper:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
  v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  v5 = 0;
  if (v21)
  {
    v20 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v25 = v7;
        v23 = [v7 allKeys];
        v8 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v24 = *v31;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v23);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v12 = [v25 objectForKeyedSubscript:v11];
              v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v27;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v27 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (*(*(&v26 + 1) + 8 * j) == v4)
                    {
                      if (!v5)
                      {
                        v5 = [MEMORY[0x277CBEB58] set];
                      }

                      [v5 addObject:v11];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
                }

                while (v14);
              }
            }

            v9 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v9);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)registerDelegate:(id)a3
{
  v4 = a3;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DARefreshManager_registerDelegate___block_invoke;
  v7[3] = &unk_278F1CD98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(pcQueue, v7);
}

void __37__DARefreshManager_registerDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) scheduleIdentifier];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248524000, v2, v3, "Registering delegate %@ for PC notifications", &v7, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 setDelegate:*(a1 + 32)];
  [v5 setCurStyle:{objc_msgSend(*(a1 + 40), "_currentTruePCStyleForDelegate:", *(a1 + 32))}];
  [v5 startFetchActivityForFetch];
  [*(*(a1 + 40) + 32) addObject:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDelegate:(id)a3
{
  v4 = a3;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__DARefreshManager_unregisterDelegate___block_invoke;
  v7[3] = &unk_278F1CD98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(pcQueue, v7);
}

void __39__DARefreshManager_unregisterDelegate___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = [*(a1 + 40) scheduleIdentifier];
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&dword_248524000, v3, v5, "Begin Unregistering delegate %@ for all PC and APS notifications", buf, 0xCu);
  }

  if (v2)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = DALoggingwithCategory();
    v9 = os_log_type_enabled(v8, v5);
    if (v7)
    {
      if (v9)
      {
        v10 = [*(a1 + 40) scheduleIdentifier];
        *buf = 138412546;
        v35 = v2;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_248524000, v8, v5, "Shutdown: Wrapper %@ Leaving push topics registered. delegate %@ for all PC and APS notifications", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v14 = [*(a1 + 40) scheduleIdentifier];
        *buf = 138412290;
        v35 = v14;
        _os_log_impl(&dword_248524000, v8, v5, "Unregistering delegate %@ for all PC and APS notifications", buf, 0xCu);
      }

      v15 = [*(a1 + 32) _enabledTopicsForWrapper:v2];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(a1 + 32) _unregisterTopicLocked:*(*(&v30 + 1) + 8 * i) forDelegate:*(a1 + 40) inEnvironment:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v17);
      }

      v20 = [*(a1 + 32) _suspendedTopicsForWrapper:v2];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v20;
      v21 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v8);
            }

            [*(a1 + 32) _unregisterTopicLocked:*(*(&v26 + 1) + 8 * j) forDelegate:*(a1 + 40) inEnvironment:{0, v26}];
          }

          v22 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v22);
      }

      [v2 stopCollectionsRefresh];
    }

    [v2 setDelegate:0];
    [*(*(a1 + 32) + 32) removeObject:v2];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(v4 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [*(a1 + 40) scheduleIdentifier];
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&dword_248524000, v11, v12, "Delegate %@ was unregistered, but it was never registered", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_dailyRefreshActivityFired
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_wrappersForDailyRefresh mutableCopy];
  objc_sync_exit(v2);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) dailyRefreshActivityFired];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startDailyRefreshActivityForWrapper:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_wrappersForDailyRefresh addObject:v4];
  if (!v5->_dailyRefreshInitialized)
  {
    v5->_dailyRefreshInitialized = 1;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v6, v7, "Registering daily refresh xpc activity.", buf, 2u);
    }

    v8 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke;
    handler[3] = &unk_278F1CEA8;
    handler[4] = v5;
    xpc_activity_register("com.apple.dataaccess.dataaccessd.dailyrefresh", v8, handler);
  }

  objc_sync_exit(v5);
}

void __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke_61;
    block[3] = &unk_278F1CDC0;
    block[4] = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    v6 = xpc_activity_copy_criteria(v3);
    if (!v6 || !xpc_equal(v5, v6))
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v7, v8, "Updating criteria for daily refresh xpc activity.", buf, 2u);
      }

      xpc_activity_set_criteria(v3, v5);
    }
  }
}

- (void)endDailyRefreshActivityForWrapper:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_wrappersForDailyRefresh removeObject:v4];
  if (![(NSMutableSet *)v5->_wrappersForDailyRefresh count])
  {
    v5->_dailyRefreshInitialized = 0;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *v8 = 0;
      _os_log_impl(&dword_248524000, v6, v7, "Unregistering daily refresh xpc activity.", v8, 2u);
    }

    xpc_activity_unregister("com.apple.dataaccess.dataaccessd.dailyrefresh");
  }

  objc_sync_exit(v5);
}

- (void)registerTopic:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke;
  block[3] = &unk_278F1D368;
  v17 = v11;
  v18 = v9;
  v20 = v10;
  v21 = a2;
  v19 = self;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_sync(pcQueue, block);
}

void __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke_cold_1(a1);
  }

  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [*(a1 + 56) scheduleIdentifier];
    v6 = *(a1 + 40);
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&dword_248524000, v3, v4, "Registering delegate %@ for topic %@ in environment %@", &v14, 0x20u);
  }

  v7 = [*(a1 + 48) _refreshWrapperForDelegate:*(a1 + 56)];
  if (!v2)
  {
    v2 = @"production";
  }

  v8 = ([*(a1 + 48) _wrapperIsSuspended:v7] & 1) != 0 || objc_msgSend(*(a1 + 48), "_currentTruePCStyleForDelegate:", *(a1 + 56)) != 0;
  v9 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v2];
  if (v9)
  {
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = objc_opt_new();
    [*(*(a1 + 48) + 16) setObject:v9 forKeyedSubscript:v2];
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v4))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_248524000, v10, v4, "Delegate is not set to push, so putting it on the suspended queue", &v14, 2u);
  }

  v11 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v2];

  v9 = v11;
  if (!v11)
  {
    v9 = objc_opt_new();
    [*(*(a1 + 48) + 24) setObject:v9 forKeyedSubscript:v2];
  }

LABEL_18:
  v12 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    [v9 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }

  [v12 addObject:v7];
  if (!v8)
  {
    [*(a1 + 48) _registerAPSTopics];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterWrapper:(id)a3 forTopic:(id)a4 inTopicDictionary:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [v9 objectForKeyedSubscript:v8];
    [v11 removeObject:v7];
    if (![v11 count])
    {
      [v10 removeObjectForKey:v8];
    }
  }

  else
  {
    v11 = [v9 copy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:v17];
          [v18 removeObject:v7];
          if (![v18 count])
          {
            [v10 removeObjectForKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterTopicLocked:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  type = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, type))
  {
    v13 = [v9 scheduleIdentifier];
    *buf = 138412546;
    v62 = v13;
    v63 = 2112;
    v64 = v8;
    _os_log_impl(&dword_248524000, v11, type, "Removing refresh manager delegate for account %@ from topic %@", buf, 0x16u);
  }

  v14 = [(DARefreshManager *)self _refreshWrapperForDelegate:v9];
  v43 = v10;
  v44 = v9;
  if (v14)
  {
    if (v10)
    {
      v15 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v10];
      [(DARefreshManager *)self _unregisterWrapper:v14 forTopic:v8 inTopicDictionary:v15];
      v16 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:v10];

      [(DARefreshManager *)self _unregisterWrapper:v14 forTopic:v8 inTopicDictionary:v16];
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v19 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allValues];
      v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v55;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v55 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [(DARefreshManager *)self _unregisterWrapper:v14 forTopic:v8 inTopicDictionary:*(*(&v54 + 1) + 8 * i)];
          }

          v21 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v21);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v16 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
      v24 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v51;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v51 != v26)
            {
              objc_enumerationMutation(v16);
            }

            [(DARefreshManager *)self _unregisterWrapper:v14 forTopic:v8 inTopicDictionary:*(*(&v50 + 1) + 8 * j)];
          }

          v25 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v25);
      }
    }
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(v12 + 4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = [v9 scheduleIdentifier];
      *buf = 138412546;
      v62 = v18;
      v63 = 2112;
      v64 = v8;
      _os_log_impl(&dword_248524000, v16, v17, "Delegate %@ tried to unregister for the topic %@, but that delegate is not registered with the refresh manager", buf, 0x16u);
    }
  }

  v28 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * k);
        v35 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v34];
        if ([v35 count])
        {
          v36 = [v35 allKeys];
          [v28 addObjectsFromArray:v36];
        }

        else
        {
          [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv removeObjectForKey:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v31);
  }

  v37 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv count];
  v38 = DALoggingwithCategory();
  v39 = os_log_type_enabled(v38, type);
  if (v37)
  {
    v41 = v43;
    v40 = v44;
    if (v39)
    {
      *buf = 138412290;
      v62 = v28;
      _os_log_impl(&dword_248524000, v38, type, "Setting ourself enabled for these APS topics: %@", buf, 0xCu);
    }

    [(DARefreshManager *)self _registerAPSTopics];
  }

  else
  {
    v41 = v43;
    v40 = v44;
    if (v39)
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v38, type, "No more delegates for any topic. Tearing down APS", buf, 2u);
    }

    [(DARefreshManager *)self _tearDownAPS];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)unregisterTopic:(id)a3 forDelegate:(id)a4 inEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  pcQueue = self->_pcQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DARefreshManager_unregisterTopic_forDelegate_inEnvironment___block_invoke;
  v15[3] = &unk_278F1CFE8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(pcQueue, v15);
}

- (void)delegateDidCompleteRefresh:(id)a3
{
  v4 = a3;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DARefreshManager_delegateDidCompleteRefresh___block_invoke;
  v7[3] = &unk_278F1CD98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(pcQueue, v7);
}

void __47__DARefreshManager_delegateDidCompleteRefresh___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  if (v2)
  {
    if ([*(a1 + 32) _currentTruePCStyleForDelegate:*(a1 + 40)])
    {
      v3 = DALoggingwithCategory();
      v4 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v3, v4))
      {
        v5 = [*(a1 + 40) scheduleIdentifier];
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_248524000, v3, v4, "Resuming account %@ for polling", &v10, 0xCu);
      }

      [v2 startFetchActivityForFetch];
    }
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [*(a1 + 40) scheduleIdentifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_248524000, v6, v7, "Delegate %@ finished a refresh but it is not registered with the refresh manager", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)delegateDidSuccessfullyRecoverFromBeingUnauthenticated:(id)a3
{
  v4 = a3;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__DARefreshManager_delegateDidSuccessfullyRecoverFromBeingUnauthenticated___block_invoke;
  v7[3] = &unk_278F1CD98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(pcQueue, v7);
}

void __75__DARefreshManager_delegateDidSuccessfullyRecoverFromBeingUnauthenticated___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getDAAccount];
  v3 = [v2 accountID];

  v4 = DALoggingwithCategory();
  v5 = v4;
  if (v3)
  {
    type = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v4, type))
    {
      *buf = 138543362;
      v35 = v3;
      _os_log_impl(&dword_248524000, v5, type, "Account %{public}@ successfully recovered from being unauthenticated. Retrying children...", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = *(*(a1 + 40) + 32);
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v30;
      v27 = *MEMORY[0x277CB90B8];
      *&v7 = 138543362;
      v25 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v11 delegate];
          v13 = [v12 getDAAccount];

          v14 = [v13 backingAccountInfo];
          v15 = [v14 parentAccountIdentifier];
          if ([v15 isEqualToString:v3])
          {
            v28 = v11;
            [v14 authenticationType];
            v16 = v9;
            v17 = v3;
            v19 = v18 = v5;
            v20 = [v19 isEqualToString:v27];

            v5 = v18;
            v3 = v17;
            v9 = v16;

            if (v20)
            {
              v21 = DALoggingwithCategory();
              if (os_log_type_enabled(v21, type))
              {
                v22 = [v14 identifier];
                *buf = v25;
                v35 = v22;
                _os_log_impl(&dword_248524000, v21, type, "Refreshing child account %{public}@ because its parent just recovered from being unauthenticated.", buf, 0xCu);
              }

              [v28 refreshCollections:0 withReason:1];
            }
          }

          else
          {
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v23))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v5, v23, "No account identifier in call to delegateDidSuccessfullyRecoverFromBeingUnauthenticated:. Ignoring.", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)retryRefreshForDelegate:(id)a3 withCollections:(id)a4 after:(double)a5 originalRefreshReason:(int)a6
{
  v10 = a3;
  v11 = a4;
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__DARefreshManager_retryRefreshForDelegate_withCollections_after_originalRefreshReason___block_invoke;
  block[3] = &unk_278F1D390;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_sync(pcQueue, block);
}

void __88__DARefreshManager_retryRefreshForDelegate_withCollections_after_originalRefreshReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 retryCollections:*(a1 + 48) after:*(a1 + 64) reason:*(a1 + 56)];
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [*(a1 + 40) scheduleIdentifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_248524000, v4, v5, "Delegate %@ told us to retry a refresh later but it is not registered with the refresh manager", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)pushTokenForEnvironment:(id)a3
{
  v4 = [(DARefreshManager *)self _apsEnvStringForDAEnvString:a3];
  v5 = [(DARefreshManager *)self _connectionForEnv:v4];
  v6 = [v5 publicToken];

  return v6;
}

- (void)_connectionForEnv:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DARefreshManager.m" lineNumber:227 description:{@"Couldn't come up with an env string for DAEnvString %@", a3}];
}

void __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke_cold_1(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) scheduleIdentifier];
  [v5 handleFailureInMethod:v2 object:v3 file:@"DARefreshManager.m" lineNumber:666 description:{@"Delegate %@ tried to register for a nil topic.", v4}];
}

@end