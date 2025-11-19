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
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)v3->_queuedExclusiveTasks count])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:117 description:@"There are queued exclusive tasks remaining during dealloc"];
  }

  if (v3->_activeExclusiveTask)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:118 description:@"There is an active exclusive task remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_independentTasks count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:119 description:@"There are independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_heldIndependentTasks count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:120 description:@"There are held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)v3->_modalHeldIndependentTasks count])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:121 description:@"There are modal-held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableArray *)v3->_mQueuedTasks count])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:122 description:@"There are queued tasks remaining during dealloc"];
  }

  if (v3->_activeQueuedTask)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:123 description:@"There is an active queued task remaining during dealloc"];
  }

  if (v3->_modalHeldActiveQueuedTask)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:v3 file:@"DATaskManager.m" lineNumber:124 description:@"There is a modal-held active queued task remaining during dealloc"];
  }

  [(NSTimer *)v3->_managerIdleTimer invalidate];
  [(NSTimer *)v3->_userInitiatedSyncTimer invalidate];
  [(NSTimer *)v3->_xpcTransactionTimer invalidate];
  v4 = MEMORY[0x277CF3AF0];
  if (v3->_transaction)
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 5);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_24244C000, v5, v6, "DATaskManager: Task manager %@ is being deallocated. Ending XPC transaction", buf, 0xCu);
    }

    transaction = v3->_transaction;
    v3->_transaction = 0;
  }

  if (v3->_daActivity)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 5);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_24244C000, v8, v9, "DATaskManager: Task manager %@ is being deallocated. Ending XPC activity", buf, 0xCu);
    }

    daActivity = v3->_daActivity;
    v3->_daActivity = 0;
  }

  [(NSTimer *)v3->_powerLogIdleTimer invalidate];
  objc_sync_exit(v3);

  v20.receiver = v3;
  v20.super_class = DATaskManager;
  [(DATaskManager *)&v20 dealloc];
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
  block[3] = &unk_278D4C450;
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
  block[3] = &unk_278D4C450;
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
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277CF3AF0];
  v10 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    v38 = 138412546;
    v39 = v7;
    v40 = 1024;
    v41 = v4;
    _os_log_impl(&dword_24244C000, v8, v10, "Exclusive task %@ submitted, to front: %d", &v38, 0x12u);
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
    v15 = *(v9 + 5);
    if (os_log_type_enabled(v14, v15))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_24244C000, v14, v15, "DATaskManager: Begin an xpc transaction due to exclusive task", &v38, 2u);
    }

    v16 = objc_opt_new();
    transaction = v11->_transaction;
    v11->_transaction = v16;

    v18 = DALoggingwithCategory();
    if (os_log_type_enabled(v18, v15))
    {
      v19 = [(DATransaction *)v11->_transaction transactionId];
      v38 = 138412290;
      v39 = v19;
      _os_log_impl(&dword_24244C000, v18, v15, "DATaskManager: DATransaction starting, ID: %@", &v38, 0xCu);
    }
  }

  if (!v11->_daActivity)
  {
    v20 = [(DATaskManager *)v11 account];
    v21 = [v20 hasXpcActivity];

    if (v21)
    {
      v22 = DALoggingwithCategory();
      v23 = *(v9 + 5);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = [(DATaskManager *)v11 account];
        v25 = [v24 accountID];
        v38 = 138412290;
        v39 = v25;
        _os_log_impl(&dword_24244C000, v22, v23, "DATaskManager: Retain an xpc activity due to exclusive task for account %@", &v38, 0xCu);
      }

      v26 = [DAActivity alloc];
      v27 = [(DATaskManager *)v11 account];
      v28 = [(DAActivity *)v26 initWithAccount:v27];
      daActivity = v11->_daActivity;
      v11->_daActivity = v28;
    }
  }

  v30 = [(DATaskManager *)v11 state];
  if ((v30 - 1) < 4)
  {
    v31 = 0;
    if (v4)
    {
LABEL_22:
      v32 = [(DATaskManager *)v11 queuedExclusiveTasks];
      [v32 insertObject:v7 atIndex:0];
LABEL_31:

      goto LABEL_32;
    }

LABEL_30:
    v32 = [(DATaskManager *)v11 queuedExclusiveTasks];
    [v32 addObject:v7];
    goto LABEL_31;
  }

  if (v30)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:v11 file:@"DATaskManager.m" lineNumber:314 description:@"Out of bounds state"];
  }

  else
  {
    v33 = [(DATaskManager *)v11 activeQueuedTask];
    if (v33)
    {

      goto LABEL_29;
    }

    v35 = [(DATaskManager *)v11 independentTasks];
    v36 = [v35 count] == 0;

    if (!v36)
    {
LABEL_29:
      v31 = 1;
      if (v4)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

    [(DATaskManager *)v11 setActiveExclusiveTask:v7];
  }

  [(DATaskManager *)v11 _schedulePerformTask:v7];
  v31 = 0;
LABEL_32:
  [(DATaskManager *)v11 _makeStateTransition];
  if (v31)
  {
    [(DATaskManager *)v11 _requestCancelTasksWithReason:0];
  }

  objc_sync_exit(v11);

  [(DATaskManager *)v11 taskManagerDidAddTask:v7];
LABEL_35:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)submitIndependentTask:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_24244C000, v6, v8, "Independent task %@ submitted", &v32, 0xCu);
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
      v13 = *(v7 + 5);
      if (os_log_type_enabled(v12, v13))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_24244C000, v12, v13, "DATaskManager: Begin an xpc transaction due to independent task", &v32, 2u);
      }

      v14 = objc_opt_new();
      transaction = v9->_transaction;
      v9->_transaction = v14;

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v13))
      {
        v17 = [(DATransaction *)v9->_transaction transactionId];
        v32 = 138412290;
        v33 = v17;
        _os_log_impl(&dword_24244C000, v16, v13, "DATaskManager: DATransaction starting, ID: %@", &v32, 0xCu);
      }
    }

    if (!v9->_daActivity)
    {
      v18 = [(DATaskManager *)v9 account];
      v19 = [v18 hasXpcActivity];

      if (v19)
      {
        v20 = DALoggingwithCategory();
        v21 = *(v7 + 5);
        if (os_log_type_enabled(v20, v21))
        {
          v22 = [(DATaskManager *)v9 account];
          v23 = [v22 accountID];
          v32 = 138412290;
          v33 = v23;
          _os_log_impl(&dword_24244C000, v20, v21, "DATaskManager: Retain an xpc activity due to independent task for account %@", &v32, 0xCu);
        }

        v24 = [DAActivity alloc];
        v25 = [(DATaskManager *)v9 account];
        v26 = [(DAActivity *)v24 initWithAccount:v25];
        daActivity = v9->_daActivity;
        v9->_daActivity = v26;
      }
    }

    v28 = [(DATaskManager *)v9 state];
    if ((v28 - 1) >= 4)
    {
      if (!v28)
      {
        v30 = [(DATaskManager *)v9 independentTasks];
        [v30 addObject:v5];

        [(DATaskManager *)v9 _schedulePerformTask:v5];
LABEL_26:
        objc_sync_exit(v9);

        [(DATaskManager *)v9 taskManagerDidAddTask:v5];
        goto LABEL_27;
      }

      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:381 description:@"Out of bounds state"];
    }

    else
    {
      v29 = [(DATaskManager *)v9 heldIndependentTasks];
      [v29 addObject:v5];
    }

    goto LABEL_26;
  }

  [v5 cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(v9);

LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)submitQueuedTask:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v33 = 138412290;
    v34 = v5;
    _os_log_impl(&dword_24244C000, v6, v8, "Queued task %@ submitted", &v33, 0xCu);
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
      v13 = *(v7 + 5);
      if (os_log_type_enabled(v12, v13))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_24244C000, v12, v13, "DATaskManager: Begin an xpc transaction due to queued task", &v33, 2u);
      }

      v14 = objc_opt_new();
      transaction = v9->_transaction;
      v9->_transaction = v14;

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v13))
      {
        v17 = [(DATransaction *)v9->_transaction transactionId];
        v33 = 138412290;
        v34 = v17;
        _os_log_impl(&dword_24244C000, v16, v13, "DATaskManager: DATransaction starting, ID: %@", &v33, 0xCu);
      }
    }

    if (!v9->_daActivity)
    {
      v18 = [(DATaskManager *)v9 account];
      v19 = [v18 hasXpcActivity];

      if (v19)
      {
        v20 = DALoggingwithCategory();
        v21 = *(v7 + 5);
        if (os_log_type_enabled(v20, v21))
        {
          v22 = [(DATaskManager *)v9 account];
          v23 = [v22 accountID];
          v33 = 138412290;
          v34 = v23;
          _os_log_impl(&dword_24244C000, v20, v21, "DATaskManager: Retain an xpc activity due to queued task for account %@", &v33, 0xCu);
        }

        v24 = [DAActivity alloc];
        v25 = [(DATaskManager *)v9 account];
        v26 = [(DAActivity *)v24 initWithAccount:v25];
        daActivity = v9->_daActivity;
        v9->_daActivity = v26;
      }
    }

    v28 = [(DATaskManager *)v9 state];
    if ((v28 - 1) >= 4)
    {
      if (v28)
      {
        v29 = [MEMORY[0x277CCA890] currentHandler];
        [v29 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:437 description:@"Out of bounds state"];
        goto LABEL_26;
      }

      v30 = [(DATaskManager *)v9 activeQueuedTask];
      v31 = v30 == 0;

      if (v31)
      {
        [(DATaskManager *)v9 setActiveQueuedTask:v5];
        [(DATaskManager *)v9 _schedulePerformTask:v5];
        goto LABEL_27;
      }
    }

    v29 = [(DATaskManager *)v9 mQueuedTasks];
    [v29 addObject:v5];
