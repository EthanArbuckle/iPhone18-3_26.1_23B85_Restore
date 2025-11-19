@interface InstallStockholmPreferencesObserverIfNecessary
@end

@implementation InstallStockholmPreferencesObserverIfNecessary

uint64_t ___InstallStockholmPreferencesObserverIfNecessary_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _StockholmPrefsChangedHandler, @"com.apple.stockholm.preferenceschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return _CFPreferencesSetBackupDisabled();
}

@end