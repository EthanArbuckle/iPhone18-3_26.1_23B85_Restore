@interface CBPreferencesSettingsProvider
+ (CBPreferencesSettingsProvider)sharedInstance;
- (BOOL)specifiesAABCurveUpdateStrategy;
- (unint64_t)aabUpdateStrategyType;
@end

@implementation CBPreferencesSettingsProvider

+ (CBPreferencesSettingsProvider)sharedInstance
{
  objc_sync_enter(self);
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, &__block_literal_global_16);
  }

  v3 = sharedInstance__sharedObject_7;
  objc_sync_exit(self);
  return v3;
}

CBPreferencesSettingsProvider *__47__CBPreferencesSettingsProvider_sharedInstance__block_invoke()
{
  result = objc_alloc_init(CBPreferencesSettingsProvider);
  sharedInstance__sharedObject_7 = result;
  return result;
}

- (BOOL)specifiesAABCurveUpdateStrategy
{
  v3 = MEMORY[0x1E695E8B8];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"CBAABCurveUpdateStrategyType", @"com.apple.CoreBrightness", *v3, *MEMORY[0x1E695E8B0]);
  if (!v4)
  {
    return 0;
  }

  MEMORY[0x1E69E5920](v4);
  return 1;
}

- (unint64_t)aabUpdateStrategyType
{
  intValue = 2;
  v3 = MEMORY[0x1E695E8B8];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"CBAABCurveUpdateStrategyType", @"com.apple.CoreBrightness", *v3, *MEMORY[0x1E695E8B0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v4 intValue];
  }

  MEMORY[0x1E69E5920](v4);
  return intValue;
}

@end