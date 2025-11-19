@interface DATaskManager
- (BOOL)_hasTasksForcingNetworkConnection;
- (BOOL)_hasTasksIndicatingARunningSync;
- (BOOL)_taskForcesNetworking:(id)a3;
- (BOOL)_taskInQueueForcesNetworkConnection:(id)a3;
- (BOOL)isShutdown;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)taskIsModal:(id)a3;
- (BOOL)useSSL;
- (DAAccount)account;
- (DATaskManager)initWithAccount:(id)a3;
- (NSArray)allTasks;
- (NSMutableArray)mQueuedTasks;
- (NSMutableArray)queuedExclusiveTasks;
- (NSMutableArray)queuedIndependentTasks;
- (NSMutableArray)queuedModalTasks;
- (NSMutableSet)heldIndependentTasks;
- (NSMutableSet)independentTasks;
- (NSMutableSet)modalHeldIndependentTasks;
- (id)OAuth2Token;
- (id)_powerLogInfoDictionary;
- (id)_version;
- (id)accountID;
- (id)accountPersistentUUID;
- (id)identityPersist;
- (id)password;
- (id)server;
- (id)stateString;
- (id)user;
- (id)userAgent;
- (int64_t)port;
- (uint64_t)_makeStateTransition;
- (void)_clearUserInitiatedSyncTimer;
- (void)_endXpcTransaction;
- (void)_logSyncEnd;
- (void)_makeStateTransition;
- (void)_performTask:(id)a3;
- (void)_populateVersionDescriptions;
- (void)_reactivateHeldTasks;
- (void)_releasePowerAssertionForTask:(id)a3;
- (void)_retainPowerAssertionForTask:(id)a3;
- (void)_scheduleSelector:(SEL)a3 withArgument:(id)a4;
- (void)_scheduleStartModal:(id)a3;
- (void)_startModal:(id)a3;
- (void)_useOpportunisticSocketsAgain;
- (void)cancelAllTasks;
- (void)cancelTask:(id)a3 withUnderlyingError:(id)a4;
- (void)dealloc;
- (void)shutdown;
- (void)submitExclusiveTask:(id)a3 toFrontOfQueue:(BOOL)a4;
- (void)submitIndependentTask:(id)a3;
- (void)submitQueuedTask:(id)a3;
- (void)taskDidFinish:(id)a3;
- (void)taskEndModal:(id)a3;
- (void)taskRequestModal:(id)a3;
@end

@implementation DATaskManager

- (NSArray)allTasks
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DATaskManager *)v4 queuedExclusiveTasks];

  if (v5)
  {
    v6 = [(DATaskManager *)v4 queuedExclusiveTasks];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(DATaskManager *)v4 activeExclusiveTask];

  if (v7)
  {
    v8 = [(DATaskManager *)v4 activeExclusiveTask];
    [v3 addObject:v8];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [(DATaskManager *)v4 independentTasks];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v10)
  {
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v3 addObject:*(*(&v37 + 1) + 8 * i)];
      }

      v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v4->_heldIndependentTasks;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v14)
  {
    v15 = *v34;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v3 addObject:*(*(&v33 + 1) + 8 * j)];
      }

      v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v14);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v4->_modalHeldIndependentTasks;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = *v30;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [v3 addObject:{*(*(&v29 + 1) + 8 * k), v29}];
      }

      v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v18);
  }

  if (v4->_queuedIndependentTasks)
  {
    [v3 addObjectsFromArray:?];
  }

  v21 = [(DATaskManager *)v4 mQueuedTasks];

  if (v21)
  {
    v22 = [(DATaskManager *)v4 mQueuedTasks];
    [v3 addObjectsFromArray:v22];
  }

  v23 = [(DATaskManager *)v4 activeQueuedTask];

  if (v23)
  {
    v24 = [(DATaskManager *)v4 activeQueuedTask];
    [v3 addObject:v24];
  }

  v25 = [(DATaskManager *)v4 modalHeldActiveQueuedTask];

  if (v25)
  {
    v26 = [(DATaskManager *)v4 modalHeldActiveQueuedTask];
    [v3 addObject:v26];
  }

  objc_sync_exit(v4);

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (DATaskManager)initWithAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DATaskManager;
  v5 = [(DATaskManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    [(DATaskManager *)v7 setAccount:v4];
    [(DATaskManager *)v7 setState:0];
    v7->_maxConcurrentIndependentTasks = 20;
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)v3->_queuedExclusiveTasks count])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:121 description:@"There are queued exclusive tasks remaining during dealloc"];
  }

  if (v3->_activeExclusiveTask)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:122 description:@"There is an active exclusive task remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_independentTasks count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:123 description:@"There are independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_heldIndependentTasks count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:124 description:@"There are held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_modalHeldIndependentTasks count])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:125 description:@"There are modal-held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableArray *)v3->_queuedIndependentTasks count])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:126 description:@"There are queued independent tasks remaining during dealloc"];
  }

  if ([(NSMutableArray *)v3->_mQueuedTasks count])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:127 description:@"There are queued tasks remaining during dealloc"];
  }

  if (v3->_activeQueuedTask)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:128 description:@"There is an active queued task remaining during dealloc"];
  }

  if (v3->_modalHeldActiveQueuedTask)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:129 description:@"There is a modal-held active queued task remaining during dealloc"];
  }

  [(NSTimer *)v3->_powerLogIdleTimer invalidate];
  if (v3->_didLogSyncStart)
  {
    [(DATaskManager *)v3 _logSyncEnd];
  }

  [(NSTimer *)v3->_managerIdleTimer invalidate];
  [(NSTimer *)v3->_userInitiatedSyncTimer invalidate];
  [(NSTimer *)v3->_xpcTransactionTimer invalidate];
  v4 = MEMORY[0x277D03988];
  if (v3->_transaction)
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_24844D000, v5, v6, "Task manager %@ is being deallocated. Ending XPC transaction", buf, 0xCu);
    }

    transaction = v3->_transaction;
    v3->_transaction = 0;
  }

  if (v3->_daActivity)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 6);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_24844D000, v8, v9, "Task manager %@ is being deallocated. Ending XPC activity", buf, 0xCu);
    }

    daActivity = v3->_daActivity;
    v3->_daActivity = 0;
  }

  objc_sync_exit(v3);

  v21.receiver = v3;
  v21.super_class = DATaskManager;
  [(DATaskManager *)&v21 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_populateVersionDescriptions
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v6 = v2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  v4 = [v3 copy];
  v5 = sVersion;
  sVersion = v4;
}

- (id)_version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DATaskManager__version__block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  if (_version_onceToken != -1)
  {
    dispatch_once(&_version_onceToken, block);
  }

  return sVersion;
}

- (id)userAgent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__DATaskManager_userAgent__block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  if (userAgent_onceToken != -1)
  {
    dispatch_once(&userAgent_onceToken, block);
  }

  return userAgent_sUserAgentString;
}

void __26__DATaskManager_userAgent__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v6 = DAModelString();
  v3 = [*(a1 + 32) _version];
  v4 = [v2 stringWithFormat:@"Apple-%@/%@", v6, v3];
  v5 = userAgent_sUserAgentString;
  userAgent_sUserAgentString = v4;
}

- (id)user
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 username];

  return v3;
}

