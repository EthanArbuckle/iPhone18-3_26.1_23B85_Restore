@interface MTTimerManager
+ (double)defaultDuration;
+ (void)setDefaultDuration:(double)duration;
+ (void)warmUp;
- (BOOL)_updateCurrentTimerWithStateSync:(unint64_t)sync;
- (BOOL)startCurrentTimerWithDurationSync:(double)sync;
- (MTTimerManager)init;
- (MTTimerManager)initWithConnectionProvider:(id)provider metrics:(id)metrics;
- (MTTimerManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center;
- (id)_runningTimerFromCurrentTimer:(id)timer withDuration:(double)duration;
- (id)_updateCurrentTimerWithState:(unint64_t)state;
- (id)_updateTimer:(id)timer doSynchronous:(BOOL)synchronous;
- (id)_validateCanStartTimer:(id)timer;
- (id)addFavoriteDuration:(id)duration;
- (id)addRecentDuration:(id)duration;
- (id)addTimer:(id)timer;
- (id)currentTimer;
- (id)defaultDurations;
- (id)dismissTimerWithIdentifier:(id)identifier;
- (id)favoriteDurations;
- (id)getCurrentTimerSync;
- (id)getQueryDurations:(id)durations withFuture:(id)future;
- (id)latestDuration;
- (id)nextTimer;
- (id)nextTimersForDate:(id)date maxCount:(unint64_t)count;
- (id)recentDurations;
- (id)removeFavoriteDuration:(id)duration;
- (id)removeRecentDuration:(id)duration;
- (id)removeTimer:(id)timer;
- (id)repeatTimerWithIdentifier:(id)identifier;
- (id)saveLatestDuration:(id)duration;
- (id)startCurrentTimerWithDuration:(double)duration;
- (id)timerWithIdentifier:(id)identifier;
- (id)timers;
- (id)timersSync;
- (void)_getCachedTimersWithFuture:(id)future finishBlock:(id)block;
- (void)dealloc;
- (void)loadAllDurationsWithCompletion:(id)completion;
- (void)reconnect;
@end

@implementation MTTimerManager

- (MTTimerManager)init
{
  v3 = objc_alloc_init(MTMetrics);
  v4 = [(MTTimerManager *)self initWithMetrics:v3];

  return v4;
}

+ (void)warmUp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ warming...", &v7, 0xCu);
  }

  v4 = MTTimerServerInterface();
  v5 = MTTimerClientInterface();
  v6 = *MEMORY[0x1E69E9840];
}

- (id)timers
{
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__MTTimerManager_timers__block_invoke;
  aBlock[3] = &unk_1E7B0F0A8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  [(MTTimerManager *)self _getCachedTimersWithFuture:v4 finishBlock:v5];
  v6 = v4;

  return v4;
}

+ (double)defaultDuration
{
  v7 = 0;
  v2 = +[MTUserDefaults sharedUserDefaults];
  [v2 floatForKey:@"MTTimerDefaultDuration" exists:&v7];
  v4 = v3;

  result = 900.0;
  if (v7 == 1 && v4 != 0.0)
  {
    v6 = floorf(v4);
    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    return fminf(v6, 86399.0);
  }

  return result;
}

+ (void)setDefaultDuration:(double)duration
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ setting default duration to %f", &v9, 0x16u);
  }

  v6 = +[MTUserDefaults sharedUserDefaults];
  durationCopy2 = duration;
  *&v7 = durationCopy2;
  [v6 setFloat:@"MTTimerDefaultDuration" forKey:@"MTTimerManagerPreferencesChanged" notification:v7];

  v8 = *MEMORY[0x1E69E9840];
}

