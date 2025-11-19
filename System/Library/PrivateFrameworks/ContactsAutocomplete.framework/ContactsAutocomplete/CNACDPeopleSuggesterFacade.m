@interface CNACDPeopleSuggesterFacade
@end

@implementation CNACDPeopleSuggesterFacade

void __71___CNACDPeopleSuggesterFacade_suggestPeopleWithContext_settings_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 suggestPeopleWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end