- (int64_t)port
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 port];

  return v3;
}

- (id)server
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 host];

  return v3;
}

- (id)password
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 password];

  return v3;
}

- (id)OAuth2Token
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 backingAccountInfo];
  v4 = [v3 credential];

  if (v4)
  {
    v5 = [v4 credentialType];
    if ([v5 isEqualToString:*MEMORY[0x277CB8D98]])
    {

LABEL_5:
      v8 = [v4 oauthToken];
      goto LABEL_7;
    }

    v6 = [v4 credentialType];
    v7 = [v6 isEqualToString:*MEMORY[0x277CB8DA0]];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)useSSL
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 useSSL];

  return v3;
}

- (id)identityPersist
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 identityPersist];

  return v3;
}

- (id)accountID
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 accountID];

  return v3;
}

- (id)accountPersistentUUID
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 persistentUUID];

  return v3;
}

- (BOOL)isShutdown
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state == 5;
  objc_sync_exit(v2);

  return v3;
}

- (void)submitExclusiveTask:(id)a3 toFrontOfQueue:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    v37 = 138412546;
    v38 = v7;
    v39 = 1024;
    v40 = v4;
    _os_log_impl(&dword_24844D000, v8, v10, "Exclusive task %@ submitted, to front: %d", &v37, 0x12u);
  }

  v11 = self;
  objc_sync_enter(v11);
  if (objc_opt_respondsToSelector())
  {
    [v7 setTaskManager:v11];
  }

  if ([(DATaskManager *)v11 state]== 5)
  {
    [v7 cancelTaskWithReason:1 underlyingError:0];
    objc_sync_exit(v11);

    goto LABEL_35;
  }

  v12 = [(DATaskManager *)v11 xpcTransactionTimer];

  if (v12)
  {
    v13 = [(DATaskManager *)v11 xpcTransactionTimer];
    [v13 invalidate];

    [(DATaskManager *)v11 setXpcTransactionTimer:0];
  }

  if (!v11->_transaction)
  {
    v14 = DALoggingwithCategory();
    if (os_log_type_enabled(v14, v10))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_24844D000, v14, v10, "Begin an xpc transaction due to exclusive task", &v37, 2u);
    }

    v15 = objc_opt_new();
    transaction = v11->_transaction;
    v11->_transaction = v15;

    v17 = DALoggingwithCategory();
    v18 = *(v9 + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = [(DATransaction *)v11->_transaction transactionId];
      v37 = 138543362;
      v38 = v19;
      _os_log_impl(&dword_24844D000, v17, v18, "DATransaction starting, ID: %{public}@", &v37, 0xCu);
    }
  }

  if (!v11->_daActivity)
  {
    v20 = [(DATaskManager *)v11 account];
    v21 = [v20 hasXpcActivity];

    if (v21)
    {
      v22 = DALoggingwithCategory();
      if (os_log_type_enabled(v22, v10))
      {
        v23 = [(DATaskManager *)v11 account];
        v24 = [v23 accountID];
        v37 = 138543362;
        v38 = v24;
        _os_log_impl(&dword_24844D000, v22, v10, "Retain an xpc activity due to exclusive task for account %{public}@", &v37, 0xCu);
      }

      v25 = [DAActivity alloc];
      v26 = [(DATaskManager *)v11 account];
      v27 = [(DAActivity *)v25 initWithAccount:v26];
      daActivity = v11->_daActivity;
      v11->_daActivity = v27;
    }
  }

  v29 = [(DATaskManager *)v11 state];
  if ((v29 - 1) < 4)
  {
    v30 = 0;
    if (v4)
    {
LABEL_22:
      v31 = [(DATaskManager *)v11 queuedExclusiveTasks];
      [v31 insertObject:v7 atIndex:0];
LABEL_31:

      goto LABEL_32;
    }

LABEL_30:
    v31 = [(DATaskManager *)v11 queuedExclusiveTasks];
    [v31 addObject:v7];
    goto LABEL_31;
  }

  if (v29)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:v11 file:@"DATaskManager.m" lineNumber:322 description:@"Out of bounds state"];
  }

  else
  {
    v32 = [(DATaskManager *)v11 activeQueuedTask];
    if (v32)
    {

      goto LABEL_29;
    }

    v34 = [(DATaskManager *)v11 independentTasks];
    v35 = [v34 count] == 0;

    if (!v35)
    {
LABEL_29:
      v30 = 1;
      if (v4)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

    [(DATaskManager *)v11 setActiveExclusiveTask:v7];
  }

  [(DATaskManager *)v11 _schedulePerformTask:v7];
  v30 = 0;
LABEL_32:
  [(DATaskManager *)v11 _makeStateTransition];
  if (v30)
  {
    [(DATaskManager *)v11 _requestCancelTasksWithReason:0];
  }

  objc_sync_exit(v11);

  [(DATaskManager *)v11 taskManagerDidAddTask:v7];
LABEL_35:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)submitIndependentTask:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_24844D000, v6, v8, "Independent task %@ submitted", &v32, 0xCu);
  }

  v9 = self;
  objc_sync_enter(v9);
  if (objc_opt_respondsToSelector())
  {
    [v5 setTaskManager:v9];
  }

  if ([(DATaskManager *)v9 state]!= 5)
  {
    v10 = [(DATaskManager *)v9 xpcTransactionTimer];

    if (v10)
    {
      v11 = [(DATaskManager *)v9 xpcTransactionTimer];
      [v11 invalidate];

      [(DATaskManager *)v9 setXpcTransactionTimer:0];
    }

    if (!v9->_transaction)
    {
      v12 = DALoggingwithCategory();
      if (os_log_type_enabled(v12, v8))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_24844D000, v12, v8, "Begin an xpc transaction due to independent task", &v32, 2u);
      }

      v13 = objc_opt_new();
      transaction = v9->_transaction;
      v9->_transaction = v13;

      v15 = DALoggingwithCategory();
      v16 = *(v7 + 6);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = [(DATransaction *)v9->_transaction transactionId];
        v32 = 138543362;
        v33 = v17;
        _os_log_impl(&dword_24844D000, v15, v16, "DATransaction starting, ID: %{public}@", &v32, 0xCu);
      }
    }

    if (!v9->_daActivity)
    {
      v18 = [(DATaskManager *)v9 account];
      v19 = [v18 hasXpcActivity];

      if (v19)
      {
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v8))
        {
          v21 = [(DATaskManager *)v9 account];
          v22 = [v21 accountID];
          v32 = 138543362;
          v33 = v22;
          _os_log_impl(&dword_24844D000, v20, v8, "Retain an xpc activity due to independent task for account %{public}@", &v32, 0xCu);
        }

        v23 = [DAActivity alloc];
        v24 = [(DATaskManager *)v9 account];
        v25 = [(DAActivity *)v23 initWithAccount:v24];
        daActivity = v9->_daActivity;
        v9->_daActivity = v25;
      }
    }

    v27 = [(DATaskManager *)v9 state];
    if ((v27 - 1) >= 4)
    {
      if (v27)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:394 description:@"Out of bounds state"];
      }

      else
      {
        if ([(DATaskManager *)v9 _allowsMoreConcurrentIndependentTasks])
        {
          v29 = [(DATaskManager *)v9 independentTasks];
          [v29 addObject:v5];

          [(DATaskManager *)v9 _schedulePerformTask:v5];
LABEL_30:
          objc_sync_exit(v9);

          [(DATaskManager *)v9 taskManagerDidAddTask:v5];
          goto LABEL_31;
        }

        v30 = DALoggingwithCategory();
        if (os_log_type_enabled(v30, v8))
        {
          v32 = 138412290;
          v33 = v5;
          _os_log_impl(&dword_24844D000, v30, v8, "Too many independent tasks running concurrently; adding %@ to the queue for later", &v32, 0xCu);
        }

        v28 = [(DATaskManager *)v9 queuedIndependentTasks];
        [v28 addObject:v5];
      }
    }

    else
    {
      v28 = [(DATaskManager *)v9 heldIndependentTasks];
      [v28 addObject:v5];
    }

    goto LABEL_30;
  }

  [v5 cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(v9);

LABEL_31:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)submitQueuedTask:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_24844D000, v6, v8, "Queued task %@ submitted", &v32, 0xCu);
  }

  v9 = self;
  objc_sync_enter(v9);
  if (objc_opt_respondsToSelector())
  {
    [v5 setTaskManager:v9];
  }

  if ([(DATaskManager *)v9 state]!= 5)
  {
    v10 = [(DATaskManager *)v9 xpcTransactionTimer];

    if (v10)
    {
      v11 = [(DATaskManager *)v9 xpcTransactionTimer];
      [v11 invalidate];

      [(DATaskManager *)v9 setXpcTransactionTimer:0];
    }

    if (!v9->_transaction)
    {
      v12 = DALoggingwithCategory();
      if (os_log_type_enabled(v12, v8))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_24844D000, v12, v8, "Begin an xpc transaction due to queued task", &v32, 2u);
      }

      v13 = objc_opt_new();
      transaction = v9->_transaction;
      v9->_transaction = v13;

      v15 = DALoggingwithCategory();
      v16 = *(v7 + 6);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = [(DATransaction *)v9->_transaction transactionId];
        v32 = 138543362;
        v33 = v17;
        _os_log_impl(&dword_24844D000, v15, v16, "DATransaction starting, ID: %{public}@", &v32, 0xCu);
      }
    }

    if (!v9->_daActivity)
    {
      v18 = [(DATaskManager *)v9 account];
      v19 = [v18 hasXpcActivity];

      if (v19)
      {
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v8))
        {
          v21 = [(DATaskManager *)v9 account];
          v22 = [v21 accountID];
          v32 = 138543362;
          v33 = v22;
          _os_log_impl(&dword_24844D000, v20, v8, "Retain an xpc activity due to queued task for account %{public}@", &v32, 0xCu);
        }

        v23 = [DAActivity alloc];
        v24 = [(DATaskManager *)v9 account];
        v25 = [(DAActivity *)v23 initWithAccount:v24];
        daActivity = v9->_daActivity;
        v9->_daActivity = v25;
      }
    }

    v27 = [(DATaskManager *)v9 state];
    if ((v27 - 1) >= 4)
    {
      if (v27)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:450 description:@"Out of bounds state"];
        goto LABEL_26;
      }

      v29 = [(DATaskManager *)v9 activeQueuedTask];
      v30 = v29 == 0;

      if (v30)
      {
        [(DATaskManager *)v9 setActiveQueuedTask:v5];
        [(DATaskManager *)v9 _schedulePerformTask:v5];
        goto LABEL_27;
      }
    }

    v28 = [(DATaskManager *)v9 mQueuedTasks];
    [v28 addObject:v5];
