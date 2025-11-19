@interface LNActionConfigurationWhen
@end

@implementation LNActionConfigurationWhen

uint64_t __66__LNActionConfigurationWhen_LinkServices__valueForAction_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) condition];
  v5 = [v4 parameterIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

@end