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
  v5 = [a1 hf_parentRoom];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 uniqueIdentifier];

  v8 = [v6 hmf_isEqualToUUID:v7];
  return v8;
}

- (id)hf_containedProfiles
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 accessory];
  v4 = [v3 profiles];
  v5 = [v2 setWithArray:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMService_AbstractionAdditions__hf_containedProfiles__block_invoke;
  v8[3] = &unk_277DF4178;
  v8[4] = a1;
  v6 = [v5 na_filter:v8];

  return v6;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 characteristics];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v1 na_setWithSafeObject:v2];

  return v3;
}

- (id)hf_safeRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (uint64_t)hf_isIdentifiable
{
  v1 = [a1 accessory];
  v2 = [v1 supportsIdentify];

  return v2;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HMService_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v9[3] = &unk_277DF4150;
  v9[4] = a1;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v9];

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

@end