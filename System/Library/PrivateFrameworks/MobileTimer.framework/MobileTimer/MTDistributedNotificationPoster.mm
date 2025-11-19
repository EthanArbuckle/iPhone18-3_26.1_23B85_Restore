@interface MTDistributedNotificationPoster
- (MTEventReporting)reportingDelegate;
- (void)postNotificationForScheduledAlarm:(id)a3 completionBlock:(id)a4;
- (void)postNotificationForScheduledTimer:(id)a3 completionBlock:(id)a4;
@end

@implementation MTDistributedNotificationPoster

- (void)postNotificationForScheduledAlarm:(id)a3 completionBlock:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 trigger];
  LODWORD(v8) = [v8 _shouldNotifyForTrigger:v9];

  if (v8)
  {
    v10 = [v6 scheduleable];
    v11 = [v10 alarmIDString];
    v21 = @"MTAlarmID";
    v22[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 alarmID];
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ posting distributed notification for alarm: %{public}@", &v17, 0x16u);
    }

    v15 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v15 postNotificationName:@"com.apple.mobiletimer.MTAlarmDidFireNotification" object:0 userInfo:v12 deliverImmediately:1];
  }

  v7[2](v7);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)postNotificationForScheduledTimer:(id)a3 completionBlock:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 scheduleable];
  v8 = [v7 timerIDString];
  v18 = @"MTTimerID";
  v19[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v10 = MTLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 timerID];
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ posting distributed notification for timer: %{public}@", &v14, 0x16u);
  }

  v12 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v12 postNotificationName:@"com.apple.mobiletimer.MTTimerDidFireNotification" object:0 userInfo:v9 deliverImmediately:1];

  v6[2](v6);
  v13 = *MEMORY[0x1E69E9840];
}

- (MTEventReporting)reportingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportingDelegate);

  return WeakRetained;
}

@end