LABEL_26:

LABEL_27:
    objc_sync_exit(v9);

    [(DATaskManager *)v9 taskManagerDidAddTask:v5];
    goto LABEL_28;
  }

  [v5 cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(v9);

LABEL_28:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)cancelTask:(id)a3 withUnderlyingError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_24244C000, v7, v8, "Task %@ aborted", &v10, 0xCu);
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
  v29 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = [(DATaskManager *)self account];
    v25 = 134218240;
    v26 = self;
    v27 = 2048;
    v28 = v6;
    _os_log_impl(&dword_24244C000, v3, v5, "Task Manager %p shutting down with account at %p", &v25, 0x16u);
  }

  [(DATaskManager *)self setAccount:0];
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = [(DATaskManager *)self stateString];
    v25 = 134218242;
    v26 = self;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_24244C000, v7, v5, "Task Manager %p shutting down with state %@", &v25, 0x16u);
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
      v17 = *(v4 + 5);
      if (os_log_type_enabled(v16, v17))
      {
        v25 = 138412290;
        v26 = v9;
        _os_log_impl(&dword_24244C000, v16, v17, "DATaskManager: Task manager %@ is being shut down. Ending XPC transaction", &v25, 0xCu);
      }

      transaction = v9->_transaction;
      v9->_transaction = 0;
    }

    if (v9->_daActivity)
    {
      v19 = DALoggingwithCategory();
      v20 = *(v4 + 5);
      if (os_log_type_enabled(v19, v20))
      {
        v25 = 138412290;
        v26 = v9;
        _os_log_impl(&dword_24244C000, v19, v20, "DATaskManager: Task manager %@ is being shut down. Releasing XPC activity", &v25, 0xCu);
      }

      daActivity = v9->_daActivity;
      v9->_daActivity = 0;
    }

    v22 = [(DATaskManager *)v9 powerLogIdleTimer];

    if (v22)
    {
      v23 = [(DATaskManager *)v9 powerLogIdleTimer];
      [v23 invalidate];

      [(DATaskManager *)v9 setPowerLogIdleTimer:0];
    }

    objc_sync_exit(v9);

    [(DATaskManager *)v9 _cancelTasksWithReason:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CCACA8];
  v16 = getStateName([(DATaskManager *)v2 state]);
  v15 = [(DATaskManager *)v2 activeExclusiveTask];
  v14 = [(DATaskManager *)v2 queuedExclusiveTasks];
  v4 = [(DATaskManager *)v2 independentTasks];
  v5 = [(DATaskManager *)v2 heldIndependentTasks];
  v6 = [(DATaskManager *)v2 modalHeldIndependentTasks];
  v7 = [(DATaskManager *)v2 activeQueuedTask];
  v8 = [(DATaskManager *)v2 mQueuedTasks];
  v9 = [(DATaskManager *)v2 activeModalTask];
  v10 = [(DATaskManager *)v2 queuedModalTasks];
  v11 = [(DATaskManager *)v2 account];
  v12 = [v3 stringWithFormat:@"DATaskManager %@ state:%@\nActive exclusive task: %@\nQueued exclusive tasks: %@\nIndependent tasks: %@\nHeld independent tasks: %@\nModal-held independent tasks: %@\nActive queued task: %@\nQueued tasks: %@\nActive modal task: %@\nQueued modal tasks: %@\nAssociated with account: %@\n", v2, v16, v15, v14, v4, v5, v6, v7, v8, v9, v10, v11];

  objc_sync_exit(v2);

  return v12;
}

