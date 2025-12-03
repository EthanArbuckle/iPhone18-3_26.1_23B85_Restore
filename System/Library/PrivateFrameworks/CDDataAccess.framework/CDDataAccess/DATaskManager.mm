@interface DATaskManager
- (BOOL)_hasTasksForcingNetworkConnection;
- (BOOL)_hasTasksIndicatingARunningSync;
- (BOOL)_taskForcesNetworking:(id)networking;
- (BOOL)_taskInQueueForcesNetworkConnection:(id)connection;
- (BOOL)isShutdown;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)taskIsModal:(id)modal;
- (BOOL)useSSL;
- (DAAccount)account;
- (DATaskManager)initWithAccount:(id)account;
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
- (void)_performTask:(id)task;
- (void)_populateVersionDescriptions;
- (void)_reactivateHeldTasks;
- (void)_releasePowerAssertionForTask:(id)task;
- (void)_retainPowerAssertionForTask:(id)task;
- (void)_scheduleSelector:(SEL)selector withArgument:(id)argument;
- (void)_scheduleStartModal:(id)modal;
- (void)_startModal:(id)modal;
- (void)_useOpportunisticSocketsAgain;
- (void)cancelAllTasks;
- (void)cancelTask:(id)task withUnderlyingError:(id)error;
- (void)dealloc;
- (void)shutdown;
- (void)submitExclusiveTask:(id)task toFrontOfQueue:(BOOL)queue;
- (void)submitIndependentTask:(id)task;
- (void)submitQueuedTask:(id)task;
- (void)taskDidFinish:(id)finish;
- (void)taskEndModal:(id)modal;
- (void)taskRequestModal:(id)modal;
@end

@implementation DATaskManager

- (NSArray)allTasks
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];

  if (queuedExclusiveTasks)
  {
    queuedExclusiveTasks2 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
    [v3 addObjectsFromArray:queuedExclusiveTasks2];
  }

  activeExclusiveTask = [(DATaskManager *)selfCopy activeExclusiveTask];

  if (activeExclusiveTask)
  {
    activeExclusiveTask2 = [(DATaskManager *)selfCopy activeExclusiveTask];
    [v3 addObject:activeExclusiveTask2];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  independentTasks = [(DATaskManager *)selfCopy independentTasks];
  v10 = [independentTasks countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v10)
  {
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(independentTasks);
        }

        [v3 addObject:*(*(&v37 + 1) + 8 * i)];
      }

      v10 = [independentTasks countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = selfCopy->_heldIndependentTasks;
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
  v17 = selfCopy->_modalHeldIndependentTasks;
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

  mQueuedTasks = [(DATaskManager *)selfCopy mQueuedTasks];

  if (mQueuedTasks)
  {
    mQueuedTasks2 = [(DATaskManager *)selfCopy mQueuedTasks];
    [v3 addObjectsFromArray:mQueuedTasks2];
  }

  activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];

  if (activeQueuedTask)
  {
    activeQueuedTask2 = [(DATaskManager *)selfCopy activeQueuedTask];
    [v3 addObject:activeQueuedTask2];
  }

  modalHeldActiveQueuedTask = [(DATaskManager *)selfCopy modalHeldActiveQueuedTask];

  if (modalHeldActiveQueuedTask)
  {
    modalHeldActiveQueuedTask2 = [(DATaskManager *)selfCopy modalHeldActiveQueuedTask];
    [v3 addObject:modalHeldActiveQueuedTask2];
  }

  objc_sync_exit(selfCopy);

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (DATaskManager)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = DATaskManager;
  v5 = [(DATaskManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    [(DATaskManager *)v7 setAccount:accountCopy];
    [(DATaskManager *)v7 setState:0];
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_queuedExclusiveTasks count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:117 description:@"There are queued exclusive tasks remaining during dealloc"];
  }

  if (selfCopy->_activeExclusiveTask)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:118 description:@"There is an active exclusive task remaining during dealloc"];
  }

  if ([(NSMutableSet *)selfCopy->_independentTasks count])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:119 description:@"There are independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)selfCopy->_heldIndependentTasks count])
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:120 description:@"There are held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableSet *)selfCopy->_modalHeldIndependentTasks count])
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:121 description:@"There are modal-held independent tasks remaining during dealloc"];
  }

  if ([(NSMutableArray *)selfCopy->_mQueuedTasks count])
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:122 description:@"There are queued tasks remaining during dealloc"];
  }

  if (selfCopy->_activeQueuedTask)
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:123 description:@"There is an active queued task remaining during dealloc"];
  }

  if (selfCopy->_modalHeldActiveQueuedTask)
  {
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler8 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:124 description:@"There is a modal-held active queued task remaining during dealloc"];
  }

  [(NSTimer *)selfCopy->_managerIdleTimer invalidate];
  [(NSTimer *)selfCopy->_userInitiatedSyncTimer invalidate];
  [(NSTimer *)selfCopy->_xpcTransactionTimer invalidate];
  v4 = MEMORY[0x277CF3AF0];
  if (selfCopy->_transaction)
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 5);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      v22 = selfCopy;
      _os_log_impl(&dword_24244C000, v5, v6, "DATaskManager: Task manager %@ is being deallocated. Ending XPC transaction", buf, 0xCu);
    }

    transaction = selfCopy->_transaction;
    selfCopy->_transaction = 0;
  }

  if (selfCopy->_daActivity)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 5);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v22 = selfCopy;
      _os_log_impl(&dword_24244C000, v8, v9, "DATaskManager: Task manager %@ is being deallocated. Ending XPC activity", buf, 0xCu);
    }

    daActivity = selfCopy->_daActivity;
    selfCopy->_daActivity = 0;
  }

  [(NSTimer *)selfCopy->_powerLogIdleTimer invalidate];
  objc_sync_exit(selfCopy);

  v20.receiver = selfCopy;
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
  account = [(DATaskManager *)self account];
  username = [account username];

  return username;
}

- (int64_t)port
{
  account = [(DATaskManager *)self account];
  port = [account port];

  return port;
}

- (id)server
{
  account = [(DATaskManager *)self account];
  host = [account host];

  return host;
}

- (id)password
{
  account = [(DATaskManager *)self account];
  password = [account password];

  return password;
}

