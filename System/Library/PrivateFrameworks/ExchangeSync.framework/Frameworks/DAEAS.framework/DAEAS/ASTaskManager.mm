@interface ASTaskManager
- (ASProtocol)protocol;
- (ASTask)modalGetOptionsTask;
- (ASTask)modalPolicyKeyUpdateTask;
- (ASTaskManager)initWithAccount:(id)account policyManager:(id)manager;
- (BOOL)_hasTasksIndicatingARunningSync;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)taskIsModal:(id)modal;
- (NSString)deviceID;
- (NSString)easProtocolVersion;
- (NSString)policyKey;
- (id)_version;
- (id)stateString;
- (id)userAgent;
- (void)_finishAllTasksWithError:(id)error;
- (void)_populateVersionDescriptions;
- (void)cancelAllTasks;
- (void)cancelTask:(id)task;
- (void)dealloc;
- (void)getOptionsTask:(id)task completedWithStatus:(int64_t)status supportedCommands:(id)commands supportedVersions:(id)versions error:(id)error;
- (void)policyManagerFailedToUpdatePolicy:(id)policy;
- (void)policyManagerUpdatedPolicy:(id)policy;
- (void)requestEASVersionWithDelegateTask:(id)task;
- (void)setEASProtocolVersion:(id)version;
- (void)shutdown;
- (void)taskDidFinish:(id)finish;
- (void)taskEndModal:(id)modal;
- (void)taskManagerDidAddTask:(id)task;
- (void)taskManagerWillRemoveTask:(id)task;
- (void)taskRequestModal:(id)modal;
- (void)updatePolicyKeyWithDelegateTask:(id)task;
@end

@implementation ASTaskManager

- (ASTaskManager)initWithAccount:(id)account policyManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = ASTaskManager;
  v8 = [(DATaskManager *)&v16 initWithAccount:accountCopy];
  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = accountCopy;
      _os_log_impl(&dword_24A0AC000, v9, v10, "ASTaskManager %@ created with account %@", buf, 0x16u);
    }

    v11 = v8;
    objc_sync_enter(v11);
    [(ASTaskManager *)v11 setPolicyManager:managerCopy];
    policyManager = [(ASTaskManager *)v11 policyManager];
    [policyManager setDelegate:v11];

    v13 = objc_opt_new();
    [(ASTaskManager *)v11 setTaskIDToTask:v13];

    [(ASTaskManager *)v11 setModalGetOptionsTask:0];
    [(ASTaskManager *)v11 setGetOptionsTask:0];
    [(ASTaskManager *)v11 setModalPolicyKeyUpdateTask:0];
    objc_sync_exit(v11);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  [(ASTask *)self->_getOptionsTask cancelTaskWithReason:1 underlyingError:0];
  v3.receiver = self;
  v3.super_class = ASTaskManager;
  [(DATaskManager *)&v3 dealloc];
}

- (void)_populateVersionDescriptions
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v7 = v2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  stringFormattedForMSVersioning = [v3 stringFormattedForMSVersioning];

  v5 = [stringFormattedForMSVersioning copy];
  v6 = sVersion;
  sVersion = v5;
}

- (id)_version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ASTaskManager__version__block_invoke;
  block[3] = &unk_278FC7988;
  block[4] = self;
  if (_version_onceToken != -1)
  {
    dispatch_once(&_version_onceToken, block);
  }

  return sVersion;
}

