@interface MTNextAlarmManager
- (MTNextAlarmManager)init;
- (void)_handleAlarmsDidChange;
- (void)calculateNextAlarms;
@end

@implementation MTNextAlarmManager

- (MTNextAlarmManager)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MTNextAlarmManager;
  v2 = [(MTNextAlarmManager *)&v10 init];
  if (v2)
  {
    v3 = MTLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v2;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@...", buf, 0xCu);
    }

    v4 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTNextAlarmManager.accessqueue", +[MTScheduler defaultPriority]);
    [(MTNextAlarmManager *)v2 setSerializer:v4];

    v5 = [MEMORY[0x1E695DFD8] set];
    [(MTNextAlarmManager *)v2 setNextAlarms:v5];

    v6 = objc_opt_new();
    [(MTNextAlarmManager *)v2 setAlarmManager:v6];

    [(MTNextAlarmManager *)v2 calculateNextAlarms];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__handleAlarmsDidChange name:@"MTAlarmManagerFiringAlarmChanged" object:v2->_alarmManager];
    [v7 addObserver:v2 selector:sel__handleAlarmsDidChange name:@"MTAlarmManagerNextAlarmChanged" object:v2->_alarmManager];
    [v7 addObserver:v2 selector:sel__handleAlarmsDidChange name:@"MTAlarmManagerAlarmsChanged" object:v2->_alarmManager];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)calculateNextAlarms
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MTNextAlarmManager_calculateNextAlarms__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void __41__MTNextAlarmManager_calculateNextAlarms__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) alarmManager];
  v3 = [v2 alarmsSyncIncludingSleepAlarm:1];
  v4 = [v3 na_filter:&__block_literal_global_28];

  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 na_map:&__block_literal_global_55];
  v7 = [v5 setWithArray:v6];
  [*(a1 + 32) setNextAlarms:v7];

  v8 = [*(a1 + 32) updateHandler];

  if (v8)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [v10 nextAlarms];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ calling update handler with %{public}@", &v15, 0x16u);
    }

    v12 = [*(a1 + 32) updateHandler];
    v13 = [*(a1 + 32) nextAlarms];
    (v12)[2](v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

id __41__MTNextAlarmManager_calculateNextAlarms__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 nextFireDate];
  [v3 setFireDate:v4];

  v5 = [v2 alarmIDString];
  [v3 setIdentifier:v5];

  [v3 setIsSleepAlarm:{objc_msgSend(v2, "isSleepAlarm")}];
  v6 = [v2 displayTitle];

  [v3 setTitle:v6];

  return v3;
}

- (void)_handleAlarmsDidChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ _handleAlarmsDidChange", &v5, 0xCu);
  }

  [(MTNextAlarmManager *)self calculateNextAlarms];
  v4 = *MEMORY[0x1E69E9840];
}

@end