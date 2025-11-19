@interface MTAlarmDataSource
- (BOOL)hasSleepAlarmMatchingAlarmIDString:(id)a3;
- (MTAlarmDataSource)initWithAlarmManager:(id)a3;
- (id)addAlarm:(id)a3;
- (id)alarmAtRow:(unint64_t)a3;
- (id)reloadAlarmsNotifyObservers:(BOOL)a3;
- (id)removeAlarm:(id)a3;
- (id)updateAlarm:(id)a3 reload:(BOOL)a4;
- (unint64_t)numberOfAlarms;
- (unint64_t)rowForAlarm:(id)a3;
- (unint64_t)rowForAlarmWithID:(id)a3;
- (void)_handleAlarmNotification:(id)a3 block:(id)a4;
- (void)_registerForNotifications;
- (void)_stateReset;
- (void)dealloc;
@end

@implementation MTAlarmDataSource

- (void)_registerForNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  alarmManager = self->_alarmManager;
  v5 = [MEMORY[0x1E696ADC8] mainQueue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke;
  v29[3] = &unk_1E7B0F968;
  v29[4] = self;
  v6 = [v3 addObserverForName:@"MTAlarmManagerAlarmsAdded" object:alarmManager queue:v5 usingBlock:v29];

  v7 = self->_alarmManager;
  v8 = [MEMORY[0x1E696ADC8] mainQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_4;
  v28[3] = &unk_1E7B0F968;
  v28[4] = self;
  v9 = [v3 addObserverForName:@"MTAlarmManagerAlarmsRemoved" object:v7 queue:v8 usingBlock:v28];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_7;
  aBlock[3] = &unk_1E7B0ECA0;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v11 = self->_alarmManager;
  v12 = [MEMORY[0x1E696ADC8] mainQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_9;
  v25[3] = &unk_1E7B0F990;
  v25[4] = self;
  v13 = v10;
  v26 = v13;
  v14 = [v3 addObserverForName:@"MTAlarmManagerFiringAlarmChanged" object:v11 queue:v12 usingBlock:v25];

  v15 = self->_alarmManager;
  v16 = [MEMORY[0x1E696ADC8] mainQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_10;
  v23[3] = &unk_1E7B0F990;
  v23[4] = self;
  v24 = v13;
  v17 = v13;
  v18 = [v3 addObserverForName:@"MTAlarmManagerAlarmsUpdated" object:v15 queue:v16 usingBlock:v23];

  v19 = self->_alarmManager;
  v20 = [MEMORY[0x1E696ADC8] mainQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_11;
  v22[3] = &unk_1E7B0F968;
  v22[4] = self;
  v21 = [v3 addObserverForName:@"MTAlarmManagerStateReset" object:v19 queue:v20 usingBlock:v22];
}

- (unint64_t)numberOfAlarms
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  alarms = self->_alarms;

  return [(NSMutableArray *)alarms count];
}

- (MTAlarmDataSource)initWithAlarmManager:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14.receiver = self;
  v14.super_class = MTAlarmDataSource;
  v6 = [(MTAlarmDataSource *)&v14 init];
  if (v6)
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing", buf, 0xCu);
    }

    objc_storeStrong(&v6->_alarmManager, a3);
    v8 = objc_opt_new();
    alarms = v6->_alarms;
    v6->_alarms = v8;

    v10 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v10;

    [(MTAlarmDataSource *)v6 _registerForNotifications];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __46__MTAlarmDataSource__registerForNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_2;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleAlarmNotification:a2 block:v4];
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_3;
  v6[3] = &unk_1E7B0F940;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didAddAlarms:*(a1 + 40)];
  }
}

uint64_t __46__MTAlarmDataSource__registerForNotifications__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_5;
  v4[3] = &unk_1E7B0ECA0;
  v4[4] = v2;
  return [v2 _handleAlarmNotification:a2 block:v4];
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_6;
  v6[3] = &unk_1E7B0F940;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didRemoveAlarms:*(a1 + 40)];
  }
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MTAlarmDataSource__registerForNotifications__block_invoke_8;
  v6[3] = &unk_1E7B0F940;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _iterateObserversWithBlock:v6];
}

void __46__MTAlarmDataSource__registerForNotifications__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSource:*(a1 + 32) didUpdateAlarms:*(a1 + 40)];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"MTAlarmManagerAlarmsAdded" object:self->_alarmManager];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"MTAlarmManagerAlarmsRemoved" object:self->_alarmManager];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"MTAlarmManagerFiringAlarmChanged" object:self->_alarmManager];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:@"MTAlarmManagerAlarmsUpdated" object:self->_alarmManager];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:@"MTAlarmManagerStateReset" object:self->_alarmManager];

  v8.receiver = self;
  v8.super_class = MTAlarmDataSource;
  [(MTAlarmDataSource *)&v8 dealloc];
}

