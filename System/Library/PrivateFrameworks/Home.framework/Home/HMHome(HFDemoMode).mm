@interface HMHome(HFDemoMode)
- (id)hf_demoModeAccessories;
@end

@implementation HMHome(HFDemoMode)

- (id)hf_demoModeAccessories
{
  v0 = +[HFDemoModeAccessoryManager sharedManager];
  accessories = [v0 accessories];

  return accessories;
}

@end