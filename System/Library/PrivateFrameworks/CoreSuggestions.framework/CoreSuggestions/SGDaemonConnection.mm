@interface SGDaemonConnection
+ (BOOL)usingSyncXPC;
+ (void)_useSyncXPCWithBlock:(id)block;
- (SGDaemonConnection)initWithMachServiceName:(id)name xpcInterface:(id)interface;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)waitUntilReturn:(id)return withTimeout:(double)timeout error:(id *)error;
- (id)xpcConnection;
- (void)_callAbortBlocks;
- (void)_connectToServer;
- (void)addConnectionInterruptedHandler:(id)handler;
- (void)dealloc;
- (void)disconnect;
@end

@implementation SGDaemonConnection

+ (BOOL)usingSyncXPC
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"SGSyncXPC"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)xpcConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10240;
  v10 = __Block_byref_object_dispose__10241;
  v11 = 0;
  connectLock = self->_connectLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SGDaemonConnection_xpcConnection__block_invoke;
  v5[3] = &unk_1E7EFD168;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__SGDaemonConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (!v3)
  {
    [v2 _connectToServer];
    v3 = *(*(a1 + 32) + 104);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_connectToServer
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_1BA729000, v3, OS_LOG_TYPE_DEBUG, "SGDaemonConnection _connectToRemoteSuggestionsService", location, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machServiceName options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:self->_xpcInterface];
  objc_initWeak(location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__SGDaemonConnection__connectToServer__block_invoke;
  v11[3] = &unk_1E7EFD140;
  objc_copyWeak(&v12, location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v11];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __38__SGDaemonConnection__connectToServer__block_invoke_12;
  v9 = &unk_1E7EFD140;
  objc_copyWeak(&v10, location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&v6];
  [(NSXPCConnection *)self->_xpcConnection resume:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)dealloc
{
  [(SGDaemonConnection *)self disconnect];
  pthread_mutex_destroy(&self->_abortLock);
  v3.receiver = self;
  v3.super_class = SGDaemonConnection;
  [(SGDaemonConnection *)&v3 dealloc];
}

- (void)disconnect
{
  connectLock = self->_connectLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SGDaemonConnection_disconnect__block_invoke;
  block[3] = &unk_1E7EFD118;
  block[4] = self;
  dispatch_sync(connectLock, block);
}

void __32__SGDaemonConnection_disconnect__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;
}

void __38__SGDaemonConnection__connectToServer__block_invoke_12(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA729000, v2, OS_LOG_TYPE_DEBUG, "SGDaemonConnection connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callAbortBlocks];
}

- (void)addConnectionInterruptedHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_abortLock);
  abortBlocks = self->_abortBlocks;
  v6 = MEMORY[0x1BFAF7240](handlerCopy);

  [(NSMutableArray *)abortBlocks addObject:v6];

  pthread_mutex_unlock(&self->_abortLock);
}

- (id)waitUntilReturn:(id)return withTimeout:(double)timeout error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  returnCopy = return;
  v9 = fmax(timeout * 1000000000.0, 1.0);
  if (COERCE__INT64(fabs(timeout * 1000000000.0)) >= 0x7FF0000000000000)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = dispatch_group_create();
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("SGDaemonConnection-waitUntilReturn", v12);

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__10240;
  v61 = __Block_byref_object_dispose__10241;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__10240;
  v55 = __Block_byref_object_dispose__10241;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  dispatch_group_enter(v11);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke;
  v41[3] = &unk_1E7EFD1D8;
  v14 = v13;
  v42 = v14;
  v44 = &v47;
  v45 = &v57;
  v46 = &v51;
  v15 = v11;
  v43 = v15;
  v16 = MEMORY[0x1BFAF7240](v41);
  if (v10)
  {
    v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
    if (v17)
    {
      v18 = v17;
      v19 = dispatch_time(0, v10);
      dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke_18;
      handler[3] = &unk_1E7EFD200;
      selfCopy = self;
      v40 = &v47;
      v38 = v15;
      dispatch_source_set_event_handler(v18, handler);
      dispatch_resume(v18);

      goto LABEL_11;
    }

    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA729000, v20, OS_LOG_TYPE_FAULT, "Could not create timeoutTimer", buf, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v18 = 0;
LABEL_11:
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke_19;
  v34 = &unk_1E7EFD228;
  v21 = returnCopy;
  v35 = v21;
  v22 = v16;
  v36 = v22;
  [SGDaemonConnection _useSyncXPCWithBlock:&v31];
  if (v10)
  {
    v23 = dispatch_time(0, v10);
  }

  else
  {
    v23 = -1;
  }

  if (dispatch_group_wait(v15, v23) || *(v48 + 24) == 1)
  {
    v24 = sgLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v64 = v10 / 0xF4240;
      _os_log_impl(&dword_1BA729000, v24, OS_LOG_TYPE_INFO, "SGDaemonConnection remote call taking longer than %llu milliseconds(s). Returning empty result with timeout error.", buf, 0xCu);
    }

    *(v48 + 24) = 1;
    if (os_variant_has_internal_diagnostics())
    {
      v25 = sgLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412290;
        v64 = callStackSymbols;
        _os_log_impl(&dword_1BA729000, v25, OS_LOG_TYPE_INFO, "SGDaemonConnection %@", buf, 0xCu);
      }
    }
  }

  if (v18)
  {
    dispatch_source_cancel(v18);
  }

  if (v48[3])
  {
    incrementKeyWithSuffix(@"apicalls.all.timedout");
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:10 userInfo:0];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = v52[5];
    }

    if (v52[5])
    {
      v28 = @"apicalls.all.errored";
    }

    else
    {
      v28 = @"apicalls.all.succeeded";
    }

    incrementKeyWithSuffix(v28);
    v27 = v58[5];
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

