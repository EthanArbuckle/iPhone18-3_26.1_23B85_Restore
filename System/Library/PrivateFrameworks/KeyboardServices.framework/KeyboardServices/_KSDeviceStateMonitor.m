@interface _KSDeviceStateMonitor
+ (BOOL)isRunningOnInternalBuild;
+ (id)deviceStateMonitor;
- (BOOL)deviceIsPasswordConfigured;
- (BOOL)isDataAvailableForClassC;
- (_KSDeviceStateMonitor)init;
- (void)dealloc;
- (void)handleKeyBagLockNotification;
@end

@implementation _KSDeviceStateMonitor

+ (id)deviceStateMonitor
{
  if (deviceStateMonitor_onceToken != -1)
  {
    +[_KSDeviceStateMonitor deviceStateMonitor];
  }

  v3 = deviceStateMonitor_sharedInstance;

  return v3;
}

- (BOOL)isDataAvailableForClassC
{
  if ([(_KSDeviceStateMonitor *)self deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_KSDeviceStateMonitor *)self deviceIsPasswordConfigured];
  }
}

- (_KSDeviceStateMonitor)init
{
  v7.receiver = self;
  v7.super_class = _KSDeviceStateMonitor;
  v2 = [(_KSDeviceStateMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isContentProtectionAvailable = 0;
    v4 = MKBDeviceFormattedForContentProtection();
    v3->_isContentProtectionAvailable = v4 != 0;
    if (v4)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      if (DarwinNotifyCenter)
      {
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _handleKeyBagNotification, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.first_unlock", 0);
  }

  v4.receiver = self;
  v4.super_class = _KSDeviceStateMonitor;
  [(_KSDeviceStateMonitor *)&v4 dealloc];
}

- (void)handleKeyBagLockNotification
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"KSDeviceProtectionClassDidChange" object:0];
}

- (BOOL)deviceIsPasswordConfigured
{
  v2 = softLinkMGCopyAnswer(@"PasswordConfigured", 0);
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

+ (BOOL)isRunningOnInternalBuild
{
  if (isRunningOnInternalBuild_onceToken != -1)
  {
    +[_KSDeviceStateMonitor isRunningOnInternalBuild];
  }

  return isRunningOnInternalBuild_isInternalBuild;
}

@end