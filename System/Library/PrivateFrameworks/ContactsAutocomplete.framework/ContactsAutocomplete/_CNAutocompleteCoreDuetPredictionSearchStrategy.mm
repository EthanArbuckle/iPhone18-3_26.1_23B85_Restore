@interface _CNAutocompleteCoreDuetPredictionSearchStrategy
- (_CNAutocompleteCoreDuetPredictionSearchStrategy)initWithContactStore:(id)store;
- (id)searchResultsForFetchRequest:(id)request;
@end

@implementation _CNAutocompleteCoreDuetPredictionSearchStrategy

- (_CNAutocompleteCoreDuetPredictionSearchStrategy)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = _CNAutocompleteCoreDuetPredictionSearchStrategy;
  v6 = [(_CNAutocompleteCoreDuetPredictionSearchStrategy *)&v10 init];
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
  v5 = [[_CNAutocompleteCoreDuetPredictionSearchStrategyTask alloc] initWithRequest:requestCopy contactStore:self->_contactStore];

  v6 = [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)v5 run:0];

  return v6;
}

@end