@interface C2Session
+ (id)portFromURL:(id)l;
- (BOOL)shouldInvalidateAndCancel;
- (BOOL)shouldRemoveEmptySession;
- (C2Session)initWithSessionConfigurationName:(id)name routeHost:(id)host options:(id)options sessionDelegate:(id)delegate;
- (id)addTask:(id)task withDescription:(id)description request:(id)request;
- (id)createTaskWithOptions:(id)options delegate:(id)delegate;
- (int64_t)emptyTimestamp;
- (void)C2Session:(id)session didBecomeInvalidWithError:(id)error;
- (void)C2Session:(id)session sessionTask:(id)task updatedRoute:(id)route;
- (void)C2Session:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session _taskIsWaitingForConnection:(id)connection;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)cleanupRetainCycle;
- (void)dealloc;
- (void)removeTask:(id)task;
- (void)sessionTaskDelegateCallbackHelper:(id)helper task:(id)task block:(id)block;
- (void)testBehavior_setSessionExpiry:(int64_t)expiry;
- (void)testBehavior_triggerCallbackHang;
- (void)testBehavior_triggerSessionExpiry;
@end

@implementation C2Session

- (int64_t)emptyTimestamp
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  emptyTimestamp = selfCopy->_emptyTimestamp;
  objc_sync_exit(selfCopy);

  return emptyTimestamp;
}

- (BOOL)shouldRemoveEmptySession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  emptyTimestamp = selfCopy->_emptyTimestamp;
  if (emptyTimestamp != -1)
  {
    sessionDelegate = selfCopy->_sessionDelegate;
    selfCopy->_sessionDelegate = 0;
  }

  objc_sync_exit(selfCopy);

  return emptyTimestamp != -1;
}

- (void)cleanupRetainCycle
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isComplete)
  {
    wrappedTaskByTaskIdentifier = [(C2Session *)obj wrappedTaskByTaskIdentifier];
    v2 = obj;
    if (wrappedTaskByTaskIdentifier)
    {
      wrappedTaskByTaskIdentifier2 = [(C2Session *)obj wrappedTaskByTaskIdentifier];
      v5 = [wrappedTaskByTaskIdentifier2 count];

      v2 = obj;
      if (!v5)
      {
        session = obj->_session;
        obj->_session = 0;

        queue = obj->_queue;
        obj->_queue = 0;

        v2 = obj;
        testBehavior_cleanupRetainCycle = obj->_testBehavior_cleanupRetainCycle;
        if (testBehavior_cleanupRetainCycle)
        {
          testBehavior_cleanupRetainCycle[2]();
          v9 = obj->_testBehavior_cleanupRetainCycle;
          obj->_testBehavior_cleanupRetainCycle = 0;

          v2 = obj;
        }
      }
    }
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (BOOL)shouldInvalidateAndCancel
{
  v54 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v42 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_wrappedTaskByTaskIdentifier count];
  if (!selfCopy->_sessionDelegate)
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session shouldInvalidateAndCancel];
    }

    v8 = C2_DEFAULT_LOG_INTERNAL_6;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    sessionDelegate = selfCopy->_sessionDelegate;
    *buf = 138412546;
    *&buf[4] = selfCopy;
    *&buf[12] = 2112;
    *&buf[14] = sessionDelegate;
    v9 = "[%@ shouldInvalidateAndCancel] - Session State Undefined, _sessionDelegate:%@";
LABEL_13:
    _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_DEBUG, v9, buf, 0x16u);
    goto LABEL_23;
  }

  v6 = v5;
  emptyTimestamp = selfCopy->_emptyTimestamp;
  if (v5)
  {
    if (emptyTimestamp != -1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
    }

    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session shouldInvalidateAndCancel];
    }

    v8 = C2_DEFAULT_LOG_INTERNAL_6;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 138412546;
    *&buf[4] = selfCopy;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    v9 = "[%@ shouldInvalidateAndCancel] - %lld outstanding tasks";
    goto LABEL_13;
  }

  if (emptyTimestamp == -1)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];

    v41 = selfCopy->_emptyTimestamp;
  }

  TMConvertTicksToSeconds();
  v12 = v11;
  [(C2RequestOptions *)selfCopy->_options emptySessionExpiryInSeconds];
  if (v12 > v13)
  {
    v14 = selfCopy->_sessionDelegate;
    selfCopy->_sessionDelegate = 0;

    objc_sync_exit(selfCopy);
    v15 = 1;
    goto LABEL_39;
  }

  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session shouldInvalidateAndCancel];
  }

  v16 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = selfCopy->_emptyTimestamp;
    [(C2RequestOptions *)selfCopy->_options emptySessionExpiryInSeconds];
    v19 = v18;
    [(C2RequestOptions *)selfCopy->_options emptySessionExpiryInSeconds];
    v21 = v20;
    v22 = selfCopy->_emptyTimestamp;
    TMConvertTicksToSeconds();
    *buf = 138413058;
    *&buf[4] = selfCopy;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    v50 = 2048;
    v51 = v19;
    v52 = 2048;
    v53 = v21 - v23;
    _os_log_impl(&dword_242158000, v16, OS_LOG_TYPE_DEBUG, "[%@ shouldInvalidateAndCancel] - emptyTimestamp:%llu expirySeconds:%.0f secondsRemaining:%.0f", buf, 0x2Au);
  }