- (NSString)deviceID
{
  v16 = *MEMORY[0x277D85DE8];
  account = [(DATaskManager *)self account];
  v4 = [account objectForKeyedSubscript:*MEMORY[0x277D07B08]];

  if (v4 && [v4 length])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      account2 = [(DATaskManager *)self account];
      accountID = [account2 accountID];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = accountID;
      _os_log_impl(&dword_24A0AC000, v5, v6, "Using per account device ID %@ for account %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = asDeviceID();

    v4 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setEASProtocolVersion:(id)version
{
  versionCopy = version;
  account = [(DATaskManager *)self account];
  [account setProtocolVersion:versionCopy];
}

- (NSString)easProtocolVersion
{
  protocol = [(ASTaskManager *)self protocol];
  protocolVersion = [protocol protocolVersion];

  return protocolVersion;
}

- (ASProtocol)protocol
{
  account = [(DATaskManager *)self account];
  protocol = [account protocol];

  return protocol;
}

- (NSString)policyKey
{
  policyManager = [(ASTaskManager *)self policyManager];
  currentPolicyKey = [policyManager currentPolicyKey];

  return currentPolicyKey;
}

- (void)requestEASVersionWithDelegateTask:(id)task
{
  v31 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v7))
  {
    v25 = 138412290;
    v26 = taskCopy;
    _os_log_impl(&dword_24A0AC000, v5, v7, "Task %@ requesting EAS version.", &v25, 0xCu);
  }

  activeModalTask = [(DATaskManager *)self activeModalTask];
  v9 = activeModalTask == taskCopy;

  if (!v9)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  modalGetOptionsTask = [(ASTaskManager *)self modalGetOptionsTask];
  v11 = modalGetOptionsTask == 0;

  if (!v11)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  getOptionsTask = [(ASTaskManager *)self getOptionsTask];
  v13 = getOptionsTask == 0;

  if (!v13)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTaskManager *)selfCopy setModalGetOptionsTask:taskCopy];
  v15 = objc_opt_new();
  [(ASTaskManager *)selfCopy setGetOptionsTask:v15];

  getOptionsTask2 = [(ASTaskManager *)selfCopy getOptionsTask];
  [getOptionsTask2 setDelegate:selfCopy];

  getOptionsTask3 = [(ASTaskManager *)selfCopy getOptionsTask];
  [getOptionsTask3 setTaskManager:selfCopy];

  v18 = DALoggingwithCategory();
  v19 = *(v6 + 6);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    getOptionsTask4 = [(ASTaskManager *)selfCopy getOptionsTask];
    v25 = 138543874;
    v26 = v21;
    v27 = 2048;
    v28 = taskCopy;
    v29 = 2048;
    v30 = getOptionsTask4;
    _os_log_impl(&dword_24A0AC000, v18, v19, "%{public}@ %p created GetOptionsTask %p for requesting EAS version", &v25, 0x20u);
  }

  objc_sync_exit(selfCopy);
  getOptionsTask5 = [(ASTaskManager *)selfCopy getOptionsTask];
  [getOptionsTask5 performTask];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)getOptionsTask:(id)task completedWithStatus:(int64_t)status supportedCommands:(id)commands supportedVersions:(id)versions error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  commandsCopy = commands;
  versionsCopy = versions;
  errorCopy = error;
  v16 = errorCopy;
  if (status != 2 || errorCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_modalGetOptionsTask);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTaskManager *)selfCopy setVersionError:v16];
    [(ASTaskManager *)selfCopy setModalGetOptionsTask:0];
    objc_sync_exit(selfCopy);

    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      v33 = v24;
      v34 = 2048;
      v35 = WeakRetained;
      _os_log_impl(&dword_24A0AC000, v21, v22, "%{public}@ %p failed to get version string", buf, 0x16u);
    }

    v31.receiver = selfCopy;
    v31.super_class = ASTaskManager;
    [(DATaskManager *)&v31 cancelTask:WeakRetained withUnderlyingError:v16];
  }

  else
  {
    WeakRetained = bestProtocolVersionFromVersions(versionsCopy);
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v33 = WeakRetained;
      _os_log_impl(&dword_24A0AC000, v18, v19, "ASTaskManager setting protocol version: %@", buf, 0xCu);
    }

    [(ASTaskManager *)self setEASProtocolVersion:WeakRetained];
    if (([WeakRetained isEqualToString:@"16.1"] & 1) != 0 || (objc_msgSend(WeakRetained, "isEqualToString:", @"16.0") & 1) != 0 || (objc_msgSend(WeakRetained, "isEqualToString:", @"14.1") & 1) != 0 || (objc_msgSend(WeakRetained, "isEqualToString:", @"14.0") & 1) != 0 || (objc_msgSend(WeakRetained, "isEqualToString:", @"12.1") & 1) != 0 || objc_msgSend(WeakRetained, "isEqualToString:", @"2.5"))
    {
      ADClientSetValueForScalarKey();
    }

    modalGetOptionsTask = [(ASTaskManager *)self modalGetOptionsTask];
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    [(ASTaskManager *)selfCopy2 setModalGetOptionsTask:0];
    objc_sync_exit(selfCopy2);

    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v19))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543874;
      v33 = v29;
      v34 = 2048;
      v35 = modalGetOptionsTask;
      v36 = 2112;
      v37 = WeakRetained;
      _os_log_impl(&dword_24A0AC000, v27, v19, "%{public}@ %p got version string %@", buf, 0x20u);
    }

    [modalGetOptionsTask taskManagerDidFindEASVersion];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updatePolicyKeyWithDelegateTask:(id)task
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v16 = 138412290;
    v17 = taskCopy;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Task %@ requesting update of policy key.", &v16, 0xCu);
  }

  activeModalTask = [(DATaskManager *)self activeModalTask];
  if (activeModalTask != taskCopy)
  {
    getOptionsTask = [(ASTaskManager *)self getOptionsTask];
    v10 = getOptionsTask == taskCopy;

    if (v10)
    {
      goto LABEL_7;
    }

    activeModalTask = [MEMORY[0x277CCA890] currentHandler];
    [activeModalTask handleFailureInMethod:a2 object:self file:@"ASTaskManager.m" lineNumber:226 description:@"Only the currently modal task or the GetOptions task can update the policy key"];
  }

