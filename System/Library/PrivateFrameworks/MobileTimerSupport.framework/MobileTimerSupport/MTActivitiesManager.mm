@interface MTActivitiesManager
- (MTActivitiesManager)init;
- (MTActivitiesManager)initWithResolver:(id)a3;
- (id)contextForAlarm:(id)a3;
- (id)contextForTimer:(id)a3;
- (int64_t)sessionStateForTimer:(id)a3;
- (void)alarmActivities:(id)a3;
- (void)alarmAlertingActivities:(id)a3;
- (void)alarmCountdownActivities:(id)a3;
- (void)alertActivityWithAlarm:(id)a3 playSound:(BOOL)a4 completion:(id)a5;
- (void)alertActivityWithTimer:(id)a3 completion:(id)a4;
- (void)clearOutdatedAlarmAndTimerActivities;
- (void)createActivityWithAlarm:(id)a3 completion:(id)a4;
- (void)createActivityWithTimer:(id)a3 completion:(id)a4;
- (void)endActivityWithAlarmID:(id)a3 completion:(id)a4;
- (void)endActivityWithTimerID:(id)a3 completion:(id)a4;
- (void)localSetup;
- (void)restoreActivityWithAlarm:(id)a3 completion:(id)a4;
- (void)restoreActivityWithTimer:(id)a3 completion:(id)a4;
- (void)timerActivities:(id)a3;
- (void)timerAlertingActivities:(id)a3;
- (void)timerCountdownActivities:(id)a3;
- (void)updateActivityWithAlarm:(id)a3 completion:(id)a4;
- (void)updateActivityWithTimer:(id)a3 completion:(id)a4;
@end

@implementation MTActivitiesManager

- (MTActivitiesManager)init
{
  v5.receiver = self;
  v5.super_class = MTActivitiesManager;
  v2 = [(MTActivitiesManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTActivitiesManager *)v2 localSetup];
  }

  return v3;
}

- (MTActivitiesManager)initWithResolver:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTActivitiesManager;
  v5 = [(MTActivitiesManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTActivitiesManager *)v5 localSetup];
    v7 = [[_TtC18MobileTimerSupport25AKActivitiesProviderProxy alloc] initWithActivityResolver:v4];
    [(MTActivitiesManager *)v6 setAlarmKitProxy:v7];
  }

  return v6;
}

- (void)localSetup
{
  v3 = objc_opt_new();
  [(MTActivitiesManager *)self setAlarmProxy:v3];

  v4 = objc_opt_new();
  [(MTActivitiesManager *)self setTimerProxy:v4];
}

