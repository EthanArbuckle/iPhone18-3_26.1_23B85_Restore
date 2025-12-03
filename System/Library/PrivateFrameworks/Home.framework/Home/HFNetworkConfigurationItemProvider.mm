@interface HFNetworkConfigurationItemProvider
- (id)_profileItemForProfile:(id)profile;
- (id)_supportedProfileClasses;
@end

@implementation HFNetworkConfigurationItemProvider

- (id)_supportedProfileClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_profileItemForProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [HFNetworkConfigurationItem alloc];
    home = [(HFAccessoryProfileItemProvider *)self home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    v8 = [(HFAccessoryProfileItem *)v5 initWithProfile:profileCopy valueSource:hf_characteristicValueManager];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end