@interface HMAccessory(HRERecommendableObjectProtocol)
- (id)_containedRecommendableObjects;
- (id)hre_actionTypes;
- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol;
- (id)hre_characteristics;
- (id)hre_matchingTypes;
- (id)hre_primaryType;
- (uint64_t)hre_isActionable;
@end

@implementation HMAccessory(HRERecommendableObjectProtocol)

- (id)_containedRecommendableObjects
{
  v2 = [MEMORY[0x277CBEB58] set];
  services = [self services];
  [v2 addObjectsFromArray:services];

  profiles = [self profiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMAccessory_HRERecommendableObjectProtocol___containedRecommendableObjects__block_invoke;
  v7[3] = &unk_2797761A0;
  v5 = v2;
  v8 = v5;
  [profiles na_each:v7];

  return v5;
}

- (id)hre_actionTypes
{
  _containedRecommendableObjects = [self _containedRecommendableObjects];
  v2 = [_containedRecommendableObjects na_flatMap:&__block_literal_global];

  return v2;
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

- (id)hre_primaryType
{
  hre_matchingTypes = [self hre_matchingTypes];
  if ([hre_matchingTypes count] == 1)
  {
    anyObject = [hre_matchingTypes anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)hre_matchingTypes
{
  _containedRecommendableObjects = [self _containedRecommendableObjects];
  v2 = [_containedRecommendableObjects na_flatMap:&__block_literal_global_72];

  return v2;
}

- (id)hre_characteristics
{
  _containedRecommendableObjects = [self _containedRecommendableObjects];
  v2 = [_containedRecommendableObjects na_flatMap:&__block_literal_global_74];

  return v2;
}

- (uint64_t)hre_isActionable
{
  _containedRecommendableObjects = [self _containedRecommendableObjects];
  v2 = [_containedRecommendableObjects na_any:&__block_literal_global_77];

  return v2;
}

@end