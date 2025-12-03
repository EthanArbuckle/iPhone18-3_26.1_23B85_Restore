@interface MTActivitiesManager
- (MTActivitiesManager)init;
- (MTActivitiesManager)initWithResolver:(id)resolver;
- (id)contextForAlarm:(id)alarm;
- (id)contextForTimer:(id)timer;
- (int64_t)sessionStateForTimer:(id)timer;
- (void)alarmActivities:(id)activities;
- (void)alarmAlertingActivities:(id)activities;
- (void)alarmCountdownActivities:(id)activities;
- (void)alertActivityWithAlarm:(id)alarm playSound:(BOOL)sound completion:(id)completion;
- (void)alertActivityWithTimer:(id)timer completion:(id)completion;
- (void)clearOutdatedAlarmAndTimerActivities;
- (void)createActivityWithAlarm:(id)alarm completion:(id)completion;
- (void)createActivityWithTimer:(id)timer completion:(id)completion;
- (void)endActivityWithAlarmID:(id)d completion:(id)completion;
- (void)endActivityWithTimerID:(id)d completion:(id)completion;
- (void)localSetup;
- (void)restoreActivityWithAlarm:(id)alarm completion:(id)completion;
- (void)restoreActivityWithTimer:(id)timer completion:(id)completion;
- (void)timerActivities:(id)activities;
- (void)timerAlertingActivities:(id)activities;
- (void)timerCountdownActivities:(id)activities;
- (void)updateActivityWithAlarm:(id)alarm completion:(id)completion;
- (void)updateActivityWithTimer:(id)timer completion:(id)completion;
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

- (MTActivitiesManager)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = MTActivitiesManager;
  v5 = [(MTActivitiesManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTActivitiesManager *)v5 localSetup];
    v7 = [[_TtC18MobileTimerSupport25AKActivitiesProviderProxy alloc] initWithActivityResolver:resolverCopy];
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