LABEL_26:

LABEL_27:
    objc_sync_exit(v9);

    [(DATaskManager *)v9 taskManagerDidAddTask:v5];
    goto LABEL_28;
  }

  [v5 cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(v9);

LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)cancelTask:(id)a3 withUnderlyingError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_24844D000, v7, v8, "Task %@ aborted", &v10, 0xCu);
  }

  [v5 cancelTaskWithReason:0 underlyingError:v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllTasks
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(DATaskManager *)self allTasks];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(DATaskManager *)self cancelTask:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = [(DATaskManager *)self account];
    v24 = 134218240;
    v25 = self;
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_24844D000, v3, v5, "Task Manager %p shutting down with account at %p", &v24, 0x16u);
  }

  [(DATaskManager *)self setAccount:0];
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = [(DATaskManager *)self stateString];
    v24 = 134218242;
    v25 = self;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_24844D000, v7, v5, "Task Manager %p shutting down with state %@", &v24, 0x16u);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(DATaskManager *)v9 setState:5];
    v10 = [(DATaskManager *)v9 managerIdleTimer];

    if (v10)
    {
      v11 = [(DATaskManager *)v9 managerIdleTimer];
      [v11 invalidate];

      [(DATaskManager *)v9 setManagerIdleTimer:0];
    }

    v12 = [(DATaskManager *)v9 userInitiatedSyncTimer];

    if (v12)
    {
      v13 = [(DATaskManager *)v9 userInitiatedSyncTimer];
      [v13 invalidate];

      [(DATaskManager *)v9 setUserInitiatedSyncTimer:0];
    }

    v14 = [(DATaskManager *)v9 xpcTransactionTimer];

    if (v14)
    {
      v15 = [(DATaskManager *)v9 xpcTransactionTimer];
      [v15 invalidate];

      [(DATaskManager *)v9 setXpcTransactionTimer:0];
    }

    if (v9->_transaction)
    {
      v16 = DALoggingwithCategory();
      v17 = *(v4 + 6);
      if (os_log_type_enabled(v16, v17))
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_24844D000, v16, v17, "Task manager %@ is being shut down. Ending XPC transaction", &v24, 0xCu);
      }

      transaction = v9->_transaction;
      v9->_transaction = 0;
    }

    if (v9->_daActivity)
    {
      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v5))
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_24844D000, v19, v5, "Task manager %@ is being shut down. Releasing XPC activity", &v24, 0xCu);
      }

      daActivity = v9->_daActivity;
      v9->_daActivity = 0;
    }

    v21 = [(DATaskManager *)v9 powerLogIdleTimer];

    if (v21)
    {
      v22 = [(DATaskManager *)v9 powerLogIdleTimer];
      [v22 invalidate];

      [(DATaskManager *)v9 setPowerLogIdleTimer:0];
    }

    if (v9->_didLogSyncStart)
    {
      [(DATaskManager *)v9 _logSyncEnd];
    }

    objc_sync_exit(v9);

    [(DATaskManager *)v9 _cancelTasksWithReason:1];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v2 = self;
  objc_sync_enter(v2);
  v14 = MEMORY[0x277CCACA8];
  v17 = getStateName([(DATaskManager *)v2 state]);
  v16 = [(DATaskManager *)v2 activeExclusiveTask];
  v15 = [(DATaskManager *)v2 queuedExclusiveTasks];
  v3 = [(DATaskManager *)v2 independentTasks];
  v4 = [(DATaskManager *)v2 heldIndependentTasks];
  v5 = [(DATaskManager *)v2 modalHeldIndependentTasks];
  queuedIndependentTasks = v2->_queuedIndependentTasks;
  v7 = [(DATaskManager *)v2 activeQueuedTask];
  v8 = [(DATaskManager *)v2 mQueuedTasks];
  v9 = [(DATaskManager *)v2 activeModalTask];
  v10 = [(DATaskManager *)v2 queuedModalTasks];
  v11 = [(DATaskManager *)v2 account];
  v12 = [v14 stringWithFormat:@"DATaskManager %@ state:%@\nActive exclusive task: %@\nQueued exclusive tasks: %@\nIndependent tasks: %@\nHeld independent tasks: %@\nModal-held independent tasks: %@\nQueued independent tasks: %@\nActive queued task: %@\nQueued tasks: %@\nActive modal task: %@\nQueued modal tasks: %@\n\nAssociated with account: %@\n", v2, v17, v16, v15, v3, v4, v5, queuedIndependentTasks, v7, v8, v9, v10, v11];

  objc_sync_exit(v2);

  return v12;
}

