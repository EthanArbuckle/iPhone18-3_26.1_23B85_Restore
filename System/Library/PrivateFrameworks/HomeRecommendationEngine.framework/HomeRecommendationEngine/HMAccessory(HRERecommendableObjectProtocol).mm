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
  v3 = [a1 services];
  [v2 addObjectsFromArray:v3];

  v4 = [a1 profiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMAccessory_HRERecommendableObjectProtocol___containedRecommendableObjects__block_invoke;
  v7[3] = &unk_2797761A0;
  v5 = v2;
  v8 = v5;
  [v4 na_each:v7];

  return v5;
}

- (id)hre_actionTypes
{
  v1 = [a1 _containedRecommendableObjects];
  v2 = [v1 na_flatMap:&__block_literal_global];

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

- (id)hre_primaryType
{
  v1 = [a1 hre_matchingTypes];
  if ([v1 count] == 1)
  {
    v2 = [v1 anyObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)hre_matchingTypes
{
  v1 = [a1 _containedRecommendableObjects];
  v2 = [v1 na_flatMap:&__block_literal_global_72];

  return v2;
}

- (id)hre_characteristics
{
  v1 = [a1 _containedRecommendableObjects];
  v2 = [v1 na_flatMap:&__block_literal_global_74];

  return v2;
}

- (uint64_t)hre_isActionable
{
  v1 = [a1 _containedRecommendableObjects];
  v2 = [v1 na_any:&__block_literal_global_77];

  return v2;
}

@end