LABEL_7:
  modalPolicyKeyUpdateTask = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
  v12 = modalPolicyKeyUpdateTask == 0;

  if (!v12)
  {
    [ASTaskManager updatePolicyKeyWithDelegateTask:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTaskManager *)selfCopy setModalPolicyKeyUpdateTask:taskCopy];
  objc_sync_exit(selfCopy);

  policyManager = [(ASTaskManager *)selfCopy policyManager];
  [policyManager requestPolicyUpdate];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)policyManagerUpdatedPolicy:(id)policy
{
  v14 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    policyKey = [(ASTaskManager *)self policyKey];
    v12 = 138412290;
    v13 = policyKey;
    _os_log_impl(&dword_24A0AC000, v5, v6, "New policy key received: %@", &v12, 0xCu);
  }

  modalPolicyKeyUpdateTask = [(ASTaskManager *)self modalPolicyKeyUpdateTask];

  if (modalPolicyKeyUpdateTask)
  {
    modalPolicyKeyUpdateTask2 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTaskManager *)selfCopy setModalPolicyKeyUpdateTask:0];
    objc_sync_exit(selfCopy);

    [modalPolicyKeyUpdateTask2 taskManagerDidUpdatePolicyKey];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)policyManagerFailedToUpdatePolicy:(id)policy
{
  policyCopy = policy;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Policy manager failed to update policy.", v10, 2u);
  }

  modalPolicyKeyUpdateTask = [(ASTaskManager *)self modalPolicyKeyUpdateTask];

  if (modalPolicyKeyUpdateTask)
  {
    modalPolicyKeyUpdateTask2 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTaskManager *)selfCopy setModalPolicyKeyUpdateTask:0];
    objc_sync_exit(selfCopy);

    [modalPolicyKeyUpdateTask2 taskManagerDidFailToUpdatePolicyKey];
  }
}

- (void)cancelAllTasks
{
  getOptionsTask = [(ASTaskManager *)self getOptionsTask];
  [getOptionsTask cancelTaskWithReason:0 underlyingError:0];

  [(ASTaskManager *)self setModalGetOptionsTask:0];
  [(ASTaskManager *)self setModalPolicyKeyUpdateTask:0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [(ASTaskManager *)self _finishAllTasksWithError:v4];
}

- (void)_finishAllTasksWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  allTasks = [(DATaskManager *)self allTasks];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [allTasks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allTasks);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isInCallOutToDelegate] & 1) == 0)
        {
          [(ASTaskManager *)self finishTask:v10 withError:errorCopy];
        }
      }

      v7 = [allTasks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v13.receiver = self;
  v13.super_class = ASTaskManager;
  stateString = [(DATaskManager *)&v13 stateString];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  policyManager = [(ASTaskManager *)selfCopy policyManager];
  taskIDToTask = [(ASTaskManager *)selfCopy taskIDToTask];
  v8 = [taskIDToTask count];
  modalGetOptionsTask = [(ASTaskManager *)selfCopy modalGetOptionsTask];
  modalPolicyKeyUpdateTask = [(ASTaskManager *)selfCopy modalPolicyKeyUpdateTask];
  v11 = [v5 initWithFormat:@"%@\nPolicy manager: %@\nNumber of tasks in task to ID map: %ld\nGet Options task: %@\nPolicy Key Update task: %@\n", stateString, policyManager, v8, modalGetOptionsTask, modalPolicyKeyUpdateTask];

  objc_sync_exit(selfCopy);

  return v11;
}

- (void)taskManagerDidAddTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ASTaskManager taskManagerDidAddTask:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskIDToTask = [(ASTaskManager *)selfCopy taskIDToTask];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(taskCopy, "taskID")}];
  [taskIDToTask setObject:taskCopy forKeyedSubscript:v6];

  objc_sync_exit(selfCopy);
}

- (void)taskManagerWillRemoveTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskIDToTask = [(ASTaskManager *)selfCopy taskIDToTask];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(taskCopy, "taskID")}];
  [taskIDToTask removeObjectForKey:v6];

  objc_sync_exit(selfCopy);
}