- (void)_useOpportunisticSocketsAgain
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(DATaskManager *)self state]!= 5)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_24844D000, v3, v4, "Task manager %@ has finally drained its queue. Turning opportunistic socket support back on", &v7, 0xCu);
    }

    v5 = [(DATaskManager *)self account];
    [v5 setShouldUseOpportunisticSockets:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  v4 = [(DATaskManager *)self account];
  v5 = [v4 accountID];

  if (v5)
  {
    v6 = [(DATaskManager *)self account];
    v7 = [v6 accountID];
    [v3 setObject:v7 forKeyedSubscript:@"AccountID"];
  }

  v8 = [(DATaskManager *)self account];
  v9 = [v8 accountDescription];

  if (v9)
  {
    v10 = [(DATaskManager *)self account];
    v11 = [v10 accountDescription];
    [v3 setObject:v11 forKeyedSubscript:@"AccountName"];
  }

  v12 = [(DATaskManager *)self account];
  v13 = objc_opt_class();

  if (v13)
  {
    v14 = [(DATaskManager *)self account];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v3 setObject:v16 forKeyedSubscript:@"AccountClass"];
  }

  return v3;
}

- (void)_clearUserInitiatedSyncTimer
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(DATaskManager *)self state]!= 5)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_24844D000, v3, v4, "Task manager %@ has finally drained its queue. Clearing its user initiated sync state", &v7, 0xCu);
    }

    v5 = [(DATaskManager *)self account];
    [v5 setWasUserInitiated:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endXpcTransaction
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_24844D000, v3, v4, "Task manager %@ has finally drained its queue. Ending XPC transaction", &v11, 0xCu);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_24844D000, v6, v4, "Task manager %@ has finally drained its queue. Releasing XPC activity", &v11, 0xCu);
  }

  daActivity = self->_daActivity;
  self->_daActivity = 0;

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v4))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_24844D000, v8, v4, "Task manager %@ has finally drained its queue. Reset automatic fetching state", &v11, 0xCu);
  }

  v9 = [(DATaskManager *)self account];
  [v9 saveFetchingAutomaticallyState:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_logSyncEnd
{
  v4[3] = *MEMORY[0x277D85DE8];
  [(DATaskManager *)self _powerLogInfoDictionary];
  v4[0] = @"AccountName";
  v4[1] = @"AccountClass";
  v4[2] = @"AccountID";
  [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  PLLogRegisteredEvent();
  self->_didLogSyncStart = 0;
  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)_taskForcesNetworking:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 shouldForceNetworking];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_taskInQueueForcesNetworkConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(DATaskManager *)self _taskForcesNetworking:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_hasTasksForcingNetworkConnection
{
  v3 = [(DATaskManager *)self queuedExclusiveTasks];
  v4 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v3];

  if (v4)
  {
    return 1;
  }

  v5 = [(DATaskManager *)self independentTasks];
  v6 = [v5 allObjects];
  v7 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v6];

  if (v7)
  {
    return 1;
  }

  v8 = [(DATaskManager *)self heldIndependentTasks];
  v9 = [v8 allObjects];
  v10 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v9];

  if (v10)
  {
    return 1;
  }

  v11 = [(DATaskManager *)self modalHeldIndependentTasks];
  v12 = [v11 allObjects];
  v13 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v12];

  if (v13)
  {
    return 1;
  }

  if ([(DATaskManager *)self _taskInQueueForcesNetworkConnection:self->_queuedIndependentTasks])
  {
    return 1;
  }

  v14 = [(DATaskManager *)self mQueuedTasks];
  v15 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v14];

  if (v15)
  {
    return 1;
  }

  v16 = [(DATaskManager *)self queuedModalTasks];
  v17 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:v16];

  if (v17)
  {
    return 1;
  }

  v18 = [(DATaskManager *)self activeModalTask];
  v19 = [(DATaskManager *)self _taskForcesNetworking:v18];

  if (v19)
  {
    return 1;
  }

  v20 = [(DATaskManager *)self activeQueuedTask];
  v21 = [(DATaskManager *)self _taskForcesNetworking:v20];

  if (v21)
  {
    return 1;
  }

  v22 = [(DATaskManager *)self modalHeldActiveQueuedTask];
  v23 = [(DATaskManager *)self _taskForcesNetworking:v22];

  if (v23)
  {
    return 1;
  }

  v25 = [(DATaskManager *)self activeModalTask];
  v26 = [(DATaskManager *)self _taskForcesNetworking:v25];

  return v26;
}

