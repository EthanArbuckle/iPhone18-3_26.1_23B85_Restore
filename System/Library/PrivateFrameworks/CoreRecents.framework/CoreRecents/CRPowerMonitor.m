@interface CRPowerMonitor
+ (id)sharedMonitor;
- (BOOL)isLocked;
- (CRPowerMonitor)init;
- (void)_updateLockStateWithToken:(int)a3;
- (void)dealloc;
@end

@implementation CRPowerMonitor

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012458;
  block[3] = &unk_10002CAB0;
  block[4] = a1;
  if (qword_100034388 != -1)
  {
    dispatch_once(&qword_100034388, block);
  }

  return qword_100034380;
}

- (CRPowerMonitor)init
{
  v8.receiver = self;
  v8.super_class = CRPowerMonitor;
  v2 = [(CRPowerMonitor *)&v8 init];
  if (v2)
  {
    v7 = 0;
    SBSSpringBoardServerPort();
    SBGetScreenLockStatus();
    *(v2 + 12) = 0;
    *(v2 + 2) = dispatch_queue_create("com.apple.corerecents.sblockqueue", 0);
    objc_initWeak(&location, v2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002054;
    handler[3] = &unk_10002D408;
    objc_copyWeak(&v5, &location);
    if (notify_register_dispatch(kSBSLockStateNotifyKey, v2 + 2, *(v2 + 2), handler))
    {
      *(v2 + 2) = -1;
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  lockNotifyToken = self->_lockNotifyToken;
  if (lockNotifyToken != -1)
  {
    notify_cancel(lockNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = CRPowerMonitor;
  [(CRPowerMonitor *)&v4 dealloc];
}

- (void)_updateLockStateWithToken:(int)a3
{
  dispatch_assert_queue_V2(self->_queue);
  lockState = self->_lockState;
  v11 = 0;
  notify_get_state(a3, &v11);
  v7 = v11;
  v6 = v11 == 0;
  self->_lockState = v11;
  v8 = !v6;
  if ((((lockState == 0) ^ v8) & 1) == 0)
  {
    v9 = v7 != 0;
    v10 = +[NSNotificationCenter defaultCenter];
    v12 = @"CRPowerMonitorDeviceLockedStateKey";
    v13 = [NSNumber numberWithBool:v9];
    [(NSNotificationCenter *)v10 postNotificationName:@"CRPowerMonitorDeviceWillLockNotification" object:self userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]];
  }
}

- (BOOL)isLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000127B4;
  v5[3] = &unk_10002CB58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end