@interface _CNAutocompleteStandardObservableBuilderBatchingHelper
- (_CNAutocompleteStandardObservableBuilderBatchingHelper)init;
- (id)batchedObservables;
- (void)addCachedCalendarServerObservable:(id)observable;
- (void)addCachedDirectoryServerObservable:(id)observable;
- (void)addCalendarServerObservable:(id)observable;
- (void)addContactsObservable:(id)observable;
- (void)addCoreRecentsObservable:(id)observable;
- (void)addDirectoryServerObservable:(id)observable;
- (void)addLocalExtensionObservable:(id)observable;
- (void)addPredictionObservable:(id)observable;
- (void)addStewieObservable:(id)observable;
- (void)addSuggestionsObservable:(id)observable;
- (void)addSupplementalObservable:(id)observable;
@end

@implementation _CNAutocompleteStandardObservableBuilderBatchingHelper

- (_CNAutocompleteStandardObservableBuilderBatchingHelper)init
{
  v7.receiver = self;
  v7.super_class = _CNAutocompleteStandardObservableBuilderBatchingHelper;
  v2 = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)&v7 init];
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
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  batchedObservables = [helper batchedObservables];

  return batchedObservables;
}

- (void)addContactsObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addCoreRecentsObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addStewieObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addSuggestionsObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:1];
}

- (void)addLocalExtensionObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addPredictionObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addSupplementalObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addCachedDirectoryServerObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:0];
}

- (void)addDirectoryServerObservable:(id)observable
{
  observableCopy = observable;
  helper = [(_CNAutocompleteStandardObservableBuilderBatchingHelper *)self helper];
  [helper addObservable:observableCopy toBatchAtIndex:1];
}

- (void)addCachedCalendarServerObservable:(id)observable
{
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Not adding a cached calendar observable; use the calendar search type", v4, 2u);
  }
}

- (void)addCalendarServerObservable:(id)observable
{
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Not adding a calendar observable; use the calendar search type", v4, 2u);
  }
}

@end