@interface InitializeDemoModeValuesIfNecessary
@end

@implementation InitializeDemoModeValuesIfNecessary

void ___InitializeDemoModeValuesIfNecessary_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _PreferencesChanged, *MEMORY[0x277D38978], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  _UpdateDemoModeValues();
}

@end