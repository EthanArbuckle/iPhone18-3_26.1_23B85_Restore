@interface MTAlarmSnapshot
- (MTAlarmSnapshot)initWithStorage:(id)storage;
- (void)source:(id)source didAddAlarms:(id)alarms;
- (void)source:(id)source didRemoveAlarms:(id)alarms;
- (void)source:(id)source didUpdateAlarms:(id)alarms;
@end

@implementation MTAlarmSnapshot

- (MTAlarmSnapshot)initWithStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = MTAlarmSnapshot;
  v6 = [(MTSnapshotScheduler *)&v9 initWithBundleID:@"com.apple.mobiletimer"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
    [(MTAlarmStorage *)v7->_storage registerObserver:v7];
  }

  return v7;
}

- (void)source:(id)source didAddAlarms:(id)alarms
{
  v11 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:alarmsCopy];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm added - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didUpdateAlarms:(id)alarms
{
  v11 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:alarmsCopy];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm updated - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didRemoveAlarms:(id)alarms
{
  v11 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:alarmsCopy];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm removed - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end