@interface HMAccessoryProfile(HFHomeKitObjectConformance)
- (id)hf_parentRoom;
- (id)home;
- (uint64_t)hf_isValidObject;
@end

@implementation HMAccessoryProfile(HFHomeKitObjectConformance)

- (id)hf_parentRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (uint64_t)hf_isValidObject
{
  v2 = [a1 accessory];
  v3 = [v2 home];

  if (v3)
  {
    v4 = [a1 uniqueIdentifier];
    v5 = [v3 accessories];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke;
    v9[3] = &unk_277DF3888;
    v10 = v4;
    v6 = v4;
    v7 = [v5 na_any:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)home
{
  v1 = [a1 accessory];
  v2 = [v1 home];

  return v2;
}

@end