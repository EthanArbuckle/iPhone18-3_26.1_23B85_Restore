@interface C2SessionPool
- (BOOL)_cleanUp_job;
- (BOOL)_unsafe_isCreating:(id)creating;
- (BOOL)testBehavior_cleanUp;
- (C2SessionPool)init;
- (id)createDataTaskWithRequestIdentifer:(id)identifer request:(id)request options:(id)options delegate:(id)delegate sessionHandle:(id *)handle;
- (void)_cleanUpEmptySessionGroup_job_withThreshold:(unint64_t)threshold;
- (void)_cleanUp_job;
- (void)_cleanUp_schedule;
- (void)_unsafe_didCreate:(id)create;
- (void)_unsafe_removeSession:(id)session;
- (void)_unsafe_removeSessionGroupIfEmpty:(id)empty;
- (void)_unsafe_willCreate:(id)create;
- (void)ensureCleanUpRunning;
- (void)removeSession:(id)session;
- (void)testBehavior_cleanUp;
- (void)testBehavior_cleanUpWithThreshold:(unint64_t)threshold;
@end

@implementation C2SessionPool

- (void)_cleanUp_schedule
{
  v3 = _os_activity_create(&dword_242158000, "c2-session-pool-cleanup", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = dispatch_time(0, 60000000000);
  cleanUp_queue = self->_cleanUp_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__C2SessionPool__cleanUp_schedule__block_invoke;
  block[3] = &unk_278D400A0;
  block[4] = self;
  dispatch_after(v4, cleanUp_queue, block);
  os_activity_scope_leave(&state);
}

- (void)ensureCleanUpRunning
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_cleanUp_running)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_cleanUp_running = 1;
    objc_sync_exit(obj);

    if (!obj->_testBehavior_disableAutomaticCleanup)
    {

      [(C2SessionPool *)obj _cleanUp_schedule];
    }
  }
}

uint64_t __34__C2SessionPool__cleanUp_schedule__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUp_job];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _cleanUp_schedule];
  }

  return result;
}

- (BOOL)_cleanUp_job
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v3)
  {
    [C2SessionPool _cleanUp_job];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cleanUp_running)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"C2SessionPool.m" lineNumber:272 description:@"sanity check."];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName allValues];
  v6 = [allValues countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        sessions = [*(*(&v30 + 1) + 8 * i) sessions];
        [v3 addObjectsFromArray:sessions];
      }

      v6 = [allValues countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = selfCopy;
        objc_sync_enter(v15);
        if ([(C2SessionPool *)v15 _unsafe_isCreating:v14])
        {
          if (C2_DEFAULT_LOG_BLOCK_8 != -1)
          {
            [C2SessionPool _cleanUp_job];
          }

          v16 = C2_DEFAULT_LOG_INTERNAL_8;
          if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v14;
            _os_log_impl(&dword_242158000, v16, OS_LOG_TYPE_DEFAULT, "session (%{public}@) in use, not eligable for cleanup.", buf, 0xCu);
          }
        }

        else if ([v14 shouldInvalidateAndCancel])
        {
          [(C2SessionPool *)v15 _unsafe_removeSession:v14];
          objc_sync_exit(v15);

          [v14 invalidateAndCancel];
          goto LABEL_25;
        }

        objc_sync_exit(v15);

