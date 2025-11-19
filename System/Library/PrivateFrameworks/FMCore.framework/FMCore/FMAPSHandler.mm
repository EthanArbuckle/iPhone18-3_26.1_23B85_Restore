@interface FMAPSHandler
+ (id)constantForEnvironmentString:(id)a3;
- (FMAPSHandler)initWithEnvironmentName:(id)a3 launchOnDemandPort:(id)a4;
- (NSString)apsToken;
- (void)_handleMessage:(id)a3 onTopic:(id)a4;
- (void)_registrationsWereResumed;
- (void)_setEnabledTopics:(id)a3;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)deregisterDelegate:(id)a3;
- (void)invalidate;
- (void)registerDelegate:(id)a3 forTopic:(id)a4;
- (void)resumeRegistrations;
@end

@implementation FMAPSHandler

- (NSString)apsToken
{
  v2 = [(FMAPSHandler *)self apsConnection];
  v3 = [v2 publicToken];
  v4 = [v3 fm_hexString];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)constantForEnvironmentString:(id)a3
{
  v3 = a3;
  v4 = [v3 compare:@"production" options:1];
  v5 = MEMORY[0x277CEE9F0];
  if (v4)
  {
    if ([v3 compare:@"development" options:1])
    {
      if (![v3 compare:@"demo" options:1])
      {
        v5 = MEMORY[0x277CEE9E0];
      }
    }

    else
    {
      v5 = MEMORY[0x277CEE9E8];
    }
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

- (FMAPSHandler)initWithEnvironmentName:(id)a3 launchOnDemandPort:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = FMAPSHandler;
  v8 = [(FMAPSHandler *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(FMAPSHandler *)v8 setEnvironmentName:v6];
    v10 = [MEMORY[0x277CBEB18] array];
    [(FMAPSHandler *)v9 setRegisteredDelegates:v10];

    v11 = [MEMORY[0x277CBEB18] array];
    [(FMAPSHandler *)v9 setPendingPushes:v11];

    v12 = objc_alloc(MEMORY[0x277CEEA10]);
    if (v7)
    {
      v13 = [v12 initWithEnvironmentName:v6 namedDelegatePort:v7 queue:MEMORY[0x277D85CD0]];
    }

    else
    {
      v13 = [v12 initWithEnvironmentName:v6 queue:MEMORY[0x277D85CD0]];
    }

    v14 = v13;
    [(FMAPSHandler *)v9 setApsConnection:v13];

    v15 = [(FMAPSHandler *)v9 apsConnection];
    [v15 setDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(FMAPSHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = FMAPSHandler;
  [(FMAPSHandler *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = [(FMAPSHandler *)self apsConnection];
  [v3 setDelegate:0];

  [(FMAPSHandler *)self _setEnabledTopics:0];
  v4 = [(FMAPSHandler *)self apsConnection];
  [v4 shutdown];
}

- (void)resumeRegistrations
{
  [(FMAPSHandler *)self setRegistrationsSuspended:0];

  [(FMAPSHandler *)self _registrationsWereResumed];
}

- (void)registerDelegate:(id)a3 forTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FMAPSHandler_registerDelegate_forTopic___block_invoke;
  block[3] = &unk_278FD98E8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__FMAPSHandler_registerDelegate_forTopic___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) registeredDelegates];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (!v4)
  {

LABEL_13:
    v12 = objc_alloc_init(FMAPSDelegateInfo);
    [(FMAPSDelegateInfo *)v12 setTopic:*(a1 + 48)];
    [(FMAPSDelegateInfo *)v12 setDelegate:*(a1 + 40)];
    v13 = [*(a1 + 32) registeredDelegates];
    [v13 addObject:v12];

    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v32;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      v10 = [v9 delegate];
      v11 = *(a1 + 40);

      if (v10 == v11)
      {
        [v9 setTopic:*(a1 + 48)];
        v6 = 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([*v2 registrationsSuspended])
  {
    v14 = LogCategory_APS();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __42__FMAPSHandler_registerDelegate_forTopic___block_invoke_cold_1(a1, v2);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [*v2 registeredDelegates];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v27 + 1) + 8 * j) topic];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v17);
    }

    v21 = LogCategory_APS();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 48);
      v26 = [*(a1 + 32) environmentName];
      *buf = 138412802;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v14;
      _os_log_debug_impl(&dword_24A2EE000, v21, OS_LOG_TYPE_DEBUG, "Registering for topic %@ in environment %@. Total topics : %@", buf, 0x20u);
    }

    v22 = *v2;
    v23 = [v14 allObjects];
    [v22 _setEnabledTopics:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)deregisterDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__FMAPSHandler_deregisterDelegate___block_invoke;
  v6[3] = &unk_278FD9690;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = LogCategory_APS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_1(a1);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [*(a1 + 40) registeredDelegates];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 delegate];
        v11 = *(a1 + 32);

        if (v10 != v11)
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v12 = [*(a1 + 40) registeredDelegates];
  v13 = [v12 count];
  v14 = [v2 count];

  if (v13 != v14)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 40) setRegisteredDelegates:v2];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [*(a1 + 40) registeredDelegates];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * j) topic];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v22 = LogCategory_APS();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_2(v15, v22);
    }

    v23 = *(a1 + 40);
    v24 = [v15 allObjects];
    [v23 _setEnabledTopics:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_registrationsWereResumed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__FMAPSHandler__registrationsWereResumed__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__FMAPSHandler__registrationsWereResumed__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [*(a1 + 32) registeredDelegates];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v28 + 1) + 8 * i) topic];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v5);
  }

  v9 = LogCategory_APS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __41__FMAPSHandler__registrationsWereResumed__block_invoke_cold_1(v2, v9);
  }

  v10 = *(a1 + 32);
  v23 = v2;
  v11 = [v2 allObjects];
  [v10 _setEnabledTopics:v11];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 32) pendingPushes];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        v18 = [v17 objectForKeyedSubscript:@"topic"];
        v19 = [v17 objectForKeyedSubscript:@"message"];
        v20 = LogCategory_APS();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v33 = v18;
          v34 = 2112;
          v35 = v19;
          _os_log_debug_impl(&dword_24A2EE000, v20, OS_LOG_TYPE_DEBUG, "Replaying APS message on topic %@: %@", buf, 0x16u);
        }

        [*(a1 + 32) _handleMessage:v19 onTopic:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v14);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  [*(a1 + 32) setPendingPushes:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleMessage:(id)a3 onTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FMAPSHandler__handleMessage_onTopic___block_invoke;
  block[3] = &unk_278FD98E8;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__FMAPSHandler__handleMessage_onTopic___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) registrationsSuspended])
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = LogCategory_APS();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_INFO, "Registrations are suspended. Queueing the APS message for later use", buf, 2u);
    }

    [v2 setObject:*(a1 + 40) forKeyedSubscript:@"topic"];
    v4 = *(a1 + 48);
    if (v4)
    {
      [v2 setObject:v4 forKeyedSubscript:@"message"];
    }

    v5 = [*(a1 + 32) pendingPushes];
    [v5 addObject:v2];
  }

  else
  {
    v6 = LogCategory_APS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) registeredDelegates];
      *buf = 134217984;
      v26 = [v7 count];
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Checking for a handler for the APS message from %lu registered delegates", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = [*(a1 + 32) registeredDelegates];
    v8 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
      *&v9 = 138412290;
      v19 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 topic];
          v15 = [v14 isEqualToString:*(a1 + 40)];

          if (v15)
          {
            v16 = [v13 delegate];
            v17 = LogCategory_APS();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v26 = v16;
              _os_log_impl(&dword_24A2EE000, v17, OS_LOG_TYPE_INFO, "Found delegate with matching topic %@", buf, 0xCu);
            }

            [v16 didReceiveAPSMessage:*(a1 + 48)];
          }
        }

        v10 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setEnabledTopics:(id)a3
{
  v4 = a3;
  v5 = [(FMAPSHandler *)self apsConnection];
  [v5 _setEnabledTopics:v4];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a4 fm_hexString];
  v6 = LogCategory_APS();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(FMAPSHandler *)self environmentName];
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Received updated APS token %@ for environment %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke;
  v10[3] = &unk_278FD9690;
  v11 = v5;
  v12 = self;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = LogCategory_APS();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_cold_1(a1);
    }

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_37;
    activity_block[3] = &unk_278FD9690;
    v4 = *(a1 + 32);
    v3 = v4.i64[0];
    v6 = vextq_s8(v4, v4, 8uLL);
    _os_activity_initiate(&dword_24A2EE000, "APS token changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_37(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) registeredDelegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) delegate];
        [v7 didReceiveAPSToken:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = LogCategory_APS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_INFO, "Received APS message on topic %@: %@", buf, 0x16u);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __62__FMAPSHandler_connection_didReceiveMessageForTopic_userInfo___block_invoke;
  activity_block[3] = &unk_278FD98E8;
  activity_block[4] = self;
  v14 = v8;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  _os_activity_initiate(&dword_24A2EE000, "APS message received", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v12 = *MEMORY[0x277D85DE8];
}

void __42__FMAPSHandler_registerDelegate_forTopic___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*a2 environmentName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) environmentName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_DEBUG, "Updating list of topics after deregister: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __41__FMAPSHandler__registrationsWereResumed__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_DEBUG, "Updating list of topics after suspension was removed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) registeredDelegates];
  [v1 count];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end