LABEL_23:
  allValues = [(NSMutableDictionary *)selfCopy->_wrappedTaskByTaskIdentifier allValues];
  [v42 addObjectsFromArray:allValues];

  allObjects = [(NSMutableSet *)selfCopy->_didCompleteWithErrorRunningTasks allObjects];
  [v42 addObjectsFromArray:allObjects];

  objc_sync_exit(selfCopy);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = v42;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v27)
  {
    v28 = *v45;
    do
    {
      v29 = 0;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v44 + 1) + 8 * v29);
        callbackHung = [v30 callbackHung];
        if (callbackHung)
        {
          *buf = 0;
          *&buf[8] = 0;
          activity = [v30 activity];
          os_activity_scope_enter(activity, buf);

          if (C2_DEFAULT_LOG_BLOCK_6 != -1)
          {
            [C2Session shouldInvalidateAndCancel];
          }

          v33 = C2_DEFAULT_LOG_INTERNAL_6;
          if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_FAULT))
          {
            *v43 = 0;
            _os_log_impl(&dword_242158000, v33, OS_LOG_TYPE_FAULT, "C2 callback hung.", v43, 2u);
          }

          os_activity_scope_leave(buf);
        }

        testBehavior_callbackHung = selfCopy->_testBehavior_callbackHung;
        if (testBehavior_callbackHung)
        {
          testBehavior_callbackHung[2](testBehavior_callbackHung, callbackHung);
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v27);
  }

  v15 = 0;
LABEL_39:
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session shouldInvalidateAndCancel];
  }

  v35 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"false";
    if (v15)
    {
      v36 = @"true";
    }

    *buf = 138412546;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_impl(&dword_242158000, v35, OS_LOG_TYPE_DEBUG, "[%@ shouldInvalidateAndCancel] --> %{public}@", buf, 0x16u);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

- (C2Session)initWithSessionConfigurationName:(id)name routeHost:(id)host options:(id)options sessionDelegate:(id)delegate
{
  v77 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  hostCopy = host;
  optionsCopy = options;
  delegateCopy = delegate;
  v68.receiver = self;
  v68.super_class = C2Session;
  v15 = [(C2Session *)&v68 init];
  v16 = C2MPInternalTestConfig;
  v17 = C2MPInternalTestConfig;
  if (!v15)
  {
    goto LABEL_37;
  }

  if (!nameCopy || !optionsCopy || !delegateCopy)
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
    }

    v26 = C2_DEFAULT_LOG_INTERNAL_6;
    v27 = os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR);
    v17 = C2MPInternalTestConfig;
    v16 = C2MPInternalTestConfig;
    if (v27)
    {
      *buf = 138412802;
      v70 = nameCopy;
      v71 = 2112;
      v72 = optionsCopy;
      v73 = 2112;
      v74 = delegateCopy;
      _os_log_impl(&dword_242158000, v26, OS_LOG_TYPE_ERROR, "missing required arguments - [C2Session initWithSessionConfigurationName:%@ options:%@ sessionDelegate:%@]", buf, 0x20u);
      v16 = C2MPInternalTestConfig;
      v17 = C2MPInternalTestConfig;
    }

    goto LABEL_37;
  }

  v18 = [optionsCopy sessionConfigurationWithName:nameCopy];
  if (!v18)
  {
    v28 = C2MPInternalTestConfig;
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
      v28 = C2MPInternalTestConfig;
    }

    vtable = v28[70].vtable;
    v30 = os_log_type_enabled(vtable, OS_LOG_TYPE_ERROR);
    v17 = C2MPInternalTestConfig;
    v16 = C2MPInternalTestConfig;
    if (v30)
    {
      *buf = 138412290;
      v70 = optionsCopy;
      _os_log_impl(&dword_242158000, vtable, OS_LOG_TYPE_ERROR, "failed to create NSURLSessionConfiguration for C2Session from Options %@", buf, 0xCu);
      v16 = C2MPInternalTestConfig;
      v17 = C2MPInternalTestConfig;
    }

    goto LABEL_37;
  }

  v19 = v18;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v20)
  {
    v67 = v20;
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (v21)
    {
      v65 = v21;
      v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
      if (v22)
      {
        v62 = hostCopy;
        v23 = v22;
        [(NSOperationQueue *)v22 setMaxConcurrentOperationCount:1];
        underlyingDelegateQueue = [(C2Session *)delegateCopy underlyingDelegateQueue];
        if (underlyingDelegateQueue)
        {
          underlyingDelegateQueue2 = [(C2Session *)delegateCopy underlyingDelegateQueue];
          [(NSOperationQueue *)v23 setUnderlyingQueue:underlyingDelegateQueue2];
        }

        v64 = v23;
        v59 = objc_opt_class();
        networkingDelegate = [optionsCopy networkingDelegate];

        if (networkingDelegate)
        {
          v25 = objc_opt_class();
        }

        else
        {
          v25 = v59;
        }

        v37 = [v25 sessionWithConfiguration:v19 delegate:v15 delegateQueue:v64];
        if (v37)
        {
          v60 = v37;
          networkingDelegate2 = [optionsCopy networkingDelegate];

          if (networkingDelegate2)
          {
            networkingDelegate3 = [optionsCopy networkingDelegate];
            [(NSURLSession *)v60 setNetworkingDelegate:networkingDelegate3];
          }

          identifier = [v19 identifier];
          v58 = identifier;
          if (identifier)
          {
            v41 = identifier;
          }

          else
          {
            v41 = nameCopy;
          }

          [(NSURLSession *)v60 setSessionDescription:v41];
          objc_storeStrong(&v15->_sessionConfigurationName, name);
          objc_storeStrong(&v15->_routeHost, host);
          didCompleteWithErrorRunningTasks = v15->_didCompleteWithErrorRunningTasks;
          v15->_routeLastUpdated = 0.0;
          v15->_didCompleteWithErrorRunningTasks = v65;
          v66 = v65;

          objc_storeStrong(&v15->_options, options);
          session = v15->_session;
          v15->_session = v60;
          v44 = v60;

          wrappedTaskByTaskIdentifier = v15->_wrappedTaskByTaskIdentifier;
          v15->_wrappedTaskByTaskIdentifier = v67;
          v46 = v67;

          queue = v15->_queue;
          v15->_queue = v64;
          v48 = v64;

          v15->_isComplete = 0;
          objc_storeStrong(&v15->_sessionDelegate, delegate);
          v15->_emptyTimestamp = -1;
          testBehavior_sessionInvalidated_cfnetwork = v15->_testBehavior_sessionInvalidated_cfnetwork;
          v15->_testBehavior_sessionInvalidated_cfnetwork = 0;

          testBehavior_sessionInvalidated_shouldInvalidate = v15->_testBehavior_sessionInvalidated_shouldInvalidate;
          v15->_testBehavior_sessionInvalidated_shouldInvalidate = 0;

          testBehavior_cleanupRetainCycle = v15->_testBehavior_cleanupRetainCycle;
          v15->_testBehavior_cleanupRetainCycle = 0;

          hostCopy = v62;
          goto LABEL_42;
        }

        if (C2_DEFAULT_LOG_BLOCK_6 != -1)
        {
          [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
        }

        v52 = C2_DEFAULT_LOG_INTERNAL_6;
        if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
        {
          v53 = v52;
          v54 = v25;
          v55 = v53;
          v56 = NSStringFromClass(v54);
          *buf = 138413058;
          v70 = v56;
          v71 = 2112;
          v72 = v19;
          v73 = 2112;
          v74 = v15;
          v75 = 2112;
          v76 = v64;
          _os_log_impl(&dword_242158000, v55, OS_LOG_TYPE_ERROR, "failed to create NSURLSession for C2Session - [%@ sessionWithConfiguration:%@ delegate:%@ delegateQueue:%@]", buf, 0x2Au);
        }

        hostCopy = v62;
        goto LABEL_36;
      }

      if (C2_DEFAULT_LOG_BLOCK_6 != -1)
      {
        [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
      }

      v33 = C2_DEFAULT_LOG_INTERNAL_6;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_242158000, v33, OS_LOG_TYPE_ERROR, "failed to create NSOperationQueue for C2Session", buf, 2u);
      }
    }

    else
    {
      if (C2_DEFAULT_LOG_BLOCK_6 != -1)
      {
        [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
      }

      v32 = C2_DEFAULT_LOG_INTERNAL_6;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_242158000, v32, OS_LOG_TYPE_ERROR, "failed to create NSMutableSet for C2Session", buf, 2u);
      }
    }
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
    }

    v31 = C2_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242158000, v31, OS_LOG_TYPE_ERROR, "failed to create NSMutableDictionary for C2Session", buf, 2u);
    }
  }

