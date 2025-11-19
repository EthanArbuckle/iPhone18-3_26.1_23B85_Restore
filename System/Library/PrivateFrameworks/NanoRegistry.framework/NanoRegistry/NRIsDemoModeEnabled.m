@interface NRIsDemoModeEnabled
@end

@implementation NRIsDemoModeEnabled

uint64_t ___NRIsDemoModeEnabled_block_invoke()
{
  out_token = -1;
  v2 = 0;
  if (notify_register_check([@"com.apple.nanoregistry.NRDemoModeNotifyNotification" UTF8String], &out_token) || !notify_is_valid_token(out_token) || (result = notify_get_state(out_token, &v2), result))
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0);
    _MergedGlobals_7 = AppBooleanValue != 0;
    if (AppBooleanValue && CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", 0) != 5)
    {
      _MergedGlobals_7 = 0;
    }

    result = out_token;
    if (out_token != -1)
    {
      return notify_set_state(out_token, _MergedGlobals_7);
    }
  }

  else
  {
    _MergedGlobals_7 = v2 != 0;
  }

  return result;
}

@end