LABEL_25:
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  v17 = selfCopy;
  objc_sync_enter(v17);
  sessionGroupForSessionConfigurationName = selfCopy->_sessionGroupForSessionConfigurationName;
  if (!sessionGroupForSessionConfigurationName)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v17 file:@"C2SessionPool.m" lineNumber:296 description:@"_sessionGroupForSessionConfigurationName must be initialized."];

    sessionGroupForSessionConfigurationName = selfCopy->_sessionGroupForSessionConfigurationName;
  }

  v19 = [(NSMutableDictionary *)sessionGroupForSessionConfigurationName count];
  if (!v19)
  {
    selfCopy->_cleanUp_running = 0;
  }

  v20 = v19 != 0;
  objc_sync_exit(v17);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (C2SessionPool)init
{
  v25.receiver = self;
  v25.super_class = C2SessionPool;
  v2 = [(C2SessionPool *)&v25 init];
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = objc_alloc_init(C2RoutingTable);
  routingTable = v2->_routingTable;
  v2->_routingTable = v3;

  if (!v2->_routingTable)
  {
    if (C2_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [C2SessionPool init];
    }

    v20 = C2_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *v24 = 0;
    v21 = "failed to create C2RoutingTable for C2SessionPool";
    goto LABEL_26;
  }

  v5 = objc_alloc_init(C2SessionTLSCache);
  sessionTLSCache = v2->_sessionTLSCache;
  v2->_sessionTLSCache = v5;

  if (!v2->_sessionTLSCache)
  {
    if (C2_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [C2SessionPool init];
    }

    v20 = C2_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *v24 = 0;
    v21 = "failed to create C2SessionTLSCache for C2SessionPool";
    goto LABEL_26;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sessionGroupForSessionConfigurationName = v2->_sessionGroupForSessionConfigurationName;
  v2->_sessionGroupForSessionConfigurationName = v7;

  if (!v2->_sessionGroupForSessionConfigurationName)
  {
    if (C2_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [C2SessionPool init];
    }

    v20 = C2_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *v24 = 0;
    v21 = "failed to create NSMutableDictionary for C2SessionPool";
    goto LABEL_26;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("c2-session-pool-cleanup", v9);
  cleanUp_queue = v2->_cleanUp_queue;
  v2->_cleanUp_queue = v10;

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("c2-session-creation", v12);
  sessionCreation_queue = v2->_sessionCreation_queue;
  v2->_sessionCreation_queue = v13;

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("c2-delegate", v15);
  underlyingDelegateQueue = v2->_underlyingDelegateQueue;
  v2->_underlyingDelegateQueue = v16;

  if (!v2->_underlyingDelegateQueue || !v2->_sessionCreation_queue || !v2->_cleanUp_queue)
  {
    if (C2_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [C2SessionPool init];
    }

    v20 = C2_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *v24 = 0;
    v21 = "failed to create dispatch_queue for C2SessionPool";
    goto LABEL_26;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:1282 capacity:0];
  useCountByObject = v2->_useCountByObject;
  v2->_useCountByObject = v18;

  if (v2->_useCountByObject)
  {
    v2->_testBehavior_disableAutomaticCleanup = 0;
    return v2;
  }

  if (C2_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [C2SessionPool init];
  }

  v20 = C2_DEFAULT_LOG_INTERNAL_8;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    v21 = "failed to create NSMapTable for C2SessionPool";
LABEL_26:
    _os_log_impl(&dword_242158000, v20, OS_LOG_TYPE_ERROR, v21, v24, 2u);
  }

LABEL_27:
  if (C2_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [C2SessionPool init];
  }

  v22 = C2_DEFAULT_LOG_INTERNAL_8;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_impl(&dword_242158000, v22, OS_LOG_TYPE_ERROR, "failed to create C2SessionPool", v24, 2u);
  }

  return 0;
}