- (BOOL)_hasTasksIndicatingARunningSync
{
  v2 = [(DATaskManager *)self allTasks];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)taskDidFinish:(id)a3
{
  v162 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  type = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, type))
  {
    *buf = 138412290;
    v157 = v5;
    _os_log_impl(&dword_24844D000, v6, type, "Task %@ finished.", buf, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  if ([(DATaskManager *)v8 state]== 5)
  {
    [(DATaskManager *)v8 taskManagerWillRemoveTask:v5];
    [(DATaskManager *)v8 _releasePowerAssertionForTask:v5];
    goto LABEL_120;
  }

  v9 = [(DATaskManager *)v8 activeExclusiveTask];

  if (v9 == v5)
  {
    [(DATaskManager *)v8 setActiveExclusiveTask:0];
    goto LABEL_20;
  }

  v10 = [(DATaskManager *)v8 activeQueuedTask];
  v11 = v10 == v5;

  if (v11)
  {
    [(DATaskManager *)v8 setActiveQueuedTask:0];
    goto LABEL_20;
  }

  v12 = [(DATaskManager *)v8 modalHeldActiveQueuedTask];
  v13 = v12 == v5;

  if (v13)
  {
    [(DATaskManager *)v8 setModalHeldActiveQueuedTask:0];
    goto LABEL_20;
  }

  v14 = [(DATaskManager *)v8 queuedExclusiveTasks];
  v15 = [v14 containsObject:v5];

  if (v15)
  {
    v16 = [(DATaskManager *)v8 queuedExclusiveTasks];
    [v16 removeObject:v5];
LABEL_19:

    goto LABEL_20;
  }

  v17 = [(DATaskManager *)v8 independentTasks];
  v18 = [v17 containsObject:v5];

  if (v18)
  {
    v16 = [(DATaskManager *)v8 independentTasks];
    [v16 removeObject:v5];
    goto LABEL_19;
  }

  v19 = [(DATaskManager *)v8 heldIndependentTasks];
  v20 = [v19 containsObject:v5];

  if (v20)
  {
    v16 = [(DATaskManager *)v8 heldIndependentTasks];
    [v16 removeObject:v5];
    goto LABEL_19;
  }

  v21 = [(DATaskManager *)v8 modalHeldIndependentTasks];
  v22 = [v21 containsObject:v5];

  if (v22)
  {
    v16 = [(DATaskManager *)v8 modalHeldIndependentTasks];
    [v16 removeObject:v5];
    goto LABEL_19;
  }

  if (![(NSMutableArray *)v8->_queuedIndependentTasks containsObject:v5])
  {
    v127 = [(DATaskManager *)v8 mQueuedTasks];
    v128 = [v127 containsObject:v5];

    if (!v128)
    {
      v129 = [(DATaskManager *)v8 activeModalTask];
      v130 = v129 == v5;

      if (v130)
      {
        v134 = [MEMORY[0x277CCA890] currentHandler];
        [v134 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:703 description:{@"Finished task is not being managed, so cannot be active modal task."}];
      }

      v131 = [(DATaskManager *)v8 queuedModalTasks];
      v132 = [v131 containsObject:v5];

      if (v132)
      {
        v135 = [MEMORY[0x277CCA890] currentHandler];
        [v135 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:705 description:{@"Finished task is not being managed, so cannot be in modal queue."}];
      }

      v118 = DALoggingwithCategory();
      v133 = *(v7 + 6);
      if (os_log_type_enabled(v118, v133))
      {
        *buf = 138412290;
        v157 = v5;
        _os_log_impl(&dword_24844D000, v118, v133, "Early return because task %@ isn't in our collection", buf, 0xCu);
      }

      goto LABEL_119;
    }

    v16 = [(DATaskManager *)v8 mQueuedTasks];
    [v16 removeObject:v5];
    goto LABEL_19;
  }

  [(NSMutableArray *)v8->_queuedIndependentTasks removeObject:v5];
LABEL_20:
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v8 selector:sel__performTask_ object:v5];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v8 selector:sel__startModal_ object:v5];
  [(DATaskManager *)v8 taskManagerWillRemoveTask:v5];
  [(DATaskManager *)v8 _releasePowerAssertionForTask:v5];
  v23 = [(DATaskManager *)v8 activeModalTask];

  if (v23 == v5)
  {
    [(DATaskManager *)v8 setActiveModalTask:0];
  }

  else
  {
    v24 = [(DATaskManager *)v8 queuedModalTasks];
    v25 = [v24 containsObject:v5];

    if (v25)
    {
      v26 = [(DATaskManager *)v8 queuedModalTasks];
      [v26 removeObject:v5];

      v27 = 1;
      goto LABEL_25;
    }
  }

  v27 = 0;
LABEL_25:
  v28 = [(DATaskManager *)v8 state];
  if (v28 <= 1)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        v31 = [(DATaskManager *)v8 activeQueuedTask];
        if (v31)
        {
        }

        else
        {
          v42 = [(DATaskManager *)v8 independentTasks];
          v43 = [v42 count] == 0;

          if (v43)
          {
            v65 = [(DATaskManager *)v8 queuedExclusiveTasks];
            v66 = [v65 count];

            if (!v66)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }
        }

        v44 = [(DATaskManager *)v8 queuedExclusiveTasks];
        v45 = [v44 count] == 0;

        if (!v45)
        {
          goto LABEL_69;
        }

        goto LABEL_52;
      }

LABEL_45:
      v36 = [MEMORY[0x277CCA890] currentHandler];
      [v36 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:805 description:@"Out of bounds state"];
      goto LABEL_68;
    }

    v36 = [(DATaskManager *)v8 queuedModalTasks];
    if (![v36 count])
    {
      v37 = [(DATaskManager *)v8 queuedExclusiveTasks];
      if (![v37 count])
      {
        v53 = [(DATaskManager *)v8 activeQueuedTask];
        v54 = v53 == 0;

        if (v54)
        {
          v55 = [(DATaskManager *)v8 mQueuedTasks];
          v56 = [v55 count];

          if (v56)
          {
            v58 = [(DATaskManager *)v8 mQueuedTasks];
            v59 = [v58 objectAtIndexedSubscript:0];
            [(DATaskManager *)v8 setActiveQueuedTask:v59];

            v60 = [(DATaskManager *)v8 mQueuedTasks];
            [v60 removeObjectAtIndex:0];

            v61 = [(DATaskManager *)v8 activeQueuedTask];
            [(DATaskManager *)v8 _schedulePerformTask:v61];
          }

          *&v57 = 138412290;
          v136 = v57;
          while ([(DATaskManager *)v8 _allowsMoreConcurrentIndependentTasks]&& [(NSMutableArray *)v8->_queuedIndependentTasks count])
          {
            v62 = [(NSMutableArray *)v8->_queuedIndependentTasks objectAtIndexedSubscript:0];
            [(NSMutableArray *)v8->_queuedIndependentTasks removeObjectAtIndex:0];
            v63 = DALoggingwithCategory();
            if (os_log_type_enabled(v63, type))
            {
              *buf = v136;
              v157 = v62;
              _os_log_impl(&dword_24844D000, v63, type, "Scheduling queued independent task %@", buf, 0xCu);
            }

            v64 = [(DATaskManager *)v8 independentTasks];
            [v64 addObject:v62];

            [(DATaskManager *)v8 _schedulePerformTask:v62];
          }
        }

        goto LABEL_69;
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (v28 == 2)
  {
    if (v9 != v5)
    {
      goto LABEL_69;
    }

    v32 = [(DATaskManager *)v8 queuedExclusiveTasks];
    v33 = [v32 count];

    if (v33)
    {
      goto LABEL_67;
    }

    v46 = [(DATaskManager *)v8 queuedModalTasks];
    v47 = [v46 count];

    if (!v47)
    {
LABEL_52:
      [(DATaskManager *)v8 _reactivateHeldTasks];
      goto LABEL_69;
    }

LABEL_54:
    v48 = [(DATaskManager *)v8 queuedModalTasks];
    v49 = [v48 objectAtIndexedSubscript:0];
    [(DATaskManager *)v8 setActiveModalTask:v49];

    v50 = [(DATaskManager *)v8 queuedModalTasks];
    [v50 removeObjectAtIndex:0];

    v36 = [(DATaskManager *)v8 activeModalTask];
    [(DATaskManager *)v8 _scheduleStartModal:v36];
    goto LABEL_68;
  }

  if (v28 != 3)
  {
    if (v28 == 4)
    {
      if (v23 != v5)
      {
        goto LABEL_69;
      }

      v29 = [(DATaskManager *)v8 queuedModalTasks];
      v30 = [v29 count];

      if (v30)
      {
        goto LABEL_54;
      }

      v51 = [(DATaskManager *)v8 queuedExclusiveTasks];
      v52 = [v51 count];

      if (v52)
      {
LABEL_67:
        v67 = [(DATaskManager *)v8 queuedExclusiveTasks];
        v68 = [v67 objectAtIndexedSubscript:0];
        [(DATaskManager *)v8 setActiveExclusiveTask:v68];

        v69 = [(DATaskManager *)v8 queuedExclusiveTasks];
        [v69 removeObjectAtIndex:0];

        v36 = [(DATaskManager *)v8 activeExclusiveTask];
        [(DATaskManager *)v8 _schedulePerformTask:v36];
        goto LABEL_68;
      }

      goto LABEL_52;
    }

    goto LABEL_45;
  }

  if (v27)
  {
    v34 = [(DATaskManager *)v8 queuedModalTasks];
    v35 = [v34 count] == 0;

    if (!v35)
    {
      goto LABEL_69;
    }

    goto LABEL_52;
  }

  v36 = [(DATaskManager *)v8 activeQueuedTask];
  if (v36)
  {
    goto LABEL_68;
  }

  v38 = [(DATaskManager *)v8 independentTasks];
  v39 = [v38 count] == 0;

  if (v39)
  {
    v40 = [(DATaskManager *)v8 queuedModalTasks];
    v41 = [v40 count];

    if (v41)
    {
      goto LABEL_54;
    }
  }

LABEL_69:
  [(DATaskManager *)v8 _makeStateTransition];
  v70 = [(DATaskManager *)v8 managerIdleTimer];

  if (v70)
  {
    v71 = [(DATaskManager *)v8 managerIdleTimer];
    [v71 invalidate];

    [(DATaskManager *)v8 setManagerIdleTimer:0];
  }

  v72 = [(DATaskManager *)v8 account];
  if (([v72 shouldUseOpportunisticSockets] & 1) == 0)
  {
    v73 = [(DATaskManager *)v8 _hasTasksForcingNetworkConnection];

    if (v73)
    {
      goto LABEL_81;
    }

    v74 = objc_alloc(MEMORY[0x277CBEBB8]);
    v75 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    v76 = [v74 initWithFireDate:v75 interval:v8 target:sel__useOpportunisticSocketsAgain selector:0 userInfo:0 repeats:0.0];
    [(DATaskManager *)v8 setManagerIdleTimer:v76];

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v72 = runLoopModesToPerformDelayedSelectorsIn();
    v77 = [v72 countByEnumeratingWithState:&v150 objects:v161 count:16];
    if (v77)
    {
      v78 = *v151;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v151 != v78)
          {
            objc_enumerationMutation(v72);
          }

          v80 = *(*(&v150 + 1) + 8 * i);
          v81 = [MEMORY[0x277CBEB88] currentRunLoop];
          v82 = [(DATaskManager *)v8 managerIdleTimer];
          [v81 addTimer:v82 forMode:v80];
        }

        v77 = [v72 countByEnumeratingWithState:&v150 objects:v161 count:16];
      }

      while (v77);
    }
  }