- (id)OAuth2Token
{
  account = [(DATaskManager *)self account];
  backingAccountInfo = [account backingAccountInfo];
  credential = [backingAccountInfo credential];

  if (credential)
  {
    credentialType = [credential credentialType];
    if ([credentialType isEqualToString:*MEMORY[0x277CB8D98]])
    {

LABEL_5:
      oauthToken = [credential oauthToken];
      goto LABEL_7;
    }

    credentialType2 = [credential credentialType];
    v7 = [credentialType2 isEqualToString:*MEMORY[0x277CB8DA0]];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  oauthToken = 0;
LABEL_7:

  return oauthToken;
}

- (BOOL)useSSL
{
  account = [(DATaskManager *)self account];
  useSSL = [account useSSL];

  return useSSL;
}

- (id)identityPersist
{
  account = [(DATaskManager *)self account];
  identityPersist = [account identityPersist];

  return identityPersist;
}

- (id)accountID
{
  account = [(DATaskManager *)self account];
  accountID = [account accountID];

  return accountID;
}

- (id)accountPersistentUUID
{
  account = [(DATaskManager *)self account];
  persistentUUID = [account persistentUUID];

  return persistentUUID;
}

- (BOOL)isShutdown
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 5;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)submitExclusiveTask:(id)task toFrontOfQueue:(BOOL)queue
{
  queueCopy = queue;
  v42 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277CF3AF0];
  v10 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    v38 = 138412546;
    v39 = taskCopy;
    v40 = 1024;
    v41 = queueCopy;
    _os_log_impl(&dword_24244C000, v8, v10, "Exclusive task %@ submitted, to front: %d", &v38, 0x12u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_opt_respondsToSelector())
  {
    [taskCopy setTaskManager:selfCopy];
  }

  if ([(DATaskManager *)selfCopy state]== 5)
  {
    [taskCopy cancelTaskWithReason:1 underlyingError:0];
    objc_sync_exit(selfCopy);

    goto LABEL_35;
  }

  xpcTransactionTimer = [(DATaskManager *)selfCopy xpcTransactionTimer];

  if (xpcTransactionTimer)
  {
    xpcTransactionTimer2 = [(DATaskManager *)selfCopy xpcTransactionTimer];
    [xpcTransactionTimer2 invalidate];

    [(DATaskManager *)selfCopy setXpcTransactionTimer:0];
  }

  if (!selfCopy->_transaction)
  {
    v14 = DALoggingwithCategory();
    v15 = *(v9 + 5);
    if (os_log_type_enabled(v14, v15))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_24244C000, v14, v15, "DATaskManager: Begin an xpc transaction due to exclusive task", &v38, 2u);
    }

    v16 = objc_opt_new();
    transaction = selfCopy->_transaction;
    selfCopy->_transaction = v16;

    v18 = DALoggingwithCategory();
    if (os_log_type_enabled(v18, v15))
    {
      transactionId = [(DATransaction *)selfCopy->_transaction transactionId];
      v38 = 138412290;
      v39 = transactionId;
      _os_log_impl(&dword_24244C000, v18, v15, "DATaskManager: DATransaction starting, ID: %@", &v38, 0xCu);
    }
  }

  if (!selfCopy->_daActivity)
  {
    account = [(DATaskManager *)selfCopy account];
    hasXpcActivity = [account hasXpcActivity];

    if (hasXpcActivity)
    {
      v22 = DALoggingwithCategory();
      v23 = *(v9 + 5);
      if (os_log_type_enabled(v22, v23))
      {
        account2 = [(DATaskManager *)selfCopy account];
        accountID = [account2 accountID];
        v38 = 138412290;
        v39 = accountID;
        _os_log_impl(&dword_24244C000, v22, v23, "DATaskManager: Retain an xpc activity due to exclusive task for account %@", &v38, 0xCu);
      }

      v26 = [DAActivity alloc];
      account3 = [(DATaskManager *)selfCopy account];
      v28 = [(DAActivity *)v26 initWithAccount:account3];
      daActivity = selfCopy->_daActivity;
      selfCopy->_daActivity = v28;
    }
  }

  state = [(DATaskManager *)selfCopy state];
  if ((state - 1) < 4)
  {
    v31 = 0;
    if (queueCopy)
    {
LABEL_22:
      queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];
      [queuedExclusiveTasks insertObject:taskCopy atIndex:0];
LABEL_31:

      goto LABEL_32;
    }

LABEL_30:
    queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];
    [queuedExclusiveTasks addObject:taskCopy];
    goto LABEL_31;
  }

  if (state)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:314 description:@"Out of bounds state"];
  }

  else
  {
    activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];
    if (activeQueuedTask)
    {

      goto LABEL_29;
    }

    independentTasks = [(DATaskManager *)selfCopy independentTasks];
    v36 = [independentTasks count] == 0;

    if (!v36)
    {
LABEL_29:
      v31 = 1;
      if (queueCopy)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

    [(DATaskManager *)selfCopy setActiveExclusiveTask:taskCopy];
  }

  [(DATaskManager *)selfCopy _schedulePerformTask:taskCopy];
  v31 = 0;
LABEL_32:
  [(DATaskManager *)selfCopy _makeStateTransition];
  if (v31)
  {
    [(DATaskManager *)selfCopy _requestCancelTasksWithReason:0];
  }

  objc_sync_exit(selfCopy);

  [(DATaskManager *)selfCopy taskManagerDidAddTask:taskCopy];
