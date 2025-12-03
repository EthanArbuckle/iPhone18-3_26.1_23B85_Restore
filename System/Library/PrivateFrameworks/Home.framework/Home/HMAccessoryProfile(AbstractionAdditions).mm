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
  accessory = [self accessory];
  hf_serviceNameComponents = [accessory hf_serviceNameComponents];

  return hf_serviceNameComponents;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  v3 = [v1 na_setWithSafeObject:accessory];

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
  accessory = [self accessory];
  hf_accessoryType = [accessory hf_accessoryType];

  return hf_accessoryType;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  accessory = [self accessory];
  room = [accessory room];
  uniqueIdentifier = [room uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v9 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
  return v9;
}

- (id)hf_safeRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (uint64_t)hf_isIdentifiable
{
  accessory = [self accessory];
  if ([accessory supportsIdentify])
  {
    hf_isHomePod = 1;
  }

  else
  {
    accessory2 = [self accessory];
    hf_isHomePod = [accessory2 hf_isHomePod];
  }

  return hf_isHomePod;
}

- (uint64_t)hf_canShowInControlCenter
{
  accessory = [self accessory];
  hf_showsAsAccessoryInControlCentre = [accessory hf_showsAsAccessoryInControlCentre];

  return hf_showsAsAccessoryInControlCentre;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  accessory = [self accessory];
  v6 = [accessory hf_moveToRoom:v4];

  return v6;
}

- (id)hf_updateIsFavorite:()AbstractionAdditions
{
  accessory = [self accessory];
  hf_isCamera = [accessory hf_isCamera];

  if (hf_isCamera)
  {
    NSLog(&cfstr_AttemptingToUp_0.isa);
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [self hf_updateValue:a3 forContextType:2];
  }
  v7 = ;

  return v7;
}

- (uint64_t)hf_isVisibleInHomeStatus
{
  if ([self hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [self hf_shouldBeOnForContextType:1];
}

- (uint64_t)hf_isForcedVisibleInHomeStatus
{
  accessory = [self accessory];
  hf_isForcedVisibleInHomeStatus = [accessory hf_isForcedVisibleInHomeStatus];

  return hf_isForcedVisibleInHomeStatus;
}

- (id)hf_tileSize
{
  accessory = [self accessory];
  v2 = [HFHomeKitObjectSettingsStore tileSizeForObject:accessory];

  return v2;
}

- (id)hf_setTileSize:()AbstractionAdditions
{
  v4 = a3;
  accessory = [self accessory];
  v6 = [HFHomeKitObjectSettingsStore setTileSize:v4 forObject:accessory];

  return v6;
}

@end