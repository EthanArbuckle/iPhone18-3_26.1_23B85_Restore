@interface MTAlarmKitAdoptionManager
- (MTAlarmKitAdoptionManager)init;
- (void)cancelAlarm:(id)a3;
- (void)countdownAlarm:(id)a3;
- (void)dismissAlarm:(id)a3;
- (void)pauseCountdown:(id)a3;
- (void)resumeCountdown:(id)a3;
- (void)scheduleAlarm:(id)a3;
- (void)scheduleTimer:(id)a3;
- (void)unscheduleAll;
@end

@implementation MTAlarmKitAdoptionManager

- (MTAlarmKitAdoptionManager)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = MTAlarmKitAdoptionManager;
  v2 = [(MTAlarmKitAdoptionManager *)&v8 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = v2;
      _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ initializing", buf, 0xCu);
    }

    v4 = objc_opt_new();
    manager = v2->_manager;
    v2->_manager = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)unscheduleAll
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ unscheduling all alarms with ⏰ AlarmKit", &v5, 0xCu);
  }

  [(AlarmKitAdoptionManager *)self->_manager unscheduleAllAlarms];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)scheduleAlarm:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ scheduling alarm with ⏰ AlarmKit: %{public}@", &v7, 0x16u);
  }

  [(AlarmKitAdoptionManager *)self->_manager scheduleWithAlarm:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTimer:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ scheduling timer with ⏰ AlarmKit: %{public}@", &v7, 0x16u);
  }

  [(AlarmKitAdoptionManager *)self->_manager scheduleWithTimer:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)countdownAlarm:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ countdown alarm: %{public}@ with ⏰ AlarmKit", &v9, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  [(AlarmKitAdoptionManager *)manager countdownAlarmWithId:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pauseCountdown:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ pause countdown for alarm: %{public}@ with ⏰ AlarmKit", &v9, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  [(AlarmKitAdoptionManager *)manager pauseCountdownWithId:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resumeCountdown:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ resume countdown for alarm: %{public}@ with ⏰ AlarmKit", &v9, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  [(AlarmKitAdoptionManager *)manager resumeCountdownWithId:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dismissAlarm:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ dismiss alarm: %{public}@ with ⏰ AlarmKit", &v9, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  [(AlarmKitAdoptionManager *)manager dismissAlarmWithId:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelAlarm:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ cancel alarm: %{public}@ with ⏰ AlarmKit", &v9, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  [(AlarmKitAdoptionManager *)manager cancelAlarmWithId:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end