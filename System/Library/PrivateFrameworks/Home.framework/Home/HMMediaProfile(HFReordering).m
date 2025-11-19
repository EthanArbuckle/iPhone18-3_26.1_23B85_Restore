@interface HMMediaProfile(HFReordering)
- (id)hf_serviceNameComponents;
@end

@implementation HMMediaProfile(HFReordering)

- (id)hf_serviceNameComponents
{
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceNameComponents];

  return v2;
}

@end