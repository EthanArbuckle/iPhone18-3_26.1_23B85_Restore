@interface HREActionTemplate
- (HREActionVarianceCollection)allowedVariance;
- (NSDictionary)actionMap;
- (id)createStarterRecommendationInHome:(id)home;
- (id)involvedAccessoryTypes;
@end

@implementation HREActionTemplate

- (NSDictionary)actionMap
{
  actionMap = self->_actionMap;
  if (!actionMap)
  {
    _lazy_actionMap = [(HREActionTemplate *)self _lazy_actionMap];
    v5 = self->_actionMap;
    self->_actionMap = _lazy_actionMap;

    actionMap = self->_actionMap;
  }

  return actionMap;
}

- (HREActionVarianceCollection)allowedVariance
{
  allowedVariance = self->_allowedVariance;
  if (!allowedVariance)
  {
    _lazy_allowedVariance = [(HREActionTemplate *)self _lazy_allowedVariance];
    v5 = self->_allowedVariance;
    self->_allowedVariance = _lazy_allowedVariance;

    allowedVariance = self->_allowedVariance;
  }

  return allowedVariance;
}

- (id)createStarterRecommendationInHome:(id)home
{
  v9.receiver = self;
  v9.super_class = HREActionTemplate;
  v4 = [(HRETemplate *)&v9 createStarterRecommendationInHome:home];
  if ([v4 conformsToProtocol:&unk_286660478])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    allowedVariance = [(HREActionTemplate *)self allowedVariance];
    [v6 setAllowedVariance:allowedVariance];
  }

  return v4;
}

- (id)involvedAccessoryTypes
{
  v3 = MEMORY[0x277CBEB98];
  actionMap = [(HREActionTemplate *)self actionMap];
  allKeys = [actionMap allKeys];
  v6 = [v3 setWithArray:allKeys];
  extraInvolvedTypes = [(HREActionTemplate *)self extraInvolvedTypes];
  v8 = [v6 setByAddingObjectsFromSet:extraInvolvedTypes];

  return v8;
}

@end