- (void)_useOpportunisticSocketsAgain
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(DATaskManager *)self state]!= 5)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_24244C000, v3, v4, "Task manager %@ has finally drained its queue. Turning opportunistic socket support back on", &v7, 0xCu);
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
    v4 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_24244C000, v3, v4, "Task manager %@ has finally drained its queue. Clearing its user initiated sync state", &v7, 0xCu);
    }

    v5 = [(DATaskManager *)self account];
    [v5 setWasUserInitiated:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endXpcTransaction
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = [(DATransaction *)self->_transaction transactionId];
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_24244C000, v3, v5, "DATaskManager: Task manager %@ has finally drained its queue. Ending XPC transaction %@", &v15, 0x16u);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v5))
  {
    daActivity = self->_daActivity;
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = daActivity;
    _os_log_impl(&dword_24244C000, v8, v5, "DATaskManager: Task manager %@ has finally drained its queue. Releasing XPC activity %@", &v15, 0x16u);
  }

  v10 = self->_daActivity;
  self->_daActivity = 0;

  v11 = DALoggingwithCategory();
  v12 = *(v4 + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v15 = 138412290;
    v16 = self;
    _os_log_impl(&dword_24244C000, v11, v12, "Task manager %@ has finally drained its queue. Reset automatic fetching state", &v15, 0xCu);
  }

  v13 = [(DATaskManager *)self account];
  [v13 saveFetchingAutomaticallyState:0];

  v14 = *MEMORY[0x277D85DE8];
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
  v151 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  type = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, type))
  {
    *buf = 138412290;
    v150 = v5;
    _os_log_impl(&dword_24244C000, v6, type, "Task %@ finished.", buf, 0xCu);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(DATaskManager *)v8 activeExclusiveTask];

    if (v9 == v5)
    {
      [(DATaskManager *)v8 setActiveExclusiveTask:0];
    }

    else
    {
      v10 = [(DATaskManager *)v8 activeQueuedTask];
      v11 = v10 == v5;

      if (v11)
      {
        [(DATaskManager *)v8 setActiveQueuedTask:0];
      }

      else
      {
        v12 = [(DATaskManager *)v8 modalHeldActiveQueuedTask];
        v13 = v12 == v5;

        if (v13)
        {
          [(DATaskManager *)v8 setModalHeldActiveQueuedTask:0];
        }

        else
        {
          v14 = [(DATaskManager *)v8 queuedExclusiveTasks];
          v15 = [v14 containsObject:v5];

          if (v15)
          {
            v16 = [(DATaskManager *)v8 queuedExclusiveTasks];
            [v16 removeObject:v5];
          }

          else
          {
            v17 = [(DATaskManager *)v8 independentTasks];
            v18 = [v17 containsObject:v5];

            if (v18)
            {
              v16 = [(DATaskManager *)v8 independentTasks];
              [v16 removeObject:v5];
            }

            else
            {
              v19 = [(DATaskManager *)v8 heldIndependentTasks];
              v20 = [v19 containsObject:v5];

              if (v20)
              {
                v16 = [(DATaskManager *)v8 heldIndependentTasks];
                [v16 removeObject:v5];
              }

              else
              {
                v21 = [(DATaskManager *)v8 modalHeldIndependentTasks];
                v22 = [v21 containsObject:v5];

                if (v22)
                {
                  v16 = [(DATaskManager *)v8 modalHeldIndependentTasks];
                  [v16 removeObject:v5];
                }

                else
                {
                  v23 = [(DATaskManager *)v8 mQueuedTasks];
                  v24 = [v23 containsObject:v5];

                  if (!v24)
                  {
                    v121 = [(DATaskManager *)v8 activeModalTask];
                    v122 = v121 == v5;

                    if (v122)
                    {
                      v126 = [MEMORY[0x277CCA890] currentHandler];
                      [v126 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:676 description:{@"Finished task is not being managed, so cannot be active modal task."}];
                    }

                    v123 = [(DATaskManager *)v8 queuedModalTasks];
                    v124 = [v123 containsObject:v5];

                    if (v124)
                    {
                      v127 = [MEMORY[0x277CCA890] currentHandler];
                      [v127 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:678 description:{@"Finished task is not being managed, so cannot be in modal queue."}];
                    }

                    v112 = DALoggingwithCategory();
                    v125 = *(v7 + 6);
                    if (os_log_type_enabled(v112, v125))
                    {
                      *buf = 138412290;
                      v150 = v5;
                      _os_log_impl(&dword_24244C000, v112, v125, "Early return because task %@ isn't in our collection", buf, 0xCu);
                    }

                    goto LABEL_116;
                  }

                  v16 = [(DATaskManager *)v8 mQueuedTasks];
                  [v16 removeObject:v5];
                }
              }
            }
          }
        }
      }
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v8 selector:sel__performTask_ object:v5];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v8 selector:sel__startModal_ object:v5];
    [(DATaskManager *)v8 taskManagerWillRemoveTask:v5];
    [(DATaskManager *)v8 _releasePowerAssertionForTask:v5];
    v25 = [(DATaskManager *)v8 activeModalTask];

    if (v25 == v5)
    {
      [(DATaskManager *)v8 setActiveModalTask:0];
    }

    else
    {
      v26 = [(DATaskManager *)v8 queuedModalTasks];
      v27 = [v26 containsObject:v5];

      if (v27)
      {
        v28 = [(DATaskManager *)v8 queuedModalTasks];
        [v28 removeObject:v5];

        v29 = 1;
        goto LABEL_27;
      }
    }

    v29 = 0;
