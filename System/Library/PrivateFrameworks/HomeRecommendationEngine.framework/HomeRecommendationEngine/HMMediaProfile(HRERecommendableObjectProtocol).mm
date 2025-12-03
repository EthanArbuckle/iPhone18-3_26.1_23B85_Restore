@interface HMMediaProfile(HRERecommendableObjectProtocol)
- (id)hre_characteristics;
- (id)hre_matchingTypes;
- (id)hre_parentRoom;
- (id)hre_primaryType;
- (uint64_t)hre_isActionable;
- (uint64_t)hre_isVisible;
@end

@implementation HMMediaProfile(HRERecommendableObjectProtocol)

- (id)hre_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (id)hre_primaryType
{
  if (_MergedGlobals_15 != -1)
  {
    dispatch_once(&_MergedGlobals_15, &__block_literal_global_103);
  }

  v1 = qword_27F5F96D0;

  return v1;
}

- (id)hre_matchingTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMMediaProfile_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke;
  v3[3] = &unk_279776290;
  v3[4] = self;
  v1 = __67__HMMediaProfile_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke(v3);

  return v1;
}

- (id)hre_characteristics
{
  if (qword_27F5F96E8 != -1)
  {
    dispatch_once(&qword_27F5F96E8, &__block_literal_global_107);
  }

  v1 = qword_27F5F96F0;

  return v1;
}

- (uint64_t)hre_isActionable
{
  v2 = objc_alloc_init(MEMORY[0x277D148D0]);
  v3 = [objc_alloc(MEMORY[0x277D147E8]) initWithValueSource:v2 mediaProfileContainer:self];
  containsActions = [v3 containsActions];

  return containsActions;
}

- (uint64_t)hre_isVisible
{
  accessory = [self accessory];
  hre_isVisible = [accessory hre_isVisible];

  return hre_isVisible;
}

@end