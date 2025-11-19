@interface _CNAutocompleteObservableBuilderBatchingHelper
- (_CNAutocompleteObservableBuilderBatchingHelper)initWithBatchCount:(unint64_t)a3;
- (id)batchedObservables;
- (void)addObservable:(id)a3 toBatchAtIndex:(unint64_t)a4;
@end

@implementation _CNAutocompleteObservableBuilderBatchingHelper

- (id)batchedObservables
{
  v2 = [(_CNAutocompleteObservableBuilderBatchingHelper *)self batches];
  v3 = [v2 copy];

  return v3;
}

- (_CNAutocompleteObservableBuilderBatchingHelper)initWithBatchCount:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = _CNAutocompleteObservableBuilderBatchingHelper;
  v4 = [(_CNAutocompleteObservableBuilderBatchingHelper *)&v11 init];
  if (v4)
  {
    for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    {
      v6 = [MEMORY[0x277CBEB18] array];
      [i addObject:v6];
    }

    v7 = [i copy];
    batches = v4->_batches;
    v4->_batches = v7;

    v9 = v4;
  }

  return v4;
}

- (void)addObservable:(id)a3 toBatchAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_CNAutocompleteObservableBuilderBatchingHelper *)self batches];
  v8 = [v7 objectAtIndex:a4];

  [v8 _cn_addNonNilObject:v6];
}

@end