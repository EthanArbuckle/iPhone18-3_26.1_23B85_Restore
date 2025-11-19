@interface HMMediaSystem(HFHomeKitObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMMediaSystem(HFHomeKitObjectConformance)

- (uint64_t)hf_isValidObject
{
  v2 = [a1 components];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_62];
  v4 = [v3 mediaProfile];
  v5 = [v4 accessory];
  v6 = [v5 home];

  if (v6)
  {
    v7 = [a1 uniqueIdentifier];
    v8 = [v6 mediaSystems];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__HMMediaSystem_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_2;
    v12[3] = &unk_277DF7250;
    v13 = v7;
    v9 = v7;
    v10 = [v8 na_any:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end