LABEL_36:
  v17 = C2MPInternalTestConfig;
  v16 = C2MPInternalTestConfig;
LABEL_37:
  if (v16[72].vtable != -1)
  {
    v57 = v17;
    [C2Session initWithSessionConfigurationName:routeHost:options:sessionDelegate:];
    v17 = v57;
  }

  v34 = v17[70].vtable;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_242158000, v34, OS_LOG_TYPE_ERROR, "failed to create C2Session", buf, 2u);
  }

  v15->_isComplete = 1;
  v19 = v15;
  v15 = 0;
LABEL_42:

  v35 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_4()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_7()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_11()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_15()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_20()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__C2Session_initWithSessionConfigurationName_routeHost_options_sessionDelegate___block_invoke_23()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)createTaskWithOptions:(id)options delegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  delegateCopy = delegate;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session createTaskWithOptions:delegate:];
  }

  v8 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543874;
    selfCopy3 = self;
    v19 = 2114;
    v20 = optionsCopy;
    v21 = 2114;
    v22 = delegateCopy;
    _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@ createDataTaskWithOptions:%{public}@ delegate:%{public}@]", &v17, 0x20u);
  }

  if (optionsCopy && delegateCopy)
  {
    v9 = [[C2SessionTask alloc] initWithOptions:optionsCopy delegate:delegateCopy sessionTaskDelegate:self];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      if (C2_DEFAULT_LOG_BLOCK_6 != -1)
      {
        [C2Session createTaskWithOptions:delegate:];
      }

      v13 = C2_DEFAULT_LOG_INTERNAL_6;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        session = self->_session;
        v17 = 138543618;
        selfCopy3 = self;
        v19 = 2114;
        v20 = session;
        _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_ERROR, "%{public}@ can't create a new wrapped data task in session %{public}@", &v17, 0x16u);
      }
    }
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session createTaskWithOptions:delegate:];
    }

    v12 = C2_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543874;
      selfCopy3 = self;
      v19 = 2114;
      v20 = optionsCopy;
      v21 = 2114;
      v22 = delegateCopy;
      _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_ERROR, "missing required arguments - [%{public}@ createTaskWithOptions:%{public}@ delegate:%{public}@]", &v17, 0x20u);
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __44__C2Session_createTaskWithOptions_delegate___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__C2Session_createTaskWithOptions_delegate___block_invoke_37()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__C2Session_createTaskWithOptions_delegate___block_invoke_41()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

