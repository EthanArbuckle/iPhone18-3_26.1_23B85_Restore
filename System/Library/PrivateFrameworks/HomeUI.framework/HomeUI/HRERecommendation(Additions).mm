@interface HRERecommendation(Additions)
- (id)hu_actionSetBuilderIfAny;
- (id)hu_triggerBuilderIfAny;
- (void)hu_asActionRecommendation;
- (void)hu_asActionSetRecommendation;
- (void)hu_asTriggerRecommendation;
@end

@implementation HRERecommendation(Additions)

- (void)hu_asActionSetRecommendation
{
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)hu_asTriggerRecommendation
{
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)hu_asActionRecommendation
{
  selfCopy = self;
  if ([selfCopy conformsToProtocol:&unk_2825BD5A0])
  {
    v2 = selfCopy;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)hu_triggerBuilderIfAny
{
  hu_asTriggerRecommendation = [self hu_asTriggerRecommendation];
  selectedTriggerBuilder = [hu_asTriggerRecommendation selectedTriggerBuilder];

  return selectedTriggerBuilder;
}

- (id)hu_actionSetBuilderIfAny
{
  hu_asActionSetRecommendation = [self hu_asActionSetRecommendation];
  selectedActionSetBuilder = [hu_asActionSetRecommendation selectedActionSetBuilder];

  return selectedActionSetBuilder;
}

@end