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
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];
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
  v5 = [a1 services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 hre_actionTypes];
        v11 = [v10 containsObject:v4];

        if (v11)
        {
          v6 = [v9 hre_characteristicTypeForActionType:v4];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v1 = [a1 services];
  v2 = [v1 firstObject];
  v3 = [v2 home];

  return v3;
}

- (id)hre_parentRoom
{
  if ([a1 hf_areAllServicesInSameRoom])
  {
    v2 = [a1 services];
    v3 = [v2 firstObject];
    v4 = [v3 hre_parentRoom];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hre_primaryType
{
  v1 = [a1 hf_serviceDescriptor];
  v2 = [v1 serviceType];

  return v2;
}

- (id)hre_matchingTypes
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 hre_primaryType];
  v3 = [v1 na_setWithSafeObject:v2];

  return v3;
}

- (id)hre_characteristics
{
  v1 = [a1 hf_containedServices];
  v2 = [v1 na_flatMap:&__block_literal_global_92];

  return v2;
}

- (uint64_t)hre_isActionable
{
  v1 = [a1 services];
  v2 = [v1 na_any:&__block_literal_global_95];

  return v2;
}

- (uint64_t)hre_isVisible
{
  v1 = [a1 services];
  v2 = [v1 na_any:&__block_literal_global_97];

  return v2;
}

@end