id __34__MTTimerManager_initWithMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTTimerServerInterface();
  v4 = [v2 exportedObject];
  v5 = MTTimerClientInterface();
  v6 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.timerserver" remoteObjectInterface:v3 exportedObject:v4 exportedObjectInterface:v5 lifecycleNotification:@"com.apple.MTTimerServer.wakeup" requiredEntitlement:0 options:4096];

  objc_initWeak(&location, v2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__MTTimerManager_initWithMetrics___block_invoke_2;
  v9[3] = &unk_1E7B0CF70;
  objc_copyWeak(&v10, &location);
  v7 = [MTXPCConnectionProvider providerWithConnectionInfo:v6 reconnectHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __34__MTTimerManager_initWithMetrics___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (MTTimerManager)initWithConnectionProvider:(id)provider metrics:(id)metrics
{
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MTTimerManager_initWithConnectionProvider_metrics___block_invoke;
  v10[3] = &unk_1E7B0EFE8;
  v11 = providerCopy;
  v7 = providerCopy;
  v8 = [(MTTimerManager *)self _initWithConnectionProvidingBlock:v10 metrics:metrics];

  return v8;
}

- (MTTimerManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center
{
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MTTimerManager_initWithConnectionProvider_metrics_notificationCenter___block_invoke;
  v12[3] = &unk_1E7B0EFE8;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = [(MTTimerManager *)self _initWithConnectionProvidingBlock:v12 metrics:metrics notificationCenter:center];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics
{
  v6 = MEMORY[0x1E696AD88];
  metricsCopy = metrics;
  blockCopy = block;
  defaultCenter = [v6 defaultCenter];
  v10 = [(MTTimerManager *)self _initWithConnectionProvidingBlock:blockCopy metrics:metricsCopy notificationCenter:defaultCenter];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  metricsCopy = metrics;
  centerCopy = center;
  v25.receiver = self;
  v25.super_class = MTTimerManager;
  v11 = [(MTTimerManager *)&v25 init];
  if (v11)
  {
    v12 = MTLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v11->_notificationCenter, center);
    v13 = [[MTTimerManagerExportedObject alloc] initWithTimerManager:v11];
    exportedObject = v11->_exportedObject;
    v11->_exportedObject = v13;

    objc_storeStrong(&v11->_metrics, metrics);
    v15 = blockCopy[2](blockCopy, v11);
    connectionProvider = v11->_connectionProvider;
    v11->_connectionProvider = v15;

    v17 = +[MTUserDefaults sharedUserDefaults];
    [v17 registerNotification:@"MTTimerManagerPreferencesChanged" observer:v11];

    objc_initWeak(buf, v11);
    v18 = [MTTimerCache alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke;
    v23[3] = &unk_1E7B0F060;
    objc_copyWeak(&v24, buf);
    v19 = [(MTTimerCache *)v18 initWithUpdateBlock:v23];
    cache = v11->_cache;
    v11->_cache = v19;

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

void __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained connectionProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_2;
  v11[3] = &unk_1E7B0F038;
  v12 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_4;
  v9[3] = &unk_1E7B0C688;
  v10 = v12;
  v8 = v12;
  [v7 performRemoteBlock:v11 withErrorHandler:v9 isSynchronous:a3];
}

void __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__MTTimerManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_3;
  v3[3] = &unk_1E7B0F010;
  v4 = *(a1 + 32);
  [a2 getTimersWithCompletion:v3];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(MTXPCConnectionProvider *)self->_connectionProvider invalidate];
  v5.receiver = self;
  v5.super_class = MTTimerManager;
  [(MTTimerManager *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)reconnect
{
  cache = [(MTTimerManager *)self cache];
  [cache markNeedsUpdate];

  connectionProvider = [(MTTimerManager *)self connectionProvider];
  [connectionProvider performRemoteBlock:&__block_literal_global_64 withErrorHandler:0];
}

- (void)_getCachedTimersWithFuture:(id)future finishBlock:(id)block
{
  blockCopy = block;
  cache = self->_cache;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MTTimerManager__getCachedTimersWithFuture_finishBlock___block_invoke;
  v8[3] = &unk_1E7B0F010;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MTTimerCache *)cache getCachedTimersWithCompletion:v8];
}

- (id)nextTimer
{
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__MTTimerManager_nextTimer__block_invoke;
  aBlock[3] = &unk_1E7B0F0A8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  [(MTTimerManager *)self _getCachedTimersWithFuture:v4 finishBlock:v5];
  v6 = v4;

  return v4;
}

uint64_t __27__MTTimerManager_nextTimer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3 | a4)
  {
    return [v4 finishWithResult:? error:?];
  }

  else
  {
    return [v4 finishWithNoResult];
  }
}

- (id)timerWithIdentifier:(id)identifier
{
  timers = [(MTTimerManager *)self timers];
  v4 = [timers flatMap:&__block_literal_global_68];

  return v4;
}

id __38__MTTimerManager_timerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 na_firstObjectPassingTest:&__block_literal_global_71];
  v3 = [MEMORY[0x1E69B3780] futureWithResult:v2];

  return v3;
}