+ (id)portFromURL:(id)l
{
  lCopy = l;
  port = [lCopy port];
  v5 = port;
  if (port)
  {
    v6 = port;
  }

  else
  {
    scheme = [lCopy scheme];
    v8 = [scheme isEqual:@"http"];

    if (v8)
    {
      v6 = &unk_285473BF0;
    }

    else
    {
      scheme2 = [lCopy scheme];
      v10 = [scheme2 isEqual:@"https"];

      if (v10)
      {
        v6 = &unk_285473C08;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)addTask:(id)task withDescription:(id)description request:(id)request
{
  v42 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  descriptionCopy = description;
  requestCopy = request;
  if (!taskCopy)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (!descriptionCopy)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (!requestCopy)
  {
    [C2Session addTask:withDescription:request:];
  }

  v12 = [(NSURLSession *)self->_session dataTaskWithRequest:requestCopy];
  if (v12)
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session addTask:withDescription:request:];
    }

    v13 = C2_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy3 = self;
      v36 = 2114;
      v37 = taskCopy;
      v38 = 2114;
      v39 = descriptionCopy;
      v40 = 2114;
      v41 = requestCopy;
      _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ addTask:%{public}@ withDescription:%{public}@ request:%{public}@]", buf, 0x2Au);
    }

    [v12 setTaskDescription:descriptionCopy];
    [taskCopy setTask:v12];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "taskIdentifier")}];
  if (!v14)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (v12)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    wrappedTaskByTaskIdentifier = [(C2Session *)selfCopy2 wrappedTaskByTaskIdentifier];
    v17 = wrappedTaskByTaskIdentifier == 0;

    if (v17)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:175 description:@"task mapping must not be nil"];
    }

    wrappedTaskByTaskIdentifier2 = [(C2Session *)selfCopy2 wrappedTaskByTaskIdentifier];
    v19 = [wrappedTaskByTaskIdentifier2 objectForKeyedSubscript:v14];
    v20 = v19 == 0;

    if (!v20)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      wrappedTaskByTaskIdentifier3 = [(C2Session *)selfCopy2 wrappedTaskByTaskIdentifier];
      v32 = [wrappedTaskByTaskIdentifier3 objectForKeyedSubscript:v14];
      [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:176 description:{@"A delegate for task %@ has already been set: %@", v14, v32}];
    }

    wrappedTaskByTaskIdentifier4 = [(C2Session *)selfCopy2 wrappedTaskByTaskIdentifier];
    [wrappedTaskByTaskIdentifier4 setObject:taskCopy forKeyedSubscript:v14];

    wrappedTaskByTaskIdentifier5 = [(C2Session *)selfCopy2 wrappedTaskByTaskIdentifier];
    v23 = [wrappedTaskByTaskIdentifier5 objectForKeyedSubscript:v14];
    v24 = v23 == 0;

    if (v24)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:178 description:@"invariant broken."];
    }

    selfCopy2->_emptyTimestamp = -1;
    objc_sync_exit(selfCopy2);
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session addTask:withDescription:request:];
    }

    v25 = C2_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
    {
      session = self->_session;
      *buf = 138543874;
      selfCopy3 = self;
      v36 = 2114;
      v37 = requestCopy;
      v38 = 2114;
      v39 = session;
      _os_log_impl(&dword_242158000, v25, OS_LOG_TYPE_ERROR, "%{public}@ can't create a new data task with request %{public}@ in session %{public}@", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __45__C2Session_addTask_withDescription_request___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__C2Session_addTask_withDescription_request___block_invoke_64()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__C2Session_addTask_withDescription_request___block_invoke_71()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)removeTask:(id)task
{
  v23 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if (!taskCopy)
  {
    [C2Session removeTask:];
  }

  taskIdentifier = [taskCopy taskIdentifier];
  if (!taskIdentifier)
  {
    [C2Session removeTask:];
  }

  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session removeTask:];
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = taskCopy;
    v21 = 2114;
    v22 = taskIdentifier;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ removeTask:%{public}@] - withIdentifier:%{public}@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v9 = [(NSMutableDictionary *)selfCopy2->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:taskIdentifier];
  v10 = v9 == taskCopy;

  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [(NSMutableDictionary *)selfCopy2->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:taskIdentifier];
    [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:192 description:{@"taskIdentifier(%@) should be map to task (%@) but mapped to (%@) ", taskIdentifier, taskCopy, v15}];
  }

  [(NSMutableDictionary *)selfCopy2->_wrappedTaskByTaskIdentifier setObject:0 forKeyedSubscript:taskIdentifier];
  v11 = [(NSMutableDictionary *)selfCopy2->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:taskIdentifier];
  v12 = v11 == 0;

  if (!v12)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:194 description:@"wrapped task should no longer be present"];
  }

  if (![(NSMutableDictionary *)selfCopy2->_wrappedTaskByTaskIdentifier count])
  {
    selfCopy2->_emptyTimestamp = mach_absolute_time();
  }

  objc_sync_exit(selfCopy2);

  [(C2Session *)selfCopy2 cleanupRetainCycle];
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __24__C2Session_removeTask___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__C2Session_shouldInvalidateAndCancel__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__C2Session_shouldInvalidateAndCancel__block_invoke_103()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__C2Session_shouldInvalidateAndCancel__block_invoke_106()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__C2Session_shouldInvalidateAndCancel__block_invoke_109()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__C2Session_shouldInvalidateAndCancel__block_invoke_112()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)testBehavior_setSessionExpiry:(int64_t)expiry
{
  obj = self;
  objc_sync_enter(obj);
  if (![(NSMutableDictionary *)obj->_wrappedTaskByTaskIdentifier count])
  {
    obj->_emptyTimestamp = expiry;
  }

  objc_sync_exit(obj);
}