- (void)createActivityWithAlarm:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ creating new alarm session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [(MTActivitiesManager *)self alarmKitProxy];
    [v9 createActivityWithAlarm:v6 completion:v7];
  }

  else
  {
    v9 = [(MTActivitiesManager *)self alarmProxy];
    v10 = [(MTActivitiesManager *)self contextForAlarm:v6];
    [v9 createActivityWithContext:v10 completion:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreActivityWithAlarm:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ restoring alarm session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [(MTActivitiesManager *)self alarmKitProxy];
    [v9 createActivityWithAlarm:v6 completion:v7];
  }

  else
  {
    v9 = [(MTActivitiesManager *)self contextForAlarm:v6];
    [v9 setRequestedStyle:2];
    v10 = [(MTActivitiesManager *)self alarmProxy];
    [v10 createActivityWithContext:v9 completion:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateActivityWithAlarm:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 alarmIDString];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ updating session for alarm: %{public}@", &v13, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [(MTActivitiesManager *)self alarmKitProxy];
    [v10 updateActivityWithAlarm:v6 completion:v7];
  }

  else
  {
    v10 = [(MTActivitiesManager *)self contextForAlarm:v6];
    [v10 setRequestedStyle:2];
    v11 = [(MTActivitiesManager *)self alarmProxy];
    [v11 updateActivityWithContext:v10 completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)alertActivityWithAlarm:(id)a3 playSound:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 alarmIDString];
    v19 = 138543874;
    v20 = self;
    v21 = 2114;
    v22 = v11;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&dword_22D741000, v10, OS_LOG_TYPE_INFO, "%{public}@ alerting session for alarm: %{public}@, play sound: %i", &v19, 0x1Cu);
  }

  v12 = [v8 isSleepAlarm];
  if (v6)
  {
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v8 sound];
    v15 = [v14 tlAlertConfigurationForCategory:v13];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:0];
  }

  if (_os_feature_enabled_impl())
  {
    v16 = [(MTActivitiesManager *)self alarmKitProxy];
    [v16 alertActivityWithAlarm:v8 tlConfig:v15 completion:v9];
  }

  else
  {
    v16 = [(MTActivitiesManager *)self contextForAlarm:v8];
    [v16 setRequestedStyle:4];
    v17 = [(MTActivitiesManager *)self alarmProxy];
    [v17 alertActivityWithContext:v16 tlConfig:v15 completion:v9];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)endActivityWithAlarmID:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ ending session for alarm: %{public}@", &v11, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    [(MTActivitiesManager *)self alarmKitProxy];
  }

  else
  {
    [(MTActivitiesManager *)self alarmProxy];
  }
  v9 = ;
  [v9 endActivityWithId:v6 completion:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)contextForAlarm:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [_TtC18MobileTimerSupport12AlarmContext alloc];
  v6 = [v4 title];
  v7 = [v4 alarmIDString];
  v8 = [v4 hour];
  v9 = [v4 minute];
  v10 = [v4 isSnoozed];
  v11 = [v4 snoozeFireDate];
  v12 = [v4 isFiring];

  LOBYTE(v17) = v12;
  v13 = [(AlarmContext *)v5 initWithTitle:v6 alarmId:v7 hour:v8 min:v9 isSnoozed:v10 snoozeFireDate:v11 isFiring:v17];

  v14 = MTLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_22D741000, v14, OS_LOG_TYPE_INFO, "%{public}@ created alarm context: %{public}@", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)alarmCountdownActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmCountdownActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithAlert:0 type:0 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self alarmProxy];
    [v6 activitiesWithAlert:0 completion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmAlertingActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmAlertingActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithAlert:1 type:0 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self alarmProxy];
    [v6 activitiesWithAlert:1 completion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithType:0 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self alarmProxy];
    [v6 activitiesWithCompletion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createActivityWithTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ creating new timer session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [(MTActivitiesManager *)self alarmKitProxy];
    [v9 createActivityWithTimer:v6 completion:v7];
  }

  else
  {
    v9 = [(MTActivitiesManager *)self contextForTimer:v6];
    v10 = [(MTActivitiesManager *)self timerProxy];
    [v10 createActivityWithContext:v9 completion:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreActivityWithTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ restoring timer session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [(MTActivitiesManager *)self alarmKitProxy];
    [v9 createActivityWithTimer:v6 completion:v7];
  }

  else
  {
    v9 = [(MTActivitiesManager *)self contextForTimer:v6];
    [v9 setRequestedStyle:2];
    v10 = [(MTActivitiesManager *)self timerProxy];
    [v10 createActivityWithContext:v9 completion:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateActivityWithTimer:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 timerIDString];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ updating session for timer: %{public}@", &v13, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [(MTActivitiesManager *)self alarmKitProxy];
    [v10 updateActivityWithTimer:v6 completion:v7];
  }

  else
  {
    v10 = [(MTActivitiesManager *)self timerProxy];
    v11 = [(MTActivitiesManager *)self contextForTimer:v6];
    [v10 updateActivityWithContext:v11 completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)alertActivityWithTimer:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 timerIDString];
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ alerting session for timer: %{public}@", &v15, 0x16u);
  }

  v10 = [v6 sound];
  v11 = [v10 tlAlertConfigurationForCategory:1];

  if (_os_feature_enabled_impl())
  {
    v12 = [(MTActivitiesManager *)self alarmKitProxy];
    [v12 alertActivityWithTimer:v6 tlConfig:v11 completion:v7];
  }

  else
  {
    v12 = [(MTActivitiesManager *)self contextForTimer:v6];
    [v12 setRequestedStyle:4];
    v13 = [(MTActivitiesManager *)self timerProxy];
    [v13 alertActivityWithContext:v12 tlConfig:v11 completion:v7];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)endActivityWithTimerID:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ ending session for timer: %{public}@", &v11, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    [(MTActivitiesManager *)self alarmKitProxy];
  }

  else
  {
    [(MTActivitiesManager *)self timerProxy];
  }
  v9 = ;
  [v9 endActivityWithId:v6 completion:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerCountdownActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerCountdownActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithAlert:0 type:1 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self timerProxy];
    [v6 activitiesWithAlert:0 completion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timerAlertingActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerAlertingActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithAlert:1 type:1 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self timerProxy];
    [v6 activitiesWithAlert:1 completion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timerActivities:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(MTActivitiesManager *)self alarmKitProxy];
    [v6 activitiesWithType:1 completion:v4];
  }

  else
  {
    v6 = [(MTActivitiesManager *)self timerProxy];
    [v6 activitiesWithCompletion:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)contextForTimer:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [_TtC18MobileTimerSupport12TimerContext alloc];
  v6 = [(MTActivitiesManager *)self sessionStateForTimer:v4];
  v7 = [v4 timerIDString];
  [v4 duration];
  v9 = v8;
  [v4 remainingTime];
  v11 = v10;
  v12 = [v4 isFiring];
  v13 = [v4 nextTrigger];
  v14 = [v13 triggerDate];
  v15 = [v4 title];

  v16 = [(TimerContext *)v5 initWithState:v6 timerId:v7 duration:v12 remainingTime:v14 firing:v15 fireDate:v9 title:v11];
  v17 = MTLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_22D741000, v17, OS_LOG_TYPE_INFO, "%{public}@ created timer context: %{public}@ ", &v20, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int64_t)sessionStateForTimer:(id)a3
{
  v3 = [a3 state];
  if ((v3 - 1) > 3)
  {
    return 3;
  }

  else
  {
    return qword_22D81DDC8[v3 - 1];
  }
}

- (void)clearOutdatedAlarmAndTimerActivities
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ removing all outdated alarm and timer activities", &v7, 0xCu);
    }

    v4 = [(MTActivitiesManager *)self alarmProxy];
    [v4 endAllActivities];

    v5 = [(MTActivitiesManager *)self timerProxy];
    [v5 endAllActivities];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end