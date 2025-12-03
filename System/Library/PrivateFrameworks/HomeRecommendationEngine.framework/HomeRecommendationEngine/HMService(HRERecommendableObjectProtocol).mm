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
  characteristics = [self characteristics];
  v3 = [v1 setWithArray:characteristics];
  v4 = [v3 na_map:&__block_literal_global_82];

  return v4;
}

- (id)hre_characteristicTypeForActionType:()HRERecommendableObjectProtocol
{
  v4 = a3;
  associatedServiceType = [self associatedServiceType];
  if (associatedServiceType)
  {
    v6 = [HREDerivedActionUtilities characteristicTypeForActionType:v4 serviceType:associatedServiceType];
  }

  else
  {
    serviceType = [self serviceType];
    v6 = [HREDerivedActionUtilities characteristicTypeForActionType:v4 serviceType:serviceType];
  }

  return v6;
}

- (id)hre_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (id)hre_primaryType
{
  associatedServiceType = [self associatedServiceType];
  v3 = associatedServiceType;
  if (associatedServiceType)
  {
    serviceType = associatedServiceType;
  }

  else
  {
    serviceType = [self serviceType];
  }

  v5 = serviceType;

  return v5;
}

- (id)hre_matchingTypes
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  associatedServiceType = [self associatedServiceType];
  serviceType = associatedServiceType;
  if (!associatedServiceType)
  {
    serviceType = [self serviceType];
  }

  v9[0] = serviceType;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v2 setWithArray:v5];

  if (!associatedServiceType)
  {
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hre_characteristics
{
  v1 = MEMORY[0x277CBEB98];
  characteristics = [self characteristics];
  v3 = [v1 setWithArray:characteristics];

  return v3;
}

- (uint64_t)hre_isActionable
{
  v2 = objc_alloc_init(MEMORY[0x277D148D0]);
  v3 = objc_alloc(MEMORY[0x277D142E8]);
  accessory = [self accessory];
  v5 = [v3 initWithAccessory:accessory valueSource:v2];

  v6 = [MEMORY[0x277D14AC8] serviceItemForService:self valueSource:v2];
  if ([v5 containsActions])
  {
    containsActions = [v6 containsActions];
  }

  else
  {
    containsActions = 0;
  }

  return containsActions;
}

@end