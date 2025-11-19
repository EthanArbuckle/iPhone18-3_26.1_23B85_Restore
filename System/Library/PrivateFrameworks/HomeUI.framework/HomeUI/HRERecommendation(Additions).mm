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
  v2 = a1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = a1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_2825BD5A0])
  {
    v2 = v1;
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
  v1 = [a1 hu_asTriggerRecommendation];
  v2 = [v1 selectedTriggerBuilder];

  return v2;
}

- (id)hu_actionSetBuilderIfAny
{
  v1 = [a1 hu_asActionSetRecommendation];
  v2 = [v1 selectedActionSetBuilder];

  return v2;
}

@end