- (id)timersSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MTTimerManager_timersSync__block_invoke;
  v5[3] = &unk_1E7B0F0F0;
  v5[4] = self;
  v5[5] = &v6;
  [(MTTimerCache *)cache getCachedTimersSyncWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__MTTimerManager_timersSync__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __28__MTTimerManager_timersSync__block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    v8 = [a2 copy];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)nextTimersForDate:(id)date maxCount:(unint64_t)count
{
  dateCopy = date;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar components:30 fromDate:dateCopy];
  v9 = [currentCalendar dateFromComponents:v8];
  timers = [(MTTimerManager *)self timers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__MTTimerManager_nextTimersForDate_maxCount___block_invoke;
  v16[3] = &unk_1E7B0F140;
  v17 = dateCopy;
  v18 = currentCalendar;
  v19 = v9;
  countCopy = count;
  v11 = v9;
  v12 = currentCalendar;
  v13 = dateCopy;
  v14 = [timers flatMap:v16];

  return v14;
}

id __45__MTTimerManager_nextTimersForDate_maxCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MTTimerManager_nextTimersForDate_maxCount___block_invoke_2;
  v8[3] = &unk_1E7B0F118;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v4;
  v13 = *(a1 + 56);
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v8];

  v6 = [MEMORY[0x1E69B3780] futureWithResult:v5];

  return v6;
}

void __45__MTTimerManager_nextTimersForDate_maxCount___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 state] == 3)
  {
    v6 = [v10 nextTriggerAfterDate:*(a1 + 32)];
    v7 = [v6 triggerDate];

    if (v7)
    {
      v8 = [*(a1 + 40) components:30 fromDate:v7];
      v9 = [*(a1 + 40) dateFromComponents:v8];
      if ([*(a1 + 48) isEqualToDate:v9])
      {
        [*(a1 + 56) addObject:v10];
      }
    }

    else
    {
      NSLog(&cfstr_TimerIsRunning.isa);
    }
  }

  if ([*(a1 + 56) count] >= *(a1 + 64))
  {
    *a4 = 1;
  }
}

- (id)addTimer:(id)timer
{
  v22 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    timerIDString = [timerCopy timerIDString];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = timerIDString;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ addTimer:%{public}@", buf, 0x16u);
  }

  if (![timerCopy state])
  {
    [MTTimerManager addTimer:];
  }

  v7 = objc_opt_new();
  v8 = MTNewChildActivityForName(0xCuLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MTTimerManager_addTimer___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v16 = timerCopy;
  v9 = v7;
  v17 = v9;
  v10 = timerCopy;
  os_activity_apply(v8, block);

  v11 = v17;
  v12 = v9;

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void __27__MTTimerManager_addTimer___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__MTTimerManager_addTimer___block_invoke_2;
  v5[3] = &unk_1E7B0F168;
  v6 = a1[5];
  v7 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v5 withErrorHandler:v4];

  [*(a1[4] + 3) logTimerAdded];
}

void __27__MTTimerManager_addTimer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTTimerManager - Adding Timer", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 addTimer:v5 withCompletion:v6];
}

