@interface LNActionConfigurationSwitch
@end

@implementation LNActionConfigurationSwitch

uint64_t __68__LNActionConfigurationSwitch_LinkServices__valueForAction_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) parameterIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end