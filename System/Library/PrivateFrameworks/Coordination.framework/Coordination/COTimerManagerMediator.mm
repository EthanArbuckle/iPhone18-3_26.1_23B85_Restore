@interface COTimerManagerMediator
- (COTimerManager)manager;
- (COTimerManagerMediator)initWithTimerManager:(id)manager;
- (void)postNotificationName:(id)name withUserInfo:(id)info callback:(id)callback;
@end

@implementation COTimerManagerMediator

- (COTimerManagerMediator)initWithTimerManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = COTimerManagerMediator;
  v5 = [(COTimerManagerMediator *)&v8 init];
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
  manager = [(COTimerManagerMediator *)self manager];
  [manager postNotificationName:nameCopy withUserInfo:infoCopy callback:callbackCopy];
}

- (COTimerManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end