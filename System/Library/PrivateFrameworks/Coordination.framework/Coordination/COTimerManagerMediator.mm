@interface COTimerManagerMediator
- (COTimerManager)manager;
- (COTimerManagerMediator)initWithTimerManager:(id)a3;
- (void)postNotificationName:(id)a3 withUserInfo:(id)a4 callback:(id)a5;
@end

@implementation COTimerManagerMediator

- (COTimerManagerMediator)initWithTimerManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COTimerManagerMediator;
  v5 = [(COTimerManagerMediator *)&v8 init];
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
  v11 = [(COTimerManagerMediator *)self manager];
  [v11 postNotificationName:v10 withUserInfo:v9 callback:v8];
}

- (COTimerManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end