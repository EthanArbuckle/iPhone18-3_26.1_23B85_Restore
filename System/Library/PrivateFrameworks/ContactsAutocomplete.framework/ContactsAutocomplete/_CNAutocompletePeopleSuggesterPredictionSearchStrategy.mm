@interface _CNAutocompletePeopleSuggesterPredictionSearchStrategy
- (_CNAutocompletePeopleSuggesterPredictionSearchStrategy)initWithContactStore:(id)store;
- (id)searchResultsForFetchRequest:(id)request;
@end

@implementation _CNAutocompletePeopleSuggesterPredictionSearchStrategy

- (_CNAutocompletePeopleSuggesterPredictionSearchStrategy)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = _CNAutocompletePeopleSuggesterPredictionSearchStrategy;
  v6 = [(_CNAutocompletePeopleSuggesterPredictionSearchStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)searchResultsForFetchRequest:(id)request
{
  requestCopy = request;
  v5 = [[_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask alloc] initWithRequest:requestCopy contactStore:self->_contactStore];

  v6 = [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)v5 run:0];

  return v6;
}

@end