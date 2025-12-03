@interface MTStopwatchManagerExportedObject
- (MTStopwatchManager)stopwatchManager;
- (MTStopwatchManagerExportedObject)initWithStopwatchManager:(id)manager;
- (void)_didReceiveTimerServerReadyNotification:(id)notification;
- (void)dealloc;
- (void)didCreateStopwatch:(id)stopwatch;
- (void)didDeleteStopwatch:(id)stopwatch;
- (void)didUpdateStopwatch:(id)stopwatch;
- (void)publishEvent:(id)event withStopwatch:(id)stopwatch modifiedItem:(id)item source:(id)source;
@end

@implementation MTStopwatchManagerExportedObject

- (MTStopwatchManagerExportedObject)initWithStopwatchManager:(id)manager
{
  v14 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MTStopwatchManagerExportedObject;
  v5 = [(MTStopwatchManagerExportedObject *)&v9 init];
  if (v5)
  {
    v6 = MTLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = managerCopy;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized exported object, manager: %{public}@", buf, 0x16u);
    }

    objc_storeWeak(&v5->_stopwatchManager, managerCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.MTStopwatchServer.ready" object:0];

  v6.receiver = self;
  v6.super_class = MTStopwatchManagerExportedObject;
  [(MTStopwatchManagerExportedObject *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveTimerServerReadyNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    stopwatchManager = [(MTStopwatchManagerExportedObject *)self stopwatchManager];
    *buf = 138543362;
    v9 = stopwatchManager;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTStopwatchServerReadyNotification", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MTStopwatchManagerExportedObject__didReceiveTimerServerReadyNotification___block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__MTStopwatchManagerExportedObject__didReceiveTimerServerReadyNotification___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) stopwatchManager];
  v2 = [v4 notificationCenter];
  v3 = [*(a1 + 32) stopwatchManager];
  [v2 postNotificationName:@"MTStopwatchManagerStateReset" object:v3];
}

- (void)didCreateStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MTStopwatchManagerExportedObject_didCreateStopwatch___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = stopwatchCopy;
  selfCopy = self;
  v5 = stopwatchCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__MTStopwatchManagerExportedObject_didCreateStopwatch___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTStopwatchManager - Stopwatch created", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Stopwatch"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) stopwatchManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) stopwatchManager];
  [v6 postNotificationName:@"MTStopwatchManagerStopwatchCreated" object:v7 userInfo:v4];
}

- (void)didDeleteStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MTStopwatchManagerExportedObject_didDeleteStopwatch___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = stopwatchCopy;
  selfCopy = self;
  v5 = stopwatchCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__MTStopwatchManagerExportedObject_didDeleteStopwatch___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTStopwatchManager - Stopwatch Updated", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Stopwatch"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) stopwatchManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) stopwatchManager];
  [v6 postNotificationName:@"MTStopwatchManagerStopwatchUpdated" object:v7 userInfo:v4];
}

- (void)didUpdateStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MTStopwatchManagerExportedObject_didUpdateStopwatch___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = stopwatchCopy;
  selfCopy = self;
  v5 = stopwatchCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__MTStopwatchManagerExportedObject_didUpdateStopwatch___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTStopwatchManager - Stopwatch Updated", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Stopwatch"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) stopwatchManager];
  v6 = [v5 notificationCenter];
  v7 = [*(a1 + 40) stopwatchManager];
  [v6 postNotificationName:@"MTStopwatchManagerStopwatchDeleted" object:v7 userInfo:v4];
}

- (void)publishEvent:(id)event withStopwatch:(id)stopwatch modifiedItem:(id)item source:(id)source
{
  eventCopy = event;
  stopwatchCopy = stopwatch;
  itemCopy = item;
  sourceCopy = source;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MTStopwatchManagerExportedObject_publishEvent_withStopwatch_modifiedItem_source___block_invoke;
  block[3] = &unk_1E7B0D0F8;
  block[4] = self;
  v19 = eventCopy;
  v20 = stopwatchCopy;
  v21 = sourceCopy;
  v22 = itemCopy;
  v14 = itemCopy;
  v15 = sourceCopy;
  v16 = stopwatchCopy;
  v17 = eventCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__MTStopwatchManagerExportedObject_publishEvent_withStopwatch_modifiedItem_source___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) identifier];
    v6 = [*(a1 + 56) sourceIdentifier];
    v18 = 138544130;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ - Publishing event: %{public}@, for stopwatch id: %{public}@, source identifier: %{public}@", &v18, 0x2Au);
  }

  v7 = objc_opt_new();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9)
  {
    [v7 setObject:v9 forKey:@"Stopwatch"];
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    [v8 setObject:v10 forKey:@"MTStopwatchManagerModifiedItemKey"];
  }

  v11 = [*(a1 + 56) sourceIdentifier];

  if (v11)
  {
    v12 = [*(a1 + 56) sourceIdentifier];
    [v8 setObject:v12 forKey:@"MTStopwatchSourceIdentifierKey"];
  }

  v13 = [*(a1 + 32) stopwatchManager];
  v14 = [v13 notificationCenter];
  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) stopwatchManager];
  [v14 postNotificationName:v15 object:v16 userInfo:v8];

  v17 = *MEMORY[0x1E69E9840];
}

- (MTStopwatchManager)stopwatchManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stopwatchManager);

  return WeakRetained;
}

@end