LABEL_27:
    v30 = [(DATaskManager *)v8 state];
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        if (v9 != v5)
        {
          goto LABEL_65;
        }

        v34 = [(DATaskManager *)v8 queuedExclusiveTasks];
        v35 = [v34 count];

        if (v35)
        {
          goto LABEL_63;
        }

        v47 = [(DATaskManager *)v8 queuedModalTasks];
        v48 = [v47 count];

        if (!v48)
        {
LABEL_54:
          [(DATaskManager *)v8 _reactivateHeldTasks];
          goto LABEL_65;
        }

        goto LABEL_56;
      }

      if (v30 != 3)
      {
        if (v30 == 4)
        {
          if (v25 != v5)
          {
            goto LABEL_65;
          }

          v31 = [(DATaskManager *)v8 queuedModalTasks];
          v32 = [v31 count];

          if (v32)
          {
            goto LABEL_56;
          }

          v52 = [(DATaskManager *)v8 queuedExclusiveTasks];
          v53 = [v52 count];

          if (v53)
          {
LABEL_63:
            v63 = [(DATaskManager *)v8 queuedExclusiveTasks];
            v64 = [v63 objectAtIndexedSubscript:0];
            [(DATaskManager *)v8 setActiveExclusiveTask:v64];

            v65 = [(DATaskManager *)v8 queuedExclusiveTasks];
            [v65 removeObjectAtIndex:0];

            v38 = [(DATaskManager *)v8 activeExclusiveTask];
            [(DATaskManager *)v8 _schedulePerformTask:v38];
            goto LABEL_64;
          }

          goto LABEL_54;
        }

        goto LABEL_46;
      }

      if (v29)
      {
        v36 = [(DATaskManager *)v8 queuedModalTasks];
        v37 = [v36 count] == 0;

        goto LABEL_53;
      }

      v38 = [(DATaskManager *)v8 activeQueuedTask];
      if (v38)
      {
        goto LABEL_64;
      }

      v40 = [(DATaskManager *)v8 independentTasks];
      v41 = [v40 count] == 0;

      if (v41)
      {
        v42 = [(DATaskManager *)v8 queuedModalTasks];
        v43 = [v42 count];

        if (v43)
        {
LABEL_56:
          v49 = [(DATaskManager *)v8 queuedModalTasks];
          v50 = [v49 objectAtIndexedSubscript:0];
          [(DATaskManager *)v8 setActiveModalTask:v50];

          v51 = [(DATaskManager *)v8 queuedModalTasks];
          [v51 removeObjectAtIndex:0];

          v38 = [(DATaskManager *)v8 activeModalTask];
          [(DATaskManager *)v8 _scheduleStartModal:v38];
          goto LABEL_64;
        }
      }

