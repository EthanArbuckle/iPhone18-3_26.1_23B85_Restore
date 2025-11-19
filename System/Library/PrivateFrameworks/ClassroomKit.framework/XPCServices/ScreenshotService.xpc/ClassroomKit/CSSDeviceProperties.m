@interface CSSDeviceProperties
- (CSSDeviceProperties)init;
- (void)dealloc;
- (void)updateDeviceLocked;
- (void)updateScreenState;
@end

@implementation CSSDeviceProperties

- (void)dealloc
{
  screenStateNotificationToken = self->_screenStateNotificationToken;
  if (screenStateNotificationToken != -1)
  {
    notify_cancel(screenStateNotificationToken);
  }

  lockedNotificationToken = self->_lockedNotificationToken;
  if (lockedNotificationToken != -1)
  {
    notify_cancel(lockedNotificationToken);
  }

  v5.receiver = self;
  v5.super_class = CSSDeviceProperties;
  [(CSSDeviceProperties *)&v5 dealloc];
}

- (CSSDeviceProperties)init
{
  v12.receiver = self;
  v12.super_class = CSSDeviceProperties;
  v2 = [(CSSDeviceProperties *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000021C8;
    handler[3] = &unk_10000C598;
    objc_copyWeak(&v10, &location);
    v4 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &v2->_screenStateNotificationToken, &_dispatch_main_q, handler);

    if (v4)
    {
      v2->_screenStateNotificationToken = -1;
    }

    else
    {
      [(CSSDeviceProperties *)v2 updateScreenState];
    }

    v5 = kSBSLockStateNotifyKey;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002208;
    v7[3] = &unk_10000C598;
    objc_copyWeak(&v8, &location);
    LODWORD(v5) = notify_register_dispatch(v5, &v2->_lockedNotificationToken, &_dispatch_main_q, v7);

    if (v5)
    {
      v2->_lockedNotificationToken = -1;
    }

    else
    {
      [(CSSDeviceProperties *)v2 updateDeviceLocked];
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)updateScreenState
{
  state64 = 0;
  notify_get_state([(CSSDeviceProperties *)self screenStateNotificationToken], &state64);
  [(CSSDeviceProperties *)self setScreenOn:state64 == 0];
}

- (void)updateDeviceLocked
{
  v3 = SBSGetScreenLockStatus() != 0;

  [(CSSDeviceProperties *)self setLocked:v3];
}

@end