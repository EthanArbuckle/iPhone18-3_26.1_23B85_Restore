@interface MTTimerDataSource
- (MTTimerDataSource)initWithTimerManager:(id)manager;
- (id)activeTimerAtRow:(unint64_t)row;
- (id)addTimer:(id)timer reload:(BOOL)reload;
- (id)getDefaultDurations;
- (id)getFavoriteDurations;
- (id)getLatestDuration;
- (id)getRecentDurations;
- (id)reloadTimersNotifyingObservers:(BOOL)observers;
- (id)removeTimer:(id)timer;
- (id)timerAtRow:(unint64_t)row;
- (id)updateTimer:(id)timer reload:(BOOL)reload;
- (unint64_t)numberOfActiveTimers;
- (unint64_t)numberOfTimers;
- (unint64_t)rowForTimer:(id)timer;
- (unint64_t)rowForTimerWithID:(id)d;
- (void)_handleTimerDurationNotification:(id)notification block:(id)block;
- (void)_handleTimerNotification:(id)notification block:(id)block;
- (void)_registerForNotifications;
- (void)_stateReset;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)processFavoriteDurationsUpdated:(id)updated;
- (void)processLatestDurationsUpdatedWith:(id)with;
- (void)processRecentDurationsUpdated:(id)updated;
- (void)reloadTimerDurations;
@end

@implementation MTTimerDataSource

- (void)_registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  timerManager = self->_timerManager;
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke;
  v41[3] = &unk_1E7B0F968;
  v41[4] = self;
  v6 = [defaultCenter addObserverForName:@"MTTimerManagerTimersAdded" object:timerManager queue:mainQueue usingBlock:v41];

  v7 = self->_timerManager;
  mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_4;
  v40[3] = &unk_1E7B0F968;
  v40[4] = self;
  v9 = [defaultCenter addObserverForName:@"MTTimerManagerTimersRemoved" object:v7 queue:mainQueue2 usingBlock:v40];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_3_12;
  aBlock[3] = &unk_1E7B0ECA0;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v11 = self->_timerManager;
  mainQueue3 = [MEMORY[0x1E696ADC8] mainQueue];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_5;
  v37[3] = &unk_1E7B0F990;
  v37[4] = self;
  v13 = v10;
  v38 = v13;
  v14 = [defaultCenter addObserverForName:@"MTTimerManagerFiringTimerChanged" object:v11 queue:mainQueue3 usingBlock:v37];

  v15 = self->_timerManager;
  mainQueue4 = [MEMORY[0x1E696ADC8] mainQueue];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_16;
  v35[3] = &unk_1E7B0F990;
  v35[4] = self;
  v36 = v13;
  v17 = v13;
  v18 = [defaultCenter addObserverForName:@"MTTimerManagerTimersUpdated" object:v15 queue:mainQueue4 usingBlock:v35];

  v19 = self->_timerManager;
  mainQueue5 = [MEMORY[0x1E696ADC8] mainQueue];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_17;
  v34[3] = &unk_1E7B0F968;
  v34[4] = self;
  v21 = [defaultCenter addObserverForName:@"MTTimerManagerStateReset" object:v19 queue:mainQueue5 usingBlock:v34];

  v22 = self->_timerManager;
  mainQueue6 = [MEMORY[0x1E696ADC8] mainQueue];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_25;
  v33[3] = &unk_1E7B0F968;
  v33[4] = self;
  v24 = [defaultCenter addObserverForName:@"MTTimerManagerRecentDurationsUpdated" object:v22 queue:mainQueue6 usingBlock:v33];

  v25 = self->_timerManager;
  mainQueue7 = [MEMORY[0x1E696ADC8] mainQueue];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_27;
  v32[3] = &unk_1E7B0F968;
  v32[4] = self;
  v27 = [defaultCenter addObserverForName:@"MTTimerManagerFavoriteDurationsUpdated" object:v25 queue:mainQueue7 usingBlock:v32];

  v28 = self->_timerManager;
  mainQueue8 = [MEMORY[0x1E696ADC8] mainQueue];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_3_29;
  v31[3] = &unk_1E7B0F968;
  v31[4] = self;
  v30 = [defaultCenter addObserverForName:@"MTTimerManagerLatestDurationUpdated" object:v28 queue:mainQueue8 usingBlock:v31];
}

