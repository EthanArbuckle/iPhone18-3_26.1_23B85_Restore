@interface CALNEKAlarmEngineMonitor
- (CALNEKAlarmEngineMonitor)initWithAlarmEngine:(id)a3 notificationCenter:(id)a4;
- (void)activate;
- (void)addAlarmsFiredObserver:(id)a3 selector:(SEL)a4;
- (void)didRegisterForAlarms;
- (void)receivedAlarmNamed:(id)a3;
- (void)receivedNotificationNamed:(id)a3;
- (void)removeAlarmsFiredObserver:(id)a3;
@end

@implementation CALNEKAlarmEngineMonitor

- (CALNEKAlarmEngineMonitor)initWithAlarmEngine:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CALNEKAlarmEngineMonitor;
  v9 = [(CALNEKAlarmEngineMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alarmEngine, a3);
    objc_storeStrong(&v10->_notificationCenter, a4);
  }

  return v10;
}

- (void)activate
{
  v3 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [v3 start];

  [(CALNEKAlarmEngineMonitor *)self setActive:1];
}

- (void)receivedNotificationNamed:(id)a3
{
  v4 = a3;
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    v5 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [v5 handleDarwinNotification:v4];
  }

  else
  {
    v5 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKAlarmEngineMonitor *)v4 receivedNotificationNamed:v5];
    }
  }
}

- (void)didRegisterForAlarms
{
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    v4 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [v4 didRegisterForAlarms];
  }

  else
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(CALNEKAlarmEngineMonitor *)v3 didRegisterForAlarms];
    }
  }
}

- (void)receivedAlarmNamed:(id)a3
{
  v4 = a3;
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    v5 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [v5 receivedAlarmNamed:v4];
  }

  else
  {
    v5 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKAlarmEngineMonitor *)v4 receivedAlarmNamed:v5];
    }
  }
}

- (void)addAlarmsFiredObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v8 = [(CALNEKAlarmEngineMonitor *)self notificationCenter];
  v7 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [v8 addObserver:v6 selector:a4 name:@"EKAlarmEngineAlarmsDidFireNotification" object:v7];
}

- (void)removeAlarmsFiredObserver:(id)a3
{
  v4 = a3;
  v6 = [(CALNEKAlarmEngineMonitor *)self notificationCenter];
  v5 = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [v6 removeObserver:v4 name:@"EKAlarmEngineAlarmsDidFireNotification" object:v5];
}

- (void)receivedNotificationNamed:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Received notification but alarm engine monitor is not active. notification name = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)receivedAlarmNamed:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Received alarm but alarm engine monitor is not active. alarm name = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end