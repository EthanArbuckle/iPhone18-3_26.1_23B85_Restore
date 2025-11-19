@interface CDSpotlightCoalescedDeletionOperation
@end

@implementation CDSpotlightCoalescedDeletionOperation

void __93___CDSpotlightCoalescedDeletionOperation_enumerateDeletionPredicatesAndCompletionsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  v10 = [_DKQuery predicateForSpotlightEventsWithItemIdentifiers:v6 bundleID:v5];

  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  (*(*(a1 + 40) + 16))();
}

void __93___CDSpotlightCoalescedDeletionOperation_enumerateDeletionPredicatesAndCompletionsWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allDomains];
  v7 = [v6 allObjects];
  v11 = [_DKQuery predicateForSpotlightEventsWithDomainIdentifiers:v7 bundleID:v5];

  v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  (*(*(a1 + 40) + 16))();
}

@end