- (void)testBehavior_triggerSessionExpiry
{
  obj = self;
  objc_sync_enter(obj);
  if (![(NSMutableDictionary *)obj->_wrappedTaskByTaskIdentifier count])
  {
    obj->_emptyTimestamp = 0;
  }

  objc_sync_exit(obj);
}

- (void)testBehavior_triggerCallbackHang
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_wrappedTaskByTaskIdentifier allValues];
  v4 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v16 + 1) + 8 * v6++) testBehavior_triggerCallbackHang];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = selfCopy->_didCompleteWithErrorRunningTasks;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) testBehavior_triggerCallbackHang];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)C2Session:(id)session sessionTask:(id)task updatedRoute:(id)route
{
  sessionCopy = session;
  taskCopy = task;
  routeCopy = route;
  if (sessionCopy != self)
  {
    [C2Session C2Session:sessionTask:updatedRoute:];
  }

  options = [taskCopy options];
  allowRouting = [options allowRouting];

  if (allowRouting)
  {
    Current = CFAbsoluteTimeGetCurrent();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (Current <= selfCopy->_routeLastUpdated + 900.0)
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy->_routeLastUpdated = Current;
      objc_sync_exit(selfCopy);

      sessionDelegate = selfCopy->_sessionDelegate;
      options2 = [taskCopy options];
      originalHost = [(C2Session *)options2 originalHost];
      [(C2SessionDelegate *)sessionDelegate C2Session:selfCopy originalHost:originalHost updatedRoute:routeCopy];

      selfCopy = options2;
    }
  }
}

- (void)C2Session:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (sessionCopy != self)
  {
    [C2Session C2Session:didBecomeInvalidWithError:];
  }

  testBehavior_sessionInvalidated_shouldInvalidate = self->_testBehavior_sessionInvalidated_shouldInvalidate;
  if (testBehavior_sessionInvalidated_shouldInvalidate)
  {
    testBehavior_sessionInvalidated_shouldInvalidate[2]();
    v9 = self->_testBehavior_sessionInvalidated_shouldInvalidate;
    self->_testBehavior_sessionInvalidated_shouldInvalidate = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = selfCopy->_sessionDelegate;
  sessionDelegate = selfCopy->_sessionDelegate;
  selfCopy->_sessionDelegate = 0;

  objc_sync_exit(selfCopy);
  testBehavior_sessionInvalidated_cfnetwork = selfCopy->_testBehavior_sessionInvalidated_cfnetwork;
  if (testBehavior_sessionInvalidated_cfnetwork)
  {
    testBehavior_sessionInvalidated_cfnetwork[2]();
    v14 = selfCopy->_testBehavior_sessionInvalidated_cfnetwork;
    selfCopy->_testBehavior_sessionInvalidated_cfnetwork = 0;
  }

  [(C2SessionDelegate *)v11 C2Session:selfCopy didBecomeInvalidWithError:errorCopy];
  v15 = selfCopy;
  objc_sync_enter(v15);
  if (v15->_isComplete)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v15 file:@"C2Session.m" lineNumber:346 description:@"received duplicate callbacks"];
  }

  v15->_isComplete = 1;
  objc_sync_exit(v15);

  [(C2Session *)v15 cleanupRetainCycle];
}

- (void)C2Session:(id)session task:(id)task didCompleteWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session C2Session:task:didCompleteWithError:];
  }

  v11 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138544130;
    selfCopy = self;
    v15 = 2114;
    v16 = sessionCopy;
    v17 = 2114;
    v18 = taskCopy;
    v19 = 2114;
    v20 = errorCopy;
    _os_log_impl(&dword_242158000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@ C2Session:%{public}@ task:%{public}@ didCompleteWithError:%{public}@]", &v13, 0x2Au);
  }

  if (sessionCopy != self)
  {
    [C2Session C2Session:task:didCompleteWithError:];
  }

  [(C2Session *)self removeTask:taskCopy];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __49__C2Session_C2Session_task_didCompleteWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session URLSession:didBecomeInvalidWithError:];
  }

  v9 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v31 = 2114;
    v32 = sessionCopy;
    v33 = 2114;
    v34 = errorCopy;
    _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ URLSession:%{public}@ didBecomeInvalidWithError:%{public}@]", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (!selfCopy2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"C2Session.m" lineNumber:383 description:@"C2Session must not be nil."];
  }

  if (!sessionCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:@"NSURLSession must not be nil."];
  }

  session = [(C2Session *)selfCopy2 session];
  configuration = [session configuration];
  identifier = [configuration identifier];

  configuration2 = [sessionCopy configuration];
  identifier2 = [configuration2 identifier];

  if (![(C2Session *)selfCopy2 isComplete])
  {
    if (identifier | identifier2)
    {
      if (!identifier)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:@"C2Session missing background configuration identifier."];
      }

      if (!identifier2)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:@"NSURLSession missing background configuration identifier."];
      }

      if ([identifier isEqual:identifier2])
      {
        goto LABEL_18;
      }

      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:{@"Callbacks should only occur for member session. %@ != %@", identifier, identifier2}];
    }

    else
    {
      session2 = [(C2Session *)selfCopy2 session];
      v18 = session2 == sessionCopy;

      if (v18)
      {
        goto LABEL_18;
      }

      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      session3 = [(C2Session *)selfCopy2 session];
      [currentHandler5 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:{@"Callbacks should only occur for member session. %@ != %@", session3, sessionCopy}];
    }