LABEL_81:
  v83 = [(DATaskManager *)v8 userInitiatedSyncTimer];

  if (v83)
  {
    v84 = [(DATaskManager *)v8 userInitiatedSyncTimer];
    [v84 invalidate];

    [(DATaskManager *)v8 setUserInitiatedSyncTimer:0];
  }

  v85 = [(DATaskManager *)v8 account];
  if ([v85 wasUserInitiated])
  {
    v86 = [(DATaskManager *)v8 _hasTasksIndicatingARunningSync];

    if (v86)
    {
      goto LABEL_93;
    }

    v87 = objc_alloc(MEMORY[0x277CBEBB8]);
    v88 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    v89 = [v87 initWithFireDate:v88 interval:v8 target:sel__clearUserInitiatedSyncTimer selector:0 userInfo:0 repeats:0.0];
    [(DATaskManager *)v8 setUserInitiatedSyncTimer:v89];

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v85 = runLoopModesToPerformDelayedSelectorsIn();
    v90 = [v85 countByEnumeratingWithState:&v146 objects:v160 count:16];
    if (v90)
    {
      v91 = *v147;
      do
      {
        for (j = 0; j != v90; ++j)
        {
          if (*v147 != v91)
          {
            objc_enumerationMutation(v85);
          }

          v93 = *(*(&v146 + 1) + 8 * j);
          v94 = [MEMORY[0x277CBEB88] currentRunLoop];
          v95 = [(DATaskManager *)v8 userInitiatedSyncTimer];
          [v94 addTimer:v95 forMode:v93];
        }

        v90 = [v85 countByEnumeratingWithState:&v146 objects:v160 count:16];
      }

      while (v90);
    }
  }

LABEL_93:
  v96 = [(DATaskManager *)v8 xpcTransactionTimer];

  if (v96)
  {
    v97 = [(DATaskManager *)v8 xpcTransactionTimer];
    [v97 invalidate];

    [(DATaskManager *)v8 setXpcTransactionTimer:0];
  }

  if (![(DATaskManager *)v8 _hasTasksIndicatingARunningSync])
  {
    v98 = DALoggingwithCategory();
    if (os_log_type_enabled(v98, type))
    {
      v99 = [(DATaskManager *)v8 account];
      v100 = [v99 accountDescription];
      v101 = [(DATaskManager *)v8 account];
      v102 = [v101 publicDescription];
      *buf = 138412546;
      v157 = v100;
      v158 = 2114;
      v159 = v102;
      _os_log_impl(&dword_24844D000, v98, type, "Pending tasks are finished for account %@ (%{public}@)", buf, 0x16u);
    }

    v103 = objc_alloc(MEMORY[0x277CBEBB8]);
    v104 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    v105 = [v103 initWithFireDate:v104 interval:v8 target:sel__endXpcTransaction selector:0 userInfo:0 repeats:0.0];
    [(DATaskManager *)v8 setXpcTransactionTimer:v105];

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v106 = runLoopModesToPerformDelayedSelectorsIn();
    v107 = [v106 countByEnumeratingWithState:&v142 objects:v155 count:16];
    if (v107)
    {
      v108 = *v143;
      do
      {
        for (k = 0; k != v107; ++k)
        {
          if (*v143 != v108)
          {
            objc_enumerationMutation(v106);
          }

          v110 = *(*(&v142 + 1) + 8 * k);
          v111 = [MEMORY[0x277CBEB88] currentRunLoop];
          v112 = [(DATaskManager *)v8 xpcTransactionTimer];
          [v111 addTimer:v112 forMode:v110];
        }

        v107 = [v106 countByEnumeratingWithState:&v142 objects:v155 count:16];
      }

      while (v107);
    }
  }

  v113 = [(DATaskManager *)v8 powerLogIdleTimer];

  if (v113)
  {
    v114 = [(DATaskManager *)v8 powerLogIdleTimer];
    [v114 invalidate];

    [(DATaskManager *)v8 setPowerLogIdleTimer:0];
  }

  if (![(DATaskManager *)v8 _hasTasksIndicatingARunningSync]&& [(DATaskManager *)v8 didLogSyncStart])
  {
    v115 = objc_alloc(MEMORY[0x277CBEBB8]);
    v116 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
    v117 = [v115 initWithFireDate:v116 interval:v8 target:sel__logSyncEnd selector:0 userInfo:0 repeats:0.0];
    [(DATaskManager *)v8 setPowerLogIdleTimer:v117];

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v118 = runLoopModesToPerformDelayedSelectorsIn();
    v119 = [v118 countByEnumeratingWithState:&v138 objects:v154 count:16];
    if (v119)
    {
      v120 = *v139;
      do
      {
        for (m = 0; m != v119; ++m)
        {
          if (*v139 != v120)
          {
            objc_enumerationMutation(v118);
          }

          v122 = *(*(&v138 + 1) + 8 * m);
          v123 = [(DATaskManager *)v8 powerLogIdleTimer];

          if (v123)
          {
            v124 = [MEMORY[0x277CBEB88] currentRunLoop];
            v125 = [(DATaskManager *)v8 powerLogIdleTimer];
            [v124 addTimer:v125 forMode:v122];
          }
        }

        v119 = [v118 countByEnumeratingWithState:&v138 objects:v154 count:16];
      }

      while (v119);
    }

LABEL_119:
  }

