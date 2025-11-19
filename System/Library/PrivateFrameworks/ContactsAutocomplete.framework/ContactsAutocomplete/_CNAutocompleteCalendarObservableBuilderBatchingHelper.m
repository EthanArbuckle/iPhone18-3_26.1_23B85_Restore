@interface _CNAutocompleteCalendarObservableBuilderBatchingHelper
- (_CNAutocompleteCalendarObservableBuilderBatchingHelper)init;
- (id)batchedObservables;
- (void)addCachedCalendarServerObservable:(id)a3;
- (void)addCachedDirectoryServerObservable:(id)a3;
- (void)addCalendarServerObservable:(id)a3;
- (void)addContactsObservable:(id)a3;
- (void)addCoreRecentsObservable:(id)a3;
- (void)addDirectoryServerObservable:(id)a3;
- (void)addLocalExtensionObservable:(id)a3;
- (void)addPredictionObservable:(id)a3;
- (void)addStewieObservable:(id)a3;
- (void)addSuggestionsObservable:(id)a3;
- (void)addSupplementalObservable:(id)a3;
@end

@implementation _CNAutocompleteCalendarObservableBuilderBatchingHelper

- (_CNAutocompleteCalendarObservableBuilderBatchingHelper)init
{
  v7.receiver = self;
  v7.super_class = _CNAutocompleteCalendarObservableBuilderBatchingHelper;
  v2 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)&v7 init];
  if (v2)
  {
    v3 = [[_CNAutocompleteObservableBuilderBatchingHelper alloc] initWithBatchCount:3];
    helper = v2->_helper;
    v2->_helper = v3;

    v5 = v2;
  }

  return v2;
}

- (id)batchedObservables
{
  v2 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  v3 = [v2 batchedObservables];

  return v3;
}

- (void)addContactsObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:1];
}

- (void)addCoreRecentsObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addStewieObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addSuggestionsObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:1];
}

- (void)addLocalExtensionObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addPredictionObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addSupplementalObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:1];
}

- (void)addCachedDirectoryServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addDirectoryServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:1];
}

- (void)addCachedCalendarServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:0];
}

- (void)addCalendarServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteCalendarObservableBuilderBatchingHelper *)self helper];
  [v5 addObservable:v4 toBatchAtIndex:1];
}

@end