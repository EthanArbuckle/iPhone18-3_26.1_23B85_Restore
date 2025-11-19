@interface C2Session
+ (id)portFromURL:(id)a3;
- (BOOL)shouldInvalidateAndCancel;
- (BOOL)shouldRemoveEmptySession;
- (C2Session)initWithSessionConfigurationName:(id)a3 routeHost:(id)a4 options:(id)a5 sessionDelegate:(id)a6;
- (id)addTask:(id)a3 withDescription:(id)a4 request:(id)a5;
- (id)createTaskWithOptions:(id)a3 delegate:(id)a4;
- (int64_t)emptyTimestamp;
- (void)C2Session:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)C2Session:(id)a3 sessionTask:(id)a4 updatedRoute:(id)a5;
- (void)C2Session:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 _taskIsWaitingForConnection:(id)a4;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 _conditionalRequirementsChanged:(BOOL)a5;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)cleanupRetainCycle;
- (void)dealloc;
- (void)removeTask:(id)a3;
- (void)sessionTaskDelegateCallbackHelper:(id)a3 task:(id)a4 block:(id)a5;
- (void)testBehavior_setSessionExpiry:(int64_t)a3;
- (void)testBehavior_triggerCallbackHang;
- (void)testBehavior_triggerSessionExpiry;
@end

@implementation C2Session

- (int64_t)emptyTimestamp
{
  v2 = self;
  objc_sync_enter(v2);
  emptyTimestamp = v2->_emptyTimestamp;
  objc_sync_exit(v2);

  return emptyTimestamp;
}

- (BOOL)shouldRemoveEmptySession
{
  v2 = self;
  objc_sync_enter(v2);
  emptyTimestamp = v2->_emptyTimestamp;
  if (emptyTimestamp != -1)
  {
    sessionDelegate = v2->_sessionDelegate;
    v2->_sessionDelegate = 0;
  }

  objc_sync_exit(v2);

  return emptyTimestamp != -1;
}

- (void)cleanupRetainCycle
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isComplete)
  {
    v3 = [(C2Session *)obj wrappedTaskByTaskIdentifier];
    v2 = obj;
    if (v3)
    {
      v4 = [(C2Session *)obj wrappedTaskByTaskIdentifier];
      v5 = [v4 count];

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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (BOOL)shouldInvalidateAndCancel
{
  v54 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v42 = objc_opt_new();
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_wrappedTaskByTaskIdentifier count];
  if (!v4->_sessionDelegate)
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

    sessionDelegate = v4->_sessionDelegate;
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = sessionDelegate;
    v9 = "[%@ shouldInvalidateAndCancel] - Session State Undefined, _sessionDelegate:%@";
LABEL_13:
    _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_DEBUG, v9, buf, 0x16u);
    goto LABEL_23;
  }

  v6 = v5;
  emptyTimestamp = v4->_emptyTimestamp;
  if (v5)
  {
    if (emptyTimestamp != -1)
    {
      v39 = [MEMORY[0x277CCA890] currentHandler];
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
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    v9 = "[%@ shouldInvalidateAndCancel] - %lld outstanding tasks";
    goto LABEL_13;
  }

  if (emptyTimestamp == -1)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];

    v41 = v4->_emptyTimestamp;
  }

  TMConvertTicksToSeconds();
  v12 = v11;
  [(C2RequestOptions *)v4->_options emptySessionExpiryInSeconds];
  if (v12 > v13)
  {
    v14 = v4->_sessionDelegate;
    v4->_sessionDelegate = 0;

    objc_sync_exit(v4);
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
    v17 = v4->_emptyTimestamp;
    [(C2RequestOptions *)v4->_options emptySessionExpiryInSeconds];
    v19 = v18;
    [(C2RequestOptions *)v4->_options emptySessionExpiryInSeconds];
    v21 = v20;
    v22 = v4->_emptyTimestamp;
    TMConvertTicksToSeconds();
    *buf = 138413058;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    v50 = 2048;
    v51 = v19;
    v52 = 2048;
    v53 = v21 - v23;
    _os_log_impl(&dword_242158000, v16, OS_LOG_TYPE_DEBUG, "[%@ shouldInvalidateAndCancel] - emptyTimestamp:%llu expirySeconds:%.0f secondsRemaining:%.0f", buf, 0x2Au);
  }