- (MTTimerDataSource)initWithTimerManager:(id)manager
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14.receiver = self;
  v14.super_class = MTTimerDataSource;
  v6 = [(MTTimerDataSource *)&v14 init];
  if (v6)
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing", buf, 0xCu);
    }

    v6->_timerLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_timerManager, manager);
    v8 = objc_opt_new();
    timers = v6->_timers;
    v6->_timers = v8;

    v10 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v10;

    [(MTTimerDataSource *)v6 _registerForNotifications];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __46__MTTimerDataSource__registerForNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_2;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleTimerNotification:a2 block:v4];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_3;
  v6[3] = &unk_1E7B0FCC8;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didAddTimers:*(a1 + 40)];
  }
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ MTTimerManagerTimersRemoved", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_8;
  v8[3] = &unk_1E7B0ECA0;
  v8[4] = v6;
  [v6 _handleTimerNotification:v3 block:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_2_9;
  v6[3] = &unk_1E7B0FCC8;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_2_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didRemoveTimers:*(a1 + 40)];
  }
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_3_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_4_13;
  v6[3] = &unk_1E7B0FCC8;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_4_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didUpdateTimers:*(a1 + 40)];
  }
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_5(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ MTTimerManagerFiringTimerChanged", &v7, 0xCu);
  }

  [*(a1 + 32) _handleTimerNotification:v3 block:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_16(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ MTTimerManagerTimersUpdated", &v7, 0xCu);
  }

  [*(a1 + 32) _handleTimerNotification:v3 block:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MTTimerDataSource__registerForNotifications__block_invoke_17(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ MTTimerManagerStateReset", &v6, 0xCu);
  }

  result = [*(a1 + 32) _stateReset];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __46__MTTimerDataSource__registerForNotifications__block_invoke_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_2_26;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleTimerDurationNotification:a2 block:v4];
}

void __46__MTTimerDataSource__registerForNotifications__block_invoke_2_26(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ processing recents notification update with durations: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) processRecentDurationsUpdated:v3];
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MTTimerDataSource__registerForNotifications__block_invoke_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_2_28;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleTimerDurationNotification:a2 block:v4];
}

uint64_t __46__MTTimerDataSource__registerForNotifications__block_invoke_3_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTTimerDataSource__registerForNotifications__block_invoke_4_30;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleTimerDurationNotification:a2 block:v4];
}

- (void)processRecentDurationsUpdated:(id)updated
{
  updatedCopy = updated;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MTTimerDataSource_processRecentDurationsUpdated___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v6[4] = self;
  v7 = updatedCopy;
  v5 = updatedCopy;
  [(MTTimerDataSource *)self _withLock:v6];
}

uint64_t __51__MTTimerDataSource_processRecentDurationsUpdated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ updating recent durations to: %{public}@", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MTTimerDataSource_processRecentDurationsUpdated___block_invoke_31;
  v8[3] = &unk_1E7B0FCF0;
  v8[4] = v5;
  result = [v5 _iterateObserversWithBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __51__MTTimerDataSource_processRecentDurationsUpdated___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidReloadRecentDurations:*(a1 + 32)];
  }
}

- (void)processFavoriteDurationsUpdated:(id)updated
{
  updatedCopy = updated;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__MTTimerDataSource_processFavoriteDurationsUpdated___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v6[4] = self;
  v7 = updatedCopy;
  v5 = updatedCopy;
  [(MTTimerDataSource *)self _withLock:v6];
}