- (id)_updateTimer:(id)timer doSynchronous:(BOOL)synchronous
{
  v25 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v7 = MTLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    timerIDString = [timerCopy timerIDString];
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = timerIDString;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updateTimer:%{public}@", buf, 0x16u);
  }

  if (![timerCopy state])
  {
    [MTTimerManager _updateTimer:doSynchronous:];
  }

  v9 = objc_opt_new();
  v10 = MTNewChildActivityForName(0xDuLL);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__MTTimerManager__updateTimer_doSynchronous___block_invoke;
  v17[3] = &unk_1E7B0F190;
  v17[4] = self;
  v18 = timerCopy;
  v11 = v9;
  v19 = v11;
  synchronousCopy = synchronous;
  v12 = timerCopy;
  os_activity_apply(v10, v17);

  v13 = v19;
  v14 = v11;

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __45__MTTimerManager__updateTimer_doSynchronous___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  [v2 markNeedsUpdate];

  v3 = [*(a1 + 32) connectionProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MTTimerManager__updateTimer_doSynchronous___block_invoke_2;
  v5[3] = &unk_1E7B0F168;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v5 withErrorHandler:v4 isSynchronous:*(a1 + 56)];

  [*(*(a1 + 32) + 24) logTimerUpdated];
}

void __45__MTTimerManager__updateTimer_doSynchronous___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTTimerManager - Updating Timer", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 updateTimer:v5 withCompletion:v6];
}

- (id)removeTimer:(id)timer
{
  v22 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    timerIDString = [timerCopy timerIDString];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = timerIDString;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removeTimer:%{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = MTNewChildActivityForName(0xEuLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MTTimerManager_removeTimer___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v16 = timerCopy;
  v9 = v7;
  v17 = v9;
  v10 = timerCopy;
  os_activity_apply(v8, block);

  v11 = v17;
  v12 = v9;

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void __30__MTTimerManager_removeTimer___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MTTimerManager_removeTimer___block_invoke_2;
  v5[3] = &unk_1E7B0F168;
  v6 = a1[5];
  v7 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v5 withErrorHandler:v4];

  [*(a1[4] + 3) logTimerDeleted];
}

void __30__MTTimerManager_removeTimer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTTimerManager - Removing Timer", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 removeTimer:v5 withCompletion:v6];
}

- (id)dismissTimerWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissTimerWithIdentifier:%{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v7 = MTNewChildActivityForName(0xFuLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MTTimerManager_dismissTimerWithIdentifier___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v15 = identifierCopy;
  v8 = v6;
  v16 = v8;
  v9 = identifierCopy;
  os_activity_apply(v7, block);

  v10 = v16;
  v11 = v8;

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void __45__MTTimerManager_dismissTimerWithIdentifier___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MTTimerManager_dismissTimerWithIdentifier___block_invoke_2;
  v5[3] = &unk_1E7B0F168;
  v6 = a1[5];
  v7 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v5 withErrorHandler:v4];

  [*(a1[4] + 3) logTimerDismissed];
}

void __45__MTTimerManager_dismissTimerWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTTimerManager - Dismissing Timer", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 dismissTimerWithIdentifier:v5 withCompletion:v6];
}

- (id)repeatTimerWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ repeatTimerWithIdentifier:%{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v7 = MTNewChildActivityForName(0x10uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MTTimerManager_repeatTimerWithIdentifier___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v15 = identifierCopy;
  v8 = v6;
  v16 = v8;
  v9 = identifierCopy;
  os_activity_apply(v7, block);

  v10 = v16;
  v11 = v8;

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void __44__MTTimerManager_repeatTimerWithIdentifier___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MTTimerManager_repeatTimerWithIdentifier___block_invoke_2;
  v5[3] = &unk_1E7B0F168;
  v6 = a1[5];
  v7 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v5 withErrorHandler:v4];

  [*(a1[4] + 3) logTimerRepeated];
}

void __44__MTTimerManager_repeatTimerWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTTimerManager - Repeating Timer", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 repeatTimerWithIdentifier:v5 withCompletion:v6];
}

- (id)currentTimer
{
  timers = [(MTTimerManager *)self timers];
  v3 = [timers flatMap:&__block_literal_global_86];

  return v3;
}

id __30__MTTimerManager_currentTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MTTimer currentTimerFromTimers:a2];
  v3 = [MEMORY[0x1E69B3780] futureWithResult:v2];

  return v3;
}

