@interface GSSystemResourcesManager
+ (id)manager;
- (BOOL)isPowerOK;
- (GSSystemResourcesManager)init;
- (void)_didReceiveMemoryWarning;
- (void)_initLowDiskManager;
- (void)_initLowMemory;
- (void)_initPowerManager;
- (void)_invalidateLowDiskManager;
- (void)_invalidateLowMemory;
- (void)_invalidatePowerManager;
- (void)_processLowDiskNotification:(BOOL)notification;
- (void)_resetLowDiskManager;
- (void)_resetPowerManager;
- (void)_setPowerLevelWithCoalescing:(BOOL)coalescing;
- (void)addLowDiskObserver:(id)observer forDevice:(int)device;
- (void)addLowMemoryObserver:(id)observer;
- (void)addPowerObserver:(id)observer;
- (void)close;
- (void)dealloc;
- (void)removeLowDiskObserver:(id)observer forDevice:(int)device;
- (void)removeLowMemoryObserver:(id)observer;
- (void)removePowerObserver:(id)observer;
- (void)reset;
@end

@implementation GSSystemResourcesManager

+ (id)manager
{
  if (qword_10004CA10 != -1)
  {
    sub_10002A730();
  }

  v3 = qword_10004CA08;

  return v3;
}

- (GSSystemResourcesManager)init
{
  v10.receiver = self;
  v10.super_class = GSSystemResourcesManager;
  v2 = [(GSSystemResourcesManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.revisiond.system-resources", v3);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v4;

    [(GSSystemResourcesManager *)v2 _initPowerManager];
    [(GSSystemResourcesManager *)v2 _initLowDiskManager];
    [(GSSystemResourcesManager *)v2 _initLowMemory];
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138412290;
      v12 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%@] has been initialized", buf, 0xCu);
    }
  }

  return v2;
}

- (void)close
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B4A8;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

- (void)dealloc
{
  [(GSSystemResourcesManager *)self close];
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = 0;

  v4.receiver = self;
  v4.super_class = GSSystemResourcesManager;
  [(GSSystemResourcesManager *)&v4 dealloc];
}

- (void)reset
{
  [(GSSystemResourcesManager *)self _resetPowerManager];
  [(GSSystemResourcesManager *)self _resetLowDiskManager];
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%@] has been reset", &v5, 0xCu);
  }
}

- (void)_initPowerManager
{
  self->_powerLevelOK = 1;
  v3 = +[NSHashTable weakObjectsHashTable];
  powerObservers = self->_powerObservers;
  self->_powerObservers = v3;

  notificationQueue = self->_notificationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001B758;
  handler[3] = &unk_1000415E8;
  handler[4] = self;
  notify_register_dispatch("com.apple.system.powermanagement.SystemLoadAdvisory", &self->_powerNotifyToken, notificationQueue, handler);
  [(GSSystemResourcesManager *)self _resetPowerManager];
}

- (void)_invalidatePowerManager
{
  notify_cancel(self->_powerNotifyToken);
  self->_powerNotifyToken = 0;
  powerObservers = self->_powerObservers;
  self->_powerObservers = 0;
}

- (void)_resetPowerManager
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B8BC;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (BOOL)isPowerOK
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B9CC;
  v5[3] = &unk_100041610;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setPowerLevelWithCoalescing:(BOOL)coalescing
{
  v5 = +[GSUserDefaults defaults];
  [v5 doubleForKey:@"system.power" min:0.001 max:172800.0 byDefault:1.0];
  v7 = v6;
  dispatch_assert_queue_V2(self->_notificationQueue);
  if (coalescing)
  {
    powerLevelOKTimer = self->_powerLevelOKTimer;
    if (self->_powerLevelOK)
    {
      if (powerLevelOKTimer)
      {
        dispatch_source_cancel(powerLevelOKTimer);
        v9 = self->_powerLevelOKTimer;
        self->_powerLevelOKTimer = 0;
      }
    }

    else if (!powerLevelOKTimer)
    {
      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_notificationQueue);
      v13 = dispatch_time(0, (v7 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, (v7 * 1000000000.0) / 10);

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10001BBA0;
      handler[3] = &unk_100040B00;
      handler[4] = self;
      dispatch_source_set_event_handler(v12, handler);
      v14 = self->_powerLevelOKTimer;
      self->_powerLevelOKTimer = v12;
      v15 = v12;

      dispatch_resume(v15);
    }
  }

  else
  {
    v10 = self->_powerLevelOKTimer;
    if (v10)
    {
      dispatch_source_cancel(v10);
      v11 = self->_powerLevelOKTimer;
      self->_powerLevelOKTimer = 0;
    }

    if (self->_powerLevelOK)
    {
      [(GSSystemResourcesManager *)self _setPowerLevel:0];
    }
  }
}

