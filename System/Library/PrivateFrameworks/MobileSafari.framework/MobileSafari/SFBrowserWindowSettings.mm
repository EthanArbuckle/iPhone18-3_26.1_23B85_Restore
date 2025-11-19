@interface SFBrowserWindowSettings
@end

@implementation SFBrowserWindowSettings

void __36___SFBrowserWindowSettings_settings__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedSettingsInstance;
  sharedSettingsInstance = v1;
}

void __65___SFBrowserWindowSettings__initializeSettingsDictionaryIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(*(a1 + 32) + 8) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __39___SFBrowserWindowSettings_synchronize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _synchronizeNow];
  *(*(a1 + 32) + 16) = 0;
  return result;
}

@end