LABEL_23:
  v24 = [(NSMutableDictionary *)v4->_wrappedTaskByTaskIdentifier allValues];
  [v42 addObjectsFromArray:v24];

  v25 = [(NSMutableSet *)v4->_didCompleteWithErrorRunningTasks allObjects];
  [v42 addObjectsFromArray:v25];

  objc_sync_exit(v4);
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
        v31 = [v30 callbackHung];
        if (v31)
        {
          *buf = 0;
          *&buf[8] = 0;
          v32 = [v30 activity];
          os_activity_scope_enter(v32, buf);

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

        testBehavior_callbackHung = v4->_testBehavior_callbackHung;
        if (testBehavior_callbackHung)
        {
          testBehavior_callbackHung[2](testBehavior_callbackHung, v31);
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
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_impl(&dword_242158000, v35, OS_LOG_TYPE_DEBUG, "[%@ shouldInvalidateAndCancel] --> %{public}@", buf, 0x16u);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

- (C2Session)initWithSessionConfigurationName:(id)a3 routeHost:(id)a4 options:(id)a5 sessionDelegate:(id)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v68.receiver = self;
  v68.super_class = C2Session;
  v15 = [(C2Session *)&v68 init];
  v16 = C2MPInternalTestConfig;
  v17 = C2MPInternalTestConfig;
  if (!v15)
  {
    goto LABEL_37;
  }

  if (!v11 || !v13 || !v14)
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
      v70 = v11;
      v71 = 2112;
      v72 = v13;
      v73 = 2112;
      v74 = v14;
      _os_log_impl(&dword_242158000, v26, OS_LOG_TYPE_ERROR, "missing required arguments - [C2Session initWithSessionConfigurationName:%@ options:%@ sessionDelegate:%@]", buf, 0x20u);
      v16 = C2MPInternalTestConfig;
      v17 = C2MPInternalTestConfig;
    }

    goto LABEL_37;
  }

  v18 = [v13 sessionConfigurationWithName:v11];
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
      v70 = v13;
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
        v62 = v12;
        v23 = v22;
        [(NSOperationQueue *)v22 setMaxConcurrentOperationCount:1];
        v61 = [(C2Session *)v14 underlyingDelegateQueue];
        if (v61)
        {
          v63 = [(C2Session *)v14 underlyingDelegateQueue];
          [(NSOperationQueue *)v23 setUnderlyingQueue:v63];
        }

        v64 = v23;
        v59 = objc_opt_class();
        v24 = [v13 networkingDelegate];

        if (v24)
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
          v38 = [v13 networkingDelegate];

          if (v38)
          {
            v39 = [v13 networkingDelegate];
            [(NSURLSession *)v60 setNetworkingDelegate:v39];
          }

          v40 = [v19 identifier];
          v58 = v40;
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v11;
          }

          [(NSURLSession *)v60 setSessionDescription:v41];
          objc_storeStrong(&v15->_sessionConfigurationName, a3);
          objc_storeStrong(&v15->_routeHost, a4);
          didCompleteWithErrorRunningTasks = v15->_didCompleteWithErrorRunningTasks;
          v15->_routeLastUpdated = 0.0;
          v15->_didCompleteWithErrorRunningTasks = v65;
          v66 = v65;

          objc_storeStrong(&v15->_options, a5);
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
          objc_storeStrong(&v15->_sessionDelegate, a6);
          v15->_emptyTimestamp = -1;
          testBehavior_sessionInvalidated_cfnetwork = v15->_testBehavior_sessionInvalidated_cfnetwork;
          v15->_testBehavior_sessionInvalidated_cfnetwork = 0;

          testBehavior_sessionInvalidated_shouldInvalidate = v15->_testBehavior_sessionInvalidated_shouldInvalidate;
          v15->_testBehavior_sessionInvalidated_shouldInvalidate = 0;

          testBehavior_cleanupRetainCycle = v15->_testBehavior_cleanupRetainCycle;
          v15->_testBehavior_cleanupRetainCycle = 0;

          v12 = v62;
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

        v12 = v62;
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