LABEL_35:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)submitIndependentTask:(id)task
{
  v34 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v32 = 138412290;
    v33 = taskCopy;
    _os_log_impl(&dword_24244C000, v6, v8, "Independent task %@ submitted", &v32, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_opt_respondsToSelector())
  {
    [taskCopy setTaskManager:selfCopy];
  }

  if ([(DATaskManager *)selfCopy state]!= 5)
  {
    xpcTransactionTimer = [(DATaskManager *)selfCopy xpcTransactionTimer];

    if (xpcTransactionTimer)
    {
      xpcTransactionTimer2 = [(DATaskManager *)selfCopy xpcTransactionTimer];
      [xpcTransactionTimer2 invalidate];

      [(DATaskManager *)selfCopy setXpcTransactionTimer:0];
    }

    if (!selfCopy->_transaction)
    {
      v12 = DALoggingwithCategory();
      v13 = *(v7 + 5);
      if (os_log_type_enabled(v12, v13))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_24244C000, v12, v13, "DATaskManager: Begin an xpc transaction due to independent task", &v32, 2u);
      }

      v14 = objc_opt_new();
      transaction = selfCopy->_transaction;
      selfCopy->_transaction = v14;

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v13))
      {
        transactionId = [(DATransaction *)selfCopy->_transaction transactionId];
        v32 = 138412290;
        v33 = transactionId;
        _os_log_impl(&dword_24244C000, v16, v13, "DATaskManager: DATransaction starting, ID: %@", &v32, 0xCu);
      }
    }

    if (!selfCopy->_daActivity)
    {
      account = [(DATaskManager *)selfCopy account];
      hasXpcActivity = [account hasXpcActivity];

      if (hasXpcActivity)
      {
        v20 = DALoggingwithCategory();
        v21 = *(v7 + 5);
        if (os_log_type_enabled(v20, v21))
        {
          account2 = [(DATaskManager *)selfCopy account];
          accountID = [account2 accountID];
          v32 = 138412290;
          v33 = accountID;
          _os_log_impl(&dword_24244C000, v20, v21, "DATaskManager: Retain an xpc activity due to independent task for account %@", &v32, 0xCu);
        }

        v24 = [DAActivity alloc];
        account3 = [(DATaskManager *)selfCopy account];
        v26 = [(DAActivity *)v24 initWithAccount:account3];
        daActivity = selfCopy->_daActivity;
        selfCopy->_daActivity = v26;
      }
    }

    state = [(DATaskManager *)selfCopy state];
    if ((state - 1) >= 4)
    {
      if (!state)
      {
        independentTasks = [(DATaskManager *)selfCopy independentTasks];
        [independentTasks addObject:taskCopy];

        [(DATaskManager *)selfCopy _schedulePerformTask:taskCopy];
LABEL_26:
        objc_sync_exit(selfCopy);

        [(DATaskManager *)selfCopy taskManagerDidAddTask:taskCopy];
        goto LABEL_27;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:381 description:@"Out of bounds state"];
    }

    else
    {
      currentHandler = [(DATaskManager *)selfCopy heldIndependentTasks];
      [currentHandler addObject:taskCopy];
    }

    goto LABEL_26;
  }

  [taskCopy cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(selfCopy);

LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)submitQueuedTask:(id)task
{
  v35 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    v33 = 138412290;
    v34 = taskCopy;
    _os_log_impl(&dword_24244C000, v6, v8, "Queued task %@ submitted", &v33, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_opt_respondsToSelector())
  {
    [taskCopy setTaskManager:selfCopy];
  }

  if ([(DATaskManager *)selfCopy state]!= 5)
  {
    xpcTransactionTimer = [(DATaskManager *)selfCopy xpcTransactionTimer];

    if (xpcTransactionTimer)
    {
      xpcTransactionTimer2 = [(DATaskManager *)selfCopy xpcTransactionTimer];
      [xpcTransactionTimer2 invalidate];

      [(DATaskManager *)selfCopy setXpcTransactionTimer:0];
    }

    if (!selfCopy->_transaction)
    {
      v12 = DALoggingwithCategory();
      v13 = *(v7 + 5);
      if (os_log_type_enabled(v12, v13))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_24244C000, v12, v13, "DATaskManager: Begin an xpc transaction due to queued task", &v33, 2u);
      }

      v14 = objc_opt_new();
      transaction = selfCopy->_transaction;
      selfCopy->_transaction = v14;

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v13))
      {
        transactionId = [(DATransaction *)selfCopy->_transaction transactionId];
        v33 = 138412290;
        v34 = transactionId;
        _os_log_impl(&dword_24244C000, v16, v13, "DATaskManager: DATransaction starting, ID: %@", &v33, 0xCu);
      }
    }

    if (!selfCopy->_daActivity)
    {
      account = [(DATaskManager *)selfCopy account];
      hasXpcActivity = [account hasXpcActivity];

      if (hasXpcActivity)
      {
        v20 = DALoggingwithCategory();
        v21 = *(v7 + 5);
        if (os_log_type_enabled(v20, v21))
        {
          account2 = [(DATaskManager *)selfCopy account];
          accountID = [account2 accountID];
          v33 = 138412290;
          v34 = accountID;
          _os_log_impl(&dword_24244C000, v20, v21, "DATaskManager: Retain an xpc activity due to queued task for account %@", &v33, 0xCu);
        }

        v24 = [DAActivity alloc];
        account3 = [(DATaskManager *)selfCopy account];
        v26 = [(DAActivity *)v24 initWithAccount:account3];
        daActivity = selfCopy->_daActivity;
        selfCopy->_daActivity = v26;
      }
    }

    state = [(DATaskManager *)selfCopy state];
    if ((state - 1) >= 4)
    {
      if (state)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:437 description:@"Out of bounds state"];
        goto LABEL_26;
      }

      activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];
      v31 = activeQueuedTask == 0;

      if (v31)
      {
        [(DATaskManager *)selfCopy setActiveQueuedTask:taskCopy];
        [(DATaskManager *)selfCopy _schedulePerformTask:taskCopy];
        goto LABEL_27;
      }
    }

    currentHandler = [(DATaskManager *)selfCopy mQueuedTasks];
    [currentHandler addObject:taskCopy];
LABEL_26:

LABEL_27:
    objc_sync_exit(selfCopy);

    [(DATaskManager *)selfCopy taskManagerDidAddTask:taskCopy];
    goto LABEL_28;
  }

  [taskCopy cancelTaskWithReason:1 underlyingError:0];
  objc_sync_exit(selfCopy);

LABEL_28:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)cancelTask:(id)task withUnderlyingError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 138412290;
    v11 = taskCopy;
    _os_log_impl(&dword_24244C000, v7, v8, "Task %@ aborted", &v10, 0xCu);
  }

  [taskCopy cancelTaskWithReason:0 underlyingError:errorCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllTasks
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTasks = [(DATaskManager *)self allTasks];
  v4 = [allTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allTasks);
        }

        [(DATaskManager *)self cancelTask:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    account = [(DATaskManager *)self account];
    v25 = 134218240;
    selfCopy2 = self;
    v27 = 2048;
    v28 = account;
    _os_log_impl(&dword_24244C000, v3, v5, "Task Manager %p shutting down with account at %p", &v25, 0x16u);
  }

  [(DATaskManager *)self setAccount:0];
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    stateString = [(DATaskManager *)self stateString];
    v25 = 134218242;
    selfCopy2 = self;
    v27 = 2112;
    v28 = stateString;
    _os_log_impl(&dword_24244C000, v7, v5, "Task Manager %p shutting down with state %@", &v25, 0x16u);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    [(DATaskManager *)selfCopy3 setState:5];
    managerIdleTimer = [(DATaskManager *)selfCopy3 managerIdleTimer];

    if (managerIdleTimer)
    {
      managerIdleTimer2 = [(DATaskManager *)selfCopy3 managerIdleTimer];
      [managerIdleTimer2 invalidate];

      [(DATaskManager *)selfCopy3 setManagerIdleTimer:0];
    }

    userInitiatedSyncTimer = [(DATaskManager *)selfCopy3 userInitiatedSyncTimer];

    if (userInitiatedSyncTimer)
    {
      userInitiatedSyncTimer2 = [(DATaskManager *)selfCopy3 userInitiatedSyncTimer];
      [userInitiatedSyncTimer2 invalidate];

      [(DATaskManager *)selfCopy3 setUserInitiatedSyncTimer:0];
    }

    xpcTransactionTimer = [(DATaskManager *)selfCopy3 xpcTransactionTimer];

    if (xpcTransactionTimer)
    {
      xpcTransactionTimer2 = [(DATaskManager *)selfCopy3 xpcTransactionTimer];
      [xpcTransactionTimer2 invalidate];

      [(DATaskManager *)selfCopy3 setXpcTransactionTimer:0];
    }

    if (selfCopy3->_transaction)
    {
      v16 = DALoggingwithCategory();
      v17 = *(v4 + 5);
      if (os_log_type_enabled(v16, v17))
      {
        v25 = 138412290;
        selfCopy2 = selfCopy3;
        _os_log_impl(&dword_24244C000, v16, v17, "DATaskManager: Task manager %@ is being shut down. Ending XPC transaction", &v25, 0xCu);
      }

      transaction = selfCopy3->_transaction;
      selfCopy3->_transaction = 0;
    }

    if (selfCopy3->_daActivity)
    {
      v19 = DALoggingwithCategory();
      v20 = *(v4 + 5);
      if (os_log_type_enabled(v19, v20))
      {
        v25 = 138412290;
        selfCopy2 = selfCopy3;
        _os_log_impl(&dword_24244C000, v19, v20, "DATaskManager: Task manager %@ is being shut down. Releasing XPC activity", &v25, 0xCu);
      }

      daActivity = selfCopy3->_daActivity;
      selfCopy3->_daActivity = 0;
    }

    powerLogIdleTimer = [(DATaskManager *)selfCopy3 powerLogIdleTimer];

    if (powerLogIdleTimer)
    {
      powerLogIdleTimer2 = [(DATaskManager *)selfCopy3 powerLogIdleTimer];
      [powerLogIdleTimer2 invalidate];

      [(DATaskManager *)selfCopy3 setPowerLogIdleTimer:0];
    }

    objc_sync_exit(selfCopy3);

    [(DATaskManager *)selfCopy3 _cancelTasksWithReason:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  v16 = getStateName([(DATaskManager *)selfCopy state]);
  activeExclusiveTask = [(DATaskManager *)selfCopy activeExclusiveTask];
  queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];
  independentTasks = [(DATaskManager *)selfCopy independentTasks];
  heldIndependentTasks = [(DATaskManager *)selfCopy heldIndependentTasks];
  modalHeldIndependentTasks = [(DATaskManager *)selfCopy modalHeldIndependentTasks];
  activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];
  mQueuedTasks = [(DATaskManager *)selfCopy mQueuedTasks];
  activeModalTask = [(DATaskManager *)selfCopy activeModalTask];
  queuedModalTasks = [(DATaskManager *)selfCopy queuedModalTasks];
  account = [(DATaskManager *)selfCopy account];
  v12 = [v3 stringWithFormat:@"DATaskManager %@ state:%@\nActive exclusive task: %@\nQueued exclusive tasks: %@\nIndependent tasks: %@\nHeld independent tasks: %@\nModal-held independent tasks: %@\nActive queued task: %@\nQueued tasks: %@\nActive modal task: %@\nQueued modal tasks: %@\nAssociated with account: %@\n", selfCopy, v16, activeExclusiveTask, queuedExclusiveTasks, independentTasks, heldIndependentTasks, modalHeldIndependentTasks, activeQueuedTask, mQueuedTasks, activeModalTask, queuedModalTasks, account];

  objc_sync_exit(selfCopy);

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
      selfCopy = self;
      _os_log_impl(&dword_24244C000, v3, v4, "Task manager %@ has finally drained its queue. Turning opportunistic socket support back on", &v7, 0xCu);
    }

    account = [(DATaskManager *)self account];
    [account setShouldUseOpportunisticSockets:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  account = [(DATaskManager *)self account];
  accountID = [account accountID];

  if (accountID)
  {
    account2 = [(DATaskManager *)self account];
    accountID2 = [account2 accountID];
    [v3 setObject:accountID2 forKeyedSubscript:@"AccountID"];
  }

  account3 = [(DATaskManager *)self account];
  accountDescription = [account3 accountDescription];

  if (accountDescription)
  {
    account4 = [(DATaskManager *)self account];
    accountDescription2 = [account4 accountDescription];
    [v3 setObject:accountDescription2 forKeyedSubscript:@"AccountName"];
  }

  account5 = [(DATaskManager *)self account];
  v13 = objc_opt_class();

  if (v13)
  {
    account6 = [(DATaskManager *)self account];
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
      selfCopy = self;
      _os_log_impl(&dword_24244C000, v3, v4, "Task manager %@ has finally drained its queue. Clearing its user initiated sync state", &v7, 0xCu);
    }

    account = [(DATaskManager *)self account];
    [account setWasUserInitiated:0];
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
    transactionId = [(DATransaction *)self->_transaction transactionId];
    v15 = 138412546;
    selfCopy3 = self;
    v17 = 2112;
    v18 = transactionId;
    _os_log_impl(&dword_24244C000, v3, v5, "DATaskManager: Task manager %@ has finally drained its queue. Ending XPC transaction %@", &v15, 0x16u);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v5))
  {
    daActivity = self->_daActivity;
    v15 = 138412546;
    selfCopy3 = self;
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
    selfCopy3 = self;
    _os_log_impl(&dword_24244C000, v11, v12, "Task manager %@ has finally drained its queue. Reset automatic fetching state", &v15, 0xCu);
  }

  account = [(DATaskManager *)self account];
  [account saveFetchingAutomaticallyState:0];

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

