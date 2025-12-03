@interface UARPServiceMonitorBSDNotification
- (UARPServiceMonitorBSDNotification)initWithBsdNotification:(id)notification delegate:(id)delegate;
- (void)bsdNotification;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation UARPServiceMonitorBSDNotification

- (UARPServiceMonitorBSDNotification)initWithBsdNotification:(id)notification delegate:(id)delegate
{
  notificationCopy = notification;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = UARPServiceMonitorBSDNotification;
  v8 = [(UARPServiceMonitorBSDNotification *)&v18 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "uarpMonitor");
    log = v8->_log;
    v8->_log = v9;

    objc_storeStrong(&v8->_delegate, delegate);
    v8->_token = -1;
    v11 = [notificationCopy copy];
    bsdNotification = v8->_bsdNotification;
    v8->_bsdNotification = v11;

    v13 = dispatch_queue_create("UARPServiceMonitorBSDNotification", 0);
    notifyQueue = v8->_notifyQueue;
    v8->_notifyQueue = v13;

    v15 = dispatch_queue_create("UARPServiceMonitorBSDNotificationDelegate", 0);
    delegateQueue = v8->_delegateQueue;
    v8->_delegateQueue = v15;
  }

  return v8;
}

- (void)dealloc
{
  [(UARPServiceMonitorBSDNotification *)self stop];
  v3.receiver = self;
  v3.super_class = UARPServiceMonitorBSDNotification;
  [(UARPServiceMonitorBSDNotification *)&v3 dealloc];
}

- (void)start
{
  p_token = &self->_token;
  if (self->_token == -1)
  {
    p_bsdNotification = &self->_bsdNotification;
    uTF8String = [(NSString *)self->_bsdNotification UTF8String];
    objc_initWeak(&location, self);
    notifyQueue = self->_notifyQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000161BC;
    v9[3] = &unk_100040860;
    objc_copyWeak(&v10, &location);
    v7 = notify_register_dispatch(uTF8String, p_token, notifyQueue, v9);
    if (v7)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_1000280B4(p_bsdNotification, v7, log);
      }
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)stop
{
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016270;
  block[3] = &unk_100040610;
  block[4] = self;
  dispatch_sync(notifyQueue, block);
}

- (void)bsdNotification
{
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001631C;
  block[3] = &unk_100040610;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

@end