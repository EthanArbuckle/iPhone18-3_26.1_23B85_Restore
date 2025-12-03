@interface HMMediaSystem(HFHomeKitObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMMediaSystem(HFHomeKitObjectConformance)

- (uint64_t)hf_isValidObject
{
  components = [self components];
  v3 = [components na_firstObjectPassingTest:&__block_literal_global_62];
  mediaProfile = [v3 mediaProfile];
  accessory = [mediaProfile accessory];
  home = [accessory home];

  if (home)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    mediaSystems = [home mediaSystems];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__HMMediaSystem_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_2;
    v12[3] = &unk_277DF7250;
    v13 = uniqueIdentifier;
    v9 = uniqueIdentifier;
    v10 = [mediaSystems na_any:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end