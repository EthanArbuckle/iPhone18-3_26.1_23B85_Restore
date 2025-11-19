@interface HMService(HRERecommendableObjectProtocol)
- (id)hre_actionTypes;
- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol;
- (id)hre_characteristics;
- (id)hre_matchingTypes;
- (id)hre_parentRoom;
- (id)hre_primaryType;
- (uint64_t)hre_isActionable;
@end

@implementation HMService(HRERecommendableObjectProtocol)

- (id)hre_actionTypes
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 characteristics];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_map:&__block_literal_global_82];

  return v4;
}

- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol
{
  v4 = a3;
  v5 = [a1 associatedServiceType];
  if (v5)
  {
    v6 = [HREDerivedActionUtilities characteristicTypeForActionType:v4 serviceType:v5];
  }

  else
  {
    v7 = [a1 serviceType];
    v6 = [HREDerivedActionUtilities characteristicTypeForActionType:v4 serviceType:v7];
  }

  return v6;
}

- (id)hre_parentRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (id)hre_primaryType
{
  v2 = [a1 associatedServiceType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 serviceType];
  }

  v5 = v4;

  return v5;
}

- (id)hre_matchingTypes
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 associatedServiceType];
  v4 = v3;
  if (!v3)
  {
    v4 = [a1 serviceType];
  }

  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v2 setWithArray:v5];

  if (!v3)
  {
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hre_characteristics
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 characteristics];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (uint64_t)hre_isActionable
{
  v2 = objc_alloc_init(MEMORY[0x277D148D0]);
  v3 = objc_alloc(MEMORY[0x277D142E8]);
  v4 = [a1 accessory];
  v5 = [v3 initWithAccessory:v4 valueSource:v2];

  v6 = [MEMORY[0x277D14AC8] serviceItemForService:a1 valueSource:v2];
  if ([v5 containsActions])
  {
    v7 = [v6 containsActions];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end