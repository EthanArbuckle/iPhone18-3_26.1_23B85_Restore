@interface CNAutocompletePredictionSearchStrategy
+ (id)coreDuetStrategyWithContactStore:(id)store;
+ (id)peopleSuggesterStrategyWithContactStore:(id)store;
@end

@implementation CNAutocompletePredictionSearchStrategy

+ (id)peopleSuggesterStrategyWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CNAutocompletePeopleSuggesterPredictionSearchStrategy alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (id)coreDuetStrategyWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CNAutocompleteCoreDuetPredictionSearchStrategy alloc] initWithContactStore:storeCopy];

  return v4;
}

@end