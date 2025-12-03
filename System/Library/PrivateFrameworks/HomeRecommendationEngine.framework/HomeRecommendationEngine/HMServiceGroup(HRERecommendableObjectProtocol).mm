@interface HMServiceGroup(HRERecommendableObjectProtocol)
- (id)hre_actionTypes;
- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol;
- (id)hre_characteristics;
- (id)hre_home;
- (id)hre_matchingTypes;
- (id)hre_parentRoom;
- (id)hre_primaryType;
- (uint64_t)hre_isActionable;
- (uint64_t)hre_isVisible;
@end

@implementation HMServiceGroup(HRERecommendableObjectProtocol)

- (id)hre_actionTypes
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];
  v4 = [v3 na_flatMap:&__block_literal_global_90];

  return v4;
}

- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [self services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        hre_actionTypes = [v9 hre_actionTypes];
        v11 = [hre_actionTypes containsObject:v4];

        if (v11)
        {
          v6 = [v9 hre_characteristicTypeForActionType:v4];
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hre_home
{
  services = [self services];
  firstObject = [services firstObject];
  home = [firstObject home];

  return home;
}

- (id)hre_parentRoom
{
  if ([self hf_areAllServicesInSameRoom])
  {
    services = [self services];
    firstObject = [services firstObject];
    hre_parentRoom = [firstObject hre_parentRoom];
  }

  else
  {
    hre_parentRoom = 0;
  }

  return hre_parentRoom;
}

- (id)hre_primaryType
{
  hf_serviceDescriptor = [self hf_serviceDescriptor];
  serviceType = [hf_serviceDescriptor serviceType];

  return serviceType;
}

- (id)hre_matchingTypes
{
  v1 = MEMORY[0x277CBEB98];
  hre_primaryType = [self hre_primaryType];
  v3 = [v1 na_setWithSafeObject:hre_primaryType];

  return v3;
}

- (id)hre_characteristics
{
  hf_containedServices = [self hf_containedServices];
  v2 = [hf_containedServices na_flatMap:&__block_literal_global_92];

  return v2;
}

- (uint64_t)hre_isActionable
{
  services = [self services];
  v2 = [services na_any:&__block_literal_global_95];

  return v2;
}

- (uint64_t)hre_isVisible
{
  services = [self services];
  v2 = [services na_any:&__block_literal_global_97];

  return v2;
}

@end