@interface HMDAssistantCommandExecutor
+ (id)executorWithCommand:(id)command workQueue:(id)queue messageDispatcher:(id)dispatcher;
- (BOOL)_initialCommandIsMultipleActions;
- (HMDAssistantCommandExecutor)initWithCommand:(id)command workQueue:(id)queue messageDispatcher:(id)dispatcher;
- (id)_command;
- (void)_executeCommand:(id *)command;
- (void)_sendResponse:(uint64_t)response;
- (void)performWithCompletion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAssistantCommandExecutor

- (void)timerDidFire:(id)fire
{
  v27 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
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

  if (executionTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Timer expired - reporting results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (self)
    {
      [(HMFTimer *)selfCopy->_executionTimer suspend];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      pendingCommands = selfCopy->_pendingCommands;
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
            v16 = selfCopy->_pendingCommands;
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

- (void)performWithCompletion:(id)completion
{
  v94 = *MEMORY[0x277D85DE8];
  newValue = completion;
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
    block[3] = &unk_278688B80;
    v75 = newValue;
    dispatch_async(workQueue, block);

    goto LABEL_50;
  }

  objc_setProperty_nonatomic_copy(self, v4, newValue, 64);
  dispatch_assert_queue_V2(self->_workQueue);
  commandTimeout = [(HMDAssistantCommand *)self->_initialCommand commandTimeout];
  [commandTimeout doubleValue];
  v8 = v7 / 1000.0;

  if (v8 + -2.0 < 3.0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = self->_initialCommand;
      timeout = [(HMDAssistantCommand *)v13 timeout];
      *buf = 138543618;
      v89 = v12;
      v90 = 2112;
      v91 = timeout;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timeout %@ specified by Siri Command is below threshold, falling back to default timeout", buf, 0x16u);
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
  actionRequests = [(HMDAssistantCommand *)v19 actionRequests];
  if ([actionRequests count])
  {
  }

  else
  {
    actions = [(HMDAssistantCommand *)self->_initialCommand actions];
    v22 = [actions count];

    if (!v22)
    {
      v54 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = HMFGetLogIdentifier();
        *v92 = 138543362;
        v93 = v57;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@No actions to perform", v92, 0xCu);
      }

      objc_autoreleasePoolPop(v54);
LABEL_48:
      dispatch_assert_queue_V2(self->_workQueue);
      firstObject = objc_alloc_init(MEMORY[0x277D47350]);
      [firstObject setCommandOutcome:*MEMORY[0x277D480C8]];
      serverValidity = [(HMDAssistantCommand *)self->_initialCommand serverValidity];
      [firstObject setServerValidity:serverValidity];

      dictionary = [firstObject dictionary];
      [(HMDAssistantCommandExecutor *)self _sendResponse:dictionary];

      goto LABEL_49;
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  actionRequests2 = [(HMDAssistantCommand *)self->_initialCommand actionRequests];
  v24 = [actionRequests2 countByEnumeratingWithState:&v80 objects:buf count:16];
  if (v24)
  {
    v25 = *v81;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v81 != v25)
        {
          objc_enumerationMutation(actionRequests2);
        }

        v27 = *(*(&v80 + 1) + 8 * i);
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        actions2 = [v27 actions];
        v29 = [actions2 countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v29)
        {
          v30 = *v77;
          while (2)
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v77 != v30)
              {
                objc_enumerationMutation(actions2);
              }

              aceId = [*(*(&v76 + 1) + 8 * j) aceId];
              v33 = aceId == 0;

              if (v33)
              {

                goto LABEL_48;
              }
            }

            v29 = [actions2 countByEnumeratingWithState:&v76 objects:v87 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }
      }

      v24 = [actionRequests2 countByEnumeratingWithState:&v80 objects:buf count:16];
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
      actions3 = [(HMDAssistantCommand *)self->_initialCommand actions];
      firstObject = [actions3 firstObject];

      v36 = self->_initialCommand;
      v37 = self->_pendingCommands;
      aceId2 = [firstObject aceId];
      [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:aceId2];

      [(HMDAssistantCommandExecutor *)&self->super.isa _executeCommand:?];
LABEL_49:

      goto LABEL_50;
    }
  }

  homeManager = [(HMDAssistantCommand *)self->_initialCommand homeManager];
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
        actions4 = [v42 actions];
        v44 = [actions4 countByEnumeratingWithState:&v66 objects:v85 count:16];
        if (v44)
        {
          v45 = *v67;
          do
          {
            for (k = 0; k != v44; ++k)
            {
              if (*v67 != v45)
              {
                objc_enumerationMutation(actions4);
              }

              v47 = *(*(&v66 + 1) + 8 * k);
              _command = [(HMDAssistantCommandExecutor *)self _command];
              serverValidity2 = [(HMDAssistantCommand *)self->_initialCommand serverValidity];
              [_command setServerValidity:serverValidity2];

              filter = [v42 filter];
              [_command setFilter:filter];

              v84 = v47;
              v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
              [_command setActions:v51];

              [_command setHomeManager:homeManager];
              v52 = self->_pendingCommands;
              aceId3 = [v47 aceId];
              [(NSMutableDictionary *)v52 setObject:_command forKeyedSubscript:aceId3];

              [(HMDAssistantCommandExecutor *)&self->super.isa _executeCommand:_command];
            }

            v44 = [actions4 countByEnumeratingWithState:&v66 objects:v85 count:16];
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
  if (!self)
  {
    return 0;
  }

  actions = [*(self + 8) actions];
  v2 = [actions count] == 0;

  return v2;
}

- (void)_executeCommand:(id *)command
{
  v3 = a2;
  if (command)
  {
    objc_initWeak(&location, command);
    v4 = command[1];
    homeManager = [v4 homeManager];
    gatherer = [homeManager gatherer];
    v7 = command[3];
    v8 = command[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__HMDAssistantCommandExecutor__executeCommand___block_invoke;
    v9[3] = &unk_27867A4A0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    [v10 performWithGather:gatherer queue:v7 msgDispatcher:v8 completion:v9];

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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Nil response for action %@", &v30, 0x16u);
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
          dispatch_once(&mapToFailureActionOutcome_onceToken, &__block_literal_global_136001);
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

- (void)_sendResponse:(uint64_t)response
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(*(response + 24));
  v4 = *(response + 64);
  if (v4)
  {
    v5 = v4;
    objc_setProperty_nonatomic_copy(response, v6, 0, 64);
    v5[2](v5, v3, 0);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    responseCopy = response;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Results already reported for Siri command - aborting report", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDAssistantCommandExecutor)initWithCommand:(id)command workQueue:(id)queue messageDispatcher:(id)dispatcher
{
  commandCopy = command;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  v19.receiver = self;
  v19.super_class = HMDAssistantCommandExecutor;
  v12 = [(HMDAssistantCommandExecutor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_initialCommand, command);
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v13->_msgDispatcher, dispatcher);
    array = [MEMORY[0x277CBEB18] array];
    actionResults = v13->_actionResults;
    v13->_actionResults = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingCommands = v13->_pendingCommands;
    v13->_pendingCommands = dictionary;
  }

  return v13;
}

+ (id)executorWithCommand:(id)command workQueue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  commandCopy = command;
  v10 = [[HMDAssistantCommandExecutor alloc] initWithCommand:commandCopy workQueue:queueCopy messageDispatcher:dispatcherCopy];

  return v10;
}

@end