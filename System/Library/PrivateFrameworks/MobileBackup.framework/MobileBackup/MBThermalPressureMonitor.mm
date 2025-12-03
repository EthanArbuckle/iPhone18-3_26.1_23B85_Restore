@interface MBThermalPressureMonitor
+ (id)sharedThermalPressureMonitor;
- (MBThermalPressureMonitor)init;
- (int)thermalPressureLevel;
- (void)_cancelThermalPressureNotifications;
- (void)_measureCurrentThermalPressureLevel;
- (void)_registerForThermalPressureNotifications;
- (void)dealloc;
@end

@implementation MBThermalPressureMonitor

+ (id)sharedThermalPressureMonitor
{
  if (qword_100421B10 != -1)
  {
    dispatch_once(&qword_100421B10, &stru_1003C2308);
  }

  v3 = qword_100421B08;

  return v3;
}

- (MBThermalPressureMonitor)init
{
  v10.receiver = self;
  v10.super_class = MBThermalPressureMonitor;
  v2 = [(MBThermalPressureMonitor *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_thermalPressureLevel = kOSThermalPressureLevelUndefined;
    v4 = objc_opt_class();
    Name = class_getName(v4);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(Name, v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v3->_thermalNotificationToken = -1;
    [(MBThermalPressureMonitor *)v3 _registerForThermalPressureNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(MBThermalPressureMonitor *)self _cancelThermalPressureNotifications];
  v3.receiver = self;
  v3.super_class = MBThermalPressureMonitor;
  [(MBThermalPressureMonitor *)&v3 dealloc];
}

- (void)_cancelThermalPressureNotifications
{
  thermalNotificationToken = self->_thermalNotificationToken;
  if (thermalNotificationToken != -1)
  {
    notify_cancel(thermalNotificationToken);
    self->_thermalNotificationToken = -1;
  }
}

- (void)_registerForThermalPressureNotifications
{
  objc_initWeak(&location, self);
  queue = [(MBThermalPressureMonitor *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100235FE8;
  handler[3] = &unk_1003C1000;
  objc_copyWeak(&v8, &location);
  v4 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, &self->_thermalNotificationToken, queue, handler);

  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = kOSThermalNotificationPressureLevelName;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to register for %s notification: %lu", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = kOSThermalNotificationPressureLevelName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registered for %{public}s notifications", buf, 0xCu);
      _MBLog();
    }

    [(MBThermalPressureMonitor *)self _measureCurrentThermalPressureLevel];
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_measureCurrentThermalPressureLevel
{
  queue = [(MBThermalPressureMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002360C4;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (int)thermalPressureLevel
{
  selfCopy = self;
  queue = [(MBThermalPressureMonitor *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = kOSThermalPressureLevelUndefined;
  queue2 = [(MBThermalPressureMonitor *)selfCopy queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100236360;
  v6[3] = &unk_1003BCFF0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LODWORD(selfCopy) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

@end