@interface HMMediaSystem(HRERecommendableObjectProtocol)
- (id)hre_actionTypes;
- (id)hre_characteristics;
- (id)hre_matchingTypes;
- (id)hre_primaryType;
- (uint64_t)hre_isActionable;
- (uint64_t)hre_isVisible;
@end

@implementation HMMediaSystem(HRERecommendableObjectProtocol)

- (id)hre_actionTypes
{
  mediaProfiles = [self mediaProfiles];
  v2 = [mediaProfiles na_flatMap:&__block_literal_global_111];

  return v2;
}

- (id)hre_primaryType
{
  if (qword_27F5F96F8 != -1)
  {
    dispatch_once(&qword_27F5F96F8, &__block_literal_global_115);
  }

  v1 = qword_27F5F9700;

  return v1;
}

- (id)hre_matchingTypes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__HMMediaSystem_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke;
  v3[3] = &unk_279776290;
  v3[4] = self;
  v1 = __66__HMMediaSystem_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke(v3);

  return v1;
}

- (id)hre_characteristics
{
  if (qword_27F5F9718 != -1)
  {
    dispatch_once(&qword_27F5F9718, &__block_literal_global_119);
  }

  v1 = qword_27F5F9720;

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
  mediaProfiles = [self mediaProfiles];
  v2 = [mediaProfiles na_any:&__block_literal_global_122];

  return v2;
}

@end