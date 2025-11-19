@interface _CNAutocompletePeopleSuggesterPredictionSearchStrategy
- (_CNAutocompletePeopleSuggesterPredictionSearchStrategy)initWithContactStore:(id)a3;
- (id)searchResultsForFetchRequest:(id)a3;
@end

@implementation _CNAutocompletePeopleSuggesterPredictionSearchStrategy

- (_CNAutocompletePeopleSuggesterPredictionSearchStrategy)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNAutocompletePeopleSuggesterPredictionSearchStrategy;
  v6 = [(_CNAutocompletePeopleSuggesterPredictionSearchStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)searchResultsForFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [[_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask alloc] initWithRequest:v4 contactStore:self->_contactStore];

  v6 = [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)v5 run:0];

  return v6;
}

@end