- (BOOL)_taskForcesNetworking:(id)networking
{
  networkingCopy = networking;
  if (networkingCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      shouldForceNetworking = [networkingCopy shouldForceNetworking];
    }

    else
    {
      shouldForceNetworking = 1;
    }
  }

  else
  {
    shouldForceNetworking = 0;
  }

  return shouldForceNetworking;
}

- (BOOL)_taskInQueueForcesNetworkConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectionCopy = connection;
  v5 = [connectionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(connectionCopy);
        }

        if ([(DATaskManager *)self _taskForcesNetworking:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [connectionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  queuedExclusiveTasks = [(DATaskManager *)self queuedExclusiveTasks];
  v4 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:queuedExclusiveTasks];

  if (v4)
  {
    return 1;
  }

  independentTasks = [(DATaskManager *)self independentTasks];
  allObjects = [independentTasks allObjects];
  v7 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:allObjects];

  if (v7)
  {
    return 1;
  }

  heldIndependentTasks = [(DATaskManager *)self heldIndependentTasks];
  allObjects2 = [heldIndependentTasks allObjects];
  v10 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:allObjects2];

  if (v10)
  {
    return 1;
  }

  modalHeldIndependentTasks = [(DATaskManager *)self modalHeldIndependentTasks];
  allObjects3 = [modalHeldIndependentTasks allObjects];
  v13 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:allObjects3];

  if (v13)
  {
    return 1;
  }

  mQueuedTasks = [(DATaskManager *)self mQueuedTasks];
  v15 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:mQueuedTasks];

  if (v15)
  {
    return 1;
  }

  queuedModalTasks = [(DATaskManager *)self queuedModalTasks];
  v17 = [(DATaskManager *)self _taskInQueueForcesNetworkConnection:queuedModalTasks];

  if (v17)
  {
    return 1;
  }

  activeModalTask = [(DATaskManager *)self activeModalTask];
  v19 = [(DATaskManager *)self _taskForcesNetworking:activeModalTask];

  if (v19)
  {
    return 1;
  }

  activeQueuedTask = [(DATaskManager *)self activeQueuedTask];
  v21 = [(DATaskManager *)self _taskForcesNetworking:activeQueuedTask];

  if (v21)
  {
    return 1;
  }

  modalHeldActiveQueuedTask = [(DATaskManager *)self modalHeldActiveQueuedTask];
  v23 = [(DATaskManager *)self _taskForcesNetworking:modalHeldActiveQueuedTask];

  if (v23)
  {
    return 1;
  }

  activeModalTask2 = [(DATaskManager *)self activeModalTask];
  v26 = [(DATaskManager *)self _taskForcesNetworking:activeModalTask2];

  return v26;
}

- (BOOL)_hasTasksIndicatingARunningSync
{
  allTasks = [(DATaskManager *)self allTasks];
  v3 = [allTasks count] != 0;

  return v3;
}

