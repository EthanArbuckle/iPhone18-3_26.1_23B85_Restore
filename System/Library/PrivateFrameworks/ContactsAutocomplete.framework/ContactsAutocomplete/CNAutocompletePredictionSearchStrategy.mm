@interface CNAutocompletePredictionSearchStrategy
+ (id)coreDuetStrategyWithContactStore:(id)a3;
+ (id)peopleSuggesterStrategyWithContactStore:(id)a3;
@end

@implementation CNAutocompletePredictionSearchStrategy

+ (id)peopleSuggesterStrategyWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CNAutocompletePeopleSuggesterPredictionSearchStrategy alloc] initWithContactStore:v3];

  return v4;
}

+ (id)coreDuetStrategyWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CNAutocompleteCoreDuetPredictionSearchStrategy alloc] initWithContactStore:v3];

  return v4;
}

@end