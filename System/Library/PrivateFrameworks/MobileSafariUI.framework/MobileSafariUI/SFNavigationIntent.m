@interface SFNavigationIntent
@end

@implementation SFNavigationIntent

id __97___SFNavigationIntent_SafariExtras__safari_navigationIntentForUserActivityContainingInteraction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_originalDataAsString];
  v4 = [v2 navigationIntentWithText:v3];

  return v4;
}

@end