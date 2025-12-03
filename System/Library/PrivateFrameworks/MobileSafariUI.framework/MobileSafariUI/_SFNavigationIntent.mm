@interface _SFNavigationIntent
+ (id)safari_navigationIntentForUserActivityContainingInteraction:(uint64_t)interaction;
@end

@implementation _SFNavigationIntent

+ (id)safari_navigationIntentForUserActivityContainingInteraction:(uint64_t)interaction
{
  v2 = a2;
  objc_opt_self();
  interaction = [v2 interaction];

  intent = [interaction intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urls = [intent urls];
    builder = [MEMORY[0x277D28F40] builder];
    [builder setPrefersOpenInNewTab:1];
    [builder setPreferredTabOrder:1];
    [builder setPrefersRelationToSourceTab:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97___SFNavigationIntent_SafariExtras__safari_navigationIntentForUserActivityContainingInteraction___block_invoke;
    v11[3] = &unk_2781D8308;
    v12 = builder;
    v7 = builder;
    v8 = [urls safari_mapAndFilterObjectsUsingBlock:v11];
    v9 = [v7 navigationIntentWithMultipleIntents:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end