uint64_t __21__C2SessionPool_init__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__C2SessionPool_init__block_invoke_5()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__C2SessionPool_init__block_invoke_9()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__C2SessionPool_init__block_invoke_15()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__C2SessionPool_init__block_invoke_19()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__C2SessionPool_init__block_invoke_22()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)createDataTaskWithRequestIdentifer:(id)identifer request:(id)request options:(id)options delegate:(id)delegate sessionHandle:(id *)handle
{
  v80 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  requestCopy = request;
  optionsCopy = options;
  delegateCopy = delegate;
  v17 = delegateCopy;
  host2 = 0;
  if (identiferCopy && requestCopy && optionsCopy && delegateCopy)
  {
    v19 = [requestCopy URL];
    host = [v19 host];
    if (host)
    {
      [optionsCopy setOriginalHost:host];
      host2 = [optionsCopy copyAndDecorateRequest:requestCopy];

      if (host2)
      {
        if (![optionsCopy allowRouting])
        {
          v51 = host2;
          host2 = host;
          v21 = 0;
          goto LABEL_14;
        }

        requestCopy = [(C2RoutingTable *)self->_routingTable copyAndDecorateRequest:host2];

        if (requestCopy)
        {
          v54 = [requestCopy URL];
          host2 = [v54 host];
          if (!host2)
          {
LABEL_59:

            goto LABEL_60;
          }

          v51 = requestCopy;
          v21 = v54;
LABEL_14:
          v54 = v21;
          if (v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v19;
          }

          [optionsCopy setInvokedURL:v22];
          v50 = host2;
          v52 = [optionsCopy sessionConfigurationNameWithRouteHost:host2];
          v23 = v52;
          if (!v52)
          {
            host2 = 0;
LABEL_58:

            requestCopy = v51;
            goto LABEL_59;
          }

          v65 = 0;
          v66 = &v65;
          v67 = 0x3032000000;
          v68 = __Block_byref_object_copy_;
          v69 = __Block_byref_object_dispose_;
          v70 = 0;
          selfCopy = self;
          objc_sync_enter(selfCopy);
          obj = selfCopy;
          v55 = [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName objectForKeyedSubscript:v52];
          if (!v55)
          {
            v55 = [[C2SessionGroup alloc] initWithConfigurationName:v52];
            if (!v55)
            {
              if (C2_DEFAULT_LOG_BLOCK_8 != -1)
              {
                [C2SessionPool createDataTaskWithRequestIdentifer:request:options:delegate:sessionHandle:];
              }

              v45 = C2_DEFAULT_LOG_INTERNAL_8;
              if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v77) = 138543362;
                *(&v77 + 4) = obj;
                _os_log_impl(&dword_242158000, v45, OS_LOG_TYPE_ERROR, "%{public}@ can't create a new session group", &v77, 0xCu);
              }

              objc_sync_exit(obj);

              v55 = 0;
              host2 = 0;
              goto LABEL_57;
            }

            [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName setObject:v55 forKeyedSubscript:v52];
          }

          configurationName = [(C2SessionGroup *)v55 configurationName];
          v26 = [configurationName isEqual:v52];

          if ((v26 & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            configurationName2 = [(C2SessionGroup *)v55 configurationName];
            [currentHandler handleFailureInMethod:a2 object:obj file:@"C2SessionPool.m" lineNumber:117 description:{@"Expected session group with configurationName (%@) but found (%@)", v52, configurationName2}];
          }

          v27 = [(C2SessionGroup *)v55 sessionForOptions:optionsCopy];
          v28 = v66[5];
          v66[5] = v27;

          if (v66[5])
          {
            [(C2SessionPool *)obj _unsafe_willCreate:?];
            if ([(C2SessionPool *)obj _unsafe_isCreating:v66[5]])
            {
              goto LABEL_29;
            }

            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:obj file:@"C2SessionPool.m" lineNumber:121 description:@"Expected session to be outstanding."];
          }

          else
          {
            [(C2SessionPool *)obj _unsafe_willCreate:v55];
            if ([(C2SessionPool *)obj _unsafe_isCreating:v55])
            {
              goto LABEL_29;
            }

            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:obj file:@"C2SessionPool.m" lineNumber:124 description:@"Expected session group to be outstanding."];
          }

LABEL_29:
          objc_sync_exit(obj);

          testBehavior_sessionGroupCreated = [optionsCopy testBehavior_sessionGroupCreated];

          if (testBehavior_sessionGroupCreated)
          {
            testBehavior_sessionGroupCreated2 = [optionsCopy testBehavior_sessionGroupCreated];
            testBehavior_sessionGroupCreated2[2]();
          }

          *&v77 = 0;
          *(&v77 + 1) = &v77;
          v78 = 0x2020000000;
          v32 = v66[5];
          v79 = v32 != 0;
          if (!v32)
          {
            cleanUp_queue = obj->_cleanUp_queue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_41;
            block[3] = &unk_278D400A0;
            block[4] = obj;
            dispatch_async(cleanUp_queue, block);
            queue = obj->_sessionCreation_queue;
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_2;
            v56[3] = &unk_278D408E8;
            v56[4] = obj;
            v57 = v55;
            v34 = v52;
            v63 = a2;
            v58 = v34;
            v61 = &v65;
            v59 = optionsCopy;
            v62 = &v77;
            v60 = v50;
            dispatch_sync(queue, v56);

            v32 = v66[5];
            if (!v32)
            {
              if (C2_DEFAULT_LOG_BLOCK_8 != -1)
              {
                [C2SessionPool createDataTaskWithRequestIdentifer:request:options:delegate:sessionHandle:];
              }

              v46 = C2_DEFAULT_LOG_INTERNAL_8;
              if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v72 = obj;
                v73 = 2114;
                v74 = v34;
                _os_log_impl(&dword_242158000, v46, OS_LOG_TYPE_ERROR, "%{public}@ can't create a new session with name: %{public}@", buf, 0x16u);
              }

              host2 = 0;
              goto LABEL_56;
            }
          }

          v35 = [v32 createTaskWithOptions:optionsCopy delegate:v17];
          if (v35)
          {
            host2 = [v66[5] addTask:v35 withDescription:identiferCopy request:v51];
            if (host2)
            {
              v36 = 0;
LABEL_45:
              v39 = obj;
              objc_sync_enter(v39);
              [(C2SessionPool *)v39 _unsafe_didCreate:v66[5]];
              objc_sync_exit(v39);

              if ((v36 & 1) == 0)
              {
                v40 = [optionsCopy decorateTask:host2];
                [(C2SessionPool *)v39 ensureCleanUpRunning];
                if (C2_DEFAULT_LOG_BLOCK_8 != -1)
                {
                  [C2SessionPool createDataTaskWithRequestIdentifer:request:options:delegate:sessionHandle:];
                }

                v41 = C2_DEFAULT_LOG_INTERNAL_8;
                if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(*(&v77 + 1) + 24))
                  {
                    v42 = @"T";
                  }

                  else
                  {
                    v42 = @"F";
                  }

                  *buf = 138543874;
                  v72 = identiferCopy;
                  v73 = 2114;
                  v74 = v42;
                  v75 = 2114;
                  v76 = v52;
                  _os_log_impl(&dword_242158000, v41, OS_LOG_TYPE_DEFAULT, "created task (%{public}@). nsurlsessionCached (%{public}@). configurationName (%{public}@).", buf, 0x20u);
                }

                if (handle)
                {
                  *handle = [v66[5] session];
                }
              }

LABEL_56:
              _Block_object_dispose(&v77, 8);
LABEL_57:
              _Block_object_dispose(&v65, 8);

              v23 = v52;
              goto LABEL_58;
            }
          }

          else
          {
            if (C2_DEFAULT_LOG_BLOCK_8 != -1)
            {
              [C2SessionPool createDataTaskWithRequestIdentifer:request:options:delegate:sessionHandle:];
            }

            v37 = C2_DEFAULT_LOG_INTERNAL_8;
            if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v72 = obj;
              _os_log_impl(&dword_242158000, v37, OS_LOG_TYPE_ERROR, "%{public}@ failed to create task", buf, 0xCu);
            }
          }

          if (C2_DEFAULT_LOG_BLOCK_8 != -1)
          {
            [C2SessionPool createDataTaskWithRequestIdentifer:request:options:delegate:sessionHandle:];
          }

          v38 = C2_DEFAULT_LOG_INTERNAL_8;
          if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v72 = obj;
            _os_log_impl(&dword_242158000, v38, OS_LOG_TYPE_ERROR, "%{public}@ failed to add task", buf, 0xCu);
          }

          [v35 invalidate];

          host2 = 0;
          v35 = 0;
          v36 = 1;
          goto LABEL_45;
        }

        host2 = 0;
      }

      else
      {
        requestCopy = 0;
      }
    }

    else
    {
      host2 = 0;
    }

