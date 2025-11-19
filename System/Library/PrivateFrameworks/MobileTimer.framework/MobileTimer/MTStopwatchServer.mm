@interface MTStopwatchServer
- (BOOL)_isSystemReady;
- (MTStopwatchServer)init;
- (MTStopwatchServer)initWithStorage:(id)a3;
- (id)_systemNotReadyError;
- (void)_systemNotReadyError;
- (void)createStopwatch:(id)a3 withCompletion:(id)a4;
- (void)deleteStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didAddLap:(id)a3 forStopwatch:(id)a4 source:(id)a5;
- (void)didAddLap:(id)a3 forStopwatch:(id)a4 withCompletion:(id)a5;
- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didCreateStopWatch:(id)a3 source:(id)a4;
- (void)didDeleteStopwatch:(id)a3 source:(id)a4;
- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4;
- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)didUpdateStopwatch:(id)a3 source:(id)a4;
- (void)getStopwatchesWithCompletion:(id)a3;
- (void)handleSystemReady;
- (void)startListening;
- (void)stopListening;
- (void)testStopwatchWrite;
- (void)updateStopwatch:(id)a3 withCompletion:(id)a4;
@end

@implementation MTStopwatchServer

- (MTStopwatchServer)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMTStopwatchStorageClass_softClass;
  v12 = getMTStopwatchStorageClass_softClass;
  if (!getMTStopwatchStorageClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMTStopwatchStorageClass_block_invoke;
    v8[3] = &unk_1E7B0C600;
    v8[4] = &v9;
    __getMTStopwatchStorageClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = objc_opt_new();
  v6 = [(MTStopwatchServer *)self initWithStorage:v5];

  return v6;
}

- (MTStopwatchServer)initWithStorage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MTStopwatchServer;
  v5 = [(MTStopwatchServer *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(MTStopwatchServer *)v5 setStorage:v4];
    v7 = MTLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ initialized with storage: %{public}@ ", buf, 0x16u);
    }

    v8 = MTStopwatchClientInterface();
    v9 = MTStopwatchServerInterface();
    v10 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.stopwatchserver" remoteObjectInterface:v8 exportedObject:v6 exportedObjectInterface:v9 lifecycleNotification:@"com.apple.MTStopwatchServer.wakeup" requiredEntitlement:@"com.apple.private.mobiletimerd" options:0];

    v11 = [MTXPCConnectionListenerProvider providerWithConnectionInfo:v10 errorHandler:0];
    connectionListenerProvider = v6->_connectionListenerProvider;
    v6->_connectionListenerProvider = v11;

    v13 = dispatch_queue_create("com.apple.mobiletimer.stopwatchserver.serializer", 0);
    [(MTStopwatchServer *)v6 setSerializerQueue:v13];

    [v4 registerObserver:v6];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)startListening
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ startListening", &v5, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider startListening];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stopListening
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ stopListening", &v5, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider stopListening];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleSystemReady
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ handleSystemReady", buf, 0xCu);
  }

  v4 = [(MTStopwatchServer *)self serializerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MTStopwatchServer_handleSystemReady__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_sync(v4, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __38__MTStopwatchServer_handleSystemReady__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v1 = [*(a1 + 32) storage];
  [v1 setSystemReady];

  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:@"com.apple.MTStopwatchServer.ready" object:0 userInfo:0 deliverImmediately:1];
}

- (void)testStopwatchWrite
{
  v3 = objc_alloc_init(MTStopwatch);
  v4 = [(MTStopwatch *)v3 mutableCopy];

  v5 = [MEMORY[0x1E695DF00] date];
  [v4 setStartDate:v5];

  v6 = [(MTStopwatchServer *)self storage];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MTStopwatchServer_testStopwatchWrite__block_invoke;
  v8[3] = &unk_1E7B0D658;
  v8[4] = self;
  v7 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
  [v6 createStopWatch:v4 withCompletion:v8 source:v7];
}

void __39__MTStopwatchServer_testStopwatchWrite__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__MTStopwatchServer_testStopwatchWrite__block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ wrote to stopwatch store successfully supposedly", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSystemReady
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MTStopwatchServer *)self serializerQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MTStopwatchServer__isSystemReady__block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)_systemNotReadyError
{
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(MTStopwatchServer *)self _systemNotReadyError];
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTStopwatchServer.wakeup" code:1 userInfo:0];

  return v4;
}

- (void)getStopwatchesWithCompletion:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ getStopwatchesWithCompletion", &v8, 0xCu);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v6 = [(MTStopwatchServer *)self storage];
    [v6 getStopwatchesWitchCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v6 = [(MTStopwatchServer *)self _systemNotReadyError];
    v4[2](v4, 0, v6);
    goto LABEL_7;
  }

LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)createStopwatch:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ createStopwatch with id: %{public}@", &v13, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v10 = [(MTStopwatchServer *)self storage];
    v11 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v10 createStopWatch:v6 withCompletion:v7 source:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v10 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v10);
    goto LABEL_7;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateStopwatch:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ updateStopwatch with id: %{public}@", &v13, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v10 = [(MTStopwatchServer *)self storage];
    v11 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v10 updateStopwatch:v6 withCompletion:v7 source:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v10 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v10);
    goto LABEL_7;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)deleteStopwatch:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ deleteStopwatch with id: %{public}@", &v13, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v10 = [(MTStopwatchServer *)self storage];
    v11 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v10 deleteStopwatch:v6 withCompletion:v7 source:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v10 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v10);
    goto LABEL_7;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)didAddLap:(id)a3 forStopwatch:(id)a4 withCompletion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ didAddLap lap: %{public}@ for stopwatch: %{public}@", &v15, 0x20u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v12 = [(MTStopwatchServer *)self storage];
    v13 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v12 didAddLap:v8 forStopwatch:v9 withCompletion:v10 source:v13];

LABEL_7:
    goto LABEL_8;
  }

  if (v10)
  {
    v12 = [(MTStopwatchServer *)self _systemNotReadyError];
    v10[2](v10, v12);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didClearAllLapsForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didClearAllLapsForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didStartLapTimerForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didStartLapTimerForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didPauseLapTimerForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didPauseLapTimerForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didLapLapTimerForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didLapLapTimerForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didResetLapTimerForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didResetLapTimerForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didResumeLapTimerForStopwatch for stopwatch: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    v9 = [(MTStopwatchServer *)self storage];
    v10 = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [v9 didResumeLapTimerForStopwatch:v6 withCompletion:v7 source:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(MTStopwatchServer *)self _systemNotReadyError];
    v7[2](v7, v9);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didCreateStopWatch:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didCreateStopWatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)didDeleteStopwatch:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didDeleteStopwatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)didUpdateStopwatch:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didUpdateStopwatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)didAddLap:(id)a3 forStopwatch:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTStopwatchServer *)self connectionListenerProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__MTStopwatchServer_didAddLap_forStopwatch_source___block_invoke;
  v14[3] = &unk_1E7B0FB18;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 performBlockOnAllClients:v14 excludingClient:v10];
}

- (void)didClearAllLapsForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__MTStopwatchServer_didClearAllLapsForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

- (void)didStartLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didStartLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

- (void)didPauseLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didPauseLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

- (void)didLapLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__MTStopwatchServer_didLapLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

- (void)didResetLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didResetLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

- (void)didResumeLapTimerForStopwatch:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__MTStopwatchServer_didResumeLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = v7;
  v10 = v7;
  [v9 performBlockOnAllClients:v11 excludingClient:v8];
}

void __39__MTStopwatchServer_testStopwatchWrite__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ recieved stopwatch write error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_systemNotReadyError
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ System isn't ready...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end