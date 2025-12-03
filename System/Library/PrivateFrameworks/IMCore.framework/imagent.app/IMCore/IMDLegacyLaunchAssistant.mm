@interface IMDLegacyLaunchAssistant
+ (void)logLaunchInfo;
- (BOOL)hasDeviceName;
- (void)postAliveNotification;
- (void)registerForInternalCoreTelephonyNotifications;
@end

@implementation IMDLegacyLaunchAssistant

- (BOOL)hasDeviceName
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (void)postAliveNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, kFZDaemonLaunchedDistNotification, 0, 0, 0);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 __mainThreadPostNotificationName:kFZDaemonFinishedLaunchingNotification object:0];
}

- (void)registerForInternalCoreTelephonyNotifications
{
  v2 = +[FTDeviceSupport sharedInstance];
  [v2 _registerForInternalCoreTelephonyNotifications];
}

+ (void)logLaunchInfo
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = +[FTDeviceSupport sharedInstance];
      deviceInformationString = [v3 deviceInformationString];
      v8 = 138412290;
      v9 = deviceInformationString;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "imagent launching (%@)", &v8, 0xCu);
    }
  }

  v5 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "Oct 22 2025";
      v10 = 2080;
      v11 = "22:22:59";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "imagent built %s %s", &v8, 0x16u);
    }
  }
}

@end