LABEL_60:
  }

  v43 = *MEMORY[0x277D85DE8];

  return host2;
}

uint64_t __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

void __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 48)];

  if (v2 != v3)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = *(a1 + 88);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = [*(v23 + 64) objectForKeyedSubscript:*(a1 + 48)];
    [v21 handleFailureInMethod:v22 object:v23 file:@"C2SessionPool.m" lineNumber:141 description:{@"Expected session group (%@) but found (%@).", v24, v25}];
  }

  v4 = [*(a1 + 40) sessionForOptions:*(a1 + 56)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    [*(a1 + 32) _unsafe_didCreate:*(a1 + 40)];
    [*(a1 + 32) _unsafe_willCreate:*(*(*(a1 + 72) + 8) + 40)];
    if (([*(a1 + 32) _unsafe_isCreating:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"C2SessionPool.m" lineNumber:147 description:@"Expected session to be outstanding."];
    }
  }

  objc_sync_exit(obj);

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v7 = [[C2Session alloc] initWithSessionConfigurationName:*(a1 + 48) routeHost:*(a1 + 64) options:*(a1 + 56) sessionDelegate:*(a1 + 32)];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v10 = [*(a1 + 56) useNWLoaderOverride];
      if (!v10 || (v11 = v10, [*(a1 + 56) useNWLoaderOverride], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, (v13 & 1) == 0))
      {
        v14 = [*(a1 + 32) sessionTLSCache];
        v15 = [v14 sessionForOptions:*(a1 + 56)];

        if (v15)
        {
          v16 = [*(*(*(a1 + 72) + 8) + 40) session];
          [v16 _useTLSSessionCacheFromSession:v15];
        }
      }

      obja = *(a1 + 32);
      objc_sync_enter(obja);
      v17 = *(a1 + 40);
      v18 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 48)];

      if (v17 != v18)
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        v28 = *(a1 + 88);
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        v31 = [*(v29 + 64) objectForKeyedSubscript:*(a1 + 48)];
        [v27 handleFailureInMethod:v28 object:v29 file:@"C2SessionPool.m" lineNumber:160 description:{@"Expected session group (%@) but found (%@).", v30, v31}];
      }

      v19 = [*(a1 + 40) sessionForOptions:*(a1 + 56)];

      if (v19)
      {
        v32 = [MEMORY[0x277CCA890] currentHandler];
        v33 = *(a1 + 88);
        v34 = *(a1 + 32);
        v35 = [*(a1 + 40) sessionForOptions:*(a1 + 56)];
        [v32 handleFailureInMethod:v33 object:v34 file:@"C2SessionPool.m" lineNumber:161 description:{@"Expected nil session but found (%@).", v35}];
      }

      [*(a1 + 40) setSession:*(*(*(a1 + 72) + 8) + 40) forOptions:*(a1 + 56)];
      [*(a1 + 32) _unsafe_didCreate:*(a1 + 40)];
      [*(a1 + 32) _unsafe_willCreate:*(*(*(a1 + 72) + 8) + 40)];
      if (([*(a1 + 32) _unsafe_isCreating:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"C2SessionPool.m" lineNumber:165 description:@"Expected session to be outstanding."];
      }
    }

    else
    {
      obja = *(a1 + 32);
      objc_sync_enter(obja);
      [*(a1 + 32) _unsafe_didCreate:*(a1 + 40)];
      [*(a1 + 32) _unsafe_removeSessionGroupIfEmpty:*(a1 + 40)];
    }

    objc_sync_exit(obja);
  }
}

