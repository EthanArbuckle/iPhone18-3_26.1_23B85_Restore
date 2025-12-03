@interface MTStopwatchManager
+ (void)warmUp;
- (MTStopwatchManager)init;
- (MTStopwatchManager)initWithConnectionProvider:(id)provider metrics:(id)metrics;
- (MTStopwatchManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center;
- (id)createStopwatch:(id)stopwatch;
- (id)didAddLap:(id)lap forStopwatch:(id)stopwatch sender:(id)sender;
- (id)didClearAllLapsForStopwatch:(id)stopwatch sender:(id)sender;
- (id)didLapLapTimerForStopwatch:(id)stopwatch sender:(id)sender;
- (id)didPauseLapTimerForStopwatch:(id)stopwatch sender:(id)sender;
- (id)didResetLapTimerForStopwatch:(id)stopwatch sender:(id)sender;
- (id)didResumeLapTimerForStopwatch:(id)stopwatch sender:(id)sender;
- (id)didStartLapTimerForStopwatch:(id)stopwatch sender:(id)sender;
- (id)getStopwatches;
- (id)removeStopwatch:(id)stopwatch;
- (id)updateStopwatch:(id)stopwatch;
- (void)dealloc;
- (void)reconnect;
@end

@implementation MTStopwatchManager

- (MTStopwatchManager)init
{
  v3 = objc_alloc_init(MTMetrics);
  v4 = [(MTStopwatchManager *)self initWithMetrics:v3];

  return v4;
}

+ (void)warmUp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ warming...", &v7, 0xCu);
  }

  v4 = MTStopwatchServerInterface();
  v5 = MTStopwatchClientInterface();
  v6 = *MEMORY[0x1E69E9840];
}

