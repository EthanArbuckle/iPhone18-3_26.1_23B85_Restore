@interface HMServiceGroup(HFHomeKitObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMServiceGroup(HFHomeKitObjectConformance)

- (uint64_t)hf_isValidObject
{
  home = [self home];
  if (home)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    serviceGroups = [home serviceGroups];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMServiceGroup_HFHomeKitObjectConformance__hf_isValidObject__block_invoke;
    v8[3] = &unk_277DF7F28;
    v9 = uniqueIdentifier;
    v5 = uniqueIdentifier;
    v6 = [serviceGroups na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end