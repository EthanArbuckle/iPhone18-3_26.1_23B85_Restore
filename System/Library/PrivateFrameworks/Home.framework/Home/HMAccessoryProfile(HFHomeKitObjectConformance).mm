@interface HMAccessoryProfile(HFHomeKitObjectConformance)
- (id)hf_parentRoom;
- (id)home;
- (uint64_t)hf_isValidObject;
@end

@implementation HMAccessoryProfile(HFHomeKitObjectConformance)

- (id)hf_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (uint64_t)hf_isValidObject
{
  accessory = [self accessory];
  home = [accessory home];

  if (home)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    accessories = [home accessories];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HMAccessoryProfile_HFHomeKitObjectConformance__hf_isValidObject__block_invoke;
    v9[3] = &unk_277DF3888;
    v10 = uniqueIdentifier;
    v6 = uniqueIdentifier;
    v7 = [accessories na_any:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)home
{
  accessory = [self accessory];
  home = [accessory home];

  return home;
}

@end