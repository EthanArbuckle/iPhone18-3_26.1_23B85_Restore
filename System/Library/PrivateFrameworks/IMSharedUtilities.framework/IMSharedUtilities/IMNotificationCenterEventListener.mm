@interface IMNotificationCenterEventListener
+ (id)eventListenerForNotificationName:(id)name;
+ (id)eventListenerForNotificationName:(id)name object:(id)object;
- (BOOL)isListening;
- (BOOL)isRegisteredForNotification;
- (id)notificationObject;
- (void)_notification:(id)_notification;
- (void)dealloc;
- (void)registerForNotificationName:(id)name object:(id)object;
- (void)willStartListening;
- (void)willStopListening;
@end

@implementation IMNotificationCenterEventListener

- (BOOL)isRegisteredForNotification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_registeredNotificationName != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_notification:(id)_notification
{
  userInfo = [_notification userInfo];
  [(IMEventListener *)self _didReceiveEvent:1 userInfo:userInfo error:0];
}

- (void)registerForNotificationName:(id)name object:(id)object
{
  nameCopy = name;
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventListener *)selfCopy _reset];
  v8 = [nameCopy copy];
  notificationName = selfCopy->_notificationName;
  selfCopy->_notificationName = v8;

  objc_storeWeak(&selfCopy->_notificationObject, objectCopy);
  objc_sync_exit(selfCopy);
}

+ (id)eventListenerForNotificationName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 registerForNotificationName:nameCopy];

  return v4;
}

+ (id)eventListenerForNotificationName:(id)name object:(id)object
{
  objectCopy = object;
  nameCopy = name;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 registerForNotificationName:nameCopy object:objectCopy];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMNotificationCenterEventListener;
  [(IMNotificationCenterEventListener *)&v4 dealloc];
}

- (BOOL)isListening
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_registeredNotificationName != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)willStartListening
{
  if (!self->_registeredNotificationName)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationName = self->_notificationName;
    WeakRetained = objc_loadWeakRetained(&self->_notificationObject);
    [defaultCenter addObserver:self selector:sel__notification_ name:notificationName object:WeakRetained];

    v6 = self->_notificationName;

    objc_storeStrong(&self->_registeredNotificationName, v6);
  }
}

- (void)willStopListening
{
  if (self->_registeredNotificationName)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

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