- (void)taskDidFinish:(id)finish
{
  v151 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  type = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, type))
  {
    *buf = 138412290;
    v150 = finishCopy;
    _os_log_impl(&dword_24244C000, v6, type, "Task %@ finished.", buf, 0xCu);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeExclusiveTask = [(DATaskManager *)selfCopy activeExclusiveTask];

    if (activeExclusiveTask == finishCopy)
    {
      [(DATaskManager *)selfCopy setActiveExclusiveTask:0];
    }

    else
    {
      activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];
      v11 = activeQueuedTask == finishCopy;

      if (v11)
      {
        [(DATaskManager *)selfCopy setActiveQueuedTask:0];
      }

      else
      {
        modalHeldActiveQueuedTask = [(DATaskManager *)selfCopy modalHeldActiveQueuedTask];
        v13 = modalHeldActiveQueuedTask == finishCopy;

        if (v13)
        {
          [(DATaskManager *)selfCopy setModalHeldActiveQueuedTask:0];
        }

        else
        {
          queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];
          v15 = [queuedExclusiveTasks containsObject:finishCopy];

          if (v15)
          {
            queuedExclusiveTasks2 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
            [queuedExclusiveTasks2 removeObject:finishCopy];
          }

          else
          {
            independentTasks = [(DATaskManager *)selfCopy independentTasks];
            v18 = [independentTasks containsObject:finishCopy];

            if (v18)
            {
              queuedExclusiveTasks2 = [(DATaskManager *)selfCopy independentTasks];
              [queuedExclusiveTasks2 removeObject:finishCopy];
            }

            else
            {
              heldIndependentTasks = [(DATaskManager *)selfCopy heldIndependentTasks];
              v20 = [heldIndependentTasks containsObject:finishCopy];

              if (v20)
              {
                queuedExclusiveTasks2 = [(DATaskManager *)selfCopy heldIndependentTasks];
                [queuedExclusiveTasks2 removeObject:finishCopy];
              }

              else
              {
                modalHeldIndependentTasks = [(DATaskManager *)selfCopy modalHeldIndependentTasks];
                v22 = [modalHeldIndependentTasks containsObject:finishCopy];

                if (v22)
                {
                  queuedExclusiveTasks2 = [(DATaskManager *)selfCopy modalHeldIndependentTasks];
                  [queuedExclusiveTasks2 removeObject:finishCopy];
                }

                else
                {
                  mQueuedTasks = [(DATaskManager *)selfCopy mQueuedTasks];
                  v24 = [mQueuedTasks containsObject:finishCopy];

                  if (!v24)
                  {
                    activeModalTask = [(DATaskManager *)selfCopy activeModalTask];
                    v122 = activeModalTask == finishCopy;

                    if (v122)
                    {
                      currentHandler = [MEMORY[0x277CCA890] currentHandler];
                      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:676 description:{@"Finished task is not being managed, so cannot be active modal task."}];
                    }

                    queuedModalTasks = [(DATaskManager *)selfCopy queuedModalTasks];
                    v124 = [queuedModalTasks containsObject:finishCopy];

                    if (v124)
                    {
                      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                      [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:678 description:{@"Finished task is not being managed, so cannot be in modal queue."}];
                    }

                    v112 = DALoggingwithCategory();
                    v125 = *(v7 + 6);
                    if (os_log_type_enabled(v112, v125))
                    {
                      *buf = 138412290;
                      v150 = finishCopy;
                      _os_log_impl(&dword_24244C000, v112, v125, "Early return because task %@ isn't in our collection", buf, 0xCu);
                    }

                    goto LABEL_116;
                  }

                  queuedExclusiveTasks2 = [(DATaskManager *)selfCopy mQueuedTasks];
                  [queuedExclusiveTasks2 removeObject:finishCopy];
                }
              }
            }
          }
        }
      }
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel__performTask_ object:finishCopy];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel__startModal_ object:finishCopy];
    [(DATaskManager *)selfCopy taskManagerWillRemoveTask:finishCopy];
    [(DATaskManager *)selfCopy _releasePowerAssertionForTask:finishCopy];
    activeModalTask2 = [(DATaskManager *)selfCopy activeModalTask];

    if (activeModalTask2 == finishCopy)
    {
      [(DATaskManager *)selfCopy setActiveModalTask:0];
    }

    else
    {
      queuedModalTasks2 = [(DATaskManager *)selfCopy queuedModalTasks];
      v27 = [queuedModalTasks2 containsObject:finishCopy];

      if (v27)
      {
        queuedModalTasks3 = [(DATaskManager *)selfCopy queuedModalTasks];
        [queuedModalTasks3 removeObject:finishCopy];

        v29 = 1;
        goto LABEL_27;
      }
    }

    v29 = 0;
LABEL_27:
    state = [(DATaskManager *)selfCopy state];
    if (state > 1)
    {
      if (state == 2)
      {
        if (activeExclusiveTask != finishCopy)
        {
          goto LABEL_65;
        }

        queuedExclusiveTasks3 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
        v35 = [queuedExclusiveTasks3 count];

        if (v35)
        {
          goto LABEL_63;
        }

        queuedModalTasks4 = [(DATaskManager *)selfCopy queuedModalTasks];
        v48 = [queuedModalTasks4 count];

        if (!v48)
        {
LABEL_54:
          [(DATaskManager *)selfCopy _reactivateHeldTasks];
          goto LABEL_65;
        }

        goto LABEL_56;
      }

      if (state != 3)
      {
        if (state == 4)
        {
          if (activeModalTask2 != finishCopy)
          {
            goto LABEL_65;
          }

          queuedModalTasks5 = [(DATaskManager *)selfCopy queuedModalTasks];
          v32 = [queuedModalTasks5 count];

          if (v32)
          {
            goto LABEL_56;
          }

          queuedExclusiveTasks4 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
          v53 = [queuedExclusiveTasks4 count];

          if (v53)
          {
LABEL_63:
            queuedExclusiveTasks5 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
            v64 = [queuedExclusiveTasks5 objectAtIndexedSubscript:0];
            [(DATaskManager *)selfCopy setActiveExclusiveTask:v64];

            queuedExclusiveTasks6 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
            [queuedExclusiveTasks6 removeObjectAtIndex:0];

            activeExclusiveTask2 = [(DATaskManager *)selfCopy activeExclusiveTask];
            [(DATaskManager *)selfCopy _schedulePerformTask:activeExclusiveTask2];
            goto LABEL_64;
          }

          goto LABEL_54;
        }

        goto LABEL_46;
      }

      if (v29)
      {
        queuedModalTasks6 = [(DATaskManager *)selfCopy queuedModalTasks];
        v37 = [queuedModalTasks6 count] == 0;

        goto LABEL_53;
      }

      activeExclusiveTask2 = [(DATaskManager *)selfCopy activeQueuedTask];
      if (activeExclusiveTask2)
      {
        goto LABEL_64;
      }

      independentTasks2 = [(DATaskManager *)selfCopy independentTasks];
      v41 = [independentTasks2 count] == 0;

      if (v41)
      {
        queuedModalTasks7 = [(DATaskManager *)selfCopy queuedModalTasks];
        v43 = [queuedModalTasks7 count];

        if (v43)
        {
LABEL_56:
          queuedModalTasks8 = [(DATaskManager *)selfCopy queuedModalTasks];
          v50 = [queuedModalTasks8 objectAtIndexedSubscript:0];
          [(DATaskManager *)selfCopy setActiveModalTask:v50];

          queuedModalTasks9 = [(DATaskManager *)selfCopy queuedModalTasks];
          [queuedModalTasks9 removeObjectAtIndex:0];

          activeExclusiveTask2 = [(DATaskManager *)selfCopy activeModalTask];
          [(DATaskManager *)selfCopy _scheduleStartModal:activeExclusiveTask2];
          goto LABEL_64;
        }
      }

LABEL_65:
      [(DATaskManager *)selfCopy _makeStateTransition];
      managerIdleTimer = [(DATaskManager *)selfCopy managerIdleTimer];

      if (managerIdleTimer)
      {
        managerIdleTimer2 = [(DATaskManager *)selfCopy managerIdleTimer];
        [managerIdleTimer2 invalidate];

        [(DATaskManager *)selfCopy setManagerIdleTimer:0];
      }

      account = [(DATaskManager *)selfCopy account];
      if (([account shouldUseOpportunisticSockets] & 1) == 0)
      {
        _hasTasksForcingNetworkConnection = [(DATaskManager *)selfCopy _hasTasksForcingNetworkConnection];

        if (_hasTasksForcingNetworkConnection)
        {
          goto LABEL_77;
        }

        v70 = objc_alloc(MEMORY[0x277CBEBB8]);
        v71 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
        v72 = [v70 initWithFireDate:v71 interval:selfCopy target:sel__useOpportunisticSocketsAgain selector:0 userInfo:0 repeats:0.0];
        [(DATaskManager *)selfCopy setManagerIdleTimer:v72];

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        account = runLoopModesToPerformDelayedSelectorsIn();
        v73 = [account countByEnumeratingWithState:&v141 objects:v148 count:16];
        if (v73)
        {
          v74 = *v142;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v142 != v74)
              {
                objc_enumerationMutation(account);
              }

              v76 = *(*(&v141 + 1) + 8 * i);
              currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
              managerIdleTimer3 = [(DATaskManager *)selfCopy managerIdleTimer];
              [currentRunLoop addTimer:managerIdleTimer3 forMode:v76];
            }

            v73 = [account countByEnumeratingWithState:&v141 objects:v148 count:16];
          }

          while (v73);
        }
      }

