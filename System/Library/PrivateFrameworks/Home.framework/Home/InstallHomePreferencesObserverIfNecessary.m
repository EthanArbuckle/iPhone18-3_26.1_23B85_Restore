@interface InstallHomePreferencesObserverIfNecessary
@end

@implementation InstallHomePreferencesObserverIfNecessary

void ___InstallHomePreferencesObserverIfNecessary_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _HomePrefsChangedHandler, @"com.apple.Home.preferenceschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end