LABEL_18:
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    queue = [(C2Session *)selfCopy2 queue];
    v21 = [currentQueue isEqual:queue];

    if ((v21 & 1) == 0)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:selfCopy2 file:@"C2Session.m" lineNumber:383 description:@"Callbacks should always occur on member queue"];
    }
  }

  objc_sync_exit(selfCopy2);
  [(C2Session *)selfCopy2 C2Session:selfCopy2 didBecomeInvalidWithError:errorCopy];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __50__C2Session_URLSession_didBecomeInvalidWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)sessionTaskDelegateCallbackHelper:(id)helper task:(id)task block:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  taskCopy = task;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
  if (v12)
  {
    if (selfCopy)
    {
      goto LABEL_3;
    }

LABEL_31:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"C2Session.m" lineNumber:397 description:@"C2Session must not be nil."];

    if (helperCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:396 description:{@"task %@ should always have a task identifier", taskCopy}];

  if (!selfCopy)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (helperCopy)
  {
    goto LABEL_4;
  }

LABEL_32:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:@"NSURLSession must not be nil."];

LABEL_4:
  session = [(C2Session *)selfCopy session];
  configuration = [session configuration];
  identifier = [configuration identifier];

  configuration2 = [helperCopy configuration];
  identifier2 = [configuration2 identifier];

  if ([(C2Session *)selfCopy isComplete])
  {
    goto LABEL_13;
  }

  if (identifier | identifier2)
  {
    if (identifier)
    {
      if (identifier2)
      {
LABEL_8:
        if ([identifier isEqual:identifier2])
        {
          goto LABEL_11;
        }

        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:{@"Callbacks should only occur for member session. %@ != %@", identifier, identifier2}];
        goto LABEL_36;
      }
    }

    else
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:@"C2Session missing background configuration identifier."];

      if (identifier2)
      {
        goto LABEL_8;
      }
    }

    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:@"NSURLSession missing background configuration identifier."];

    goto LABEL_8;
  }

  session2 = [(C2Session *)selfCopy session];

  if (session2 == helperCopy)
  {
    goto LABEL_11;
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  session3 = [(C2Session *)selfCopy session];
  [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:{@"Callbacks should only occur for member session. %@ != %@", session3, helperCopy}];

LABEL_36:
LABEL_11:
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  queue = [(C2Session *)selfCopy queue];
  v22 = [currentQueue isEqual:queue];

  if ((v22 & 1) == 0)
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:selfCopy file:@"C2Session.m" lineNumber:397 description:@"Callbacks should always occur on member queue"];
  }

LABEL_13:

  v23 = [(NSMutableDictionary *)selfCopy->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:v12];
  objc_sync_exit(selfCopy);

  if (v23)
  {
    taskDescription = [v23 taskDescription];
    if (!taskDescription)
    {
      [C2Session sessionTaskDelegateCallbackHelper:a2 task:selfCopy block:v23];
    }

    taskDescription2 = [taskCopy taskDescription];
    v26 = taskDescription2;
    if (taskDescription2)
    {
      if (([taskDescription2 isEqual:taskDescription] & 1) == 0)
      {
        [(C2Session *)a2 sessionTaskDelegateCallbackHelper:selfCopy task:v26 block:taskDescription];
      }
    }

    else
    {
      if (C2_DEFAULT_LOG_BLOCK_6 != -1)
      {
        [C2Session sessionTaskDelegateCallbackHelper:task:block:];
      }

      v28 = C2_DEFAULT_LOG_INTERNAL_6;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v12;
        _os_log_impl(&dword_242158000, v28, OS_LOG_TYPE_ERROR, "task %{public}@ lost its task description", buf, 0xCu);
      }
    }

    options = [(C2Session *)selfCopy options];
    [options handleCallbackForSessionTask:v23 dataTask:taskCopy callback:blockCopy];
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_6 != -1)
    {
      [C2Session sessionTaskDelegateCallbackHelper:task:block:];
    }

    v27 = C2_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = v12;
      _os_log_impl(&dword_242158000, v27, OS_LOG_TYPE_ERROR, "ignoring callback for unknown task %{public}@", buf, 0xCu);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0);
  }

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __58__C2Session_sessionTaskDelegateCallbackHelper_task_block___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__C2Session_sessionTaskDelegateCallbackHelper_task_block___block_invoke_160()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__C2Session_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v22[3] = &unk_278D407D0;
  v22[4] = self;
  v23 = sessionCopy;
  v24 = taskCopy;
  v25 = redirectionCopy;
  v26 = requestCopy;
  v27 = handlerCopy;
  v17 = handlerCopy;
  v18 = requestCopy;
  v19 = redirectionCopy;
  v20 = taskCopy;
  v21 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v21 task:v20 block:v22];
}

