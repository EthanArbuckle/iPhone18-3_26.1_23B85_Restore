@interface COAlarmManagerMediator
- (COAlarmManager)manager;
- (COAlarmManagerMediator)initWithAlarmManager:(id)manager;
- (void)postNotificationName:(id)name withUserInfo:(id)info callback:(id)callback;
@end

@implementation COAlarmManagerMediator

- (COAlarmManagerMediator)initWithAlarmManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = COAlarmManagerMediator;
  v5 = [(COAlarmManagerMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (void)postNotificationName:(id)name withUserInfo:(id)info callback:(id)callback
{
  callbackCopy = callback;
  infoCopy = info;
  nameCopy = name;
  manager = [(COAlarmManagerMediator *)self manager];
  [manager postNotificationName:nameCopy withUserInfo:infoCopy callback:callbackCopy];
}

- (COAlarmManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end