uint64_t __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_3()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_51()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_54()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __91__C2SessionPool_createDataTaskWithRequestIdentifer_request_options_delegate_sessionHandle___block_invoke_57()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)_unsafe_willCreate:(id)create
{
  createCopy = create;
  key = createCopy;
  if (!createCopy)
  {
    [C2SessionPool _unsafe_willCreate:];
    createCopy = 0;
  }

  v5 = NSMapGet(self->_useCountByObject, createCopy);
  NSMapInsert(self->_useCountByObject, key, v5 + 1);
}

- (void)_unsafe_didCreate:(id)create
{
  createCopy = create;
  key = createCopy;
  if (!createCopy)
  {
    [C2SessionPool _unsafe_didCreate:];
    createCopy = 0;
  }

  v5 = NSMapGet(self->_useCountByObject, createCopy);
  if (!v5)
  {
    [C2SessionPool _unsafe_didCreate:];
  }

  useCountByObject = self->_useCountByObject;
  if (v5 == 1)
  {
    NSMapRemove(useCountByObject, key);
  }

  else
  {
    NSMapInsert(useCountByObject, key, v5 - 1);
  }
}

- (BOOL)_unsafe_isCreating:(id)creating
{
  creatingCopy = creating;
  if (!creatingCopy)
  {
    [C2SessionPool _unsafe_isCreating:];
  }

  v5 = NSMapGet(self->_useCountByObject, creatingCopy) != 0;

  return v5;
}

