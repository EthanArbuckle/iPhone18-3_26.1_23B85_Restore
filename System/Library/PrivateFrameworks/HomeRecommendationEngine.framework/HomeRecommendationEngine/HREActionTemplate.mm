@interface HREActionTemplate
- (HREActionVarianceCollection)allowedVariance;
- (NSDictionary)actionMap;
- (id)createStarterRecommendationInHome:(id)a3;
- (id)involvedAccessoryTypes;
@end

@implementation HREActionTemplate

- (NSDictionary)actionMap
{
  actionMap = self->_actionMap;
  if (!actionMap)
  {
    v4 = [(HREActionTemplate *)self _lazy_actionMap];
    v5 = self->_actionMap;
    self->_actionMap = v4;

    actionMap = self->_actionMap;
  }

  return actionMap;
}

- (HREActionVarianceCollection)allowedVariance
{
  allowedVariance = self->_allowedVariance;
  if (!allowedVariance)
  {
    v4 = [(HREActionTemplate *)self _lazy_allowedVariance];
    v5 = self->_allowedVariance;
    self->_allowedVariance = v4;

    allowedVariance = self->_allowedVariance;
  }

  return allowedVariance;
}

- (id)createStarterRecommendationInHome:(id)a3
{
  v9.receiver = self;
  v9.super_class = HREActionTemplate;
  v4 = [(HRETemplate *)&v9 createStarterRecommendationInHome:a3];
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
    v7 = [(HREActionTemplate *)self allowedVariance];
    [v6 setAllowedVariance:v7];
  }

  return v4;
}

- (id)involvedAccessoryTypes
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HREActionTemplate *)self actionMap];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];
  v7 = [(HREActionTemplate *)self extraInvolvedTypes];
  v8 = [v6 setByAddingObjectsFromSet:v7];

  return v8;
}

@end