@interface HMServiceGroup(AbstractionAdditions)
- (id)hf_accessoryType;
- (id)hf_associatedAccessories;
- (id)hf_containedCharacteristics;
- (id)hf_containedProfiles;
- (id)hf_containedServices;
- (id)hf_moveToRoom:()AbstractionAdditions;
- (id)hf_safeRoom;
- (uint64_t)hf_canShowInControlCenter;
- (uint64_t)hf_isForcedVisibleInHomeStatus;
- (uint64_t)hf_isInRoom:()AbstractionAdditions;
- (uint64_t)hf_isVisibleInHomeStatus;
@end

@implementation HMServiceGroup(AbstractionAdditions)

- (id)hf_containedServices
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];

  return v3;
}

- (id)hf_containedProfiles
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];
  v4 = [v3 na_flatMap:&__block_literal_global_161];

  return v4;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [services na_flatMap:&__block_literal_global_163];
  v4 = [v1 setWithArray:v3];

  return v4;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];
  v4 = [v3 na_map:&__block_literal_global_166];

  return v4;
}

- (id)hf_accessoryType
{
  v2 = MEMORY[0x277CBEB98];
  services = [self services];
  v4 = [v2 setWithArray:services];
  v5 = [v4 na_map:&__block_literal_global_169];

  if ([v5 count] == 1)
  {
    anyObject = [v5 anyObject];
  }

  else
  {
    services2 = [self services];
    v8 = [services2 sortedArrayUsingComparator:&__block_literal_global_172];

    v9 = [v8 na_map:&__block_literal_global_174];
    hf_firstMostCommonObject = [v9 hf_firstMostCommonObject];
    serviceType = [hf_firstMostCommonObject serviceType];
    serviceSubtype = [hf_firstMostCommonObject serviceSubtype];
    anyObject = [HFAccessoryType serviceType:serviceType subtype:serviceSubtype];
  }

  return anyObject;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  hf_associatedAccessories = [self hf_associatedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMServiceGroup_AbstractionAdditions__hf_isInRoom___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [hf_associatedAccessories na_any:v9];

  return v7;
}

- (id)hf_safeRoom
{
  if ([self hf_areAllServicesInSameRoom])
  {
    services = [self services];
    firstObject = [services firstObject];
    accessory = [firstObject accessory];
    room = [accessory room];
  }

  else
  {
    room = 0;
  }

  return room;
}

- (uint64_t)hf_canShowInControlCenter
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];
  v4 = [v3 na_any:&__block_literal_global_177];

  return v4;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  hf_associatedAccessories = [self hf_associatedAccessories];
  allObjects = [hf_associatedAccessories allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HMServiceGroup_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v12[3] = &unk_277DF4220;
  v13 = v4;
  v8 = v4;
  v9 = [allObjects na_map:v12];
  v10 = [v5 combineAllFutures:v9];

  return v10;
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
  services = [self services];
  v2 = [services na_any:&__block_literal_global_180];

  return v2;
}

@end