- (id)createTaskWithOptions:(id)a3 delegate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session createTaskWithOptions:delegate:];
  }

  v8 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@ createDataTaskWithOptions:%{public}@ delegate:%{public}@]", &v17, 0x20u);
  }

  if (v6 && v7)
  {
    v9 = [[C2SessionTask alloc] initWithOptions:v6 delegate:v7 sessionTaskDelegate:self];
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
        v18 = self;
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
      v18 = self;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
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

+ (id)portFromURL:(id)a3
{
  v3 = a3;
  v4 = [v3 port];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 scheme];
    v8 = [v7 isEqual:@"http"];

    if (v8)
    {
      v6 = &unk_285473BF0;
    }

    else
    {
      v9 = [v3 scheme];
      v10 = [v9 isEqual:@"https"];

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

- (id)addTask:(id)a3 withDescription:(id)a4 request:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (!v10)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (!v11)
  {
    [C2Session addTask:withDescription:request:];
  }

  v12 = [(NSURLSession *)self->_session dataTaskWithRequest:v11];
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
      v35 = self;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = v10;
      v40 = 2114;
      v41 = v11;
      _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ addTask:%{public}@ withDescription:%{public}@ request:%{public}@]", buf, 0x2Au);
    }

    [v12 setTaskDescription:v10];
    [v9 setTask:v12];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "taskIdentifier")}];
  if (!v14)
  {
    [C2Session addTask:withDescription:request:];
  }

  if (v12)
  {
    v15 = self;
    objc_sync_enter(v15);
    v16 = [(C2Session *)v15 wrappedTaskByTaskIdentifier];
    v17 = v16 == 0;

    if (v17)
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:v15 file:@"C2Session.m" lineNumber:175 description:@"task mapping must not be nil"];
    }

    v18 = [(C2Session *)v15 wrappedTaskByTaskIdentifier];
    v19 = [v18 objectForKeyedSubscript:v14];
    v20 = v19 == 0;

    if (!v20)
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [(C2Session *)v15 wrappedTaskByTaskIdentifier];
      v32 = [v31 objectForKeyedSubscript:v14];
      [v30 handleFailureInMethod:a2 object:v15 file:@"C2Session.m" lineNumber:176 description:{@"A delegate for task %@ has already been set: %@", v14, v32}];
    }

    v21 = [(C2Session *)v15 wrappedTaskByTaskIdentifier];
    [v21 setObject:v9 forKeyedSubscript:v14];

    v22 = [(C2Session *)v15 wrappedTaskByTaskIdentifier];
    v23 = [v22 objectForKeyedSubscript:v14];
    v24 = v23 == 0;

    if (v24)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:a2 object:v15 file:@"C2Session.m" lineNumber:178 description:@"invariant broken."];
    }

    v15->_emptyTimestamp = -1;
    objc_sync_exit(v15);
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
      v35 = self;
      v36 = 2114;
      v37 = v11;
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

- (void)removeTask:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [C2Session removeTask:];
  }

  v6 = [v5 taskIdentifier];
  if (!v6)
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
    v18 = self;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ removeTask:%{public}@] - withIdentifier:%{public}@", buf, 0x20u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:v6];
  v10 = v9 == v5;

  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [(NSMutableDictionary *)v8->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:v6];
    [v14 handleFailureInMethod:a2 object:v8 file:@"C2Session.m" lineNumber:192 description:{@"taskIdentifier(%@) should be map to task (%@) but mapped to (%@) ", v6, v5, v15}];
  }

  [(NSMutableDictionary *)v8->_wrappedTaskByTaskIdentifier setObject:0 forKeyedSubscript:v6];
  v11 = [(NSMutableDictionary *)v8->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:v6];
  v12 = v11 == 0;

  if (!v12)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:v8 file:@"C2Session.m" lineNumber:194 description:@"wrapped task should no longer be present"];
  }

  if (![(NSMutableDictionary *)v8->_wrappedTaskByTaskIdentifier count])
  {
    v8->_emptyTimestamp = mach_absolute_time();
  }

  objc_sync_exit(v8);

  [(C2Session *)v8 cleanupRetainCycle];
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

