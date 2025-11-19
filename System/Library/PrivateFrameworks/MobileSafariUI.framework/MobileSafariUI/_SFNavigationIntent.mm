@interface _SFNavigationIntent
+ (id)safari_navigationIntentForUserActivityContainingInteraction:(uint64_t)a1;
@end

@implementation _SFNavigationIntent

+ (id)safari_navigationIntentForUserActivityContainingInteraction:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 interaction];

  v4 = [v3 intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 urls];
    v6 = [MEMORY[0x277D28F40] builder];
    [v6 setPrefersOpenInNewTab:1];
    [v6 setPreferredTabOrder:1];
    [v6 setPrefersRelationToSourceTab:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97___SFNavigationIntent_SafariExtras__safari_navigationIntentForUserActivityContainingInteraction___block_invoke;
    v11[3] = &unk_2781D8308;
    v12 = v6;
    v7 = v6;
    v8 = [v5 safari_mapAndFilterObjectsUsingBlock:v11];
    v9 = [v7 navigationIntentWithMultipleIntents:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end