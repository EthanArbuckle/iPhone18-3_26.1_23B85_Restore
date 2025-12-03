@interface HRERecommendationItem(HUTriggerLikeItem)
- (id)identifier;
- (id)trigger;
@end

@implementation HRERecommendationItem(HUTriggerLikeItem)

- (id)identifier
{
  recommendation = [self recommendation];
  uniqueIdentifier = [recommendation uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)trigger
{
  recommendation = [self recommendation];
  hu_triggerBuilderIfAny = [recommendation hu_triggerBuilderIfAny];
  trigger = [hu_triggerBuilderIfAny trigger];

  return trigger;
}

@end