uint64_t __53__MTTimerDataSource_processFavoriteDurationsUpdated___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__MTTimerDataSource_processFavoriteDurationsUpdated___block_invoke_2;
  v4[3] = &unk_1E7B0FCF0;
  v4[4] = v2;
  return [v2 _iterateObserversWithBlock:v4];
}

void __53__MTTimerDataSource_processFavoriteDurationsUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidReloadFavoriteDurations:*(a1 + 32)];
  }
}

- (void)processLatestDurationsUpdatedWith:(id)with
{
  withCopy = with;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MTTimerDataSource_processLatestDurationsUpdatedWith___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = withCopy;
  selfCopy = self;
  v5 = withCopy;
  [(MTTimerDataSource *)self _withLock:v6];
}

uint64_t __55__MTTimerDataSource_processLatestDurationsUpdatedWith___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = *(a1 + 40);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;
  }

  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MTTimerDataSource_processLatestDurationsUpdatedWith___block_invoke_2;
  v7[3] = &unk_1E7B0FCF0;
  v7[4] = v5;
  return [v5 _iterateObserversWithBlock:v7];
}

void __55__MTTimerDataSource_processLatestDurationsUpdatedWith___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidReloadLatestDuration:*(a1 + 32)];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"MTTimerManagerTimersAdded" object:self->_timerManager];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"MTTimerManagerTimersRemoved" object:self->_timerManager];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"MTTimerManagerFiringTimerChanged" object:self->_timerManager];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:@"MTTimerManagerTimersUpdated" object:self->_timerManager];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 removeObserver:self name:@"MTTimerManagerStateReset" object:self->_timerManager];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 removeObserver:self name:@"MTTimerManagerRecentDurationsUpdated" object:self->_timerManager];

  defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter7 removeObserver:self name:@"MTTimerManagerFavoriteDurationsUpdated" object:self->_timerManager];

  defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter8 removeObserver:self name:@"MTTimerManagerLatestDurationUpdated" object:self->_timerManager];

  v11.receiver = self;
  v11.super_class = MTTimerDataSource;
  [(MTTimerDataSource *)&v11 dealloc];
}

- (void)_handleTimerNotification:(id)notification block:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  userInfo = [notificationCopy userInfo];
  v9 = [userInfo objectForKey:@"Timers"];

  v10 = MTLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = name;
    v18 = 1024;
    v19 = [v9 count];
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ notification for %d timers.", &v14, 0x1Cu);
  }

  reloadTimers = [(MTTimerDataSource *)self reloadTimers];
  blockCopy[2](blockCopy, v9);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleTimerDurationNotification:(id)notification block:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  userInfo = [notificationCopy userInfo];
  v9 = [userInfo objectForKey:@"Durations"];

  v10 = MTLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v13 = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = name;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ duration payload: %{public}@", &v13, 0x20u);
  }

  [(MTTimerDataSource *)self reloadTimerDurations];
  blockCopy[2](blockCopy, v9);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_stateReset
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTTimerManagerStateReset notification.", &v6, 0xCu);
  }

  reloadTimers = [(MTTimerDataSource *)self reloadTimers];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)reloadTimersNotifyingObservers:(BOOL)observers
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ asynchronously reloading timers", buf, 0xCu);
  }

  timers = [(MTTimerManager *)self->_timerManager timers];
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v8 = [timers reschedule:mtMainThreadScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke;
  v13[3] = &unk_1E7B0F9E0;
  v13[4] = self;
  observersCopy = observers;
  v9 = [v8 addCompletionBlock:v13];
  v10 = [v9 flatMap:&__block_literal_global_50];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke_2;
    v19[3] = &unk_1E7B0C928;
    v19[4] = v8;
    v20 = v5;
    [v8 _withLock:v19];
    v9 = *(a1 + 40);
    v10 = MTLogForCategory(4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v22 = v12;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ calling reload block", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke_42;
      v18[3] = &unk_1E7B0FCF0;
      v18[4] = v13;
      [v13 _iterateObserversWithBlock:v18];
    }

    else
    {
      if (v11)
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v22 = v14;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ reload without notifying observers", buf, 0xCu);
      }
    }

    v15 = MTLogForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ finished reloading", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [*(*(a1 + 32) + 32) addObject:{v13, v15}];
        if ([v13 state] == 3 || objc_msgSend(v13, "state") == 2)
        {
          [*(*(a1 + 32) + 40) addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reloadTimerDurations
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ loading all durations with completion", buf, 0xCu);
  }

  timerManager = self->_timerManager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__MTTimerDataSource_reloadTimerDurations__block_invoke;
  v6[3] = &unk_1E7B0F208;
  v6[4] = self;
  [(MTTimerManager *)timerManager loadAllDurationsWithCompletion:v6];
  v5 = *MEMORY[0x1E69E9840];
}

