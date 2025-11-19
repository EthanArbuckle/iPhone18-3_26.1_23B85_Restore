@interface _EFPriorityQueueStrategy
- (_EFPriorityQueueStrategy)initWithComparator:(id)a3;
- (unint64_t)_indexForObject:(id)a3 buffer:(id)a4;
- (unint64_t)_insertionIndexForObject:(id)a3 buffer:(id)a4;
- (void)dequeueObject:(id)a3 buffer:(id)a4;
- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5;
@end

@implementation _EFPriorityQueueStrategy

- (_EFPriorityQueueStrategy)initWithComparator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EFPriorityQueueStrategy;
  v5 = [(_EFPriorityQueueStrategy *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    comparator = v5->_comparator;
    v5->_comparator = v6;
  }

  return v5;
}

- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___EFPriorityQueueStrategy_enqueueObject_replaceIfExists_buffer___block_invoke;
    v11[3] = &unk_1E8249AB8;
    v12 = v8;
    v10 = [v9 indexesOfObjectsPassingTest:v11];
    [v9 removeObjectsAtIndexes:v10];
  }

  [v9 insertObject:v8 atIndex:{-[_EFPriorityQueueStrategy _insertionIndexForObject:buffer:](self, "_insertionIndexForObject:buffer:", v8, v9)}];
}

- (void)dequeueObject:(id)a3 buffer:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_EFPriorityQueueStrategy *)self _indexForObject:v8 buffer:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < [v6 count])
  {
    [v6 removeObjectAtIndex:v7];
  }
}

- (unint64_t)_insertionIndexForObject:(id)a3 buffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1536, self->_comparator}];

  return v8;
}

- (unint64_t)_indexForObject:(id)a3 buffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 512, self->_comparator}];

  return v8;
}

@end