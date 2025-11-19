@interface COAlarmManagerMediator
- (COAlarmManager)manager;
- (COAlarmManagerMediator)initWithAlarmManager:(id)a3;
- (void)postNotificationName:(id)a3 withUserInfo:(id)a4 callback:(id)a5;
@end

@implementation COAlarmManagerMediator

- (COAlarmManagerMediator)initWithAlarmManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COAlarmManagerMediator;
  v5 = [(COAlarmManagerMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
  }

  return v6;
}

- (void)postNotificationName:(id)a3 withUserInfo:(id)a4 callback:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(COAlarmManagerMediator *)self manager];
  [v11 postNotificationName:v10 withUserInfo:v9 callback:v8];
}

- (COAlarmManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end