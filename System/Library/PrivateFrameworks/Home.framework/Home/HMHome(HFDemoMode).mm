@interface HMHome(HFDemoMode)
- (id)hf_demoModeAccessories;
@end

@implementation HMHome(HFDemoMode)

- (id)hf_demoModeAccessories
{
  v0 = +[HFDemoModeAccessoryManager sharedManager];
  v1 = [v0 accessories];

  return v1;
}

@end