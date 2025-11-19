@interface IMNotificationCenterEventListener
+ (id)eventListenerForNotificationName:(id)a3;
+ (id)eventListenerForNotificationName:(id)a3 object:(id)a4;
- (BOOL)isListening;
- (BOOL)isRegisteredForNotification;
- (id)notificationObject;
- (void)_notification:(id)a3;
- (void)dealloc;
- (void)registerForNotificationName:(id)a3 object:(id)a4;
- (void)willStartListening;
- (void)willStopListening;
@end

@implementation IMNotificationCenterEventListener

- (BOOL)isRegisteredForNotification
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_registeredNotificationName != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)_notification:(id)a3
{
  v4 = [a3 userInfo];
  [(IMEventListener *)self _didReceiveEvent:1 userInfo:v4 error:0];
}

- (void)registerForNotificationName:(id)a3 object:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(IMEventListener *)v7 _reset];
  v8 = [v10 copy];
  notificationName = v7->_notificationName;
  v7->_notificationName = v8;

  objc_storeWeak(&v7->_notificationObject, v6);
  objc_sync_exit(v7);
}

+ (id)eventListenerForNotificationName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 registerForNotificationName:v3];

  return v4;
}

+ (id)eventListenerForNotificationName:(id)a3 object:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 registerForNotificationName:v6 object:v5];

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMNotificationCenterEventListener;
  [(IMNotificationCenterEventListener *)&v4 dealloc];
}

- (BOOL)isListening
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_registeredNotificationName != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)willStartListening
{
  if (!self->_registeredNotificationName)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    notificationName = self->_notificationName;
    WeakRetained = objc_loadWeakRetained(&self->_notificationObject);
    [v3 addObserver:self selector:sel__notification_ name:notificationName object:WeakRetained];

    v6 = self->_notificationName;

    objc_storeStrong(&self->_registeredNotificationName, v6);
  }
}

- (void)willStopListening
{
  if (self->_registeredNotificationName)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self];

    registeredNotificationName = self->_registeredNotificationName;
    self->_registeredNotificationName = 0;
  }
}

- (id)notificationObject
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationObject);

  return WeakRetained;
}

@end