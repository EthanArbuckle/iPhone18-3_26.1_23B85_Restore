@interface MTBaseAlarmWidgetProvider
- (BOOL)bypassReloadForAlarm:(id)a3;
- (BOOL)bypassReloadForAlarms:(id)a3;
- (MTBaseAlarmWidgetProvider)initWithAlarmStorage:(id)a3;
- (id)broadcastWidgetTimelineReload;
- (void)broadcastWidgetTimelineReload;
- (void)handleSystemReady;
- (void)reloadTimeline;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
@end

@implementation MTBaseAlarmWidgetProvider

- (MTBaseAlarmWidgetProvider)initWithAlarmStorage:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MTBaseAlarmWidgetProvider;
  v6 = [(MTBaseAlarmWidgetProvider *)&v13 init];
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    [v5 registerObserver:v6];
    objc_storeStrong(&v6->_alarmStorage, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.mobiletimerd.MTBaseAlarmWidgetProvider", v8);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleSystemReady
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "System is ready: %{public}@. Will reload widget timeline.", &v5, 0xCu);
  }

  [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)broadcastWidgetTimelineReload
{
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(MTBaseAlarmWidgetProvider *)self broadcastWidgetTimelineReload];
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTBaseAlarmWidgetProvider" code:1 userInfo:0];

  return v4;
}

- (void)reloadTimeline
{
  v3 = [(MTBaseAlarmWidgetProvider *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MTBaseAlarmWidgetProvider_reloadTimeline__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __43__MTBaseAlarmWidgetProvider_reloadTimeline__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) throttleTimelineReload];
  if ((result & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [*(a1 + 32) setLastReloadRequestDate:v3];

    return [*(a1 + 32) broadcastWidgetTimelineReload];
  }

  return result;
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didAddAlarms", &v9, 0xCu);
  }

  v7 = [(MTBaseAlarmWidgetProvider *)self bypassReloadForAlarms:v5];
  if (!v7)
  {
    [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didRemoveAlarms", &v9, 0xCu);
  }

  v7 = [(MTBaseAlarmWidgetProvider *)self bypassReloadForAlarms:v5];
  if (!v7)
  {
    [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didDismissAlarm", &v8, 0xCu);
  }

  [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didFireAlarm", &v8, 0xCu);
  }

  [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didSnoozeAlarm", &v8, 0xCu);
  }

  [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didUpdateAlarms", &v9, 0xCu);
  }

  v7 = [(MTBaseAlarmWidgetProvider *)self bypassReloadForAlarms:v5];
  if (!v7)
  {
    [(MTBaseAlarmWidgetProvider *)self reloadTimeline];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)bypassReloadForAlarms:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [(MTBaseAlarmWidgetProvider *)self bypassReloadForAlarm:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)bypassReloadForAlarm:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 shouldBypassWidgetReload];
  if (v5)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 alarmIDString];
      v10 = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: alarm %{public}@ requested widget reload bypass", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)broadcastWidgetTimelineReload
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2082;
  v6 = "[MTBaseAlarmWidgetProvider broadcastWidgetTimelineReload]";
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Subclass %{public}@ has not implemented %{public}s", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end