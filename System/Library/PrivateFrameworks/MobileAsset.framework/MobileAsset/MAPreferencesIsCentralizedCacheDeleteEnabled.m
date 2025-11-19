@interface MAPreferencesIsCentralizedCacheDeleteEnabled
@end

@implementation MAPreferencesIsCentralizedCacheDeleteEnabled

void ___MAPreferencesIsCentralizedCacheDeleteEnabled_block_invoke()
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    ___MAPreferencesIsVerboseLoggingEnabled_block_invoke_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v1 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableCentralizedCacheDelete", &v1);
    if (v1)
    {
      _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled = AppBooleanValue;
    }
  }
}

@end