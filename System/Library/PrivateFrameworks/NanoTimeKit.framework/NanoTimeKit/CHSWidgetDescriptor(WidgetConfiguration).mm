@interface CHSWidgetDescriptor(WidgetConfiguration)
- (uint64_t)isConfigurable;
@end

@implementation CHSWidgetDescriptor(WidgetConfiguration)

- (uint64_t)isConfigurable
{
  if (!NTKUseComplicationEditor())
  {
    return 0;
  }

  defaultIntentReference = [self defaultIntentReference];
  if (defaultIntentReference && ([self isRelevanceBacked] & 1) == 0)
  {
    intentRecommendations = [self intentRecommendations];
    if ([intentRecommendations count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [self isLinkedOnOrAfter:2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end