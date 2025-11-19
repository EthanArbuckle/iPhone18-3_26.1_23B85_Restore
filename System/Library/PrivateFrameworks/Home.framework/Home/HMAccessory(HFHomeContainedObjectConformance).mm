@interface HMAccessory(HFHomeContainedObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMAccessory(HFHomeContainedObjectConformance)

- (uint64_t)hf_isValidObject
{
  v2 = [a1 home];
  if (v2)
  {
    v3 = [a1 uniqueIdentifier];
    v4 = [v2 accessories];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMAccessory_HFHomeContainedObjectConformance__hf_isValidObject__block_invoke;
    v8[3] = &unk_277DF3888;
    v9 = v3;
    v5 = v3;
    v6 = [v4 na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end