@interface HMDAssistantCommandExecutor
+ (id)executorWithCommand:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5;
- (BOOL)_initialCommandIsMultipleActions;
- (HMDAssistantCommandExecutor)initWithCommand:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5;
- (id)_command;
- (void)_executeCommand:(id *)a1;
- (void)_sendResponse:(uint64_t)a1;
- (void)performWithCompletion:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAssistantCommandExecutor

- (void)timerDidFire:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    executionTimer = self->_executionTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    executionTimer = 0;
  }

  if (executionTimer == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Timer expired - reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (self)
    {
      [(HMFTimer *)v7->_executionTimer suspend];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      pendingCommands = v7->_pendingCommands;
    }

    else
    {
      [0 suspend];
      pendingCommands = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    v11 = pendingCommands;
    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (self)
          {
            v16 = v7->_pendingCommands;
          }

          else
          {
            v16 = 0;
          }

          v17 = [(NSMutableDictionary *)v16 objectForKey:*(*(&v20 + 1) + 8 * v15), v20];
          [v17 timeoutAndReportResults];

          ++v15;
        }

        while (v13 != v15);
        v18 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v13 = v18;
      }

      while (v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_command
{
  v2 = objc_alloc_init(HMDAssistantCommand);

  return v2;
}

- (void)performWithCompletion:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  newValue = a3;
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_50;
  }

  dispatch_assert_queue_V2(self->_workQueue);
  if (self->_executionTimer)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDAssistantCommandExecutor_performWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v75 = newValue;
    dispatch_async(workQueue, block);

    goto LABEL_50;
  }

  objc_setProperty_nonatomic_copy(self, v4, newValue, 64);
  dispatch_assert_queue_V2(self->_workQueue);
  v6 = [(HMDAssistantCommand *)self->_initialCommand commandTimeout];
  [v6 doubleValue];
  v8 = v7 / 1000.0;

  if (v8 + -2.0 < 3.0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = self->_initialCommand;
      v14 = [(HMDAssistantCommand *)v13 timeout];
      *buf = 138543618;
      v89 = v12;
      v90 = 2112;
      v91 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Timeout %@ specified by Siri Command is below threshold, falling back to default timeout", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = *&assistantClientReadWriteTimeoutSeconds;
  }

  v15 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:19 options:v8];
  executionTimer = self->_executionTimer;
  self->_executionTimer = v15;

  [(HMFTimer *)self->_executionTimer setDelegate:self];
  v17 = self->_executionTimer;
  v18 = self->_workQueue;
  [(HMFTimer *)v17 setDelegateQueue:v18];

  [(HMFTimer *)self->_executionTimer resume];
  v19 = self->_initialCommand;
  v20 = [(HMDAssistantCommand *)v19 actionRequests];
  if ([v20 count])
  {
  }

  else
  {
    v21 = [(HMDAssistantCommand *)self->_initialCommand actions];
    v22 = [v21 count];

    if (!v22)
    {
      v54 = objc_autoreleasePoolPush();
      v55 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = HMFGetLogIdentifier();
        *v92 = 138543362;
        v93 = v57;
        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@No actions to perform", v92, 0xCu);
      }

      objc_autoreleasePoolPop(v54);
LABEL_48:
      dispatch_assert_queue_V2(self->_workQueue);
      v35 = objc_alloc_init(MEMORY[0x277D47350]);
      [v35 setCommandOutcome:*MEMORY[0x277D480C8]];
      v58 = [(HMDAssistantCommand *)self->_initialCommand serverValidity];
      [v35 setServerValidity:v58];

      v59 = [v35 dictionary];
      [(HMDAssistantCommandExecutor *)self _sendResponse:v59];

      goto LABEL_49;
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v23 = [(HMDAssistantCommand *)self->_initialCommand actionRequests];
  v24 = [v23 countByEnumeratingWithState:&v80 objects:buf count:16];
  if (v24)
  {
    v25 = *v81;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v81 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v80 + 1) + 8 * i);
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v28 = [v27 actions];
        v29 = [v28 countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v29)
        {
          v30 = *v77;
          while (2)
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v77 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [*(*(&v76 + 1) + 8 * j) aceId];
              v33 = v32 == 0;

              if (v33)
              {

                goto LABEL_48;
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v76 objects:v87 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v80 objects:buf count:16];
    }

    while (v24);

    if (![(HMDAssistantCommandExecutor *)self _initialCommandIsMultipleActions])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (![(HMDAssistantCommandExecutor *)self _initialCommandIsMultipleActions])
    {
LABEL_27:
      v34 = [(HMDAssistantCommand *)self->_initialCommand actions];
      v35 = [v34 firstObject];

      v36 = self->_initialCommand;
      v37 = self->_pendingCommands;
      v38 = [v35 aceId];
      [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:v38];

      [(HMDAssistantCommandExecutor *)&self->super.isa _executeCommand:?];
LABEL_49:

      goto LABEL_50;
    }
  }

  v39 = [(HMDAssistantCommand *)self->_initialCommand homeManager];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [(HMDAssistantCommand *)self->_initialCommand actionRequests];
  v64 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v64)
  {
    v63 = *v71;
    do
    {
      v40 = 0;
      do
      {
        if (*v71 != v63)
        {
          v41 = v40;
          objc_enumerationMutation(obj);
          v40 = v41;
        }

        v65 = v40;
        v42 = *(*(&v70 + 1) + 8 * v40);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v43 = [v42 actions];
        v44 = [v43 countByEnumeratingWithState:&v66 objects:v85 count:16];
        if (v44)
        {
          v45 = *v67;
          do
          {
            for (k = 0; k != v44; ++k)
            {
              if (*v67 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = *(*(&v66 + 1) + 8 * k);
              v48 = [(HMDAssistantCommandExecutor *)self _command];
              v49 = [(HMDAssistantCommand *)self->_initialCommand serverValidity];
              [v48 setServerValidity:v49];

              v50 = [v42 filter];
              [v48 setFilter:v50];

              v84 = v47;
              v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
              [v48 setActions:v51];

              [v48 setHomeManager:v39];
              v52 = self->_pendingCommands;
              v53 = [v47 aceId];
              [(NSMutableDictionary *)v52 setObject:v48 forKeyedSubscript:v53];

              [(HMDAssistantCommandExecutor *)&self->super.isa _executeCommand:v48];
            }

            v44 = [v43 countByEnumeratingWithState:&v66 objects:v85 count:16];
          }

          while (v44);
        }

        v40 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v64);
  }

LABEL_50:
  v60 = *MEMORY[0x277D85DE8];
}

void __53__HMDAssistantCommandExecutor_performWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)_initialCommandIsMultipleActions
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 8) actions];
  v2 = [v1 count] == 0;

  return v2;
}