void __41__MTTimerDataSource_reloadTimerDurations__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = MTLogForCategory(4);
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __41__MTTimerDataSource_reloadTimerDurations__block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      v35 = v18;
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ loading durations with completion finished successfully", buf, 0xCu);
    }

    v19 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__MTTimerDataSource_reloadTimerDurations__block_invoke_47;
    v29[3] = &unk_1E7B0D0F8;
    v29[4] = v19;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    [v19 _withLock:v29];
    v20 = MTLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      [v21 recentDurations];
      v22 = v27 = v11;
      v23 = [*(a1 + 32) favoriteDurations];
      v24 = [*(a1 + 32) latestDuration];
      *buf = 138544130;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      v40 = 2114;
      v41 = v24;
      _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ updated durations are recent: %{public}@, favorites: %{public}@, latest: %{public}@", buf, 0x2Au);

      v11 = v27;
    }

    v25 = *(a1 + 32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__MTTimerDataSource_reloadTimerDurations__block_invoke_51;
    v28[3] = &unk_1E7B0FCF0;
    v28[4] = v25;
    [v25 _iterateObserversWithBlock:v28];
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __41__MTTimerDataSource_reloadTimerDurations__block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 40) sortedArrayUsingComparator:&__block_literal_global_50];
  [*(a1 + 32) setRecentDurations:v2];

  [*(a1 + 32) setFavoriteDurations:*(a1 + 48)];
  [*(a1 + 32) setDefaultDurations:*(a1 + 56)];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v4 setLatestDuration:v3];
}

BOOL __41__MTTimerDataSource_reloadTimerDurations__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastModified];
  v6 = [v4 lastModified];

  v7 = [v5 compare:v6] == -1;
  return v7;
}

void __41__MTTimerDataSource_reloadTimerDurations__block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidReloadAllDurations:*(a1 + 32)];
  }
}

- (unint64_t)numberOfTimers
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MTTimerDataSource_numberOfTimers__block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = self;
  v5[5] = &v6;
  [(MTTimerDataSource *)self _withLock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__MTTimerDataSource_numberOfTimers__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)timerAtRow:(unint64_t)row
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTTimerDataSource_timerAtRow___block_invoke;
  v7[3] = &unk_1E7B0FD38;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  [(MTTimerDataSource *)self _withLock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __32__MTTimerDataSource_timerAtRow___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectAtIndexedSubscript:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)activeTimerAtRow:(unint64_t)row
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MTTimerDataSource_activeTimerAtRow___block_invoke;
  v7[3] = &unk_1E7B0FD38;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = row;
  [(MTTimerDataSource *)self _withLock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __38__MTTimerDataSource_activeTimerAtRow___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectAtIndexedSubscript:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (unint64_t)numberOfActiveTimers
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MTTimerDataSource_numberOfActiveTimers__block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = self;
  v5[5] = &v6;
  [(MTTimerDataSource *)self _withLock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__MTTimerDataSource_numberOfActiveTimers__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)rowForTimer:(id)timer
{
  timerIDString = [timer timerIDString];
  v5 = [(MTTimerDataSource *)self rowForTimerWithID:timerIDString];

  return v5;
}

- (unint64_t)rowForTimerWithID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MTTimerDataSource_rowForTimerWithID___block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = dCopy;
  v9 = v5;
  [(MTTimerDataSource *)self _withLock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __39__MTTimerDataSource_rowForTimerWithID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MTTimerDataSource_rowForTimerWithID___block_invoke_2;
  v3[3] = &unk_1E7B0FD60;
  v4 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) = [v2 indexOfObjectPassingTest:v3];
}

