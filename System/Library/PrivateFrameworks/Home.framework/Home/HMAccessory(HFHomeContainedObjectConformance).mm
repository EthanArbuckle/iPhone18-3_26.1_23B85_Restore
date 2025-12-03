@interface HMAccessory(HFHomeContainedObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMAccessory(HFHomeContainedObjectConformance)

- (uint64_t)hf_isValidObject
{
  home = [self home];
  if (home)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    accessories = [home accessories];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMAccessory_HFHomeContainedObjectConformance__hf_isValidObject__block_invoke;
    v8[3] = &unk_277DF3888;
    v9 = uniqueIdentifier;
    v5 = uniqueIdentifier;
    v6 = [accessories na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end