- (void)testBehavior_setSessionExpiry:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (![(NSMutableDictionary *)obj->_wrappedTaskByTaskIdentifier count])
  {
    obj->_emptyTimestamp = a3;
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
  v2 = self;
  objc_sync_enter(v2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(NSMutableDictionary *)v2->_wrappedTaskByTaskIdentifier allValues];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v16 + 1) + 8 * v6++) testBehavior_triggerCallbackHang];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v2->_didCompleteWithErrorRunningTasks;
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

  objc_sync_exit(v2);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)C2Session:(id)a3 sessionTask:(id)a4 updatedRoute:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (v17 != self)
  {
    [C2Session C2Session:sessionTask:updatedRoute:];
  }

  v10 = [v8 options];
  v11 = [v10 allowRouting];

  if (v11)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v13 = self;
    objc_sync_enter(v13);
    if (Current <= v13->_routeLastUpdated + 900.0)
    {
      objc_sync_exit(v13);
    }

    else
    {
      v13->_routeLastUpdated = Current;
      objc_sync_exit(v13);

      sessionDelegate = v13->_sessionDelegate;
      v15 = [v8 options];
      v16 = [(C2Session *)v15 originalHost];
      [(C2SessionDelegate *)sessionDelegate C2Session:v13 originalHost:v16 updatedRoute:v9];

      v13 = v15;
    }
  }
}

- (void)C2Session:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (v17 != self)
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

  v10 = self;
  objc_sync_enter(v10);
  v11 = v10->_sessionDelegate;
  sessionDelegate = v10->_sessionDelegate;
  v10->_sessionDelegate = 0;

  objc_sync_exit(v10);
  testBehavior_sessionInvalidated_cfnetwork = v10->_testBehavior_sessionInvalidated_cfnetwork;
  if (testBehavior_sessionInvalidated_cfnetwork)
  {
    testBehavior_sessionInvalidated_cfnetwork[2]();
    v14 = v10->_testBehavior_sessionInvalidated_cfnetwork;
    v10->_testBehavior_sessionInvalidated_cfnetwork = 0;
  }

  [(C2SessionDelegate *)v11 C2Session:v10 didBecomeInvalidWithError:v7];
  v15 = v10;
  objc_sync_enter(v15);
  if (v15->_isComplete)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:v15 file:@"C2Session.m" lineNumber:346 description:@"received duplicate callbacks"];
  }

  v15->_isComplete = 1;
  objc_sync_exit(v15);

  [(C2Session *)v15 cleanupRetainCycle];
}

- (void)C2Session:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session C2Session:task:didCompleteWithError:];
  }

  v11 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138544130;
    v14 = self;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_242158000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@ C2Session:%{public}@ task:%{public}@ didCompleteWithError:%{public}@]", &v13, 0x2Au);
  }

  if (v8 != self)
  {
    [C2Session C2Session:task:didCompleteWithError:];
  }

  [(C2Session *)self removeTask:v9];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __49__C2Session_C2Session_task_didCompleteWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (C2_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [C2Session URLSession:didBecomeInvalidWithError:];
  }

  v9 = C2_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = self;
    v31 = 2114;
    v32 = v7;
    v33 = 2114;
    v34 = v8;
    _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ URLSession:%{public}@ didBecomeInvalidWithError:%{public}@]", buf, 0x20u);
  }

  v10 = self;
  objc_sync_enter(v10);
  if (!v10)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:0 file:@"C2Session.m" lineNumber:383 description:@"C2Session must not be nil."];
  }

  if (!v7)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:@"NSURLSession must not be nil."];
  }

  v11 = [(C2Session *)v10 session];
  v12 = [v11 configuration];
  v13 = [v12 identifier];

  v14 = [v7 configuration];
  v15 = [v14 identifier];

  if (![(C2Session *)v10 isComplete])
  {
    if (v13 | v15)
    {
      if (!v13)
      {
        v26 = [MEMORY[0x277CCA890] currentHandler];
        [v26 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:@"C2Session missing background configuration identifier."];
      }

      if (!v15)
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        [v27 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:@"NSURLSession missing background configuration identifier."];
      }

      if ([v13 isEqual:v15])
      {
        goto LABEL_18;
      }

      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:{@"Callbacks should only occur for member session. %@ != %@", v13, v15}];
    }

    else
    {
      v17 = [(C2Session *)v10 session];
      v18 = v17 == v7;

      if (v18)
      {
        goto LABEL_18;
      }

      v16 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [(C2Session *)v10 session];
      [v16 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:{@"Callbacks should only occur for member session. %@ != %@", v28, v7}];
    }