- (id)_updateCurrentTimerWithState:(unint64_t)state
{
  if (!state)
  {
    [MTTimerManager _updateCurrentTimerWithState:];
  }

  currentTimer = [(MTTimerManager *)self currentTimer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MTTimerManager__updateCurrentTimerWithState___block_invoke;
  v8[3] = &unk_1E7B0F1B8;
  v8[4] = self;
  v8[5] = state;
  v6 = [currentTimer flatMap:v8];

  return v6;
}

id __47__MTTimerManager__updateCurrentTimerWithState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 timerByUpdatingWithState:*(a1 + 40)];
  v4 = [v2 updateTimer:v3];

  return v4;
}

- (id)_validateCanStartTimer:(id)timer
{
  v15[1] = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  if ([timerCopy state] == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    timerIDString = [timerCopy timerIDString];
    v8 = [v6 stringWithFormat:@"%@ cannot restart a timer (%@) that isn't stopped.", self, timerIDString];

    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = [v9 errorWithDomain:@"com.apple.mobiletimerd.MTTimerManager" code:1 userInfo:v10];

    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MTTimerManager *)v8 _validateCanStartTimer:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_runningTimerFromCurrentTimer:(id)timer withDuration:(double)duration
{
  v5 = [timer mutableCopy];
  [v5 setDuration:duration];
  [v5 setState:3];

  return v5;
}

- (id)startCurrentTimerWithDuration:(double)duration
{
  currentTimer = [(MTTimerManager *)self currentTimer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MTTimerManager_startCurrentTimerWithDuration___block_invoke;
  v8[3] = &unk_1E7B0F1B8;
  v8[4] = self;
  *&v8[5] = duration;
  v6 = [currentTimer flatMap:v8];

  return v6;
}

id __48__MTTimerManager_startCurrentTimerWithDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _validateCanStartTimer:v3];
  if (v4)
  {
    v5 = [MEMORY[0x1E69B3780] futureWithError:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v6 _runningTimerFromCurrentTimer:v3 withDuration:*(a1 + 40)];
    v5 = [v6 updateTimer:v7];
  }

  return v5;
}

- (id)getCurrentTimerSync
{
  timersSync = [(MTTimerManager *)self timersSync];
  v3 = [MTTimer currentTimerFromTimers:timersSync];

  return v3;
}

