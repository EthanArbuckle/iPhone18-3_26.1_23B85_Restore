@interface MTTimerManagerExportedObject
- (MTTimerManager)timerManager;
- (MTTimerManagerExportedObject)initWithTimerManager:(id)a3;
- (void)_didReceiveTimerServerReadyNotification:(id)a3;
- (void)dealloc;
- (void)favoriteTimerDurationsUpdated:(id)a3;
- (void)latestTimerDurationUpdated:(id)a3;
- (void)nextTimerChanged:(id)a3;
- (void)recentTimerDurationsUpdated:(id)a3;
- (void)timerDismissed:(id)a3;
- (void)timerFired:(id)a3;
- (void)timersAdded:(id)a3;
- (void)timersRemoved:(id)a3;
- (void)timersUpdated:(id)a3;
@end

@implementation MTTimerManagerExportedObject

- (MTTimerManagerExportedObject)initWithTimerManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTTimerManagerExportedObject;
  v5 = [(MTTimerManagerExportedObject *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_timerManager, v4);
    v7 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v7 addObserver:v6 selector:sel__didReceiveTimerServerReadyNotification_ name:@"com.apple.MTTimerServer.ready" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.MTTimerServer.ready" object:0];

  v6.receiver = self;
  v6.super_class = MTTimerManagerExportedObject;
  [(MTTimerManagerExportedObject *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveTimerServerReadyNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTTimerManagerExportedObject *)self timerManager];
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTTimerServerReadyNotification", buf, 0xCu);
  }

  v6 = [(MTTimerManagerExportedObject *)self timerManager];
  v7 = [v6 cache];
  [v7 markNeedsUpdate];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MTTimerManagerExportedObject__didReceiveTimerServerReadyNotification___block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = *MEMORY[0x1E69E9840];
}

void __72__MTTimerManagerExportedObject__didReceiveTimerServerReadyNotification___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) timerManager];
  v2 = [v4 notificationCenter];
  v3 = [*(a1 + 32) timerManager];
  [v2 postNotificationName:@"MTTimerManagerStateReset" object:v3];
}

- (void)timersAdded:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 valueForKey:@"timerID"];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified timers added: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MTTimerManagerExportedObject_timersAdded___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerManagerExportedObject_timersAdded___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Timer Added", v11, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Timers"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) timerManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) timerManager];
  [v6 postNotificationName:@"MTTimerManagerTimersAdded" object:v7 userInfo:v4];

  v8 = [*(a1 + 40) timerManager];
  v9 = [v8 notificationCenter];
  v10 = [*(a1 + 40) timerManager];
  [v9 postNotificationName:@"MTTimerManagerTimersChanged" object:v10 userInfo:v4];
}

- (void)timersUpdated:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 valueForKey:@"timerID"];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified timers update: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MTTimerManagerExportedObject_timersUpdated___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __46__MTTimerManagerExportedObject_timersUpdated___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Timer Updated", v11, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Timers"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) timerManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) timerManager];
  [v6 postNotificationName:@"MTTimerManagerTimersUpdated" object:v7 userInfo:v4];

  v8 = [*(a1 + 40) timerManager];
  v9 = [v8 notificationCenter];
  v10 = [*(a1 + 40) timerManager];
  [v9 postNotificationName:@"MTTimerManagerTimersChanged" object:v10 userInfo:v4];
}

- (void)timersRemoved:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 valueForKey:@"timerID"];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified timers removed: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MTTimerManagerExportedObject_timersRemoved___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __46__MTTimerManagerExportedObject_timersRemoved___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Timer Removed", v11, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Timers"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) timerManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) timerManager];
  [v6 postNotificationName:@"MTTimerManagerTimersRemoved" object:v7 userInfo:v4];

  v8 = [*(a1 + 40) timerManager];
  v9 = [v8 notificationCenter];
  v10 = [*(a1 + 40) timerManager];
  [v9 postNotificationName:@"MTTimerManagerTimersChanged" object:v10 userInfo:v4];
}

