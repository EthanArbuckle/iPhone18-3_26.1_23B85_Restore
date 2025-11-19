@interface HMDFeaturesDataSource
+ (HMDFeaturesDataSource)defaultDataSource;
- (BOOL)isCheckAdaptiveTemperatureAutomationsMFiCapabilityEnabled;
- (BOOL)isCheckCleanEnergyAutomationMFiCapabilityEnabled;
- (BOOL)isLocalPresenceDebugBulletinEnabled;
@end

@implementation HMDFeaturesDataSource

+ (HMDFeaturesDataSource)defaultDataSource
{
  if (defaultDataSource_onceToken != -1)
  {
    dispatch_once(&defaultDataSource_onceToken, &__block_literal_global_250469);
  }

  v3 = defaultDataSource_dataSource;

  return v3;
}

- (BOOL)isLocalPresenceDebugBulletinEnabled
{
  v2 = isInternalBuild();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)isCheckCleanEnergyAutomationMFiCapabilityEnabled
{
  if (CFPreferencesGetAppBooleanValue(@"SeedAllowUncertifiedDevicesToOptimizeForCleanerEnergy", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    return 0;
  }

  else
  {
    return _os_feature_enabled_impl() ^ 1;
  }
}

- (BOOL)isCheckAdaptiveTemperatureAutomationsMFiCapabilityEnabled
{
  if (CFPreferencesGetAppBooleanValue(@"SeedAllowUncertifiedDevicesToOptimizeForEnergySavings", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    return 0;
  }

  else
  {
    return _os_feature_enabled_impl() ^ 1;
  }
}

void __42__HMDFeaturesDataSource_defaultDataSource__block_invoke()
{
  v0 = objc_alloc_init(HMDFeaturesDataSource);
  v1 = defaultDataSource_dataSource;
  defaultDataSource_dataSource = v0;
}

@end