- (BOOL)startCurrentTimerWithDurationSync:(double)sync
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  getCurrentTimerSync = [(MTTimerManager *)self getCurrentTimerSync];
  v7 = [(MTTimerManager *)self _validateCanStartTimer:getCurrentTimerSync];
  if (v7)
  {
    v8 = 0;
    *(v16 + 24) = 0;
  }

  else
  {
    v9 = [(MTTimerManager *)self _runningTimerFromCurrentTimer:getCurrentTimerSync withDuration:sync];
    v10 = [(MTTimerManager *)self _updateTimer:v9 doSynchronous:1];
    if (([v10 isFinished] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MTTimerManager.m" lineNumber:490 description:{@"Start timer isn't finished, but expected it to be"}];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MTTimerManager_startCurrentTimerWithDurationSync___block_invoke;
    v14[3] = &unk_1E7B0F1E0;
    v14[4] = &v15;
    v11 = [v10 addCompletionBlock:v14];

    v8 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v8 & 1;
}

- (BOOL)_updateCurrentTimerWithStateSync:(unint64_t)sync
{
  if (!sync)
  {
    [MTTimerManager _updateCurrentTimerWithStateSync:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  getCurrentTimerSync = [(MTTimerManager *)self getCurrentTimerSync];
  v7 = [getCurrentTimerSync timerByUpdatingWithState:sync];
  v8 = [(MTTimerManager *)self _updateTimer:v7 doSynchronous:1];

  if (([v8 isFinished] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTTimerManager.m" lineNumber:507 description:{@"Update Timer isn't finished, but expected it to be"}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MTTimerManager__updateCurrentTimerWithStateSync___block_invoke;
  v13[3] = &unk_1E7B0F1E0;
  v13[4] = &v14;
  v9 = [v8 addCompletionBlock:v13];
  v10 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (void)loadAllDurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MTTimerManager_loadAllDurationsWithCompletion___block_invoke;
  v9[3] = &unk_1E7B0F038;
  v10 = completionCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MTTimerManager_loadAllDurationsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7B0C688;
  v8 = v10;
  v6 = v10;
  [connectionProvider performRemoteBlock:v9 withErrorHandler:v7];
}

- (id)recentDurations
{
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__MTTimerManager_recentDurations__block_invoke;
  aBlock[3] = &unk_1E7B0F208;
  v4 = v3;
  v10 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(MTTimerManager *)self getQueryDurations:v5 withFuture:v4];
  v7 = v4;

  return v4;
}

- (id)getQueryDurations:(id)durations withFuture:(id)future
{
  durationsCopy = durations;
  futureCopy = future;
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MTTimerManager_getQueryDurations_withFuture___block_invoke;
  v12[3] = &unk_1E7B0F038;
  v13 = durationsCopy;
  v9 = durationsCopy;
  errorOnlyCompletionHandlerAdapter = [futureCopy errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:v12 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  return futureCopy;
}

- (id)addRecentDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ addRecentDuration: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = durationCopy;
  v8 = v6;
  v17 = v8;
  v9 = durationCopy;
  errorOnlyCompletionHandlerAdapter = [v8 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v15 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v11 = v17;
  v12 = v8;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __36__MTTimerManager_addRecentDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 addRecentDuration:v2 withCompletion:v5];
}

- (id)removeRecentDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removeRecentDuration: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = durationCopy;
  v8 = v6;
  v17 = v8;
  v9 = durationCopy;
  errorOnlyCompletionHandlerAdapter = [v8 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v15 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v11 = v17;
  v12 = v8;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __39__MTTimerManager_removeRecentDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 removeRecentDuration:v2 withCompletion:v5];
}

- (id)defaultDurations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ running query for default durations", buf, 0xCu);
  }

  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__MTTimerManager_defaultDurations__block_invoke;
  aBlock[3] = &unk_1E7B0F208;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(MTTimerManager *)self getQueryDurations:v6 withFuture:v5];
  v8 = v5;

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)favoriteDurations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ running query for favorite durations", buf, 0xCu);
  }

  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__MTTimerManager_favoriteDurations__block_invoke;
  aBlock[3] = &unk_1E7B0F208;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(MTTimerManager *)self getQueryDurations:v6 withFuture:v5];
  v8 = v5;

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)addFavoriteDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ addFavoriteDuration: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = durationCopy;
  v8 = v6;
  v17 = v8;
  v9 = durationCopy;
  errorOnlyCompletionHandlerAdapter = [v8 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v15 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v11 = v17;
  v12 = v8;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __38__MTTimerManager_addFavoriteDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 addFavoriteDuration:v2 withCompletion:v5];
}

- (id)removeFavoriteDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removeFavoriteDuration: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = durationCopy;
  v8 = v6;
  v17 = v8;
  v9 = durationCopy;
  errorOnlyCompletionHandlerAdapter = [v8 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v15 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v11 = v17;
  v12 = v8;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __41__MTTimerManager_removeFavoriteDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 removeFavoriteDuration:v2 withCompletion:v5];
}

- (id)latestDuration
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ running query for latest duration", buf, 0xCu);
  }

  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__MTTimerManager_latestDuration__block_invoke;
  aBlock[3] = &unk_1E7B0F208;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(MTTimerManager *)self getQueryDurations:v6 withFuture:v5];
  v8 = v5;

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)saveLatestDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ saveLatestDuration: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  connectionProvider = [(MTTimerManager *)self connectionProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = durationCopy;
  v8 = v6;
  v17 = v8;
  v9 = durationCopy;
  errorOnlyCompletionHandlerAdapter = [v8 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:&v15 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  v11 = v17;
  v12 = v8;

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __37__MTTimerManager_saveLatestDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 saveLatestDuration:v2 withCompletion:v5];
}

void __28__MTTimerManager_timersSync__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ Error getting timers:%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)addTimer:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateTimer:doSynchronous:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateCurrentTimerWithState:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_validateCanStartTimer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_updateCurrentTimerWithStateSync:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end