@interface NFRadioPowerSwitchServer
- (void)runService:(id)service callback:(id)callback;
@end

@implementation NFRadioPowerSwitchServer

- (void)runService:(id)service callback:(id)callback
{
  callbackCopy = callback;
  v6 = [service valueForKey:@"PopupInterval"];
  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v7 = v8;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000E5C;
  v10[3] = &unk_100004268;
  v11 = callbackCopy;
  v9 = callbackCopy;
  sub_100000F34(v7, NFSettingsNotification, v10);
}

@end