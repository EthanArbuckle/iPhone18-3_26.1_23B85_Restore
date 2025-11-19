@interface HKBehavior
@end

@implementation HKBehavior

void __50___HKBehavior_HealthUI__hkui_isRunningInHealthApp__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  hkui_isRunningInHealthApp_isRunningInHealthApp = [v0 isEqualToString:*MEMORY[0x1E696C860]];
}

void __55___HKBehavior_HealthUI__hkui_isRunningInPreferencesApp__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  hkui_isRunningInPreferencesApp_isRunningInPreferencesApp = [v0 isEqualToString:@"com.apple.Preferences"];
}

void __44___HKBehavior_HealthUI__hkui_isRunningInApp__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 infoDictionary];

  v1 = [v2 objectForKey:@"CFBundlePackageType"];
  hkui_isRunningInApp_isRunningInApp = [v1 isEqualToString:@"APPL"];
}

@end