LABEL_120:
  objc_sync_exit(v8);

  v126 = *MEMORY[0x277D85DE8];
}

- (void)taskRequestModal:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [DATaskManager taskRequestModal:];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v40 = 138412290;
    v41 = v5;
    _os_log_impl(&dword_24844D000, v6, v7, "Task %@ requesting modal", &v40, 0xCu);
  }

  if ([(DATaskManager *)self state]== 5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:870 description:@"Cannot request modal behavior during shutdown"];

    goto LABEL_39;
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(DATaskManager *)v9 state];
  if (v10 > 2)
  {
    if ((v10 - 3) >= 2)
    {
LABEL_17:
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:907 description:@"Out of bounds state."];

LABEL_18:
      v14 = 0;
      v18 = 0;
      goto LABEL_27;
    }

    v14 = 0;
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = [(DATaskManager *)v9 activeExclusiveTask];
          v12 = v11 == v5;

          if (!v12)
          {
            v13 = [MEMORY[0x277CCA890] currentHandler];
            [v13 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:897 description:@"Only the active exclusive task can go modal immediately"];
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = [(DATaskManager *)v9 activeQueuedTask];
      v16 = v15;
      if (v15 == v5)
      {
        v19 = [(DATaskManager *)v9 independentTasks];
        v20 = [v19 count] == 0;

        if (v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v21 = [(DATaskManager *)v9 activeQueuedTask];
      if (v21)
      {
      }

      else
      {
        v22 = [(DATaskManager *)v9 independentTasks];
        if ([v22 count] == 1)
        {
          v23 = [(DATaskManager *)v9 independentTasks];
          v24 = [v23 containsObject:v5];

          v14 = v24 ^ 1;
          v18 = v24 ^ 1;
          goto LABEL_27;
        }
      }
    }

    v14 = 1;
  }

  v18 = 1;
LABEL_27:
  v25 = [(DATaskManager *)v9 activeQueuedTask];
  v26 = v25 == v5;

  if (v26)
  {
    v31 = [(DATaskManager *)v9 activeQueuedTask];
    [(DATaskManager *)v9 setModalHeldActiveQueuedTask:v31];

    [(DATaskManager *)v9 setActiveQueuedTask:0];
  }

  else
  {
    v27 = [(DATaskManager *)v9 independentTasks];
    v28 = [v27 containsObject:v5];

    if (v28)
    {
      v29 = [(DATaskManager *)v9 modalHeldIndependentTasks];
      [v29 addObject:v5];

      v30 = [(DATaskManager *)v9 independentTasks];
      [v30 removeObject:v5];
    }
  }

  if (v18)
  {
    if (v5)
    {
      v32 = [(DATaskManager *)v9 queuedModalTasks];
      [v32 addObject:v5];
    }

    v33 = [(DATaskManager *)v9 independentTasks];
    if ([v33 count])
    {
      goto LABEL_35;
    }

    v35 = [(DATaskManager *)v9 activeQueuedTask];
    v36 = v35 == 0;

    if (v36)
    {
      v37 = [(DATaskManager *)v9 queuedModalTasks];
      v38 = [v37 objectAtIndexedSubscript:0];
      [(DATaskManager *)v9 setActiveModalTask:v38];

      v39 = [(DATaskManager *)v9 queuedModalTasks];
      [v39 removeObjectAtIndex:0];

      v33 = [(DATaskManager *)v9 activeModalTask];
      [(DATaskManager *)v9 _scheduleStartModal:v33];
LABEL_35:
    }
  }

  else
  {
    [(DATaskManager *)v9 setActiveModalTask:v5];
    [(DATaskManager *)v9 _scheduleStartModal:v5];
  }

  [(DATaskManager *)v9 _makeStateTransition];
  objc_sync_exit(v9);

  if (v14)
  {
    [(DATaskManager *)v9 _requestCancelTasksWithReason:1];
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)taskEndModal:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_24844D000, v6, v7, "Task %@ ending modal", buf, 0xCu);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    if ([(DATaskManager *)self state]== 4)
    {
      v8 = self;
      objc_sync_enter(v8);
      v9 = [(DATaskManager *)v8 activeModalTask];
      v10 = v9 == v5;

      if (!v10)
      {
        v17 = [MEMORY[0x277CCA890] currentHandler];
        [v17 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:957 description:@"Only the active modal task can end modal behavior."];
      }

      [(DATaskManager *)v8 setActiveModalTask:0];
      v11 = [(DATaskManager *)v8 queuedModalTasks];
      v12 = [v11 count] == 0;

      if (v12)
      {
        v13 = [(DATaskManager *)v8 activeExclusiveTask];

        if (!v13)
        {
          v14 = [(DATaskManager *)v8 queuedExclusiveTasks];
          v15 = [v14 count];

          if (!v15)
          {
            [(DATaskManager *)v8 _reactivateHeldTasks];
          }
        }
      }

      [(DATaskManager *)v8 _makeStateTransition];
      objc_sync_exit(v8);
    }

    else
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [(DATaskManager *)v8 handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:952 description:@"taskEndModal can only be called in Run Modal state, not %d", [(DATaskManager *)self state]];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)taskIsModal:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DATaskManager *)v5 modalHeldIndependentTasks];
  if ([v6 containsObject:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(DATaskManager *)v5 modalHeldActiveQueuedTask];
    if (v8 == v4)
    {
      v7 = 1;
    }

    else
    {
      v9 = [(DATaskManager *)v5 activeModalTask];
      v7 = v9 == v4;
    }
  }

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 shouldCancelTaskDueToOnPowerFetchMode];

  return v3;
}