- (void)_unsafe_removeSessionGroupIfEmpty:(id)empty
{
  v14 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  if ([(C2SessionPool *)self _unsafe_isCreating:emptyCopy])
  {
    if (C2_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [C2SessionPool _unsafe_removeSessionGroupIfEmpty:];
    }

    v5 = C2_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = emptyCopy;
      _os_log_impl(&dword_242158000, v5, OS_LOG_TYPE_DEFAULT, "session group (%{public}@) in use, not eligable for cleanup.", &v12, 0xCu);
    }
  }

  else if ([emptyCopy isEmpty])
  {
    sessionGroupForSessionConfigurationName = self->_sessionGroupForSessionConfigurationName;
    configurationName = [emptyCopy configurationName];
    [(NSMutableDictionary *)sessionGroupForSessionConfigurationName setObject:0 forKeyedSubscript:configurationName];

    v8 = self->_sessionGroupForSessionConfigurationName;
    configurationName2 = [emptyCopy configurationName];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:configurationName2];

    if (v10)
    {
      [C2SessionPool _unsafe_removeSessionGroupIfEmpty:emptyCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __51__C2SessionPool__unsafe_removeSessionGroupIfEmpty___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)_unsafe_removeSession:(id)session
{
  sessionCopy = session;
  v8 = sessionCopy;
  if (!sessionCopy)
  {
    [C2SessionPool _unsafe_removeSession:];
    sessionCopy = 0;
  }

  sessionConfigurationName = [sessionCopy sessionConfigurationName];
  if (!sessionConfigurationName)
  {
    [C2SessionPool _unsafe_removeSession:];
  }

  sessionGroupForSessionConfigurationName = self->_sessionGroupForSessionConfigurationName;
  if (!sessionGroupForSessionConfigurationName)
  {
    [C2SessionPool _unsafe_removeSession:];
    sessionGroupForSessionConfigurationName = v10;
  }

  v7 = [(NSMutableDictionary *)sessionGroupForSessionConfigurationName objectForKeyedSubscript:sessionConfigurationName];
  if (([v7 removeSession:v9] & 1) == 0)
  {
    [C2SessionPool _unsafe_removeSession:];
  }

  if ([v7 removeSession:v9])
  {
    [C2SessionPool _unsafe_removeSession:];
  }

  [(C2SessionPool *)self _unsafe_removeSessionGroupIfEmpty:v7];
}

- (void)removeSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(C2SessionPool *)selfCopy _unsafe_removeSession:sessionCopy];
  objc_sync_exit(selfCopy);
}

uint64_t __29__C2SessionPool__cleanUp_job__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)_cleanUpEmptySessionGroup_job_withThreshold:(unint64_t)threshold
{
  v52 = *MEMORY[0x277D85DE8];
  if (!threshold)
  {
    [C2SessionPool _cleanUpEmptySessionGroup_job_withThreshold:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName count];
  objc_sync_exit(selfCopy);
  v31 = selfCopy;

  if (v5 > threshold)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v6)
    {
      [C2SessionPool _cleanUpEmptySessionGroup_job_withThreshold:];
    }

    obj = selfCopy;
    objc_sync_enter(obj);
    v32 = [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName count];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_sessionGroupForSessionConfigurationName allValues];
    v8 = [allValues countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v8)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          sessions = [v11 sessions];
          v13 = [sessions countByEnumeratingWithState:&v35 objects:v50 count:16];
          if (v13)
          {
            v14 = *v36;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(sessions);
                }

                v16 = *(*(&v35 + 1) + 8 * j);
                if (v16 && [*(*(&v35 + 1) + 8 * j) emptyTimestamp] != -1)
                {
                  [v6 addObject:v16];
                }
              }

              v13 = [sessions countByEnumeratingWithState:&v35 objects:v50 count:16];
            }

            while (v13);
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v8);
    }

    objc_sync_exit(obj);
    v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"emptyTimestamp" ascending:1];
    v49 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v19 = [v6 sortedArrayUsingDescriptors:v18];

    if (v32 > threshold)
    {
      v21 = 0;
      v22 = 0;
      *&v20 = 138543362;
      v30 = v20;
      while (1)
      {
        if (v22 >= [v19 count])
        {
          goto LABEL_35;
        }

        v23 = [v19 objectAtIndexedSubscript:v22];
        v24 = obj;
        objc_sync_enter(v24);
        if ([(C2SessionPool *)v24 _unsafe_isCreating:v23])
        {
          break;
        }

        if (![(C2SessionPool *)v23 shouldRemoveEmptySession])
        {
          goto LABEL_33;
        }

        [(C2SessionPool *)v24 _unsafe_removeSession:v23];
        objc_sync_exit(v24);

        [(C2SessionPool *)v23 invalidateAndCancel];
        ++v21;
LABEL_34:

        ++v22;
        if (v32 - v21 <= threshold)
        {
          goto LABEL_35;
        }
      }

      if (C2_DEFAULT_LOG_BLOCK_8 != -1)
      {
        [C2SessionPool _cleanUpEmptySessionGroup_job_withThreshold:];
      }

      v25 = C2_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v30;
        v44 = v23;
        _os_log_impl(&dword_242158000, v25, OS_LOG_TYPE_DEFAULT, "session (%{public}@) in use, not eligable for cleanup.", buf, 0xCu);
      }

