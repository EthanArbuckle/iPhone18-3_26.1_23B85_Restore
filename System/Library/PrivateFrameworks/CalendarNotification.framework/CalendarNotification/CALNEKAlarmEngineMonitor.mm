@interface CALNEKAlarmEngineMonitor
- (CALNEKAlarmEngineMonitor)initWithAlarmEngine:(id)engine notificationCenter:(id)center;
- (void)activate;
- (void)addAlarmsFiredObserver:(id)observer selector:(SEL)selector;
- (void)didRegisterForAlarms;
- (void)receivedAlarmNamed:(id)named;
- (void)receivedNotificationNamed:(id)named;
- (void)removeAlarmsFiredObserver:(id)observer;
@end

@implementation CALNEKAlarmEngineMonitor

- (CALNEKAlarmEngineMonitor)initWithAlarmEngine:(id)engine notificationCenter:(id)center
{
  engineCopy = engine;
  centerCopy = center;
  v12.receiver = self;
  v12.super_class = CALNEKAlarmEngineMonitor;
  v9 = [(CALNEKAlarmEngineMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alarmEngine, engine);
    objc_storeStrong(&v10->_notificationCenter, center);
  }

  return v10;
}

- (void)activate
{
  alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [alarmEngine start];

  [(CALNEKAlarmEngineMonitor *)self setActive:1];
}

- (void)receivedNotificationNamed:(id)named
{
  namedCopy = named;
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [alarmEngine handleDarwinNotification:namedCopy];
  }

  else
  {
    alarmEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(alarmEngine, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKAlarmEngineMonitor *)namedCopy receivedNotificationNamed:alarmEngine];
    }
  }
}

- (void)didRegisterForAlarms
{
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [alarmEngine didRegisterForAlarms];
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

- (void)receivedAlarmNamed:(id)named
{
  namedCopy = named;
  if ([(CALNEKAlarmEngineMonitor *)self isActive])
  {
    alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
    [alarmEngine receivedAlarmNamed:namedCopy];
  }

  else
  {
    alarmEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(alarmEngine, OS_LOG_TYPE_ERROR))
    {
      [(CALNEKAlarmEngineMonitor *)namedCopy receivedAlarmNamed:alarmEngine];
    }
  }
}

- (void)addAlarmsFiredObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  notificationCenter = [(CALNEKAlarmEngineMonitor *)self notificationCenter];
  alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [notificationCenter addObserver:observerCopy selector:selector name:@"EKAlarmEngineAlarmsDidFireNotification" object:alarmEngine];
}

- (void)removeAlarmsFiredObserver:(id)observer
{
  observerCopy = observer;
  notificationCenter = [(CALNEKAlarmEngineMonitor *)self notificationCenter];
  alarmEngine = [(CALNEKAlarmEngineMonitor *)self alarmEngine];
  [notificationCenter removeObserver:observerCopy name:@"EKAlarmEngineAlarmsDidFireNotification" object:alarmEngine];
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