uint64_t __39__MTTimerDataSource_rowForTimerWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)getDefaultDurations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MTTimerDataSource_getDefaultDurations__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerDataSource *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __40__MTTimerDataSource_getDefaultDurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultDurations];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)getFavoriteDurations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MTTimerDataSource_getFavoriteDurations__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerDataSource *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__MTTimerDataSource_getFavoriteDurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) favoriteDurations];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)getLatestDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MTTimerDataSource_getLatestDuration__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerDataSource *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __38__MTTimerDataSource_getLatestDuration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) latestDuration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)getRecentDurations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__MTTimerDataSource_getRecentDurations__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerDataSource *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __39__MTTimerDataSource_getRecentDurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentDurations];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)addTimer:(id)timer reload:(BOOL)reload
{
  timerCopy = timer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__MTTimerDataSource_addTimer_reload___block_invoke;
  v16[3] = &unk_1E7B0C928;
  v16[4] = self;
  v17 = timerCopy;
  v7 = timerCopy;
  [(MTTimerDataSource *)self _withLock:v16];
  timerManager = [(MTTimerDataSource *)self timerManager];
  v9 = [timerManager addTimer:v7];
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v11 = [v9 reschedule:mtMainThreadScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__MTTimerDataSource_addTimer_reload___block_invoke_2;
  v14[3] = &unk_1E7B0FA08;
  v14[4] = self;
  reloadCopy = reload;
  v12 = [v11 flatMap:v14];

  return v12;
}

- (id)updateTimer:(id)timer reload:(BOOL)reload
{
  timerCopy = timer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(MTTimerDataSource *)self rowForTimer:timerCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__MTTimerDataSource_updateTimer_reload___block_invoke;
    v16[3] = &unk_1E7B0CD10;
    v16[4] = self;
    v18 = v7;
    v17 = timerCopy;
    [(MTTimerDataSource *)self _withLock:v16];
  }

  timerManager = [(MTTimerDataSource *)self timerManager];
  v9 = [timerManager updateTimer:timerCopy];
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v11 = [v9 reschedule:mtMainThreadScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__MTTimerDataSource_updateTimer_reload___block_invoke_2;
  v14[3] = &unk_1E7B0FA08;
  v14[4] = self;
  reloadCopy = reload;
  v12 = [v11 flatMap:v14];

  return v12;
}

- (id)removeTimer:(id)timer
{
  timerCopy = timer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(MTTimerDataSource *)self rowForTimer:timerCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __33__MTTimerDataSource_removeTimer___block_invoke;
    v13[3] = &unk_1E7B0FD88;
    v13[4] = self;
    v13[5] = v5;
    [(MTTimerDataSource *)self _withLock:v13];
  }

  timerManager = [(MTTimerDataSource *)self timerManager];
  v7 = [timerManager removeTimer:timerCopy];
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v9 = [v7 reschedule:mtMainThreadScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__MTTimerDataSource_removeTimer___block_invoke_2;
  v12[3] = &unk_1E7B0DB78;
  v12[4] = self;
  v10 = [v9 flatMap:v12];

  return v10;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_timerLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_timerLock);
}

void __52__MTTimerDataSource_reloadTimersNotifyingObservers___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed reloading: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __41__MTTimerDataSource_reloadTimerDurations__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v2, v3, "%{public}@ reloadTimerDurations failed with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end