@interface MTTimerServer
- (BOOL)_isSystemReady;
- (MTTimerServer)initWithStorage:(id)a3;
- (MTTimerServer)initWithStorage:(id)a3 connectionListenerProvider:(id)a4;
- (id)_systemNotReadyError;
- (id)gatherDiagnostics;
- (void)addFavoriteDuration:(id)a3 withCompletion:(id)a4;
- (void)addRecentDuration:(id)a3 withCompletion:(id)a4;
- (void)addTimer:(id)a3 withCompletion:(id)a4;
- (void)dismissTimerWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)favoriteTimerDurationsDidUpdate:(id)a3;
- (void)getTimerDurationsWithCompletion:(id)a3;
- (void)getTimersWithCompletion:(id)a3;
- (void)handleSystemReady;
- (void)latestTimerDurationDidUpdate:(id)a3;
- (void)nextTimerDidChange:(id)a3;
- (void)printDiagnostics;
- (void)recentTimerDurationsDidUpdate:(id)a3;
- (void)removeFavoriteDuration:(id)a3 withCompletion:(id)a4;
- (void)removeRecentDuration:(id)a3 withCompletion:(id)a4;
- (void)removeTimer:(id)a3 withCompletion:(id)a4;
- (void)repeatTimerWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)saveLatestDuration:(id)a3 withCompletion:(id)a4;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didDismissTimer:(id)a4;
- (void)source:(id)a3 didFireTimer:(id)a4;
- (void)source:(id)a3 didRemoveTimers:(id)a4;
- (void)source:(id)a3 didUpdateTimers:(id)a4;
- (void)startListening;
- (void)stopListening;
- (void)updateTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation MTTimerServer

- (BOOL)_isSystemReady
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTTimerServer *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MTTimerServer__isSystemReady__block_invoke;
  v7[3] = &unk_1E7B0CB10;
  v9 = &v10;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  [v4 performBlock:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (MTTimerServer)initWithStorage:(id)a3
{
  v4 = a3;
  v5 = MTTimerClientInterface();
  v6 = MTTimerServerInterface();
  v7 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.timerserver" remoteObjectInterface:v5 exportedObject:self exportedObjectInterface:v6 lifecycleNotification:@"com.apple.MTTimerServer.wakeup" requiredEntitlement:@"com.apple.private.mobiletimerd" options:0];

  v8 = [MTXPCConnectionListenerProvider providerWithConnectionInfo:v7 errorHandler:0];
  v9 = [(MTTimerServer *)self initWithStorage:v4 connectionListenerProvider:v8];

  return v9;
}

- (MTTimerServer)initWithStorage:(id)a3 connectionListenerProvider:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MTTimerServer;
  v9 = [(MTTimerServer *)&v17 init];
  if (v9)
  {
    v10 = MTLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v9->_storage, a3);
    [v7 registerObserver:v9];
    [v7 setDurationUpdateDelegate:v9];
    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTTimerServer.ready-queue", +[MTScheduler defaultPriority]);
    serializer = v9->_serializer;
    v9->_serializer = v11;

    objc_storeStrong(&v9->_connectionListenerProvider, a4);
    v13 = objc_opt_new();
    conductor = v9->_conductor;
    v9->_conductor = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)startListening
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Starting %{public}@", &v6, 0xCu);
  }

  v4 = [(MTTimerServer *)self connectionListenerProvider];
  [v4 startListening];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopListening
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@", &v6, 0xCu);
  }

  v4 = [(MTTimerServer *)self connectionListenerProvider];
  [v4 stopListening];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleSystemReady
{
  v3 = [(MTTimerServer *)self serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MTTimerServer_handleSystemReady__block_invoke;
  v4[3] = &unk_1E7B0C9D8;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __34__MTTimerServer_handleSystemReady__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "System is ready: %{public}@.  Will post MTTimerServerReadyNotification.", &v6, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 40) send];
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"com.apple.MTTimerServer.ready" object:0 userInfo:0 deliverImmediately:1];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_systemNotReadyError
{
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(MTSessionServer *)v2 _systemNotReadyError];
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTTimerServer" code:1 userInfo:0];

  return v3;
}

- (void)getTimersWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MTTimerServer_getTimersWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0CA00;
  aBlock[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ getTimersWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MTTimerServer_getTimersWithCompletion___block_invoke_16;
    v10[3] = &unk_1E7B0FE00;
    v10[4] = self;
    v11 = v6;
    v12 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v10 completion:5.0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __41__MTTimerServer_getTimersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  [v2 getTimersWithCompletion:*(a1 + 40)];
}

