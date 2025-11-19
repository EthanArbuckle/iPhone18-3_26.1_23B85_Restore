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

  v2 = [a1 defaultIntentReference];
  if (v2 && ([a1 isRelevanceBacked] & 1) == 0)
  {
    v4 = [a1 intentRecommendations];
    if ([v4 count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [a1 isLinkedOnOrAfter:2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end