LABEL_65:
      [(DATaskManager *)v8 _makeStateTransition];
      v66 = [(DATaskManager *)v8 managerIdleTimer];

      if (v66)
      {
        v67 = [(DATaskManager *)v8 managerIdleTimer];
        [v67 invalidate];

        [(DATaskManager *)v8 setManagerIdleTimer:0];
      }

      v68 = [(DATaskManager *)v8 account];
      if (([v68 shouldUseOpportunisticSockets] & 1) == 0)
      {
        v69 = [(DATaskManager *)v8 _hasTasksForcingNetworkConnection];

        if (v69)
        {
          goto LABEL_77;
        }

        v70 = objc_alloc(MEMORY[0x277CBEBB8]);
        v71 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
        v72 = [v70 initWithFireDate:v71 interval:v8 target:sel__useOpportunisticSocketsAgain selector:0 userInfo:0 repeats:0.0];
        [(DATaskManager *)v8 setManagerIdleTimer:v72];

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v68 = runLoopModesToPerformDelayedSelectorsIn();
        v73 = [v68 countByEnumeratingWithState:&v141 objects:v148 count:16];
        if (v73)
        {
          v74 = *v142;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v142 != v74)
              {
                objc_enumerationMutation(v68);
              }

              v76 = *(*(&v141 + 1) + 8 * i);
              v77 = [MEMORY[0x277CBEB88] currentRunLoop];
              v78 = [(DATaskManager *)v8 managerIdleTimer];
              [v77 addTimer:v78 forMode:v76];
            }

            v73 = [v68 countByEnumeratingWithState:&v141 objects:v148 count:16];
          }

          while (v73);
        }
      }