id __38__MTStopwatchManager_initWithMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTStopwatchServerInterface();
  v4 = [v2 exportedObject];
  v5 = MTStopwatchClientInterface();
  v6 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.stopwatchserver" remoteObjectInterface:v3 exportedObject:v4 exportedObjectInterface:v5 lifecycleNotification:@"com.apple.MTStopwatchServer.wakeup" requiredEntitlement:0 options:4096];

  objc_initWeak(&location, v2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__MTStopwatchManager_initWithMetrics___block_invoke_2;
  v9[3] = &unk_1E7B0CF70;
  objc_copyWeak(&v10, &location);
  v7 = [MTXPCConnectionProvider providerWithConnectionInfo:v6 reconnectHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __38__MTStopwatchManager_initWithMetrics___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (MTStopwatchManager)initWithConnectionProvider:(id)provider metrics:(id)metrics
{
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTStopwatchManager_initWithConnectionProvider_metrics___block_invoke;
  v10[3] = &unk_1E7B0CF98;
  v11 = providerCopy;
  v7 = providerCopy;
  v8 = [(MTStopwatchManager *)self _initWithConnectionProvidingBlock:v10 metrics:metrics];

  return v8;
}

- (MTStopwatchManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center
{
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__MTStopwatchManager_initWithConnectionProvider_metrics_notificationCenter___block_invoke;
  v12[3] = &unk_1E7B0CF98;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = [(MTStopwatchManager *)self _initWithConnectionProvidingBlock:v12 metrics:metrics notificationCenter:center];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics
{
  v6 = MEMORY[0x1E696AD88];
  metricsCopy = metrics;
  blockCopy = block;
  defaultCenter = [v6 defaultCenter];
  v10 = [(MTStopwatchManager *)self _initWithConnectionProvidingBlock:blockCopy metrics:metricsCopy notificationCenter:defaultCenter];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  metricsCopy = metrics;
  centerCopy = center;
  v19.receiver = self;
  v19.super_class = MTStopwatchManager;
  v11 = [(MTStopwatchManager *)&v19 init];
  if (v11)
  {
    v12 = MTLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v11->_notificationCenter, center);
    v13 = [[MTStopwatchManagerExportedObject alloc] initWithStopwatchManager:v11];
    exportedObject = v11->_exportedObject;
    v11->_exportedObject = v13;

    objc_storeStrong(&v11->_metrics, metrics);
    v15 = blockCopy[2](blockCopy, v11);
    connectionProvider = v11->_connectionProvider;
    v11->_connectionProvider = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(MTXPCConnectionProvider *)self->_connectionProvider invalidate];
  v5.receiver = self;
  v5.super_class = MTStopwatchManager;
  [(MTStopwatchManager *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)reconnect
{
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  [connectionProvider performRemoteBlock:&__block_literal_global_53 withErrorHandler:0];
}

- (id)createStopwatch:(id)stopwatch
{
  v23 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  v5 = MTLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = identifier;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ createStopwatch:%{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v16 = MEMORY[0x1E69E9820];
  v17 = stopwatchCopy;
  v9 = v7;
  v18 = v9;
  v10 = stopwatchCopy;
  errorOnlyCompletionHandlerAdapter = [v9 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v16 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v12 = v18;
  v13 = v9;

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void __38__MTStopwatchManager_createStopwatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - Adding Stopwatch", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 createStopwatch:v5 withCompletion:v6];
}

- (id)updateStopwatch:(id)stopwatch
{
  v23 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  v5 = MTLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = identifier;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ updateStopwatch: %{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v16 = MEMORY[0x1E69E9820];
  v17 = stopwatchCopy;
  v9 = v7;
  v18 = v9;
  v10 = stopwatchCopy;
  errorOnlyCompletionHandlerAdapter = [v9 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v16 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v12 = v18;
  v13 = v9;

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void __38__MTStopwatchManager_updateStopwatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - Updating Stopwatch", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 updateStopwatch:v5 withCompletion:v6];
}

- (id)removeStopwatch:(id)stopwatch
{
  v23 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  v5 = MTLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = identifier;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removeStopwatch: %{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v16 = MEMORY[0x1E69E9820];
  v17 = stopwatchCopy;
  v9 = v7;
  v18 = v9;
  v10 = stopwatchCopy;
  errorOnlyCompletionHandlerAdapter = [v9 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v16 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v12 = v18;
  v13 = v9;

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void __38__MTStopwatchManager_removeStopwatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - Deleting Stopwatch", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 deleteStopwatch:v5 withCompletion:v6];
}

- (id)getStopwatches
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ getStopwatches", buf, 0xCu);
  }

  v4 = objc_opt_new();
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__MTStopwatchManager_getStopwatches__block_invoke;
  v10[3] = &unk_1E7B0D030;
  v6 = v4;
  v11 = v6;
  errorOnlyCompletionHandlerAdapter = [v6 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:v10 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

void __36__MTStopwatchManager_getStopwatches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - getting stopwatches", buf, 2u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MTStopwatchManager_getStopwatches__block_invoke_55;
  v5[3] = &unk_1E7B0D008;
  v6 = *(a1 + 32);
  [v3 getStopwatchesWithCompletion:v5];
}

uint64_t __36__MTStopwatchManager_getStopwatches__block_invoke_55(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

- (id)didAddLap:(id)lap forStopwatch:(id)stopwatch sender:(id)sender
{
  v42 = *MEMORY[0x1E69E9840];
  lapCopy = lap;
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v11 = MTLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v40 = 2114;
    v41 = identifier;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ addLap for: %{public}@", buf, 0x16u);
  }

  v13 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__MTStopwatchManager_didAddLap_forStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D058;
  v14 = v13;
  v33 = v14;
  v15 = senderCopy;
  v34 = v15;
  objc_copyWeak(&v37, buf);
  v16 = lapCopy;
  v35 = v16;
  v17 = stopwatchCopy;
  v36 = v17;
  v18 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v28 = MEMORY[0x1E69E9820];
  v20 = v16;
  v29 = v20;
  v21 = v17;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  errorOnlyCompletionHandlerAdapter = [v14 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v28 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v24 = v31;
  v25 = v14;

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __52__MTStopwatchManager_didAddLap_forStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didAddLap:*(a1 + 48) forStopwatch:*(a1 + 56) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __52__MTStopwatchManager_didAddLap_forStopwatch_sender___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - adding lap for stopwatch", v5, 2u);
  }

  [v3 didAddLap:a1[4] forStopwatch:a1[5] withCompletion:a1[6]];
}

- (id)didClearAllLapsForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didClearAllLapsForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MTStopwatchManager_didClearAllLapsForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __57__MTStopwatchManager_didClearAllLapsForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didClearAllLapsForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __57__MTStopwatchManager_didClearAllLapsForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didClearAllLapsForStopwatch", v5, 2u);
  }

  [v3 didClearAllLapsForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (id)didStartLapTimerForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didStartLapTimerForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MTStopwatchManager_didStartLapTimerForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __58__MTStopwatchManager_didStartLapTimerForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didStartLapTimerForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __58__MTStopwatchManager_didStartLapTimerForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didStartLapTimerForStopwatch", v5, 2u);
  }

  [v3 didStartLapTimerForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (id)didPauseLapTimerForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didPauseLapTimerForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MTStopwatchManager_didPauseLapTimerForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __58__MTStopwatchManager_didPauseLapTimerForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didPauseLapTimerForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __58__MTStopwatchManager_didPauseLapTimerForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didPauseLapTimerForStopwatch", v5, 2u);
  }

  [v3 didPauseLapTimerForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (id)didLapLapTimerForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didLapLapTimerForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MTStopwatchManager_didLapLapTimerForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __56__MTStopwatchManager_didLapLapTimerForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didLapLapTimerForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __56__MTStopwatchManager_didLapLapTimerForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didLapLapTimerForStopwatch", v5, 2u);
  }

  [v3 didLapLapTimerForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (id)didResetLapTimerForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didResetLapTimerForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MTStopwatchManager_didResetLapTimerForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __58__MTStopwatchManager_didResetLapTimerForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didResetLapTimerForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __58__MTStopwatchManager_didResetLapTimerForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didResetLapTimerForStopwatch", v5, 2u);
  }

  [v3 didResetLapTimerForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (id)didResumeLapTimerForStopwatch:(id)stopwatch sender:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  senderCopy = sender;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stopwatchCopy identifier];
    *buf = 138543618;
    selfCopy = self;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ didResumeLapTimerForStopwatch for: %{public}@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MTStopwatchManager_didResumeLapTimerForStopwatch_sender___block_invoke;
  aBlock[3] = &unk_1E7B0D0A8;
  v11 = v10;
  v27 = v11;
  v12 = senderCopy;
  v28 = v12;
  objc_copyWeak(&v30, buf);
  v13 = stopwatchCopy;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  connectionProvider = [(MTStopwatchManager *)self connectionProvider];
  v23 = MEMORY[0x1E69E9820];
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  errorOnlyCompletionHandlerAdapter = [v11 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v23 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v19 = v25;
  v20 = v11;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __59__MTStopwatchManager_didResumeLapTimerForStopwatch_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];

  v6 = [*(a1 + 40) sourceIdentifier];

  if (!v4 && v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v8 = [WeakRetained exportedObject];
      [v8 didResumeLapTimerForStopwatch:*(a1 + 48) source:*(a1 + 40)];

      WeakRetained = v9;
    }
  }
}

void __59__MTStopwatchManager_didResumeLapTimerForStopwatch_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTStopwatchManager - didResumeLapTimerForStopwatch", v5, 2u);
  }

  [v3 didResumeLapTimerForStopwatch:*(a1 + 32) withCompletion:*(a1 + 40)];
}

@end