- (void)_executeCommand:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = a1[1];
    v5 = [v4 homeManager];
    v6 = [v5 gatherer];
    v7 = a1[3];
    v8 = a1[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__HMDAssistantCommandExecutor__executeCommand___block_invoke;
    v9[3] = &unk_279729BD8;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    [v10 performWithGather:v6 queue:v7 msgDispatcher:v8 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __47__HMDAssistantCommandExecutor__executeCommand___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[3]);
    v6 = [*(a1 + 32) actions];
    v7 = [v6 firstObject];
    v8 = [v7 aceId];

    [*(v5 + 40) removeObjectForKey:v8];
    if (!v3)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v5;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v12;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Nil response for action %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    if ([(HMDAssistantCommandExecutor *)v5 _initialCommandIsMultipleActions])
    {
      v13 = *(a1 + 32);
      v14 = v3;
      v15 = v13;
      if (v3)
      {
        v16 = [objc_alloc(MEMORY[0x277D47350]) initWithDictionary:v14];
        v17 = [v16 clientValidity];
        v18 = *(v5 + 48);
        *(v5 + 48) = v17;

        v19 = [v16 commandOutcome];
        if (mapToFailureActionOutcome_onceToken != -1)
        {
          dispatch_once(&mapToFailureActionOutcome_onceToken, &__block_literal_global_90078);
        }

        v20 = [mapToFailureActionOutcome_outcomeMap objectForKey:v19];

        if (v20)
        {
          v21 = failedActionResultFor(v15);
          [v21 setOutcome:v20];
          [*(v5 + 32) addObject:v21];
        }

        else
        {
          v22 = *(v5 + 32);
          v21 = [v16 actionResults];
          [v22 addObjectsFromArray:v21];
        }
      }

      else
      {
        v20 = *(v5 + 32);
        v16 = failedActionResultFor(v15);
        [v20 addObject:v16];
      }

      if (![*(v5 + 40) count])
      {
        v23 = *(v5 + 24);
        v24 = *MEMORY[0x277D480D0];
        dispatch_assert_queue_V2(v23);
        v25 = objc_alloc_init(MEMORY[0x277D47350]);
        [v25 setCommandOutcome:v24];

        v26 = [*(v5 + 32) copy];
        [v25 setActionResults:v26];

        v27 = [*(v5 + 8) serverValidity];
        [v25 setServerValidity:v27];

        [v25 setClientValidity:*(v5 + 48)];
        v28 = [v25 dictionary];
        [(HMDAssistantCommandExecutor *)v5 _sendResponse:v28];
      }
    }

    else
    {
      [(HMDAssistantCommandExecutor *)v5 _sendResponse:v3];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendResponse:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = v4;
    objc_setProperty_nonatomic_copy(a1, v6, 0, 64);
    v5[2](v5, v3, 0);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Results already reported for Siri command - aborting report", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDAssistantCommandExecutor)initWithCommand:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDAssistantCommandExecutor;
  v12 = [(HMDAssistantCommandExecutor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_initialCommand, a3);
    objc_storeStrong(&v13->_workQueue, a4);
    objc_storeStrong(&v13->_msgDispatcher, a5);
    v14 = [MEMORY[0x277CBEB18] array];
    actionResults = v13->_actionResults;
    v13->_actionResults = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    pendingCommands = v13->_pendingCommands;
    v13->_pendingCommands = v16;
  }

  return v13;
}

+ (id)executorWithCommand:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDAssistantCommandExecutor alloc] initWithCommand:v9 workQueue:v8 messageDispatcher:v7];

  return v10;
}

@end