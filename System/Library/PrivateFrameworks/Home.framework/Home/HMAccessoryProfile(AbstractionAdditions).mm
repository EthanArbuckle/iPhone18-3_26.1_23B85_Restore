@interface HMAccessoryProfile(AbstractionAdditions)
- (id)hf_accessoryType;
- (id)hf_associatedAccessories;
- (id)hf_containedCharacteristics;
- (id)hf_containedServices;
- (id)hf_moveToRoom:()AbstractionAdditions;
- (id)hf_safeRoom;
- (id)hf_serviceNameComponents;
- (id)hf_setTileSize:()AbstractionAdditions;
- (id)hf_tileSize;
- (id)hf_updateIsFavorite:()AbstractionAdditions;
- (uint64_t)hf_canShowInControlCenter;
- (uint64_t)hf_isForcedVisibleInHomeStatus;
- (uint64_t)hf_isIdentifiable;
- (uint64_t)hf_isInRoom:()AbstractionAdditions;
- (uint64_t)hf_isVisibleInHomeStatus;
@end

@implementation HMAccessoryProfile(AbstractionAdditions)

- (id)hf_serviceNameComponents
{
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceNameComponents];

  return v2;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v1 na_setWithSafeObject:v2];

  return v3;
}

- (id)hf_containedServices
{
  if (_MergedGlobals_216 != -1)
  {
    dispatch_once(&_MergedGlobals_216, &__block_literal_global_186);
  }

  v1 = qword_280E02B88;

  return v1;
}

- (id)hf_containedCharacteristics
{
  if (qword_280E02B90 != -1)
  {
    dispatch_once(&qword_280E02B90, &__block_literal_global_190);
  }

  v1 = qword_280E02B98;

  return v1;
}

- (id)hf_accessoryType
{
  v1 = [a1 accessory];
  v2 = [v1 hf_accessoryType];

  return v2;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = [a1 accessory];
  v6 = [v5 room];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 uniqueIdentifier];

  v9 = [v7 hmf_isEqualToUUID:v8];
  return v9;
}

- (id)hf_safeRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (uint64_t)hf_isIdentifiable
{
  v2 = [a1 accessory];
  if ([v2 supportsIdentify])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 accessory];
    v3 = [v4 hf_isHomePod];
  }

  return v3;
}

- (uint64_t)hf_canShowInControlCenter
{
  v1 = [a1 accessory];
  v2 = [v1 hf_showsAsAccessoryInControlCentre];

  return v2;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = [a1 accessory];
  v6 = [v5 hf_moveToRoom:v4];

  return v6;
}

- (id)hf_updateIsFavorite:()AbstractionAdditions
{
  v5 = [a1 accessory];
  v6 = [v5 hf_isCamera];

  if (v6)
  {
    NSLog(&cfstr_AttemptingToUp_0.isa);
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [a1 hf_updateValue:a3 forContextType:2];
  }
  v7 = ;

  return v7;
}

- (uint64_t)hf_isVisibleInHomeStatus
{
  if ([a1 hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [a1 hf_shouldBeOnForContextType:1];
}

- (uint64_t)hf_isForcedVisibleInHomeStatus
{
  v1 = [a1 accessory];
  v2 = [v1 hf_isForcedVisibleInHomeStatus];

  return v2;
}

- (id)hf_tileSize
{
  v1 = [a1 accessory];
  v2 = [HFHomeKitObjectSettingsStore tileSizeForObject:v1];

  return v2;
}

- (id)hf_setTileSize:()AbstractionAdditions
{
  v4 = a3;
  v5 = [a1 accessory];
  v6 = [HFHomeKitObjectSettingsStore setTileSize:v4 forObject:v5];

  return v6;
}

@end