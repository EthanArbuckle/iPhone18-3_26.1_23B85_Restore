@interface MTTimerSnapshot
- (MTTimerSnapshot)initWithStorage:(id)a3;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didRemoveTimers:(id)a4;
- (void)source:(id)a3 didUpdateTimers:(id)a4;
@end

@implementation MTTimerSnapshot

- (MTTimerSnapshot)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTTimerSnapshot;
  v6 = [(MTSnapshotScheduler *)&v9 initWithBundleID:@"com.apple.mobiletimer"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    [(MTTimerStorage *)v7->_storage registerObserver:v7];
  }

  return v7;
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer added - Request snapshot", &v7, 0xCu);
  }

  [(MTSnapshotScheduler *)self scheduleSnapshot];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateTimers:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer updated - Request snapshot", &v7, 0xCu);
  }

  [(MTSnapshotScheduler *)self scheduleSnapshot];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveTimers:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer removed - Request snapshot", &v7, 0xCu);
  }

  [(MTSnapshotScheduler *)self scheduleSnapshot];
  v6 = *MEMORY[0x1E69E9840];
}

@end