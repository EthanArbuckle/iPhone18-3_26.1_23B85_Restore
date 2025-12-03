@interface HMMediaProfile(HFReordering)
- (id)hf_serviceNameComponents;
@end

@implementation HMMediaProfile(HFReordering)

- (id)hf_serviceNameComponents
{
  accessory = [self accessory];
  hf_serviceNameComponents = [accessory hf_serviceNameComponents];

  return hf_serviceNameComponents;
}

@end