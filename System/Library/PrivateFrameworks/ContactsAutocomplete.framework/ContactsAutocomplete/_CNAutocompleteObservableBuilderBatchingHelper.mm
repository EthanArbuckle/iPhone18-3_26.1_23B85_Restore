@interface _CNAutocompleteObservableBuilderBatchingHelper
- (_CNAutocompleteObservableBuilderBatchingHelper)initWithBatchCount:(unint64_t)count;
- (id)batchedObservables;
- (void)addObservable:(id)observable toBatchAtIndex:(unint64_t)index;
@end

@implementation _CNAutocompleteObservableBuilderBatchingHelper

- (id)batchedObservables
{
  batches = [(_CNAutocompleteObservableBuilderBatchingHelper *)self batches];
  v3 = [batches copy];

  return v3;
}

- (_CNAutocompleteObservableBuilderBatchingHelper)initWithBatchCount:(unint64_t)count
{
  v11.receiver = self;
  v11.super_class = _CNAutocompleteObservableBuilderBatchingHelper;
  v4 = [(_CNAutocompleteObservableBuilderBatchingHelper *)&v11 init];
  if (v4)
  {
    for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    {
      array = [MEMORY[0x277CBEB18] array];
      [i addObject:array];
    }

    v7 = [i copy];
    batches = v4->_batches;
    v4->_batches = v7;

    v9 = v4;
  }

  return v4;
}

- (void)addObservable:(id)observable toBatchAtIndex:(unint64_t)index
{
  observableCopy = observable;
  batches = [(_CNAutocompleteObservableBuilderBatchingHelper *)self batches];
  v8 = [batches objectAtIndex:index];

  [v8 _cn_addNonNilObject:observableCopy];
}

@end