void __85__C2Session_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __85__C2Session_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v13 = a1[8];
    v12 = a1[9];
    v14 = v7;
    v15 = _Block_copy(v12);
    v17 = 138544642;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v13;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ willPerformHTTPRedirection:%{public}@ newRequest:%{public}@ completionHandler:%{public}@]", &v17, 0x3Eu);
  }

  if (v6)
  {
    [v6 URLSession:a1[5] task:a1[6] willPerformHTTPRedirection:a1[7] newRequest:a1[8] completionHandler:a1[9]];
  }

  else
  {
    (*(a1[9] + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __85__C2Session_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__C2Session_URLSession_task_needNewBodyStream___block_invoke;
  v14[3] = &unk_278D407F8;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = taskCopy;
  v17 = streamCopy;
  v11 = streamCopy;
  v12 = taskCopy;
  v13 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v13 task:v12 block:v14];
}

void __47__C2Session_URLSession_task_needNewBodyStream___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __47__C2Session_URLSession_task_needNewBodyStream___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v11 = a1[6];
    v10 = a1[7];
    v12 = v7;
    v13 = _Block_copy(v10);
    v15 = 138544130;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ needNewBodyStream:%{public}@]", &v15, 0x2Au);
  }

  if (v6)
  {
    [v6 URLSession:a1[5] task:a1[6] needNewBodyStream:a1[7]];
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __47__C2Session_URLSession_task_needNewBodyStream___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__C2Session_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  v16[3] = &unk_278D40820;
  v16[4] = self;
  v17 = sessionCopy;
  v18 = taskCopy;
  dataCopy = data;
  sentCopy = sent;
  sendCopy = send;
  v14 = taskCopy;
  v15 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v15 task:v14 block:v16];
}

void __85__C2Session_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __85__C2Session_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[8];
    v13 = a1[9];
    v15 = 138544642;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ didSendBodyData:%lld totalBytesSent:%lld totalBytesExpectedToSend:%lld]", &v15, 0x3Eu);
  }

  [v6 URLSession:a1[5] task:a1[6] didSendBodyData:a1[7] totalBytesSent:a1[8] totalBytesExpectedToSend:a1[9]];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __85__C2Session_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__C2Session_URLSession_task_didFinishCollectingMetrics___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = taskCopy;
  v17 = metricsCopy;
  v11 = metricsCopy;
  v12 = taskCopy;
  v13 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v13 task:v12 block:v14];
}

void __56__C2Session_URLSession_task_didFinishCollectingMetrics___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __56__C2Session_URLSession_task_didFinishCollectingMetrics___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v13 = 138544131;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ didFinishCollectingMetrics:%{private}@]", &v13, 0x2Au);
  }

  [v5 didFinishCollectingMetrics:a1[7]];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __56__C2Session_URLSession_task_didFinishCollectingMetrics___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__C2Session_URLSession_task_didCompleteWithError___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = taskCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = taskCopy;
  v13 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v13 task:v12 block:v14];
}

void __50__C2Session_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __50__C2Session_URLSession_task_didCompleteWithError___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v20 = 138544130;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ didCompleteWithError:%{public}@]", &v20, 0x2Au);
  }

  if (!*(a1 + 56))
  {
    v12 = [*(a1 + 48) response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [*(a1 + 48) response];
      v15 = [v14 allHeaderFields];
      v16 = [v15 objectForKey:@"x-apple-c2-route"];

      if (v16 && [v16 length])
      {
        [*(a1 + 32) C2Session:*(a1 + 32) sessionTask:v5 updatedRoute:v16];
      }
    }
  }

  [v5 captureMetricsWithError:*(a1 + 56) eventType:1];
  if (v5)
  {
    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    [*(*(a1 + 32) + 72) addObject:v5];
    objc_sync_exit(v17);
  }

  [v5 C2Session:*(a1 + 32) task:v5 didCompleteWithError:*(a1 + 56)];
  [v6 URLSession:*(a1 + 40) task:*(a1 + 48) didCompleteWithError:*(a1 + 56)];
  if (v5)
  {
    v18 = *(a1 + 32);
    objc_sync_enter(v18);
    [*(*(a1 + 32) + 72) removeObject:v5];
    objc_sync_exit(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __50__C2Session_URLSession_task_didCompleteWithError___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__C2Session_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = sessionCopy;
  v20 = taskCopy;
  v21 = connectionCopy;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = connectionCopy;
  v16 = taskCopy;
  v17 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v17 task:v16 block:v18];
}

void __88__C2Session_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __88__C2Session_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[8];
    v13 = v7;
    v14 = _Block_copy(v12);
    v16 = 138544386;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ _willSendRequestForEstablishedConnection:%{public}@ completionHandler:%{public}@]", &v16, 0x34u);
  }

  if (v6)
  {
    [v6 URLSession:a1[5] task:a1[6] _willSendRequestForEstablishedConnection:a1[7] completionHandler:a1[8]];
  }

  else
  {
    (*(a1[8] + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __88__C2Session_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session _taskIsWaitingForConnection:(id)connection
{
  sessionCopy = session;
  connectionCopy = connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__C2Session_URLSession__taskIsWaitingForConnection___block_invoke;
  v10[3] = &unk_278D40898;
  v10[4] = self;
  v11 = sessionCopy;
  v12 = connectionCopy;
  v8 = connectionCopy;
  v9 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v9 task:v8 block:v10];
}

void __52__C2Session_URLSession__taskIsWaitingForConnection___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __52__C2Session_URLSession__taskIsWaitingForConnection___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ _taskIsWaitingForConnection:%{public}@]", &v12, 0x20u);
  }

  [v6 URLSession:a1[5] _taskIsWaitingForConnection:a1[6]];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __52__C2Session_URLSession__taskIsWaitingForConnection___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed
{
  sessionCopy = session;
  taskCopy = task;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__C2Session_URLSession_task__conditionalRequirementsChanged___block_invoke;
  v12[3] = &unk_278D408C0;
  v12[4] = self;
  v13 = sessionCopy;
  v14 = taskCopy;
  changedCopy = changed;
  v10 = taskCopy;
  v11 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v11 task:v10 block:v12];
}

