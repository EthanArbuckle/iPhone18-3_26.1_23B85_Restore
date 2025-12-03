@interface _BRKDeviceOrientationNotificationProxy
+ (id)sharedInstance;
- (_BRKDeviceOrientationNotificationProxy)init;
- (void)_logCurrentState;
- (void)_postChangeNotification:(id)notification;
@end

@implementation _BRKDeviceOrientationNotificationProxy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_BRKDeviceOrientationNotificationProxy sharedInstance];
  }

  v3 = sharedInstance_Proxy;

  return v3;
}

- (_BRKDeviceOrientationNotificationProxy)init
{
  v5.receiver = self;
  v5.super_class = _BRKDeviceOrientationNotificationProxy;
  v2 = [(_BRKDeviceOrientationNotificationProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_BRKDeviceOrientationNotificationProxy *)v2 _logCurrentState];
  }

  return v3;
}

- (void)_postChangeNotification:(id)notification
{
  v4 = BRKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "Posting device orientation changed notification", v6, 2u);
  }

  [(_BRKDeviceOrientationNotificationProxy *)self _logCurrentState];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BRKDeviceOrientationDidChangeNotification" object:0];
}

- (void)_logCurrentState
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if ([(_BRKDeviceOrientationNotificationProxy *)self wristOrientationIsRight])
    {
      v4 = @"right";
    }

    else
    {
      v4 = @"left";
    }

    if ([(_BRKDeviceOrientationNotificationProxy *)self crownOrientationIsRight])
    {
      v5 = @"right";
    }

    else
    {
      v5 = @"left";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "Current device orientation: wrist=%@ crown=%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end