- (void)timerFired:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 timerID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified timer fired: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__MTTimerManagerExportedObject_timerFired___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __43__MTTimerManagerExportedObject_timerFired___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Timer Fired", v13, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF20];
    v14[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v5 = [v3 dictionaryWithObject:v4 forKey:@"Timers"];

    v6 = [*(a1 + 40) timerManager];
    v7 = [v6 notificationCenter];
    v8 = [*(a1 + 40) timerManager];
    [v7 postNotificationName:@"MTTimerManagerTimerFired" object:v8 userInfo:v5];

    v9 = [*(a1 + 40) timerManager];
    v10 = [v9 notificationCenter];
    v11 = [*(a1 + 40) timerManager];
    [v10 postNotificationName:@"MTTimerManagerFiringTimerChanged" object:v11 userInfo:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)timerDismissed:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 timerID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified timer dismissed: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MTTimerManagerExportedObject_timerDismissed___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __47__MTTimerManagerExportedObject_timerDismissed___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Timer Dismissed", v13, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF20];
    v14[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v5 = [v3 dictionaryWithObject:v4 forKey:@"Timers"];

    v6 = [*(a1 + 40) timerManager];
    v7 = [v6 notificationCenter];
    v8 = [*(a1 + 40) timerManager];
    [v7 postNotificationName:@"MTTimerManagerFiringTimerDismissed" object:v8 userInfo:v5];

    v9 = [*(a1 + 40) timerManager];
    v10 = [v9 notificationCenter];
    v11 = [*(a1 + 40) timerManager];
    [v10 postNotificationName:@"MTTimerManagerFiringTimerChanged" object:v11 userInfo:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)nextTimerChanged:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    v7 = [v4 timerID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified next timer changed: %{public}@", buf, 0x16u);
  }

  v8 = [(MTTimerManagerExportedObject *)self timerManager];
  v9 = [v8 cache];
  [v9 markNeedsUpdate];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__MTTimerManagerExportedObject_nextTimerChanged___block_invoke;
  v12[3] = &unk_1E7B0C928;
  v13 = v4;
  v14 = self;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __49__MTTimerManagerExportedObject_nextTimerChanged___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerManager - Next Timer Changed", v15, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"NextTimer"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) timerManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) timerManager];
  [v6 postNotificationName:@"MTTimerManagerNextTimerChanged" object:v7 userInfo:v4];

  if (*(a1 + 32))
  {
    v8 = MEMORY[0x1E695DF20];
    v16[0] = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [v8 dictionaryWithObject:v9 forKey:@"Timers"];

    v11 = [*(a1 + 40) timerManager];
    v12 = [v11 notificationCenter];
    v13 = [*(a1 + 40) timerManager];
    [v12 postNotificationName:@"MTTimerManagerTimersChanged" object:v13 userInfo:v10];

    v4 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)recentTimerDurationsUpdated:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified recent durations updated", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__MTTimerManagerExportedObject_recentTimerDurationsUpdated___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __60__MTTimerManagerExportedObject_recentTimerDurationsUpdated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v1 forKey:@"Durations"];
    v3 = [*(a1 + 40) timerManager];
    v4 = [v3 notificationCenter];
    v5 = [*(a1 + 40) timerManager];
    [v4 postNotificationName:@"MTTimerManagerRecentDurationsUpdated" object:v5 userInfo:v6];
  }
}

- (void)favoriteTimerDurationsUpdated:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified favorite durations updated", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MTTimerManagerExportedObject_favoriteTimerDurationsUpdated___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __62__MTTimerManagerExportedObject_favoriteTimerDurationsUpdated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v1 forKey:@"Durations"];
    v3 = [*(a1 + 40) timerManager];
    v4 = [v3 notificationCenter];
    v5 = [*(a1 + 40) timerManager];
    [v4 postNotificationName:@"MTTimerManagerFavoriteDurationsUpdated" object:v5 userInfo:v6];
  }
}

- (void)latestTimerDurationUpdated:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerManagerExportedObject *)self timerManager];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified latest duration updated", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__MTTimerManagerExportedObject_latestTimerDurationUpdated___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __59__MTTimerManagerExportedObject_latestTimerDurationUpdated___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695DF20];
    v9[0] = *(a1 + 32);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v4 = [v2 dictionaryWithObject:v3 forKey:@"Durations"];

    v5 = [*(a1 + 40) timerManager];
    v6 = [v5 notificationCenter];
    v7 = [*(a1 + 40) timerManager];
    [v6 postNotificationName:@"MTTimerManagerLatestDurationUpdated" object:v7 userInfo:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (MTTimerManager)timerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_timerManager);

  return WeakRetained;
}

@end