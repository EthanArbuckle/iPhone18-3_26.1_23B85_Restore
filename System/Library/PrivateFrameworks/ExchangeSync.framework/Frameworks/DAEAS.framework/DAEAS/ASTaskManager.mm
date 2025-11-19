@interface ASTaskManager
- (ASProtocol)protocol;
- (ASTask)modalGetOptionsTask;
- (ASTask)modalPolicyKeyUpdateTask;
- (ASTaskManager)initWithAccount:(id)a3 policyManager:(id)a4;
- (BOOL)_hasTasksIndicatingARunningSync;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)taskIsModal:(id)a3;
- (NSString)deviceID;
- (NSString)easProtocolVersion;
- (NSString)policyKey;
- (id)_version;
- (id)stateString;
- (id)userAgent;
- (void)_finishAllTasksWithError:(id)a3;
- (void)_populateVersionDescriptions;
- (void)cancelAllTasks;
- (void)cancelTask:(id)a3;
- (void)dealloc;
- (void)getOptionsTask:(id)a3 completedWithStatus:(int64_t)a4 supportedCommands:(id)a5 supportedVersions:(id)a6 error:(id)a7;
- (void)policyManagerFailedToUpdatePolicy:(id)a3;
- (void)policyManagerUpdatedPolicy:(id)a3;
- (void)requestEASVersionWithDelegateTask:(id)a3;
- (void)setEASProtocolVersion:(id)a3;
- (void)shutdown;
- (void)taskDidFinish:(id)a3;
- (void)taskEndModal:(id)a3;
- (void)taskManagerDidAddTask:(id)a3;
- (void)taskManagerWillRemoveTask:(id)a3;
- (void)taskRequestModal:(id)a3;
- (void)updatePolicyKeyWithDelegateTask:(id)a3;
@end

@implementation ASTaskManager

- (ASTaskManager)initWithAccount:(id)a3 policyManager:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ASTaskManager;
  v8 = [(DATaskManager *)&v16 initWithAccount:v6];
  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_24A0AC000, v9, v10, "ASTaskManager %@ created with account %@", buf, 0x16u);
    }

    v11 = v8;
    objc_sync_enter(v11);
    [(ASTaskManager *)v11 setPolicyManager:v7];
    v12 = [(ASTaskManager *)v11 policyManager];
    [v12 setDelegate:v11];

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
  v4 = [v3 stringFormattedForMSVersioning];

  v5 = [v4 copy];
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
  v3 = [(DATaskManager *)self account];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D07B08]];

  if (v4 && [v4 length])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(DATaskManager *)self account];
      v8 = [v7 accountID];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v8;
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

- (void)setEASProtocolVersion:(id)a3
{
  v4 = a3;
  v5 = [(DATaskManager *)self account];
  [v5 setProtocolVersion:v4];
}

- (NSString)easProtocolVersion
{
  v2 = [(ASTaskManager *)self protocol];
  v3 = [v2 protocolVersion];

  return v3;
}

- (ASProtocol)protocol
{
  v2 = [(DATaskManager *)self account];
  v3 = [v2 protocol];

  return v3;
}

- (NSString)policyKey
{
  v2 = [(ASTaskManager *)self policyManager];
  v3 = [v2 currentPolicyKey];

  return v3;
}