LABEL_77:
      userInitiatedSyncTimer = [(DATaskManager *)selfCopy userInitiatedSyncTimer];

      if (userInitiatedSyncTimer)
      {
        userInitiatedSyncTimer2 = [(DATaskManager *)selfCopy userInitiatedSyncTimer];
        [userInitiatedSyncTimer2 invalidate];

        [(DATaskManager *)selfCopy setUserInitiatedSyncTimer:0];
      }

      account2 = [(DATaskManager *)selfCopy account];
      if ([account2 wasUserInitiated])
      {
        _hasTasksIndicatingARunningSync = [(DATaskManager *)selfCopy _hasTasksIndicatingARunningSync];

        if (_hasTasksIndicatingARunningSync)
        {
LABEL_89:
          xpcTransactionTimer = [(DATaskManager *)selfCopy xpcTransactionTimer];

          if (xpcTransactionTimer)
          {
            xpcTransactionTimer2 = [(DATaskManager *)selfCopy xpcTransactionTimer];
            [xpcTransactionTimer2 invalidate];

            [(DATaskManager *)selfCopy setXpcTransactionTimer:0];
          }

          if (![(DATaskManager *)selfCopy _hasTasksIndicatingARunningSync])
          {
            v94 = DALoggingwithCategory();
            if (os_log_type_enabled(v94, type))
            {
              account3 = [(DATaskManager *)selfCopy account];
              accountDescription = [account3 accountDescription];
              *buf = 138412290;
              v150 = accountDescription;
              _os_log_impl(&dword_24244C000, v94, type, "Pending tasks are finished for account %@", buf, 0xCu);
            }

            v97 = objc_alloc(MEMORY[0x277CBEBB8]);
            v98 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
            v99 = [v97 initWithFireDate:v98 interval:selfCopy target:sel__endXpcTransaction selector:0 userInfo:0 repeats:0.0];
            [(DATaskManager *)selfCopy setXpcTransactionTimer:v99];

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
                  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
                  xpcTransactionTimer3 = [(DATaskManager *)selfCopy xpcTransactionTimer];
                  [currentRunLoop2 addTimer:xpcTransactionTimer3 forMode:v104];
                }

                v101 = [v100 countByEnumeratingWithState:&v133 objects:v146 count:16];
              }

              while (v101);
            }
          }

          powerLogIdleTimer = [(DATaskManager *)selfCopy powerLogIdleTimer];

          if (powerLogIdleTimer)
          {
            powerLogIdleTimer2 = [(DATaskManager *)selfCopy powerLogIdleTimer];
            [powerLogIdleTimer2 invalidate];

            [(DATaskManager *)selfCopy setPowerLogIdleTimer:0];
          }

          if ([(DATaskManager *)selfCopy _hasTasksIndicatingARunningSync]|| ![(DATaskManager *)selfCopy didLogSyncStart]|| !PLShouldLogRegisteredEvent())
          {
            goto LABEL_117;
          }

          v109 = objc_alloc(MEMORY[0x277CBEBB8]);
          v110 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
          v111 = [v109 initWithFireDate:v110 interval:selfCopy target:sel__logSyncEnd selector:0 userInfo:0 repeats:0.0];
          [(DATaskManager *)selfCopy setPowerLogIdleTimer:v111];

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
                powerLogIdleTimer3 = [(DATaskManager *)selfCopy powerLogIdleTimer];

                if (powerLogIdleTimer3)
                {
                  currentRunLoop3 = [MEMORY[0x277CBEB88] currentRunLoop];
                  powerLogIdleTimer4 = [(DATaskManager *)selfCopy powerLogIdleTimer];
                  [currentRunLoop3 addTimer:powerLogIdleTimer4 forMode:v116];
                }
              }

              v113 = [v112 countByEnumeratingWithState:&v129 objects:v145 count:16];
            }

            while (v113);
          }

LABEL_116:

LABEL_117:
          objc_sync_exit(selfCopy);

          goto LABEL_118;
        }

        v83 = objc_alloc(MEMORY[0x277CBEBB8]);
        v84 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
        v85 = [v83 initWithFireDate:v84 interval:selfCopy target:sel__clearUserInitiatedSyncTimer selector:0 userInfo:0 repeats:0.0];
        [(DATaskManager *)selfCopy setUserInitiatedSyncTimer:v85];

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        account2 = runLoopModesToPerformDelayedSelectorsIn();
        v86 = [account2 countByEnumeratingWithState:&v137 objects:v147 count:16];
        if (v86)
        {
          v87 = *v138;
          do
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v138 != v87)
              {
                objc_enumerationMutation(account2);
              }

              v89 = *(*(&v137 + 1) + 8 * m);
              currentRunLoop4 = [MEMORY[0x277CBEB88] currentRunLoop];
              userInitiatedSyncTimer3 = [(DATaskManager *)selfCopy userInitiatedSyncTimer];
              [currentRunLoop4 addTimer:userInitiatedSyncTimer3 forMode:v89];
            }

            v86 = [account2 countByEnumeratingWithState:&v137 objects:v147 count:16];
          }

          while (v86);
        }
      }

      goto LABEL_89;
    }

    if (state)
    {
      if (state != 1)
      {
LABEL_46:
        activeExclusiveTask2 = [MEMORY[0x277CCA890] currentHandler];
        [activeExclusiveTask2 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:771 description:@"Out of bounds state"];
        goto LABEL_64;
      }

      activeQueuedTask2 = [(DATaskManager *)selfCopy activeQueuedTask];
      if (activeQueuedTask2)
      {
      }

      else
      {
        independentTasks3 = [(DATaskManager *)selfCopy independentTasks];
        v45 = [independentTasks3 count] == 0;

        if (v45)
        {
          queuedExclusiveTasks7 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
          v62 = [queuedExclusiveTasks7 count];

          if (!v62)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }
      }

      queuedExclusiveTasks8 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
      v37 = [queuedExclusiveTasks8 count] == 0;

LABEL_53:
      if (!v37)
      {
        goto LABEL_65;
      }

      goto LABEL_54;
    }

    activeExclusiveTask2 = [(DATaskManager *)selfCopy queuedModalTasks];
    if (![activeExclusiveTask2 count])
    {
      queuedExclusiveTasks9 = [(DATaskManager *)selfCopy queuedExclusiveTasks];
      if (![queuedExclusiveTasks9 count])
      {
        activeQueuedTask3 = [(DATaskManager *)selfCopy activeQueuedTask];
        v55 = activeQueuedTask3 == 0;

        if (v55)
        {
          mQueuedTasks2 = [(DATaskManager *)selfCopy mQueuedTasks];
          v57 = [mQueuedTasks2 count];

          if (v57)
          {
            mQueuedTasks3 = [(DATaskManager *)selfCopy mQueuedTasks];
            v59 = [mQueuedTasks3 objectAtIndexedSubscript:0];
            [(DATaskManager *)selfCopy setActiveQueuedTask:v59];

            mQueuedTasks4 = [(DATaskManager *)selfCopy mQueuedTasks];
            [mQueuedTasks4 removeObjectAtIndex:0];

            activeExclusiveTask2 = [(DATaskManager *)selfCopy activeQueuedTask];
            [(DATaskManager *)selfCopy _schedulePerformTask:activeExclusiveTask2];
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }
    }

LABEL_64:

    goto LABEL_65;
  }

  [(DATaskManager *)self taskManagerWillRemoveTask:finishCopy];
  [(DATaskManager *)self _releasePowerAssertionForTask:finishCopy];
LABEL_118:

  v120 = *MEMORY[0x277D85DE8];
}

