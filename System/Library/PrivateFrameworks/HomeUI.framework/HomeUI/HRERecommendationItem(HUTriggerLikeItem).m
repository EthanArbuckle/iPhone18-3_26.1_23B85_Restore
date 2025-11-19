@interface HRERecommendationItem(HUTriggerLikeItem)
- (id)identifier;
- (id)trigger;
@end

@implementation HRERecommendationItem(HUTriggerLikeItem)

- (id)identifier
{
  v1 = [a1 recommendation];
  v2 = [v1 uniqueIdentifier];

  return v2;
}

- (id)trigger
{
  v1 = [a1 recommendation];
  v2 = [v1 hu_triggerBuilderIfAny];
  v3 = [v2 trigger];

  return v3;
}

@end