- (void)addPowerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BDC0;
  v7[3] = &unk_100041638;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)removePowerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BF40;
  v7[3] = &unk_100041638;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)_initLowDiskManager
{
  v3 = objc_opt_new();
  lowDiskSet = self->_lowDiskSet;
  self->_lowDiskSet = v3;

  v5 = objc_opt_new();
  lowDiskDict = self->_lowDiskDict;
  self->_lowDiskDict = v5;

  v7 = dispatch_source_create(&_dispatch_source_type_vfs, 0, 0x304uLL, self->_notificationQueue);
  lowDiskSource = self->_lowDiskSource;
  self->_lowDiskSource = v7;

  v9 = self->_lowDiskSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001C0CC;
  handler[3] = &unk_100040B00;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_lowDiskSource);
}

- (void)_invalidateLowDiskManager
{
  lowDiskTimer = self->_lowDiskTimer;
  if (lowDiskTimer)
  {
    dispatch_source_cancel(lowDiskTimer);
    v4 = self->_lowDiskTimer;
    self->_lowDiskTimer = 0;
  }

  lowDiskSource = self->_lowDiskSource;
  if (lowDiskSource)
  {
    dispatch_source_cancel(lowDiskSource);
    v6 = self->_lowDiskSource;
    self->_lowDiskSource = 0;
  }

  lowDiskDict = self->_lowDiskDict;
  self->_lowDiskDict = 0;

  lowDiskSet = self->_lowDiskSet;
  self->_lowDiskSet = 0;
}

- (void)_resetLowDiskManager
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C370;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_processLowDiskNotification:(BOOL)notification
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  lowDiskDict = self->_lowDiskDict;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C408;
  v6[3] = &unk_100041660;
  v6[4] = self;
  notificationCopy = notification;
  [(NSMutableDictionary *)lowDiskDict enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)addLowDiskObserver:(id)observer forDevice:(int)device
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C7A4;
  block[3] = &unk_100041688;
  deviceCopy = device;
  block[4] = self;
  v10 = observerCopy;
  v8 = observerCopy;
  dispatch_sync(notificationQueue, block);
}

- (void)removeLowDiskObserver:(id)observer forDevice:(int)device
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9FC;
  block[3] = &unk_100041688;
  deviceCopy = device;
  block[4] = self;
  v10 = observerCopy;
  v8 = observerCopy;
  dispatch_sync(notificationQueue, block);
}

- (void)_initLowMemory
{
  v3 = +[NSHashTable weakObjectsHashTable];
  lowMemoryObservers = self->_lowMemoryObservers;
  self->_lowMemoryObservers = v3;

  if (self->_memoryNotificationEventSource)
  {
    sub_10002A90C();
  }

  v5 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 6uLL, self->_notificationQueue);
  memoryNotificationEventSource = self->_memoryNotificationEventSource;
  self->_memoryNotificationEventSource = v5;

  v7 = self->_memoryNotificationEventSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001CC00;
  handler[3] = &unk_100040B00;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_memoryNotificationEventSource);
}

- (void)_invalidateLowMemory
{
  lowMemoryObservers = self->_lowMemoryObservers;
  self->_lowMemoryObservers = 0;

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CC90;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_sync(notificationQueue, block);
}

- (void)_didReceiveMemoryWarning
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_lowMemoryObservers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) didReceiveMemoryWarning];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addLowMemoryObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CE68;
  v7[3] = &unk_100041638;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

- (void)removeLowMemoryObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CF0C;
  v7[3] = &unk_100041638;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

@end