void __61__C2Session_URLSession_task__conditionalRequirementsChanged___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __61__C2Session_URLSession_task__conditionalRequirementsChanged___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (*(a1 + 56))
    {
      v11 = "true";
    }

    else
    {
      v11 = "false";
    }

    v13 = 138544130;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2082;
    v20 = v11;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ task:%{public}@ _conditionalRequirementsChanged:%{public}s]", &v13, 0x2Au);
  }

  [v6 URLSession:*(a1 + 40) task:*(a1 + 48) _conditionalRequirementsChanged:*(a1 + 56)];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __61__C2Session_URLSession_task__conditionalRequirementsChanged___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__C2Session_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = sessionCopy;
  v20 = taskCopy;
  v21 = responseCopy;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = responseCopy;
  v16 = taskCopy;
  v17 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v17 task:v16 block:v18];
}

void __70__C2Session_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __70__C2Session_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[8];
    v13 = v7;
    v14 = _Block_copy(v12);
    v16 = 138544386;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ dataTask:%{public}@ didReceiveResponse:%{public}@ completionHandler:%{public}@]", &v16, 0x34u);
  }

  if (v6)
  {
    [v6 URLSession:a1[5] dataTask:a1[6] didReceiveResponse:a1[7] completionHandler:a1[8]];
  }

  else
  {
    (*(a1[8] + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __70__C2Session_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__C2Session_URLSession_dataTask_didReceiveData___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = taskCopy;
  v17 = dataCopy;
  v11 = dataCopy;
  v12 = taskCopy;
  v13 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v13 task:v12 block:v14];
}

void __48__C2Session_URLSession_dataTask_didReceiveData___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __48__C2Session_URLSession_dataTask_didReceiveData___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v11 = a1[6];
    v10 = a1[7];
    v12 = v7;
    v14 = 138544130;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    v20 = 2048;
    v21 = [v10 length];
    _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ dataTask:%{public}@ didReceiveData:(binary data of length %lld)]", &v14, 0x2Au);
  }

  [v6 URLSession:a1[5] dataTask:a1[6] didReceiveData:a1[7]];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __48__C2Session_URLSession_dataTask_didReceiveData___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__C2Session_URLSession_dataTask__didReceiveData_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = sessionCopy;
  v20 = taskCopy;
  v21 = dataCopy;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = dataCopy;
  v16 = taskCopy;
  v17 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v17 task:v16 block:v18];
}

void __67__C2Session_URLSession_dataTask__didReceiveData_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __67__C2Session_URLSession_dataTask__didReceiveData_completionHandler___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v11 = a1[6];
    v10 = a1[7];
    v12 = v7;
    v18 = 138544130;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2048;
    v25 = [v10 length];
    _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ dataTask:%{public}@ _didReceiveData:(binary data of length %lld)]", &v18, 0x2Au);
  }

  v13 = objc_opt_respondsToSelector();
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  if (v13)
  {
    [v6 URLSession:v14 dataTask:v15 _didReceiveData:v16 completionHandler:a1[8]];
  }

  else
  {
    [v6 URLSession:v14 dataTask:v15 didReceiveData:v16];
    (*(a1[8] + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __67__C2Session_URLSession_dataTask__didReceiveData_completionHandler___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__C2Session_URLSession__willRetryBackgroundDataTask_withError___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = taskCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = taskCopy;
  v13 = sessionCopy;
  [(C2Session *)self sessionTaskDelegateCallbackHelper:v13 task:v12 block:v14];
}

void __63__C2Session_URLSession__willRetryBackgroundDataTask_withError___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    __63__C2Session_URLSession__willRetryBackgroundDataTask_withError___block_invoke_cold_1();
  }

  v7 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v13 = 138544130;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@ URLSession:%{public}@ _willRetryBackgroundDataTask:%{public}@ withError:%{public}@]", &v13, 0x2Au);
  }

  [v5 captureMetricsWithError:a1[7] eventType:2];
  [v6 URLSession:a1[5] _willRetryBackgroundDataTask:a1[6] withError:a1[7]];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __63__C2Session_URLSession__willRetryBackgroundDataTask_withError___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)addTask:withDescription:request:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addTask:withDescription:request:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addTask:withDescription:request:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addTask:withDescription:request:.cold.6()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeTask:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)removeTask:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)C2Session:sessionTask:updatedRoute:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)C2Session:didBecomeInvalidWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)C2Session:task:didCompleteWithError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sessionTaskDelegateCallbackHelper:(uint64_t)a1 task:(uint64_t)a2 block:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"C2Session.m" lineNumber:402 description:{@"wrappedTask %@ should always have a task description", a3}];
}

- (void)sessionTaskDelegateCallbackHelper:(uint64_t)a3 task:(uint64_t)a4 block:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"C2Session.m" lineNumber:407 description:{@"taskDescription (%@) inconsistent with expected taskDescription (%@)", a3, a4}];
}

@end