LABEL_18:
    v19 = [MEMORY[0x277CCABD8] currentQueue];
    v20 = [(C2Session *)v10 queue];
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:v10 file:@"C2Session.m" lineNumber:383 description:@"Callbacks should always occur on member queue"];
    }
  }

  objc_sync_exit(v10);
  [(C2Session *)v10 C2Session:v10 didBecomeInvalidWithError:v8];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __50__C2Session_URLSession_didBecomeInvalidWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)sessionTaskDelegateCallbackHelper:(id)a3 task:(id)a4 block:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  v11 = self;
  objc_sync_enter(v11);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "taskIdentifier")}];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_31:
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:0 file:@"C2Session.m" lineNumber:397 description:@"C2Session must not be nil."];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:396 description:{@"task %@ should always have a task identifier", v9}];

  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_32:
  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:@"NSURLSession must not be nil."];

LABEL_4:
  v13 = [(C2Session *)v11 session];
  v14 = [v13 configuration];
  v15 = [v14 identifier];

  v16 = [v8 configuration];
  v17 = [v16 identifier];

  if ([(C2Session *)v11 isComplete])
  {
    goto LABEL_13;
  }

  if (v15 | v17)
  {
    if (v15)
    {
      if (v17)
      {
LABEL_8:
        if ([v15 isEqual:v17])
        {
          goto LABEL_11;
        }

        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:{@"Callbacks should only occur for member session. %@ != %@", v15, v17}];
        goto LABEL_36;
      }
    }

    else
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:@"C2Session missing background configuration identifier."];

      if (v17)
      {
        goto LABEL_8;
      }
    }

    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:@"NSURLSession missing background configuration identifier."];

    goto LABEL_8;
  }

  v19 = [(C2Session *)v11 session];

  if (v19 == v8)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  v37 = [(C2Session *)v11 session];
  [v18 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:{@"Callbacks should only occur for member session. %@ != %@", v37, v8}];

LABEL_36:
LABEL_11:
  v20 = [MEMORY[0x277CCABD8] currentQueue];
  v21 = [(C2Session *)v11 queue];
  v22 = [v20 isEqual:v21];

  if ((v22 & 1) == 0)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:v11 file:@"C2Session.m" lineNumber:397 description:@"Callbacks should always occur on member queue"];
  }

LABEL_13:

  v23 = [(NSMutableDictionary *)v11->_wrappedTaskByTaskIdentifier objectForKeyedSubscript:v12];
  objc_sync_exit(v11);

  if (v23)
  {
    v24 = [v23 taskDescription];
    if (!v24)
    {
      [C2Session sessionTaskDelegateCallbackHelper:a2 task:v11 block:v23];
    }

    v25 = [v9 taskDescription];
    v26 = v25;
    if (v25)
    {
      if (([v25 isEqual:v24] & 1) == 0)
      {
        [(C2Session *)a2 sessionTaskDelegateCallbackHelper:v11 task:v26 block:v24];
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

    v29 = [(C2Session *)v11 options];
    [v29 handleCallbackForSessionTask:v23 dataTask:v9 callback:v10];
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

    (*(v10 + 2))(v10, 0, 0);
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

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__C2Session_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v22[3] = &unk_278D407D0;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
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

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__C2Session_URLSession_task_needNewBodyStream___block_invoke;
  v14[3] = &unk_278D407F8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__C2Session_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  v16[3] = &unk_278D40820;
  v16[4] = self;
  v17 = v12;
  v18 = v13;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v14 = v13;
  v15 = v12;
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

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__C2Session_URLSession_task_didFinishCollectingMetrics___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__C2Session_URLSession_task_didCompleteWithError___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__C2Session_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)URLSession:(id)a3 _taskIsWaitingForConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__C2Session_URLSession__taskIsWaitingForConnection___block_invoke;
  v10[3] = &unk_278D40898;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)URLSession:(id)a3 task:(id)a4 _conditionalRequirementsChanged:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__C2Session_URLSession_task__conditionalRequirementsChanged___block_invoke;
  v12[3] = &unk_278D408C0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__C2Session_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__C2Session_URLSession_dataTask_didReceiveData___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__C2Session_URLSession_dataTask__didReceiveData_completionHandler___block_invoke;
  v18[3] = &unk_278D40870;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__C2Session_URLSession__willRetryBackgroundDataTask_withError___block_invoke;
  v14[3] = &unk_278D40848;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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