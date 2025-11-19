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
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (id)hf_containedProfiles
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_flatMap:&__block_literal_global_161];

  return v4;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v2 na_flatMap:&__block_literal_global_163];
  v4 = [v1 setWithArray:v3];

  return v4;
}

- (id)hf_associatedAccessories
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_map:&__block_literal_global_166];

  return v4;
}

- (id)hf_accessoryType
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 services];
  v4 = [v2 setWithArray:v3];
  v5 = [v4 na_map:&__block_literal_global_169];

  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
  }

  else
  {
    v7 = [a1 services];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_172];

    v9 = [v8 na_map:&__block_literal_global_174];
    v10 = [v9 hf_firstMostCommonObject];
    v11 = [v10 serviceType];
    v12 = [v10 serviceSubtype];
    v6 = [HFAccessoryType serviceType:v11 subtype:v12];
  }

  return v6;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = [a1 hf_associatedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMServiceGroup_AbstractionAdditions__hf_isInRoom___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

- (id)hf_safeRoom
{
  if ([a1 hf_areAllServicesInSameRoom])
  {
    v2 = [a1 services];
    v3 = [v2 firstObject];
    v4 = [v3 accessory];
    v5 = [v4 room];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)hf_canShowInControlCenter
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_any:&__block_literal_global_177];

  return v4;
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v6 = [a1 hf_associatedAccessories];
  v7 = [v6 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HMServiceGroup_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v12[3] = &unk_277DF4220;
  v13 = v4;
  v8 = v4;
  v9 = [v7 na_map:v12];
  v10 = [v5 combineAllFutures:v9];

  return v10;
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
  v1 = [a1 services];
  v2 = [v1 na_any:&__block_literal_global_180];

  return v2;
}

@end