- (void)shutdown
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    account = [(DATaskManager *)self account];
    *buf = 134217984;
    v11 = account;
    _os_log_impl(&dword_24A0AC000, v3, v4, "Tearing down task manager with account at %p", buf, 0xCu);
  }

  [(DATaskManager *)self setAccount:0];
  getOptionsTask = [(ASTaskManager *)self getOptionsTask];
  [getOptionsTask cancelTaskWithReason:1 underlyingError:0];

  [(ASTaskManager *)self setModalGetOptionsTask:0];
  [(ASTaskManager *)self setModalPolicyKeyUpdateTask:0];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTaskManager *)selfCopy setGetOptionsTask:0];
  objc_sync_exit(selfCopy);

  v9.receiver = selfCopy;
  v9.super_class = ASTaskManager;
  [(DATaskManager *)&v9 shutdown];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)taskIsModal:(id)modal
{
  modalCopy = modal;
  modalGetOptionsTask = [(ASTaskManager *)self modalGetOptionsTask];
  if (modalGetOptionsTask == modalCopy)
  {
    v7 = 1;
  }

  else
  {
    modalPolicyKeyUpdateTask = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    if (modalPolicyKeyUpdateTask == modalCopy)
    {
      v7 = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = ASTaskManager;
      v7 = [(DATaskManager *)&v9 taskIsModal:modalCopy];
    }
  }

  return v7;
}

- (void)cancelTask:(id)task
{
  v11 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if ([(ASTaskManager *)self taskIsModal:taskCopy])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      v10 = taskCopy;
      _os_log_impl(&dword_24A0AC000, v5, v6, "Task %@ wants to be cancelled, but it's currently holding our modal lock.  We can't let it die just yet", buf, 0xCu);
    }

    [taskCopy setAskedToCancelWhileModal:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASTaskManager;
    [(DATaskManager *)&v8 cancelTask:taskCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)taskDidFinish:(id)finish
{
  finishCopy = finish;
  getOptionsTask = [(ASTaskManager *)self getOptionsTask];

  if (getOptionsTask == finishCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTaskManager *)selfCopy setGetOptionsTask:0];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ASTaskManager;
    [(DATaskManager *)&v7 taskDidFinish:finishCopy];
  }
}

- (void)taskRequestModal:(id)modal
{
  modalCopy = modal;
  if ([(ASTaskManager *)self taskIsModal:modalCopy]|| ([(ASTaskManager *)self getOptionsTask], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == modalCopy))
  {
    [modalCopy startModal];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ASTaskManager;
    [(DATaskManager *)&v6 taskRequestModal:modalCopy];
  }
}

- (void)taskEndModal:(id)modal
{
  modalCopy = modal;
  getOptionsTask = [(ASTaskManager *)self getOptionsTask];

  if (getOptionsTask != modalCopy)
  {
    v6.receiver = self;
    v6.super_class = ASTaskManager;
    [(DATaskManager *)&v6 taskEndModal:modalCopy];
  }
}

- (BOOL)_hasTasksIndicatingARunningSync
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTasks = [(DATaskManager *)self allTasks];
  v3 = [allTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(allTasks);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  account = [(DATaskManager *)self account];
  shouldCancelTaskDueToOnPowerFetchMode = [account shouldCancelTaskDueToOnPowerFetchMode];

  return shouldCancelTaskDueToOnPowerFetchMode;
}

- (id)userAgent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ASTaskManager_userAgent__block_invoke;
  block[3] = &unk_278FC7988;
  block[4] = self;
  if (userAgent_onceToken != -1)
  {
    dispatch_once(&userAgent_onceToken, block);
  }

  return userAgent_sUserAgentString;
}

void __26__ASTaskManager_userAgent__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v6 = DAModelString();
  v3 = [*(a1 + 32) _version];
  v4 = [v2 stringWithFormat:@"Apple-%@/%@", v6, v3];
  v5 = userAgent_sUserAgentString;
  userAgent_sUserAgentString = v4;
}

- (ASTask)modalGetOptionsTask
{
  WeakRetained = objc_loadWeakRetained(&self->_modalGetOptionsTask);

  return WeakRetained;
}

- (ASTask)modalPolicyKeyUpdateTask
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPolicyKeyUpdateTask);

  return WeakRetained;
}

- (void)requestEASVersionWithDelegateTask:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestEASVersionWithDelegateTask:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestEASVersionWithDelegateTask:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updatePolicyKeyWithDelegateTask:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)taskManagerDidAddTask:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end