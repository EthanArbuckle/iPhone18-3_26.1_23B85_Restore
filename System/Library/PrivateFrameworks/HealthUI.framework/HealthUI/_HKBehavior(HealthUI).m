@interface _HKBehavior(HealthUI)
- (uint64_t)hkui_isRunningInApp;
- (uint64_t)hkui_isRunningInHealthApp;
- (uint64_t)hkui_isRunningInPreferencesApp;
@end

@implementation _HKBehavior(HealthUI)

- (uint64_t)hkui_isRunningInHealthApp
{
  if (hkui_isRunningInHealthApp_onceToken != -1)
  {
    [_HKBehavior(HealthUI) hkui_isRunningInHealthApp];
  }

  return hkui_isRunningInHealthApp_isRunningInHealthApp;
}

- (uint64_t)hkui_isRunningInPreferencesApp
{
  if (hkui_isRunningInPreferencesApp_onceToken != -1)
  {
    [_HKBehavior(HealthUI) hkui_isRunningInPreferencesApp];
  }

  return hkui_isRunningInPreferencesApp_isRunningInPreferencesApp;
}

- (uint64_t)hkui_isRunningInApp
{
  if (hkui_isRunningInApp_onceToken != -1)
  {
    [_HKBehavior(HealthUI) hkui_isRunningInApp];
  }

  return hkui_isRunningInApp_isRunningInApp;
}

@end