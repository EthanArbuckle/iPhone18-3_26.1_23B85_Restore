@interface _CNAutocompleteResponsePreparerDecorator
- (_CNAutocompleteResponsePreparerDecorator)initWithResponsePreparer:(id)a3 delegate:(id)a4;
- (id)prepareResults:(id)a3 forFetch:(id)a4;
- (void)setMatchingPriorityResultsPromise:(id)a3;
- (void)setPriorityResultsFuture:(id)a3;
@end

@implementation _CNAutocompleteResponsePreparerDecorator

- (_CNAutocompleteResponsePreparerDecorator)initWithResponsePreparer:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _CNAutocompleteResponsePreparerDecorator;
  v8 = [(CNAutocompleteQueryResponsePreparer *)&v12 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preparer, a3);
    v10 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)a3 forFetch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v9 = [v8 prepareResults:v7 forFetch:v6];

  return v9;
}

- (void)setPriorityResultsFuture:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  [v5 setPriorityResultsFuture:v4];
}

- (void)setMatchingPriorityResultsPromise:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  [v5 setMatchingPriorityResultsPromise:v4];
}

@end