LABEL_33:
      objc_sync_exit(v24);

      goto LABEL_34;
    }

LABEL_35:
    v26 = obj;
    objc_sync_enter(v26);
    if ([(NSMutableDictionary *)v31->_sessionGroupForSessionConfigurationName count]> threshold)
    {
      if (C2_DEFAULT_LOG_BLOCK_8 != -1)
      {
        [C2SessionPool _cleanUpEmptySessionGroup_job_withThreshold:];
      }

      v27 = C2_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(NSMutableDictionary *)v31->_sessionGroupForSessionConfigurationName count];
        *buf = 138543874;
        v44 = v26;
        v45 = 2048;
        thresholdCopy = threshold;
        v47 = 2048;
        v48 = v28;
        _os_log_impl(&dword_242158000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ was unable to restrict number of C2SessionGroups to threshold of %llu. Current session group count is %llu.", buf, 0x20u);
      }
    }

    objc_sync_exit(v26);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __61__C2SessionPool__cleanUpEmptySessionGroup_job_withThreshold___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__C2SessionPool__cleanUpEmptySessionGroup_job_withThreshold___block_invoke_117()
{
  C2_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)testBehavior_cleanUp
{
  v3 = objc_autoreleasePoolPush();
  if (!self->_testBehavior_disableAutomaticCleanup)
  {
    [C2SessionPool testBehavior_cleanUp];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_cleanUp_running = 1;
  objc_sync_exit(selfCopy);

  LOBYTE(selfCopy) = [(C2SessionPool *)selfCopy _cleanUp_job];
  objc_autoreleasePoolPop(v3);
  return selfCopy;
}

- (void)testBehavior_cleanUpWithThreshold:(unint64_t)threshold
{
  v5 = objc_autoreleasePoolPush();
  if (!self->_testBehavior_disableAutomaticCleanup)
  {
    [C2SessionPool testBehavior_cleanUpWithThreshold:];
  }

  [(C2SessionPool *)self _cleanUpEmptySessionGroup_job_withThreshold:threshold];

  objc_autoreleasePoolPop(v5);
}

- (void)_unsafe_willCreate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_didCreate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_didCreate:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_isCreating:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_removeSessionGroupIfEmpty:(void *)a1 .cold.1(void *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 configurationName];
  OUTLINED_FUNCTION_0_0();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_removeSession:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_removeSession:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_unsafe_removeSession:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"C2SessionPool.m" lineNumber:249 description:@"_sessionGroupForSessionConfigurationName must be initialized."];

  *v0 = *v1;
}

- (void)_unsafe_removeSession:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"C2SessionPool.m" lineNumber:252 description:{@"Could not identify session (%@) in sessionGroup (%@)", v1, v0}];
}

- (void)_unsafe_removeSession:.cold.5()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"C2SessionPool.m" lineNumber:254 description:{@"Session (%@) still in sessionGroup (%@)", v1, v0}];
}

- (void)_cleanUp_job
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_cleanUpEmptySessionGroup_job_withThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_cleanUpEmptySessionGroup_job_withThreshold:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)testBehavior_cleanUp
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)testBehavior_cleanUpWithThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end