- (void)_performTask:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DATaskManager *)self isShutdown])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_24844D000, v5, v6, "The _performTask is invoked after taskManager has been shutdown. Canceling %{public}@ %@", buf, 0x16u);
    }

    [v4 cancelTaskWithReason:1 underlyingError:0];
  }

  else
  {
    v9 = [(DATaskManager *)self shouldCancelTaskDueToOnPowerFetchMode];
    v10 = DALoggingwithCategory();
    v11 = v10;
    if (v9)
    {
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_24844D000, v11, v12, "The device is in on-power fetch mode, but is no longer on power or on wifi. Canceling %{public}@ %@", buf, 0x16u);
      }

      [v4 cancelTaskWithReason:2 underlyingError:0];
      [(DATaskManager *)self cancelTasksDueToOnPowerMode];
    }

    else
    {
      v15 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v10, *(MEMORY[0x277D03988] + 7)))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_24844D000, v11, v15, "performTask called on task %@", buf, 0xCu);
      }

      if (PLShouldLogRegisteredEvent() && [(DATaskManager *)self _hasTasksIndicatingARunningSync])
      {
        if (self->_didLogSyncStart)
        {
          v16 = [(DATaskManager *)self powerLogIdleTimer];

          if (v16)
          {
            v17 = [(DATaskManager *)self powerLogIdleTimer];
            [v17 invalidate];

            [(DATaskManager *)self setPowerLogIdleTimer:0];
          }
        }

        else
        {
          [(DATaskManager *)self _powerLogInfoDictionary];
          v19[0] = @"AccountName";
          v19[1] = @"AccountClass";
          v19[2] = @"AccountID";
          [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
          PLLogRegisteredEvent();
          self->_didLogSyncStart = 1;
        }
      }

      [(DATaskManager *)self _retainPowerAssertionForTask:v4];
      [v4 performTask];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startModal:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DATaskManager *)self isShutdown])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_24844D000, v5, v6, "The _startModal is invoked after taskManager has been shutdown. Canceling %{public}@ %@", &v12, 0x16u);
    }

    [v4 cancelTaskWithReason:1 underlyingError:0];
  }

  else
  {
    if ([(DATaskManager *)self state]== 5)
    {
      [DATaskManager _startModal:];
    }

    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v9, v10))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_24844D000, v9, v10, "startModal called on task %@", &v12, 0xCu);
    }

    [v4 startModal];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reactivateHeldTasks
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(DATaskManager *)self heldIndependentTasks];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        if ([(DATaskManager *)self _allowsMoreConcurrentIndependentTasks])
        {
          v9 = [(DATaskManager *)self independentTasks];
          [v9 addObject:v8];

          [(DATaskManager *)self _schedulePerformTask:v8];
        }

        else
        {
          v10 = [(DATaskManager *)self queuedIndependentTasks];
          [v10 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v11 = [(DATaskManager *)self heldIndependentTasks];
  [v11 removeAllObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(DATaskManager *)self modalHeldIndependentTasks];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        v18 = [(DATaskManager *)self independentTasks];
        [v18 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  v19 = [(DATaskManager *)self modalHeldIndependentTasks];
  [v19 removeAllObjects];

  v20 = [(DATaskManager *)self modalHeldActiveQueuedTask];

  if (v20)
  {
    [(DATaskManager *)self setActiveQueuedTask:self->_modalHeldActiveQueuedTask];
    [(DATaskManager *)self setModalHeldActiveQueuedTask:0];
  }

  else
  {
    v21 = [(DATaskManager *)self mQueuedTasks];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [(DATaskManager *)self mQueuedTasks];
      v24 = [v23 objectAtIndexedSubscript:0];
      [(DATaskManager *)self setActiveQueuedTask:v24];

      v25 = [(DATaskManager *)self mQueuedTasks];
      [v25 removeObjectAtIndex:0];

      v26 = [(DATaskManager *)self activeQueuedTask];
      [(DATaskManager *)self _schedulePerformTask:v26];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_makeStateTransition
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_scheduleSelector:(SEL)a3 withArgument:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = runLoopModesToPerformDelayedSelectorsIn();
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    Name = sel_getName(a3);
    v11 = [v7 count];
    v12 = v7;
    if (v11 == 1)
    {
      v12 = [v7 lastObject];
    }

    v14 = 136315650;
    v15 = Name;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_24844D000, v8, v9, "Scheduling selector: %s with argument: %@ in modes %@", &v14, 0x20u);
    if (v11 == 1)
    {
    }
  }

  [(DATaskManager *)self performSelector:a3 withObject:v6 afterDelay:v7 inModes:0.0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleStartModal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Scheduling modal task: %@", &v8, 0xCu);
  }

  [(DATaskManager *)self _scheduleSelector:sel__startModal_ withArgument:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_retainPowerAssertionForTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [(DATaskManager *)self account];

    if (v5)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [v13 shouldHoldPowerAssertion], v6 = v13, v7))
      {
        v8 = [(DATaskManager *)self powerAssertionGroupID];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v11 = [(DATaskManager *)self account];
          v10 = [v11 persistentUUID];
        }

        v12 = +[DAPowerAssertionManager sharedPowerAssertionManager];
        [v12 retainPowerAssertion:v13 withGroupIdentifier:v10];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_releasePowerAssertionForTask:(id)a3
{
  v3 = a3;
  if (v3 && ((objc_opt_respondsToSelector() & 1) == 0 || [v3 shouldHoldPowerAssertion]))
  {
    v4 = dispatch_time(0, 1000000000);
    v5 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__DATaskManager__releasePowerAssertionForTask___block_invoke;
    block[3] = &unk_278F131F0;
    v7 = v3;
    dispatch_after(v4, v5, block);
  }
}

void __47__DATaskManager__releasePowerAssertionForTask___block_invoke(uint64_t a1)
{
  v2 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v2 releasePowerAssertion:*(a1 + 32)];
}

- (NSMutableArray)queuedExclusiveTasks
{
  queuedExclusiveTasks = self->_queuedExclusiveTasks;
  if (!queuedExclusiveTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_queuedExclusiveTasks;
    self->_queuedExclusiveTasks = v4;

    queuedExclusiveTasks = self->_queuedExclusiveTasks;
  }

  return queuedExclusiveTasks;
}

- (NSMutableSet)independentTasks
{
  independentTasks = self->_independentTasks;
  if (!independentTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_independentTasks;
    self->_independentTasks = v4;

    independentTasks = self->_independentTasks;
  }

  return independentTasks;
}

- (NSMutableSet)heldIndependentTasks
{
  heldIndependentTasks = self->_heldIndependentTasks;
  if (!heldIndependentTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_heldIndependentTasks;
    self->_heldIndependentTasks = v4;

    heldIndependentTasks = self->_heldIndependentTasks;
  }

  return heldIndependentTasks;
}

- (NSMutableSet)modalHeldIndependentTasks
{
  modalHeldIndependentTasks = self->_modalHeldIndependentTasks;
  if (!modalHeldIndependentTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_modalHeldIndependentTasks;
    self->_modalHeldIndependentTasks = v4;

    modalHeldIndependentTasks = self->_modalHeldIndependentTasks;
  }

  return modalHeldIndependentTasks;
}

- (NSMutableArray)queuedIndependentTasks
{
  queuedIndependentTasks = self->_queuedIndependentTasks;
  if (!queuedIndependentTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_queuedIndependentTasks;
    self->_queuedIndependentTasks = v4;

    queuedIndependentTasks = self->_queuedIndependentTasks;
  }

  return queuedIndependentTasks;
}

- (NSMutableArray)mQueuedTasks
{
  mQueuedTasks = self->_mQueuedTasks;
  if (!mQueuedTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_mQueuedTasks;
    self->_mQueuedTasks = v4;

    mQueuedTasks = self->_mQueuedTasks;
  }

  return mQueuedTasks;
}

- (NSMutableArray)queuedModalTasks
{
  queuedModalTasks = self->_queuedModalTasks;
  if (!queuedModalTasks)
  {
    v4 = objc_opt_new();
    v5 = self->_queuedModalTasks;
    self->_queuedModalTasks = v4;

    queuedModalTasks = self->_queuedModalTasks;
  }

  return queuedModalTasks;
}

- (DAAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (void)taskRequestModal:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_startModal:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_makeStateTransition
{
  OUTLINED_FUNCTION_2();
  *v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end