- (void)createActivityWithAlarm:(id)alarm completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ creating new alarm session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy createActivityWithAlarm:alarmCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmProxy];
    v10 = [(MTActivitiesManager *)self contextForAlarm:alarmCopy];
    [alarmKitProxy createActivityWithContext:v10 completion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreActivityWithAlarm:(id)alarm completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ restoring alarm session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy createActivityWithAlarm:alarmCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForAlarm:alarmCopy];
    [alarmKitProxy setRequestedStyle:2];
    alarmProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmProxy createActivityWithContext:alarmKitProxy completion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateActivityWithAlarm:(id)alarm completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    alarmIDString = [alarmCopy alarmIDString];
    v13 = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = alarmIDString;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ updating session for alarm: %{public}@", &v13, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy updateActivityWithAlarm:alarmCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForAlarm:alarmCopy];
    [alarmKitProxy setRequestedStyle:2];
    alarmProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmProxy updateActivityWithContext:alarmKitProxy completion:completionCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)alertActivityWithAlarm:(id)alarm playSound:(BOOL)sound completion:(id)completion
{
  soundCopy = sound;
  v25 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    alarmIDString = [alarmCopy alarmIDString];
    v19 = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = alarmIDString;
    v23 = 1024;
    v24 = soundCopy;
    _os_log_impl(&dword_22D741000, v10, OS_LOG_TYPE_INFO, "%{public}@ alerting session for alarm: %{public}@, play sound: %i", &v19, 0x1Cu);
  }

  isSleepAlarm = [alarmCopy isSleepAlarm];
  if (soundCopy)
  {
    if (isSleepAlarm)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    sound = [alarmCopy sound];
    v15 = [sound tlAlertConfigurationForCategory:v13];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:0];
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy alertActivityWithAlarm:alarmCopy tlConfig:v15 completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForAlarm:alarmCopy];
    [alarmKitProxy setRequestedStyle:4];
    alarmProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmProxy alertActivityWithContext:alarmKitProxy tlConfig:v15 completion:completionCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)endActivityWithAlarmID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = dCopy;
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
  [v9 endActivityWithId:dCopy completion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)contextForAlarm:(id)alarm
{
  v22 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = [_TtC18MobileTimerSupport12AlarmContext alloc];
  title = [alarmCopy title];
  alarmIDString = [alarmCopy alarmIDString];
  hour = [alarmCopy hour];
  minute = [alarmCopy minute];
  isSnoozed = [alarmCopy isSnoozed];
  snoozeFireDate = [alarmCopy snoozeFireDate];
  isFiring = [alarmCopy isFiring];

  LOBYTE(v17) = isFiring;
  v13 = [(AlarmContext *)v5 initWithTitle:title alarmId:alarmIDString hour:hour min:minute isSnoozed:isSnoozed snoozeFireDate:snoozeFireDate isFiring:v17];

  v14 = MTLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_22D741000, v14, OS_LOG_TYPE_INFO, "%{public}@ created alarm context: %{public}@", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)alarmCountdownActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmCountdownActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithAlert:0 type:0 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmKitProxy activitiesWithAlert:0 completion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmAlertingActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmAlertingActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithAlert:1 type:0 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmKitProxy activitiesWithAlert:1 completion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)alarmActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ alarmActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithType:0 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmKitProxy activitiesWithCompletion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createActivityWithTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ creating new timer session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy createActivityWithTimer:timerCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForTimer:timerCopy];
    timerProxy = [(MTActivitiesManager *)self timerProxy];
    [timerProxy createActivityWithContext:alarmKitProxy completion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreActivityWithTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ restoring timer session", &v12, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy createActivityWithTimer:timerCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForTimer:timerCopy];
    [alarmKitProxy setRequestedStyle:2];
    timerProxy = [(MTActivitiesManager *)self timerProxy];
    [timerProxy createActivityWithContext:alarmKitProxy completion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateActivityWithTimer:(id)timer completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    timerIDString = [timerCopy timerIDString];
    v13 = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = timerIDString;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ updating session for timer: %{public}@", &v13, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy updateActivityWithTimer:timerCopy completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self timerProxy];
    v11 = [(MTActivitiesManager *)self contextForTimer:timerCopy];
    [alarmKitProxy updateActivityWithContext:v11 completion:completionCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)alertActivityWithTimer:(id)timer completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    timerIDString = [timerCopy timerIDString];
    v15 = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = timerIDString;
    _os_log_impl(&dword_22D741000, v8, OS_LOG_TYPE_INFO, "%{public}@ alerting session for timer: %{public}@", &v15, 0x16u);
  }

  sound = [timerCopy sound];
  v11 = [sound tlAlertConfigurationForCategory:1];

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy alertActivityWithTimer:timerCopy tlConfig:v11 completion:completionCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self contextForTimer:timerCopy];
    [alarmKitProxy setRequestedStyle:4];
    timerProxy = [(MTActivitiesManager *)self timerProxy];
    [timerProxy alertActivityWithContext:alarmKitProxy tlConfig:v11 completion:completionCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)endActivityWithTimerID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = dCopy;
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
  [v9 endActivityWithId:dCopy completion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerCountdownActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerCountdownActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithAlert:0 type:1 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self timerProxy];
    [alarmKitProxy activitiesWithAlert:0 completion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timerAlertingActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerAlertingActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithAlert:1 type:1 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self timerProxy];
    [alarmKitProxy activitiesWithAlert:1 completion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timerActivities:(id)activities
{
  v10 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ timerActivities", &v8, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    alarmKitProxy = [(MTActivitiesManager *)self alarmKitProxy];
    [alarmKitProxy activitiesWithType:1 completion:activitiesCopy];
  }

  else
  {
    alarmKitProxy = [(MTActivitiesManager *)self timerProxy];
    [alarmKitProxy activitiesWithCompletion:activitiesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)contextForTimer:(id)timer
{
  v24 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = [_TtC18MobileTimerSupport12TimerContext alloc];
  v6 = [(MTActivitiesManager *)self sessionStateForTimer:timerCopy];
  timerIDString = [timerCopy timerIDString];
  [timerCopy duration];
  v9 = v8;
  [timerCopy remainingTime];
  v11 = v10;
  isFiring = [timerCopy isFiring];
  nextTrigger = [timerCopy nextTrigger];
  triggerDate = [nextTrigger triggerDate];
  title = [timerCopy title];

  v16 = [(TimerContext *)v5 initWithState:v6 timerId:timerIDString duration:isFiring remainingTime:triggerDate firing:title fireDate:v9 title:v11];
  v17 = MTLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_22D741000, v17, OS_LOG_TYPE_INFO, "%{public}@ created timer context: %{public}@ ", &v20, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int64_t)sessionStateForTimer:(id)timer
{
  state = [timer state];
  if ((state - 1) > 3)
  {
    return 3;
  }

  else
  {
    return qword_22D81DDC8[state - 1];
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
      selfCopy = self;
      _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ removing all outdated alarm and timer activities", &v7, 0xCu);
    }

    alarmProxy = [(MTActivitiesManager *)self alarmProxy];
    [alarmProxy endAllActivities];

    timerProxy = [(MTActivitiesManager *)self timerProxy];
    [timerProxy endAllActivities];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end