- (void)taskRequestModal:(id)modal
{
  v42 = *MEMORY[0x277D85DE8];
  modalCopy = modal;
  if (!modalCopy)
  {
    [DATaskManager taskRequestModal:];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v40 = 138412290;
    v41 = modalCopy;
    _os_log_impl(&dword_24244C000, v6, v7, "Task %@ requesting modal", &v40, 0xCu);
  }

  if ([(DATaskManager *)self state]== 5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:836 description:@"Cannot request modal behavior during shutdown"];

    goto LABEL_39;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = [(DATaskManager *)selfCopy state];
  if (state > 2)
  {
    if ((state - 3) >= 2)
    {
LABEL_17:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:873 description:@"Out of bounds state."];

LABEL_18:
      v14 = 0;
      v18 = 0;
      goto LABEL_27;
    }

    v14 = 0;
  }

  else
  {
    if (state)
    {
      if (state != 1)
      {
        if (state == 2)
        {
          activeExclusiveTask = [(DATaskManager *)selfCopy activeExclusiveTask];
          v12 = activeExclusiveTask == modalCopy;

          if (!v12)
          {
            currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:863 description:@"Only the active exclusive task can go modal immediately"];
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      activeQueuedTask = [(DATaskManager *)selfCopy activeQueuedTask];
      v16 = activeQueuedTask;
      if (activeQueuedTask == modalCopy)
      {
        independentTasks = [(DATaskManager *)selfCopy independentTasks];
        v20 = [independentTasks count] == 0;

        if (v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      activeQueuedTask2 = [(DATaskManager *)selfCopy activeQueuedTask];
      if (activeQueuedTask2)
      {
      }

      else
      {
        independentTasks2 = [(DATaskManager *)selfCopy independentTasks];
        if ([independentTasks2 count] == 1)
        {
          independentTasks3 = [(DATaskManager *)selfCopy independentTasks];
          v24 = [independentTasks3 containsObject:modalCopy];

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
  activeQueuedTask3 = [(DATaskManager *)selfCopy activeQueuedTask];
  v26 = activeQueuedTask3 == modalCopy;

  if (v26)
  {
    activeQueuedTask4 = [(DATaskManager *)selfCopy activeQueuedTask];
    [(DATaskManager *)selfCopy setModalHeldActiveQueuedTask:activeQueuedTask4];

    [(DATaskManager *)selfCopy setActiveQueuedTask:0];
  }

  else
  {
    independentTasks4 = [(DATaskManager *)selfCopy independentTasks];
    v28 = [independentTasks4 containsObject:modalCopy];

    if (v28)
    {
      modalHeldIndependentTasks = [(DATaskManager *)selfCopy modalHeldIndependentTasks];
      [modalHeldIndependentTasks addObject:modalCopy];

      independentTasks5 = [(DATaskManager *)selfCopy independentTasks];
      [independentTasks5 removeObject:modalCopy];
    }
  }

  if (v18)
  {
    if (modalCopy)
    {
      queuedModalTasks = [(DATaskManager *)selfCopy queuedModalTasks];
      [queuedModalTasks addObject:modalCopy];
    }

    independentTasks6 = [(DATaskManager *)selfCopy independentTasks];
    if ([independentTasks6 count])
    {
      goto LABEL_35;
    }

    activeQueuedTask5 = [(DATaskManager *)selfCopy activeQueuedTask];
    v36 = activeQueuedTask5 == 0;

    if (v36)
    {
      queuedModalTasks2 = [(DATaskManager *)selfCopy queuedModalTasks];
      v38 = [queuedModalTasks2 objectAtIndexedSubscript:0];
      [(DATaskManager *)selfCopy setActiveModalTask:v38];

      queuedModalTasks3 = [(DATaskManager *)selfCopy queuedModalTasks];
      [queuedModalTasks3 removeObjectAtIndex:0];

      independentTasks6 = [(DATaskManager *)selfCopy activeModalTask];
      [(DATaskManager *)selfCopy _scheduleStartModal:independentTasks6];
LABEL_35:
    }
  }

  else
  {
    [(DATaskManager *)selfCopy setActiveModalTask:modalCopy];
    [(DATaskManager *)selfCopy _scheduleStartModal:modalCopy];
  }

  [(DATaskManager *)selfCopy _makeStateTransition];
  objc_sync_exit(selfCopy);

  if (v14)
  {
    [(DATaskManager *)selfCopy _requestCancelTasksWithReason:1];
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)taskEndModal:(id)modal
{
  v20 = *MEMORY[0x277D85DE8];
  modalCopy = modal;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v19 = modalCopy;
    _os_log_impl(&dword_24244C000, v6, v7, "Task %@ ending modal", buf, 0xCu);
  }

  if ([(DATaskManager *)self state]!= 5)
  {
    if ([(DATaskManager *)self state]== 4)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      activeModalTask = [(DATaskManager *)selfCopy activeModalTask];
      v10 = activeModalTask == modalCopy;

      if (!v10)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DATaskManager.m" lineNumber:923 description:@"Only the active modal task can end modal behavior."];
      }

      [(DATaskManager *)selfCopy setActiveModalTask:0];
      queuedModalTasks = [(DATaskManager *)selfCopy queuedModalTasks];
      v12 = [queuedModalTasks count] == 0;

      if (v12)
      {
        activeExclusiveTask = [(DATaskManager *)selfCopy activeExclusiveTask];

        if (!activeExclusiveTask)
        {
          queuedExclusiveTasks = [(DATaskManager *)selfCopy queuedExclusiveTasks];
          v15 = [queuedExclusiveTasks count];

          if (!v15)
          {
            [(DATaskManager *)selfCopy _reactivateHeldTasks];
          }
        }
      }

      [(DATaskManager *)selfCopy _makeStateTransition];
      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = [MEMORY[0x277CCA890] currentHandler];
      [(DATaskManager *)selfCopy handleFailureInMethod:a2 object:self file:@"DATaskManager.m" lineNumber:918 description:@"taskEndModal can only be called in Run Modal state, not %d", [(DATaskManager *)self state]];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)taskIsModal:(id)modal
{
  modalCopy = modal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  modalHeldIndependentTasks = [(DATaskManager *)selfCopy modalHeldIndependentTasks];
  if ([modalHeldIndependentTasks containsObject:modalCopy])
  {
    v7 = 1;
  }

  else
  {
    modalHeldActiveQueuedTask = [(DATaskManager *)selfCopy modalHeldActiveQueuedTask];
    if (modalHeldActiveQueuedTask == modalCopy)
    {
      v7 = 1;
    }

    else
    {
      activeModalTask = [(DATaskManager *)selfCopy activeModalTask];
      v7 = activeModalTask == modalCopy;
    }
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  account = [(DATaskManager *)self account];
  shouldCancelTaskDueToOnPowerFetchMode = [account shouldCancelTaskDueToOnPowerFetchMode];

  return shouldCancelTaskDueToOnPowerFetchMode;
}

- (void)_performTask:(id)task
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
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
      v21 = taskCopy;
      _os_log_impl(&dword_24244C000, v5, v6, "The _performTask is invoked after taskManager has been shutdown. Canceling %{public}@ %@", buf, 0x16u);
    }

    [taskCopy cancelTaskWithReason:1 underlyingError:0];
  }

  else
  {
    shouldCancelTaskDueToOnPowerFetchMode = [(DATaskManager *)self shouldCancelTaskDueToOnPowerFetchMode];
    v10 = DALoggingwithCategory();
    v11 = v10;
    if (shouldCancelTaskDueToOnPowerFetchMode)
    {
      v12 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v10, v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = taskCopy;
        _os_log_impl(&dword_24244C000, v11, v12, "The device is in on-power fetch mode, but is no longer on power or on wifi. Canceling %{public}@ %@", buf, 0x16u);
      }

      [taskCopy cancelTaskWithReason:2 underlyingError:0];
      [(DATaskManager *)self cancelTasksDueToOnPowerMode];
    }

    else
    {
      v15 = *(MEMORY[0x277CF3AF0] + 7);
      if (os_log_type_enabled(v10, *(MEMORY[0x277CF3AF0] + 7)))
      {
        *buf = 138412290;
        v19 = taskCopy;
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

      [(DATaskManager *)self _retainPowerAssertionForTask:taskCopy];
      [taskCopy performTask];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startModal:(id)modal
{
  v16 = *MEMORY[0x277D85DE8];
  modalCopy = modal;
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
      v15 = modalCopy;
      _os_log_impl(&dword_24244C000, v5, v6, "The _startModal is invoked after taskManager has been shutdown. Canceling %{public}@ %@", &v12, 0x16u);
    }

    [modalCopy cancelTaskWithReason:1 underlyingError:0];
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
      v13 = modalCopy;
      _os_log_impl(&dword_24244C000, v9, v10, "startModal called on task %@", &v12, 0xCu);
    }

    [modalCopy startModal];
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
  heldIndependentTasks = [(DATaskManager *)self heldIndependentTasks];
  v4 = [heldIndependentTasks countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(heldIndependentTasks);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        independentTasks = [(DATaskManager *)self independentTasks];
        [independentTasks addObject:v8];

        [(DATaskManager *)self _schedulePerformTask:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [heldIndependentTasks countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  heldIndependentTasks2 = [(DATaskManager *)self heldIndependentTasks];
  [heldIndependentTasks2 removeAllObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  modalHeldIndependentTasks = [(DATaskManager *)self modalHeldIndependentTasks];
  v12 = [modalHeldIndependentTasks countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(modalHeldIndependentTasks);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        independentTasks2 = [(DATaskManager *)self independentTasks];
        [independentTasks2 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [modalHeldIndependentTasks countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  modalHeldIndependentTasks2 = [(DATaskManager *)self modalHeldIndependentTasks];
  [modalHeldIndependentTasks2 removeAllObjects];

  modalHeldActiveQueuedTask = [(DATaskManager *)self modalHeldActiveQueuedTask];

  if (modalHeldActiveQueuedTask)
  {
    [(DATaskManager *)self setActiveQueuedTask:self->_modalHeldActiveQueuedTask];
    [(DATaskManager *)self setModalHeldActiveQueuedTask:0];
  }

  else
  {
    mQueuedTasks = [(DATaskManager *)self mQueuedTasks];
    v21 = [mQueuedTasks count];

    if (v21)
    {
      mQueuedTasks2 = [(DATaskManager *)self mQueuedTasks];
      v23 = [mQueuedTasks2 objectAtIndexedSubscript:0];
      [(DATaskManager *)self setActiveQueuedTask:v23];

      mQueuedTasks3 = [(DATaskManager *)self mQueuedTasks];
      [mQueuedTasks3 removeObjectAtIndex:0];

      activeQueuedTask = [(DATaskManager *)self activeQueuedTask];
      [(DATaskManager *)self _schedulePerformTask:activeQueuedTask];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_makeStateTransition
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_scheduleSelector:(SEL)selector withArgument:(id)argument
{
  v20 = *MEMORY[0x277D85DE8];
  argumentCopy = argument;
  v7 = runLoopModesToPerformDelayedSelectorsIn();
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    Name = sel_getName(selector);
    v11 = [v7 count];
    lastObject = v7;
    if (v11 == 1)
    {
      lastObject = [v7 lastObject];
    }

    v14 = 136315650;
    v15 = Name;
    v16 = 2112;
    v17 = argumentCopy;
    v18 = 2112;
    v19 = lastObject;
    _os_log_impl(&dword_24244C000, v8, v9, "Scheduling selector: %s with argument: %@ in modes %@", &v14, 0x20u);
    if (v11 == 1)
    {
    }
  }

  [(DATaskManager *)self performSelector:selector withObject:argumentCopy afterDelay:v7 inModes:0.0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleStartModal:(id)modal
{
  v10 = *MEMORY[0x277D85DE8];
  modalCopy = modal;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = modalCopy;
    _os_log_impl(&dword_24244C000, v5, v6, "Scheduling modal task: %@", &v8, 0xCu);
  }

  [(DATaskManager *)self _scheduleSelector:sel__startModal_ withArgument:modalCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_retainPowerAssertionForTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    v12 = taskCopy;
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [v12 shouldHoldPowerAssertion], v5 = v12, v6))
    {
      powerAssertionGroupID = [(DATaskManager *)self powerAssertionGroupID];
      v8 = powerAssertionGroupID;
      if (powerAssertionGroupID)
      {
        persistentUUID = powerAssertionGroupID;
      }

      else
      {
        account = [(DATaskManager *)self account];
        persistentUUID = [account persistentUUID];
      }

      v11 = +[DAPowerAssertionManager sharedPowerAssertionManager];
      [v11 retainPowerAssertion:v12 withGroupIdentifier:persistentUUID];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_releasePowerAssertionForTask:(id)task
{
  taskCopy = task;
  if (taskCopy && ((objc_opt_respondsToSelector() & 1) == 0 || [taskCopy shouldHoldPowerAssertion]))
  {
    v4 = dispatch_time(0, 1000000000);
    v5 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__DATaskManager__releasePowerAssertionForTask___block_invoke;
    block[3] = &unk_278D4C450;
    v7 = taskCopy;
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