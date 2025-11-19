@interface MTAlarmSnapshot
- (MTAlarmSnapshot)initWithStorage:(id)a3;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
@end

@implementation MTAlarmSnapshot

- (MTAlarmSnapshot)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTAlarmSnapshot;
  v6 = [(MTSnapshotScheduler *)&v9 initWithBundleID:@"com.apple.mobiletimer"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    [(MTAlarmStorage *)v7->_storage registerObserver:v7];
  }

  return v7;
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:v5];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm added - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:v5];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm updated - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_opt_class() shouldScheduleSnapshotForAlarms:v5];

  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm removed - Request snapshot", &v9, 0xCu);
    }

    [(MTSnapshotScheduler *)self scheduleSnapshot];
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end