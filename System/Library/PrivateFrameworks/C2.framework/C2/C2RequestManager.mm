@interface C2RequestManager
+ (void)initialize;
- (C2RequestManager)init;
- (id)createDataTaskWithRequest:(id)request options:(id)options delegate:(id)delegate sessionHandle:(id *)handle;
- (id)testUtility_sessionForTask:(id)task;
- (id)testUtility_sessionTaskForTask:(id)task;
- (void)_testUtility_forTask:(id)task sessionHandle:(id *)handle taskHandle:(id *)taskHandle;
@end

@implementation C2RequestManager

+ (void)initialize
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"C2RequestManager.m" lineNumber:16 description:{@"Failed to alloc/init C2RequestManager, crash."}];
}

- (C2RequestManager)init
{
  v9.receiver = self;
  v9.super_class = C2RequestManager;
  v2 = [(C2RequestManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(C2SessionPool);
    sessionPool = v2->_sessionPool;
    v2->_sessionPool = v3;

    if (v2->_sessionPool)
    {
      return v2;
    }

    if (C2_DEFAULT_LOG_BLOCK_7 != -1)
    {
      [C2RequestManager init];
    }

    v5 = C2_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_242158000, v5, OS_LOG_TYPE_ERROR, "failed to create C2SessionPool for C2RequestManager", v8, 2u);
    }
  }

  if (C2_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [C2RequestManager init];
  }

  v6 = C2_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_242158000, v6, OS_LOG_TYPE_ERROR, "failed to create C2RequestManager", v8, 2u);
  }

  return 0;
}

uint64_t __24__C2RequestManager_init__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __24__C2RequestManager_init__block_invoke_12()
{
  C2_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)createDataTaskWithRequest:(id)request options:(id)options delegate:(id)delegate sessionHandle:(id *)handle
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  delegateCopy = delegate;
  metricOptions = [optionsCopy metricOptions];
  [metricOptions rollReportFrequencyRandomValue];

  v14 = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  sessionPool = [(C2RequestManager *)self sessionPool];
  identifier = [optionsCopy identifier];
  v18 = [sessionPool createDataTaskWithRequestIdentifer:identifier request:requestCopy options:optionsCopy delegate:delegateCopy sessionHandle:handle];

  v19 = CFAbsoluteTimeGetCurrent() - Current;
  if (C2_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [C2RequestManager createDataTaskWithRequest:options:delegate:sessionHandle:];
  }

  v20 = C2_DEFAULT_LOG_INTERNAL_7;
  if (v19 <= 1.0)
  {
    v21 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v21 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_7, v21))
  {
    v24 = 134218498;
    v25 = v19;
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_242158000, v20, v21, "Creation of data task took %.3f seconds for request %@ resulting in task %@.", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v14);

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __77__C2RequestManager_createDataTaskWithRequest_options_delegate_sessionHandle___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)testUtility_sessionForTask:(id)task
{
  v5 = 0;
  [(C2RequestManager *)self _testUtility_forTask:task sessionHandle:&v5 taskHandle:0];
  v3 = v5;

  return v3;
}

- (id)testUtility_sessionTaskForTask:(id)task
{
  v5 = 0;
  [(C2RequestManager *)self _testUtility_forTask:task sessionHandle:0 taskHandle:&v5];
  v3 = v5;

  return v3;
}

- (void)_testUtility_forTask:(id)task sessionHandle:(id *)handle taskHandle:(id *)taskHandle
{
  v46 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
  if (!v7)
  {
    [C2RequestManager _testUtility_forTask:a2 sessionHandle:self taskHandle:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = selfCopy->_sessionPool;
  objc_sync_enter(v28);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = selfCopy;
  sessionGroupForSessionConfigurationName = [(C2SessionPool *)selfCopy->_sessionPool sessionGroupForSessionConfigurationName];
  allValues = [sessionGroupForSessionConfigurationName allValues];

  v11 = [allValues countByEnumeratingWithState:&v40 objects:v45 count:16];
  obj = allValues;
  if (v11)
  {
    v12 = 0;
    v32 = *v41;
    v33 = v11;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        sessions = [v13 sessions];
        v15 = [sessions countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v15)
        {
          v16 = *v37;
LABEL_10:
          v17 = 0;
          v18 = v12;
          while (1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(sessions);
            }

            v19 = *(*(&v36 + 1) + 8 * v17);
            objc_sync_enter(v19);
            wrappedTaskByTaskIdentifier = [v19 wrappedTaskByTaskIdentifier];
            v12 = [wrappedTaskByTaskIdentifier objectForKeyedSubscript:v7];

            if (v12)
            {
              taskDescription = [v12 taskDescription];
              taskDescription2 = [taskCopy taskDescription];
              v23 = [taskDescription isEqual:taskDescription2];

              if (v23)
              {
                break;
              }
            }

            objc_sync_exit(v19);

            ++v17;
            v18 = v12;
            if (v15 == v17)
            {
              v15 = [sessions countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v15)
              {
                goto LABEL_10;
              }

              goto LABEL_17;
            }
          }

          objc_sync_exit(v19);

          if (v19)
          {
            goto LABEL_24;
          }
        }

        else
        {
LABEL_17:
        }
      }

      v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v33);
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
LABEL_24:

  objc_sync_exit(v28);
  objc_sync_exit(v27);

  if (handle)
  {
    v24 = v19;
    *handle = v19;
  }

  if (taskHandle)
  {
    v25 = v12;
    *taskHandle = v12;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_testUtility_forTask:(uint64_t)a1 sessionHandle:(uint64_t)a2 taskHandle:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"C2RequestManager.m" lineNumber:84 description:@"Task identifier should always be set."];
}

@end