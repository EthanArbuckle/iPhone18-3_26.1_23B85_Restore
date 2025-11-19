@interface DSFeatureFlags
+ (BOOL)isIntroductionsEnabled;
+ (BOOL)isNaturalUIEnabled;
+ (BOOL)isWifiSyncRemindersEnabled;
@end

@implementation DSFeatureFlags

+ (BOOL)isNaturalUIEnabled
{
  if (isNaturalUIEnabled_onceToken != -1)
  {
    +[DSFeatureFlags isNaturalUIEnabled];
  }

  return isNaturalUIEnabled_isEnabled;
}

uint64_t __36__DSFeatureFlags_isNaturalUIEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _UISolariumEnabled();
  }

  isNaturalUIEnabled_isEnabled = result;
  return result;
}

+ (BOOL)isIntroductionsEnabled
{
  if (isIntroductionsEnabled_onceToken != -1)
  {
    +[DSFeatureFlags isIntroductionsEnabled];
  }

  return isIntroductionsEnabled_isEnabled;
}

uint64_t __40__DSFeatureFlags_isIntroductionsEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isIntroductionsEnabled_isEnabled = result;
  return result;
}

+ (BOOL)isWifiSyncRemindersEnabled
{
  if (isWifiSyncRemindersEnabled_onceToken != -1)
  {
    +[DSFeatureFlags isWifiSyncRemindersEnabled];
  }

  return isWifiSyncRemindersEnabled_isEnabled;
}

uint64_t __44__DSFeatureFlags_isWifiSyncRemindersEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isWifiSyncRemindersEnabled_isEnabled = result;
  return result;
}

@end