void __41__MTTimerServer_getTimersWithCompletion___block_invoke_16(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ getTimersWithCompletion reply publisher ready, proceeding with request", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__MTTimerServer_getTimersWithCompletion___block_invoke_16_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v9 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8, 0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addTimer:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MTTimerServer_addTimer_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ addTimer system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__MTTimerServer_addTimer_withCompletion___block_invoke_19;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __41__MTTimerServer_addTimer_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerServer - Adding Timer", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 addTimer:v5 withCompletion:v4 source:v6];
}

void __41__MTTimerServer_addTimer_withCompletion___block_invoke_19(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ addTimer reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__MTTimerServer_addTimer_withCompletion___block_invoke_19_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateTimer:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MTTimerServer_updateTimer_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ updateTimer system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__MTTimerServer_updateTimer_withCompletion___block_invoke_20;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerServer_updateTimer_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerServer - Updating Timer", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 updateTimer:v5 withCompletion:v4 source:v6];
}

void __44__MTTimerServer_updateTimer_withCompletion___block_invoke_20(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ updateTimer reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__MTTimerServer_updateTimer_withCompletion___block_invoke_20_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeTimer:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MTTimerServer_removeTimer_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ removeTimer system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__MTTimerServer_removeTimer_withCompletion___block_invoke_21;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerServer_removeTimer_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerServer - Removing Timer", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 removeTimer:v5 withCompletion:v4 source:v6];
}

void __44__MTTimerServer_removeTimer_withCompletion___block_invoke_21(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ removeTimer reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__MTTimerServer_removeTimer_withCompletion___block_invoke_21_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dismissTimerWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ dismissTimerWithIdentifier system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_24;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerServer - Dismissing Timer", buf, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_22;
  v6[3] = &unk_1E7B0C688;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = [*(*(a1 + 32) + 24) currentClient];
  [v3 dismissTimerWithIdentifier:v4 withCompletion:v6 source:v5];
}

void __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_22(uint64_t a1, void *a2)
{
  v4 = a2;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_24(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ dismissTimerWithIdentifier reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_24_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)repeatTimerWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ repeatTimerWithIdentifier system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_26;
    v14[3] = &unk_1E7B10008;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerServer - Repeating Timer", buf, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_25;
  v6[3] = &unk_1E7B0C688;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = [*(*(a1 + 32) + 24) currentClient];
  [v3 repeatTimerWithIdentifier:v4 withCompletion:v6 source:v5];
}