LABEL_77:
      v79 = [(DATaskManager *)v8 userInitiatedSyncTimer];

      if (v79)
      {
        v80 = [(DATaskManager *)v8 userInitiatedSyncTimer];
        [v80 invalidate];

        [(DATaskManager *)v8 setUserInitiatedSyncTimer:0];
      }

      v81 = [(DATaskManager *)v8 account];
      if ([v81 wasUserInitiated])
      {
        v82 = [(DATaskManager *)v8 _hasTasksIndicatingARunningSync];

        if (v82)
        {
LABEL_89:
          v92 = [(DATaskManager *)v8 xpcTransactionTimer];

          if (v92)
          {
            v93 = [(DATaskManager *)v8 xpcTransactionTimer];
            [v93 invalidate];

            [(DATaskManager *)v8 setXpcTransactionTimer:0];
          }

          if (![(DATaskManager *)v8 _hasTasksIndicatingARunningSync])
          {
            v94 = DALoggingwithCategory();
            if (os_log_type_enabled(v94, type))
            {
              v95 = [(DATaskManager *)v8 account];
              v96 = [v95 accountDescription];
              *buf = 138412290;
              v150 = v96;
              _os_log_impl(&dword_24244C000, v94, type, "Pending tasks are finished for account %@", buf, 0xCu);
            }

            v97 = objc_alloc(MEMORY[0x277CBEBB8]);
            v98 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
            v99 = [v97 initWithFireDate:v98 interval:v8 target:sel__endXpcTransaction selector:0 userInfo:0 repeats:0.0];
            [(DATaskManager *)v8 setXpcTransactionTimer:v99];

            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v100 = runLoopModesToPerformDelayedSelectorsIn();
            v101 = [v100 countByEnumeratingWithState:&v133 objects:v146 count:16];
            if (v101)
            {
              v102 = *v134;
              do
              {
                for (j = 0; j != v101; ++j)
                {
                  if (*v134 != v102)
                  {
                    objc_enumerationMutation(v100);
                  }

                  v104 = *(*(&v133 + 1) + 8 * j);
                  v105 = [MEMORY[0x277CBEB88] currentRunLoop];
                  v106 = [(DATaskManager *)v8 xpcTransactionTimer];
                  [v105 addTimer:v106 forMode:v104];
                }

                v101 = [v100 countByEnumeratingWithState:&v133 objects:v146 count:16];
              }

              while (v101);
            }
          }

          v107 = [(DATaskManager *)v8 powerLogIdleTimer];

          if (v107)
          {
            v108 = [(DATaskManager *)v8 powerLogIdleTimer];
            [v108 invalidate];

            [(DATaskManager *)v8 setPowerLogIdleTimer:0];
          }

          if ([(DATaskManager *)v8 _hasTasksIndicatingARunningSync]|| ![(DATaskManager *)v8 didLogSyncStart]|| !PLShouldLogRegisteredEvent())
          {
            goto LABEL_117;
          }

          v109 = objc_alloc(MEMORY[0x277CBEBB8]);
          v110 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
          v111 = [v109 initWithFireDate:v110 interval:v8 target:sel__logSyncEnd selector:0 userInfo:0 repeats:0.0];
          [(DATaskManager *)v8 setPowerLogIdleTimer:v111];

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v112 = runLoopModesToPerformDelayedSelectorsIn();
          v113 = [v112 countByEnumeratingWithState:&v129 objects:v145 count:16];
          if (v113)
          {
            v114 = *v130;
            do
            {
              for (k = 0; k != v113; ++k)
              {
                if (*v130 != v114)
                {
                  objc_enumerationMutation(v112);
                }

                v116 = *(*(&v129 + 1) + 8 * k);
                v117 = [(DATaskManager *)v8 powerLogIdleTimer];

                if (v117)
                {
                  v118 = [MEMORY[0x277CBEB88] currentRunLoop];
                  v119 = [(DATaskManager *)v8 powerLogIdleTimer];
                  [v118 addTimer:v119 forMode:v116];
                }
              }

              v113 = [v112 countByEnumeratingWithState:&v129 objects:v145 count:16];
            }

            while (v113);
          }

LABEL_116:

LABEL_117:
          objc_sync_exit(v8);

          goto LABEL_118;
        }

        v83 = objc_alloc(MEMORY[0x277CBEBB8]);
        v84 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
        v85 = [v83 initWithFireDate:v84 interval:v8 target:sel__clearUserInitiatedSyncTimer selector:0 userInfo:0 repeats:0.0];
        [(DATaskManager *)v8 setUserInitiatedSyncTimer:v85];

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v81 = runLoopModesToPerformDelayedSelectorsIn();
        v86 = [v81 countByEnumeratingWithState:&v137 objects:v147 count:16];
        if (v86)
        {
          v87 = *v138;
          do
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v138 != v87)
              {
                objc_enumerationMutation(v81);
              }

              v89 = *(*(&v137 + 1) + 8 * m);
              v90 = [MEMORY[0x277CBEB88] currentRunLoop];
              v91 = [(DATaskManager *)v8 userInitiatedSyncTimer];
              [v90 addTimer:v91 forMode:v89];
            }

            v86 = [v81 countByEnumeratingWithState:&v137 objects:v147 count:16];
          }

          while (v86);
        }
      }

      goto LABEL_89;
    }

    if (v30)
    {
      if (v30 != 1)
      {
LABEL_46:
        v38 = [MEMORY[0x277CCA890] currentHandler];
        [v38 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:771 description:@"Out of bounds state"];
        goto LABEL_64;
      }

      v33 = [(DATaskManager *)v8 activeQueuedTask];
      if (v33)
      {
      }

      else
      {
        v44 = [(DATaskManager *)v8 independentTasks];
        v45 = [v44 count] == 0;

        if (v45)
        {
          v61 = [(DATaskManager *)v8 queuedExclusiveTasks];
          v62 = [v61 count];

          if (!v62)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }
      }

      v46 = [(DATaskManager *)v8 queuedExclusiveTasks];
      v37 = [v46 count] == 0;

LABEL_53:
      if (!v37)
      {
        goto LABEL_65;
      }

      goto LABEL_54;
    }

    v38 = [(DATaskManager *)v8 queuedModalTasks];
    if (![v38 count])
    {
      v39 = [(DATaskManager *)v8 queuedExclusiveTasks];
      if (![v39 count])
      {
        v54 = [(DATaskManager *)v8 activeQueuedTask];
        v55 = v54 == 0;

        if (v55)
        {
          v56 = [(DATaskManager *)v8 mQueuedTasks];
          v57 = [v56 count];

          if (v57)
          {
            v58 = [(DATaskManager *)v8 mQueuedTasks];
            v59 = [v58 objectAtIndexedSubscript:0];
            [(DATaskManager *)v8 setActiveQueuedTask:v59];

            v60 = [(DATaskManager *)v8 mQueuedTasks];
            [v60 removeObjectAtIndex:0];

            v38 = [(DATaskManager *)v8 activeQueuedTask];
            [(DATaskManager *)v8 _schedulePerformTask:v38];
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }
    }

LABEL_64:

    goto LABEL_65;
  }

  [(DATaskManager *)self taskManagerWillRemoveTask:v5];
  [(DATaskManager *)self _releasePowerAssertionForTask:v5];
LABEL_118:

  v120 = *MEMORY[0x277D85DE8];
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
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v40 = 138412290;
    v41 = v5;
    _os_log_impl(&dword_24244C000, v6, v7, "Task %@ requesting modal", &v40, 0xCu);
  }

  if ([(DATaskManager *)self state]== 5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:836 description:@"Cannot request modal behavior during shutdown"];

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
      [v17 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:873 description:@"Out of bounds state."];

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
            [v13 handleFailureInMethod:a2 object:v9 file:@"DATaskManager.m" lineNumber:863 description:@"Only the active exclusive task can go modal immediately"];
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
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_24244C000, v6, v7, "Task %@ ending modal", buf, 0xCu);
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
        [v17 handleFailureInMethod:a2 object:v8 file:@"DATaskManager.m" lineNumber:923 description:@"Only the active modal task can end modal behavior."];
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
      [(DATaskManager *)v8 handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:918 description:@"taskEndModal can only be called in Run Modal state, not %d", [(DATaskManager *)self state]];
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
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DATaskManager *)self isShutdown])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_24244C000, v5, v6, "The _performTask is invoked after taskManager has been shutdown. Canceling %{public}@ %@", buf, 0x16u);
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
      v12 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v10, v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_24244C000, v11, v12, "The device is in on-power fetch mode, but is no longer on power or on wifi. Canceling %{public}@ %@", buf, 0x16u);
      }

      [v4 cancelTaskWithReason:2 underlyingError:0];
      [(DATaskManager *)self cancelTasksDueToOnPowerMode];
    }

    else
    {
      v15 = *(MEMORY[0x277CF3AF0] + 7);
      if (os_log_type_enabled(v10, *(MEMORY[0x277CF3AF0] + 7)))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_24244C000, v11, v15, "performTask called on task %@", buf, 0xCu);
      }

      if (PLShouldLogRegisteredEvent() && !self->_didLogSyncStart && [(DATaskManager *)self _hasTasksIndicatingARunningSync])
      {
        [(DATaskManager *)self _powerLogInfoDictionary];
        v17[0] = @"AccountName";
        v17[1] = @"AccountClass";
        v17[2] = @"AccountID";
        [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
        PLLogRegisteredEvent();
        self->_didLogSyncStart = 1;
      }

      [(DATaskManager *)self _retainPowerAssertionForTask:v4];
      [v4 performTask];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startModal:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DATaskManager *)self isShutdown])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_24244C000, v5, v6, "The _startModal is invoked after taskManager has been shutdown. Canceling %{public}@ %@", &v12, 0x16u);
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
    v10 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v9, v10))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_24244C000, v9, v10, "startModal called on task %@", &v12, 0xCu);
    }

    [v4 startModal];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reactivateHeldTasks
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(DATaskManager *)self heldIndependentTasks];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [(DATaskManager *)self independentTasks];
        [v9 addObject:v8];

        [(DATaskManager *)self _schedulePerformTask:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v10 = [(DATaskManager *)self heldIndependentTasks];
  [v10 removeAllObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(DATaskManager *)self modalHeldIndependentTasks];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v17 = [(DATaskManager *)self independentTasks];
        [v17 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  v18 = [(DATaskManager *)self modalHeldIndependentTasks];
  [v18 removeAllObjects];

  v19 = [(DATaskManager *)self modalHeldActiveQueuedTask];

  if (v19)
  {
    [(DATaskManager *)self setActiveQueuedTask:self->_modalHeldActiveQueuedTask];
    [(DATaskManager *)self setModalHeldActiveQueuedTask:0];
  }

  else
  {
    v20 = [(DATaskManager *)self mQueuedTasks];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [(DATaskManager *)self mQueuedTasks];
      v23 = [v22 objectAtIndexedSubscript:0];
      [(DATaskManager *)self setActiveQueuedTask:v23];

      v24 = [(DATaskManager *)self mQueuedTasks];
      [v24 removeObjectAtIndex:0];

      v25 = [(DATaskManager *)self activeQueuedTask];
      [(DATaskManager *)self _schedulePerformTask:v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
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
  v9 = *(MEMORY[0x277CF3AF0] + 7);
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
    _os_log_impl(&dword_24244C000, v8, v9, "Scheduling selector: %s with argument: %@ in modes %@", &v14, 0x20u);
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
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24244C000, v5, v6, "Scheduling modal task: %@", &v8, 0xCu);
  }

  [(DATaskManager *)self _scheduleSelector:sel__startModal_ withArgument:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_retainPowerAssertionForTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [v12 shouldHoldPowerAssertion], v5 = v12, v6))
    {
      v7 = [(DATaskManager *)self powerAssertionGroupID];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v10 = [(DATaskManager *)self account];
        v9 = [v10 persistentUUID];
      }

      v11 = +[DAPowerAssertionManager sharedPowerAssertionManager];
      [v11 retainPowerAssertion:v12 withGroupIdentifier:v9];
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
    block[3] = &unk_278D4C450;
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