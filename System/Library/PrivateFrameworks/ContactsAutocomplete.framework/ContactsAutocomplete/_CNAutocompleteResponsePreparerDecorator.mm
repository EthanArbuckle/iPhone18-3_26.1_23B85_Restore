@interface _CNAutocompleteResponsePreparerDecorator
- (_CNAutocompleteResponsePreparerDecorator)initWithResponsePreparer:(id)preparer delegate:(id)delegate;
- (id)prepareResults:(id)results forFetch:(id)fetch;
- (void)setMatchingPriorityResultsPromise:(id)promise;
- (void)setPriorityResultsFuture:(id)future;
@end

@implementation _CNAutocompleteResponsePreparerDecorator

- (_CNAutocompleteResponsePreparerDecorator)initWithResponsePreparer:(id)preparer delegate:(id)delegate
{
  preparerCopy = preparer;
  v12.receiver = self;
  v12.super_class = _CNAutocompleteResponsePreparerDecorator;
  v8 = [(CNAutocompleteQueryResponsePreparer *)&v12 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preparer, preparer);
    v10 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  fetchCopy = fetch;
  resultsCopy = results;
  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v9 = [preparer prepareResults:resultsCopy forFetch:fetchCopy];

  return v9;
}

- (void)setPriorityResultsFuture:(id)future
{
  futureCopy = future;
  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  [preparer setPriorityResultsFuture:futureCopy];
}

- (void)setMatchingPriorityResultsPromise:(id)promise
{
  promiseCopy = promise;
  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  [preparer setMatchingPriorityResultsPromise:promiseCopy];
}

@end