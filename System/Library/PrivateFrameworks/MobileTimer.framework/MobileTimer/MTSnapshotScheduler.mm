@interface MTSnapshotScheduler
+ (double)_quiescingWindow;
- (MTSnapshotScheduler)initWithBundleID:(id)a3;
@end

@implementation MTSnapshotScheduler

- (MTSnapshotScheduler)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTSnapshotScheduler;
  v6 = [(MTSnapshotScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

+ (double)_quiescingWindow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MTSnapshotScheduler__quiescingWindow__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_quiescingWindow_onceToken != -1)
  {
    dispatch_once(&_quiescingWindow_onceToken, block);
  }

  return *&_quiescingWindow_quiescingWindow;
}

void __39__MTSnapshotScheduler__quiescingWindow__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = MTTimeIntervalIsPositive();
  [v2 timeIntervalForKey:@"SnapshotWindow" isValid:v3 defaultValue:5.0];
  _quiescingWindow_quiescingWindow = v4;

  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2050;
    v12 = _quiescingWindow_quiescingWindow;
    v7 = v10;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Using snapshot quiescing window of %{public}f", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end