void __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v4 = a2;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_26(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_26_cold_1(a1);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [*(a1 + 32) _systemNotReadyError];
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (void)getTimerDurationsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0CA00;
  aBlock[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ getTimerDurationsWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke_27;
    v10[3] = &unk_1E7B0FE00;
    v10[4] = self;
    v11 = v6;
    v12 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v10 completion:5.0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - getTimerDurationsWithCompletion", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  [v4 getDurationsWithCompletion:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

void __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke_27(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ getTimerDurationsWithCompletion reply publisher ready, proceeding with request", &v13, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke_27_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v11 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8, v9, v10, 0, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addRecentDuration:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ addRecentDuration system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke_28;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - addRecentDuration", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 24) currentClient];
  [v4 addRecentDuration:v6 withCompletion:v5 source:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke_28(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ addRecentDuration reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke_28_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeRecentDuration:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ removeRecentDuration system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke_29;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - removeRecentDuration", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 24) currentClient];
  [v4 removeRecentDuration:v6 withCompletion:v5 source:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke_29(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ removeRecentDuration reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke_29_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addFavoriteDuration:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ addFavoriteDuration system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke_30;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - addFavoriteDuration", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 24) currentClient];
  [v4 addFavoriteDuration:v6 withCompletion:v5 source:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke_30(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ addFavoriteDuration reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke_30_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeFavoriteDuration:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ removeFavoriteDuration system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke_31;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - removeFavoriteDuration", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 24) currentClient];
  [v4 removeFavoriteDuration:v6 withCompletion:v5 source:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke_31(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ removeFavoriteDuration reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke_31_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveLatestDuration:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ saveLatestDuration system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke_32;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - saveLatestDuration", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) storage];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 24) currentClient];
  [v4 saveLatestDuration:v6 withCompletion:v5 source:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke_32(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ saveLatestDuration reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke_32_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTTimerServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__MTTimerServer_source_didAddTimers___block_invoke;
  v10[3] = &unk_1E7B10030;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)source:(id)a3 didUpdateTimers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTTimerServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MTTimerServer_source_didUpdateTimers___block_invoke;
  v10[3] = &unk_1E7B10030;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)source:(id)a3 didRemoveTimers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTTimerServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MTTimerServer_source_didRemoveTimers___block_invoke;
  v10[3] = &unk_1E7B10030;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)source:(id)a3 didFireTimer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTTimerServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__MTTimerServer_source_didFireTimer___block_invoke;
  v10[3] = &unk_1E7B10030;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)source:(id)a3 didDismissTimer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTTimerServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MTTimerServer_source_didDismissTimer___block_invoke;
  v10[3] = &unk_1E7B10030;
  v11 = v6;
  v9 = v6;
  [v8 performBlockOnAllClients:v10 excludingClient:v7];
}

- (void)nextTimerDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerServer *)self connectionListenerProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MTTimerServer_nextTimerDidChange___block_invoke;
  v7[3] = &unk_1E7B10030;
  v8 = v4;
  v6 = v4;
  [v5 performBlockOnAllClients:v7];
}

- (void)printDiagnostics
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTTimerServer-----", &v10, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTTimerServer _isSystemReady](self, "_isSystemReady")}];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "System Ready: %@", &v10, 0xCu);
  }

  v6 = MTLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MTTimerServer *)self connectionListenerProvider];
    v8 = [v7 connectedClients];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Clients: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"Timer system ready";
  if ([(MTTimerServer *)self _isSystemReady])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v11[1] = @"Timer clients";
  v12[0] = v3;
  v4 = [(MTTimerServer *)self connectionListenerProvider];
  v5 = [v4 connectedClients];
  v6 = [v5 valueForKey:@"processName"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)favoriteTimerDurationsDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerServer *)self connectionListenerProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MTTimerServer_favoriteTimerDurationsDidUpdate___block_invoke;
  v7[3] = &unk_1E7B10030;
  v8 = v4;
  v6 = v4;
  [v5 performBlockOnAllClients:v7 excludingClient:0];
}

void __49__MTTimerServer_favoriteTimerDurationsDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 favoriteTimerDurationsUpdated:*(a1 + 32)];
  }
}

- (void)latestTimerDurationDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerServer *)self connectionListenerProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MTTimerServer_latestTimerDurationDidUpdate___block_invoke;
  v7[3] = &unk_1E7B10030;
  v8 = v4;
  v6 = v4;
  [v5 performBlockOnAllClients:v7 excludingClient:0];
}

void __46__MTTimerServer_latestTimerDurationDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 latestTimerDurationUpdated:*(a1 + 32)];
  }
}

- (void)recentTimerDurationsDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerServer *)self connectionListenerProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MTTimerServer_recentTimerDurationsDidUpdate___block_invoke;
  v7[3] = &unk_1E7B10030;
  v8 = v4;
  v6 = v4;
  [v5 performBlockOnAllClients:v7 excludingClient:0];
}

void __47__MTTimerServer_recentTimerDurationsDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 recentTimerDurationsUpdated:*(a1 + 32)];
  }
}

void __41__MTTimerServer_getTimersWithCompletion___block_invoke_16_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ getTimersWithCompletion reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __41__MTTimerServer_addTimer_withCompletion___block_invoke_19_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ addTimer reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerServer_updateTimer_withCompletion___block_invoke_20_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ updateTimer reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerServer_removeTimer_withCompletion___block_invoke_21_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ removeTimer reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __59__MTTimerServer_dismissTimerWithIdentifier_withCompletion___block_invoke_24_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ dismissTimerWithIdentifier reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __58__MTTimerServer_repeatTimerWithIdentifier_withCompletion___block_invoke_26_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ repeatTimerWithIdentifier reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __49__MTTimerServer_getTimerDurationsWithCompletion___block_invoke_27_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ getTimerDurationsWithCompletion reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __50__MTTimerServer_addRecentDuration_withCompletion___block_invoke_28_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ addRecentDuration reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__MTTimerServer_removeRecentDuration_withCompletion___block_invoke_29_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ removeRecentDuration reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __52__MTTimerServer_addFavoriteDuration_withCompletion___block_invoke_30_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ addFavoriteDuration reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __55__MTTimerServer_removeFavoriteDuration_withCompletion___block_invoke_31_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ removeFavoriteDuration reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__MTTimerServer_saveLatestDuration_withCompletion___block_invoke_32_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ saveLatestDuration reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end