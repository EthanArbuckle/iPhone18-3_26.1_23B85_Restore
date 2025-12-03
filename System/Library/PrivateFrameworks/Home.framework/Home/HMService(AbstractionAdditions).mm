@interface HMService(AbstractionAdditions)
- (id)hf_associatedAccessories;
- (id)hf_containedCharacteristics;
- (id)hf_containedProfiles;
- (id)hf_moveToRoom:()AbstractionAdditions;
- (id)hf_safeRoom;
- (uint64_t)hf_isIdentifiable;
- (uint64_t)hf_isInRoom:()AbstractionAdditions;
- (uint64_t)hf_isVisibleInHomeStatus;
@end

@implementation HMService(AbstractionAdditions)

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  hf_parentRoom = [self hf_parentRoom];
  uniqueIdentifier = [hf_parentRoom uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v8 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
  return v8;
}

- (id)hf_containedProfiles
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  profiles = [accessory profiles];
  v5 = [v2 setWithArray:profiles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMService_AbstractionAdditions__hf_containedProfiles__block_invoke;
  v8[3] = &unk_277DF4178;
  v8[4] = self;
  v6 = [v5 na_filter:v8];

  return v6;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  characteristics = [self characteristics];
  v3 = [v1 setWithArray:characteristics];

  return v3;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  v3 = [v1 na_setWithSafeObject:accessory];

  return v3;
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
  supportsIdentify = [accessory supportsIdentify];

  return supportsIdentify;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HMService_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v9[3] = &unk_277DF4150;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v9];

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

@end