void __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke_2;
  block[3] = &unk_1E7EFD1B0;
  v16 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, block);
}

void __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke_18(uint64_t a1)
{
  v2 = dispatch_group_wait(*(a1 + 32), 0);
  v3 = sgLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v3, OS_LOG_TYPE_INFO, "SGDaemonConnection remote call timed out. Disconnecting XPC...", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) disconnect];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_1BA729000, v3, OS_LOG_TYPE_INFO, "(SGDaemonConnection dispatch timer triggered just as task finished.)", v5, 2u);
    }
  }
}

void __56__SGDaemonConnection_waitUntilReturn_withTimeout_error___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 40));
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v2 = sgLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = *(*(*(a1 + 72) + 8) + 40);
        v5 = 138412290;
        v6 = v4;
        _os_log_error_impl(&dword_1BA729000, v2, OS_LOG_TYPE_ERROR, "SGDaemonConnection Error! %@", &v5, 0xCu);
      }
    }

    dispatch_group_leave(*(a1 + 48));
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[SGDaemonConnection usingSyncXPC];
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_1BA729000, v7, OS_LOG_TYPE_DEBUG, "SGDaemonConnection providing sync XPC remote object proxy", v12, 2u);
    }

    xpcConnection = [(SGDaemonConnection *)self xpcConnection];
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    xpcConnection = [(SGDaemonConnection *)self xpcConnection];
    v9 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  v10 = v9;

  objc_autoreleasePoolPop(v6);

  return v10;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  xpcConnection = [(SGDaemonConnection *)self xpcConnection];
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)_callAbortBlocks
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_abortLock);
  v3 = [(NSMutableArray *)self->_abortBlocks copy];
  [(NSMutableArray *)self->_abortBlocks removeAllObjects];
  pthread_mutex_unlock(&self->_abortLock);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __38__SGDaemonConnection__connectToServer__block_invoke(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BA729000, v2, OS_LOG_TYPE_ERROR, "SGDaemonConnection got an interrupt", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callAbortBlocks];
}

- (SGDaemonConnection)initWithMachServiceName:(id)name xpcInterface:(id)interface
{
  nameCopy = name;
  interfaceCopy = interface;
  v16.receiver = self;
  v16.super_class = SGDaemonConnection;
  v8 = [(SGDaemonConnection *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    machServiceName = v8->_machServiceName;
    v8->_machServiceName = v9;

    objc_storeStrong(&v8->_xpcInterface, interface);
    v11 = dispatch_queue_create("com.apple.suggestions.daemon.connectlock", 0);
    connectLock = v8->_connectLock;
    v8->_connectLock = v11;

    v13 = objc_opt_new();
    abortBlocks = v8->_abortBlocks;
    v8->_abortBlocks = v13;

    pthread_mutex_init(&v8->_abortLock, 0);
  }

  return v8;
}

+ (void)_useSyncXPCWithBlock:(id)block
{
  blockCopy = block;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:@"SGSyncXPC"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SGSyncXPC"];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA729000, v9, OS_LOG_TYPE_DEBUG, "SGDaemonConnection beginning sync XPC block", buf, 2u);
  }

  blockCopy[2](blockCopy);
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_1BA729000, v10, OS_LOG_TYPE_DEBUG, "SGDaemonConnection ending sync XPC block", v13, 2u);
  }

  objc_autoreleasePoolPop(v8);
  if ((bOOLValue & 1) == 0)
  {
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 removeObjectForKey:@"SGSyncXPC"];
  }
}

@end