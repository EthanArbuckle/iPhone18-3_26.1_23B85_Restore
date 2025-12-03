@interface MTDistributedNotificationPoster
- (MTEventReporting)reportingDelegate;
- (void)postNotificationForScheduledAlarm:(id)alarm completionBlock:(id)block;
- (void)postNotificationForScheduledTimer:(id)timer completionBlock:(id)block;
@end

@implementation MTDistributedNotificationPoster

- (void)postNotificationForScheduledAlarm:(id)alarm completionBlock:(id)block
{
  v22[1] = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  blockCopy = block;
  v8 = objc_opt_class();
  trigger = [alarmCopy trigger];
  LODWORD(v8) = [v8 _shouldNotifyForTrigger:trigger];

  if (v8)
  {
    scheduleable = [alarmCopy scheduleable];
    alarmIDString = [scheduleable alarmIDString];
    v21 = @"MTAlarmID";
    v22[0] = alarmIDString;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      alarmID = [scheduleable alarmID];
      v17 = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = alarmID;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ posting distributed notification for alarm: %{public}@", &v17, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.mobiletimer.MTAlarmDidFireNotification" object:0 userInfo:v12 deliverImmediately:1];
  }

  blockCopy[2](blockCopy);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)postNotificationForScheduledTimer:(id)timer completionBlock:(id)block
{
  v19[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  scheduleable = [timer scheduleable];
  timerIDString = [scheduleable timerIDString];
  v18 = @"MTTimerID";
  v19[0] = timerIDString;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v10 = MTLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [scheduleable timerID];
    v14 = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = timerID;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ posting distributed notification for timer: %{public}@", &v14, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.mobiletimer.MTTimerDidFireNotification" object:0 userInfo:v9 deliverImmediately:1];

  blockCopy[2](blockCopy);
  v13 = *MEMORY[0x1E69E9840];
}

- (MTEventReporting)reportingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportingDelegate);

  return WeakRetained;
}

@end