- (void)_handleAlarmNotification:(id)a3 block:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [v6 userInfo];
  v9 = [v8 objectForKey:@"Alarms"];

  if ([v9 count])
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 name];
      v14 = 138543874;
      v15 = self;
      v16 = 2114;
      v17 = v11;
      v18 = 1024;
      v19 = [v9 count];
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ notification for %d alarms.", &v14, 0x1Cu);
    }

    v12 = [(MTAlarmDataSource *)self reloadAlarms];
    v7[2](v7, v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_stateReset
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTAlarmManagerStateReset notification.", &v6, 0xCu);
  }

  v4 = [(MTAlarmDataSource *)self reloadAlarms];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)reloadAlarmsNotifyObservers:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ asynchronously reloading alarms", buf, 0xCu);
  }

  v6 = [(MTAlarmManager *)self->_alarmManager alarmsIncludingSleepAlarm:1];
  v7 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v8 = [v6 reschedule:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MTAlarmDataSource_reloadAlarmsNotifyObservers___block_invoke;
  v13[3] = &unk_1E7B0F9E0;
  v13[4] = self;
  v14 = a3;
  v9 = [v8 addCompletionBlock:v13];
  v10 = [v9 flatMap:&__block_literal_global_43];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __49__MTAlarmDataSource_reloadAlarmsNotifyObservers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__MTAlarmDataSource_reloadAlarmsNotifyObservers___block_invoke_cold_1(a1, v6, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  v9 = objc_opt_new();
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;

  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = 0;

  v14 = objc_opt_new();
  v15 = *(a1 + 32);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        if ([v22 isSleepAlarm])
        {
          v23 = 40;
        }

        else
        {
          v23 = 24;
        }

        [*(*(a1 + 32) + v23) addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v19);
  }

  v24 = [*(*(a1 + 32) + 40) firstObject];
  v25 = *(a1 + 32);
  v26 = *(v25 + 32);
  *(v25 + 32) = v24;

  if (*(a1 + 40) == 1)
  {
    v27 = MTLogForCategory(3);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ calling reload block", buf, 0xCu);
    }

    v29 = *(a1 + 32);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__MTAlarmDataSource_reloadAlarmsNotifyObservers___block_invoke_15;
    v31[3] = &unk_1E7B0F9B8;
    v31[4] = v29;
    [v29 _iterateObserversWithBlock:v31];
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      *buf = 138543362;
      v37 = v30;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished reloading", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
}

- (id)alarmAtRow:(unint64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  alarms = self->_alarms;

  return [(NSMutableArray *)alarms objectAtIndexedSubscript:a3];
}

- (unint64_t)rowForAlarm:(id)a3
{
  v4 = [a3 alarmIDString];
  v5 = [(MTAlarmDataSource *)self rowForAlarmWithID:v4];

  return v5;
}

- (unint64_t)rowForAlarmWithID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  alarms = self->_alarms;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MTAlarmDataSource_rowForAlarmWithID___block_invoke;
  v9[3] = &unk_1E7B0F610;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)alarms indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __39__MTAlarmDataSource_rowForAlarmWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasSleepAlarmMatchingAlarmIDString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sleepAlarms = self->_sleepAlarms;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmDataSource_hasSleepAlarmMatchingAlarmIDString___block_invoke;
  v8[3] = &unk_1E7B0F610;
  v9 = v4;
  v6 = v4;
  LOBYTE(sleepAlarms) = [(NSMutableArray *)sleepAlarms indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;

  return sleepAlarms;
}

uint64_t __56__MTAlarmDataSource_hasSleepAlarmMatchingAlarmIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)addAlarm:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([v5 isSleepAlarm])
  {
    objc_storeStrong(&self->_sleepAlarm, a3);
  }

  else
  {
    [(NSMutableArray *)self->_alarms addObject:v5];
  }

  v6 = [(MTAlarmDataSource *)self alarmManager];
  v7 = [v6 addAlarm:v5];
  v8 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v9 = [v7 reschedule:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__MTAlarmDataSource_addAlarm___block_invoke;
  v12[3] = &unk_1E7B0DB78;
  v12[4] = self;
  v10 = [v9 flatMap:v12];

  return v10;
}

- (id)updateAlarm:(id)a3 reload:(BOOL)a4
{
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([v7 isSleepAlarm])
  {
    objc_storeStrong(&self->_sleepAlarm, a3);
  }

  else
  {
    v8 = [(MTAlarmDataSource *)self rowForAlarm:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_alarms setObject:v7 atIndexedSubscript:v8];
    }
  }

  v9 = [(MTAlarmDataSource *)self alarmManager];
  v10 = [v9 updateAlarm:v7];
  v11 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v12 = [v10 reschedule:v11];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__MTAlarmDataSource_updateAlarm_reload___block_invoke;
  v15[3] = &unk_1E7B0FA08;
  v15[4] = self;
  v16 = a4;
  v13 = [v12 flatMap:v15];

  return v13;
}

- (id)removeAlarm:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([v4 isSleepAlarm])
  {
    sleepAlarm = self->_sleepAlarm;
    self->_sleepAlarm = 0;
  }

  else
  {
    v6 = [(MTAlarmDataSource *)self rowForAlarm:v4];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_alarms removeObjectAtIndex:v6];
    }
  }

  v7 = [(MTAlarmDataSource *)self alarmManager];
  v8 = [v7 removeAlarm:v4];
  v9 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v10 = [v8 reschedule:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MTAlarmDataSource_removeAlarm___block_invoke;
  v13[3] = &unk_1E7B0DB78;
  v13[4] = self;
  v11 = [v10 flatMap:v13];

  return v11;
}

void __49__MTAlarmDataSource_reloadAlarmsNotifyObservers___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed reloading: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end