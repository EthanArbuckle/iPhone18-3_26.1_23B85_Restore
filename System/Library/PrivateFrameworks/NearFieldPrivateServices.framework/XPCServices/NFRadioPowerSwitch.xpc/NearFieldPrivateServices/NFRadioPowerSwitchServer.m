@interface NFRadioPowerSwitchServer
- (void)runService:(id)a3 callback:(id)a4;
@end

@implementation NFRadioPowerSwitchServer

- (void)runService:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = [a3 valueForKey:@"PopupInterval"];
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
  v11 = v5;
  v9 = v5;
  sub_100000F34(v7, NFSettingsNotification, v10);
}

@end