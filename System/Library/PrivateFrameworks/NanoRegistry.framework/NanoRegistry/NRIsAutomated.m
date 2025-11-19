@interface NRIsAutomated
@end

@implementation NRIsAutomated

uint64_t ___NRIsAutomated_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"_ShowInternalAutomationUI", @"com.apple.nanobuddy.automationhelper", 0);
  if (result)
  {
    byte_1ED6F09EA = 1;
  }

  return result;
}

@end