- (void)requestEASVersionWithDelegateTask:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v7))
  {
    v25 = 138412290;
    v26 = v4;
    _os_log_impl(&dword_24A0AC000, v5, v7, "Task %@ requesting EAS version.", &v25, 0xCu);
  }

  v8 = [(DATaskManager *)self activeModalTask];
  v9 = v8 == v4;

  if (!v9)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  v10 = [(ASTaskManager *)self modalGetOptionsTask];
  v11 = v10 == 0;

  if (!v11)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  v12 = [(ASTaskManager *)self getOptionsTask];
  v13 = v12 == 0;

  if (!v13)
  {
    [ASTaskManager requestEASVersionWithDelegateTask:];
  }

  v14 = self;
  objc_sync_enter(v14);
  [(ASTaskManager *)v14 setModalGetOptionsTask:v4];
  v15 = objc_opt_new();
  [(ASTaskManager *)v14 setGetOptionsTask:v15];

  v16 = [(ASTaskManager *)v14 getOptionsTask];
  [v16 setDelegate:v14];

  v17 = [(ASTaskManager *)v14 getOptionsTask];
  [v17 setTaskManager:v14];

  v18 = DALoggingwithCategory();
  v19 = *(v6 + 6);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [(ASTaskManager *)v14 getOptionsTask];
    v25 = 138543874;
    v26 = v21;
    v27 = 2048;
    v28 = v4;
    v29 = 2048;
    v30 = v22;
    _os_log_impl(&dword_24A0AC000, v18, v19, "%{public}@ %p created GetOptionsTask %p for requesting EAS version", &v25, 0x20u);
  }

  objc_sync_exit(v14);
  v23 = [(ASTaskManager *)v14 getOptionsTask];
  [v23 performTask];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)getOptionsTask:(id)a3 completedWithStatus:(int64_t)a4 supportedCommands:(id)a5 supportedVersions:(id)a6 error:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (a4 != 2 || v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_modalGetOptionsTask);
    v20 = self;
    objc_sync_enter(v20);
    [(ASTaskManager *)v20 setVersionError:v16];
    [(ASTaskManager *)v20 setModalGetOptionsTask:0];
    objc_sync_exit(v20);

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

    v31.receiver = v20;
    v31.super_class = ASTaskManager;
    [(DATaskManager *)&v31 cancelTask:WeakRetained withUnderlyingError:v16];
  }

  else
  {
    WeakRetained = bestProtocolVersionFromVersions(v14);
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

    v25 = [(ASTaskManager *)self modalGetOptionsTask];
    v26 = self;
    objc_sync_enter(v26);
    [(ASTaskManager *)v26 setModalGetOptionsTask:0];
    objc_sync_exit(v26);

    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v19))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543874;
      v33 = v29;
      v34 = 2048;
      v35 = v25;
      v36 = 2112;
      v37 = WeakRetained;
      _os_log_impl(&dword_24A0AC000, v27, v19, "%{public}@ %p got version string %@", buf, 0x20u);
    }

    [v25 taskManagerDidFindEASVersion];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updatePolicyKeyWithDelegateTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Task %@ requesting update of policy key.", &v16, 0xCu);
  }

  v8 = [(DATaskManager *)self activeModalTask];
  if (v8 != v5)
  {
    v9 = [(ASTaskManager *)self getOptionsTask];
    v10 = v9 == v5;

    if (v10)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ASTaskManager.m" lineNumber:226 description:@"Only the currently modal task or the GetOptions task can update the policy key"];
  }

LABEL_7:
  v11 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
  v12 = v11 == 0;

  if (!v12)
  {
    [ASTaskManager updatePolicyKeyWithDelegateTask:];
  }

  v13 = self;
  objc_sync_enter(v13);
  [(ASTaskManager *)v13 setModalPolicyKeyUpdateTask:v5];
  objc_sync_exit(v13);

  v14 = [(ASTaskManager *)v13 policyManager];
  [v14 requestPolicyUpdate];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)policyManagerUpdatedPolicy:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(ASTaskManager *)self policyKey];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_24A0AC000, v5, v6, "New policy key received: %@", &v12, 0xCu);
  }

  v8 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];

  if (v8)
  {
    v9 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    v10 = self;
    objc_sync_enter(v10);
    [(ASTaskManager *)v10 setModalPolicyKeyUpdateTask:0];
    objc_sync_exit(v10);

    [v9 taskManagerDidUpdatePolicyKey];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)policyManagerFailedToUpdatePolicy:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Policy manager failed to update policy.", v10, 2u);
  }

  v7 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];

  if (v7)
  {
    v8 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    v9 = self;
    objc_sync_enter(v9);
    [(ASTaskManager *)v9 setModalPolicyKeyUpdateTask:0];
    objc_sync_exit(v9);

    [v8 taskManagerDidFailToUpdatePolicyKey];
  }
}

