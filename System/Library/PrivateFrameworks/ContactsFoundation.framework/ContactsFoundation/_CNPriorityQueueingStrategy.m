@interface _CNPriorityQueueingStrategy
- (_CNPriorityQueueingStrategy)initWithComparator:(id)a3;
- (unint64_t)_insertionIndexForObject:(id)a3 buffer:(id)a4;
- (void)enqueueObject:(id)a3 buffer:(id)a4;
@end

@implementation _CNPriorityQueueingStrategy

- (_CNPriorityQueueingStrategy)initWithComparator:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNPriorityQueueingStrategy;
  v5 = [(_CNPriorityQueueingStrategy *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    priorityComparator = v5->_priorityComparator;
    v5->_priorityComparator = v6;

    v8 = v5;
  }

  return v5;
}

- (void)enqueueObject:(id)a3 buffer:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 insertObject:v7 atIndex:{-[_CNPriorityQueueingStrategy _insertionIndexForObject:buffer:](self, "_insertionIndexForObject:buffer:", v7, v6)}];
}

- (unint64_t)_insertionIndexForObject:(id)a3 buffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __63___CNPriorityQueueingStrategy__insertionIndexForObject_buffer___block_invoke;
  v14 = &unk_1E6ED56C0;
  v15 = self;
  v16 = v6;
  v8 = v6;
  v9 = [v7 indexOfObjectPassingTest:&v11];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v7 count];
  }

  return v9;
}

@end