- (void)cancelAllTasks
{
  v3 = [(ASTaskManager *)self getOptionsTask];
  [v3 cancelTaskWithReason:0 underlyingError:0];

  [(ASTaskManager *)self setModalGetOptionsTask:0];
  [(ASTaskManager *)self setModalPolicyKeyUpdateTask:0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [(ASTaskManager *)self _finishAllTasksWithError:v4];
}

- (void)_finishAllTasksWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DATaskManager *)self allTasks];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isInCallOutToDelegate] & 1) == 0)
        {
          [(ASTaskManager *)self finishTask:v10 withError:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v13.receiver = self;
  v13.super_class = ASTaskManager;
  v3 = [(DATaskManager *)&v13 stateString];
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [(ASTaskManager *)v4 policyManager];
  v7 = [(ASTaskManager *)v4 taskIDToTask];
  v8 = [v7 count];
  v9 = [(ASTaskManager *)v4 modalGetOptionsTask];
  v10 = [(ASTaskManager *)v4 modalPolicyKeyUpdateTask];
  v11 = [v5 initWithFormat:@"%@\nPolicy manager: %@\nNumber of tasks in task to ID map: %ld\nGet Options task: %@\nPolicy Key Update task: %@\n", v3, v6, v8, v9, v10];

  objc_sync_exit(v4);

  return v11;
}

- (void)taskManagerDidAddTask:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ASTaskManager taskManagerDidAddTask:];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ASTaskManager *)v4 taskIDToTask];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "taskID")}];
  [v5 setObject:v7 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

- (void)taskManagerWillRemoveTask:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ASTaskManager *)v4 taskIDToTask];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "taskID")}];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)shutdown
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DATaskManager *)self account];
    *buf = 134217984;
    v11 = v5;
    _os_log_impl(&dword_24A0AC000, v3, v4, "Tearing down task manager with account at %p", buf, 0xCu);
  }

  [(DATaskManager *)self setAccount:0];
  v6 = [(ASTaskManager *)self getOptionsTask];
  [v6 cancelTaskWithReason:1 underlyingError:0];

  [(ASTaskManager *)self setModalGetOptionsTask:0];
  [(ASTaskManager *)self setModalPolicyKeyUpdateTask:0];
  v7 = self;
  objc_sync_enter(v7);
  [(ASTaskManager *)v7 setGetOptionsTask:0];
  objc_sync_exit(v7);

  v9.receiver = v7;
  v9.super_class = ASTaskManager;
  [(DATaskManager *)&v9 shutdown];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)taskIsModal:(id)a3
{
  v4 = a3;
  v5 = [(ASTaskManager *)self modalGetOptionsTask];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(ASTaskManager *)self modalPolicyKeyUpdateTask];
    if (v6 == v4)
    {
      v7 = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = ASTaskManager;
      v7 = [(DATaskManager *)&v9 taskIsModal:v4];
    }
  }

  return v7;
}

- (void)cancelTask:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ASTaskManager *)self taskIsModal:v4])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_24A0AC000, v5, v6, "Task %@ wants to be cancelled, but it's currently holding our modal lock.  We can't let it die just yet", buf, 0xCu);
    }

    [v4 setAskedToCancelWhileModal:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASTaskManager;
    [(DATaskManager *)&v8 cancelTask:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)taskDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(ASTaskManager *)self getOptionsTask];

  if (v5 == v4)
  {
    v6 = self;
    objc_sync_enter(v6);
    [(ASTaskManager *)v6 setGetOptionsTask:0];
    objc_sync_exit(v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ASTaskManager;
    [(DATaskManager *)&v7 taskDidFinish:v4];
  }
}

- (void)taskRequestModal:(id)a3
{
  v4 = a3;
  if ([(ASTaskManager *)self taskIsModal:v4]|| ([(ASTaskManager *)self getOptionsTask], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v4))
  {
    [v4 startModal];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ASTaskManager;
    [(DATaskManager *)&v6 taskRequestModal:v4];
  }
}

- (void)taskEndModal:(id)a3
{
  v4 = a3;
  v5 = [(ASTaskManager *)self getOptionsTask];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = ASTaskManager;
    [(DATaskManager *)&v6 taskEndModal:v4];
  }
}

- (BOOL)_hasTasksIndicatingARunningSync
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(DATaskManager *)self allTasks];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(DATaskManager *)self account];
  v3 = [v2 shouldCancelTaskDueToOnPowerFetchMode];

  return v3;
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