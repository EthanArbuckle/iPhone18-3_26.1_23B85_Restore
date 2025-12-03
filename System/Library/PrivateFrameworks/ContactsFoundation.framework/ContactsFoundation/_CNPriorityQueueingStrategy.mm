@interface _CNPriorityQueueingStrategy
- (_CNPriorityQueueingStrategy)initWithComparator:(id)comparator;
- (unint64_t)_insertionIndexForObject:(id)object buffer:(id)buffer;
- (void)enqueueObject:(id)object buffer:(id)buffer;
@end

@implementation _CNPriorityQueueingStrategy

- (_CNPriorityQueueingStrategy)initWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v10.receiver = self;
  v10.super_class = _CNPriorityQueueingStrategy;
  v5 = [(_CNPriorityQueueingStrategy *)&v10 init];
  if (v5)
  {
    v6 = [comparatorCopy copy];
    priorityComparator = v5->_priorityComparator;
    v5->_priorityComparator = v6;

    v8 = v5;
  }

  return v5;
}

- (void)enqueueObject:(id)object buffer:(id)buffer
{
  bufferCopy = buffer;
  objectCopy = object;
  [bufferCopy insertObject:objectCopy atIndex:{-[_CNPriorityQueueingStrategy _insertionIndexForObject:buffer:](self, "_insertionIndexForObject:buffer:", objectCopy, bufferCopy)}];
}

- (unint64_t)_insertionIndexForObject:(id)object buffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __63___CNPriorityQueueingStrategy__insertionIndexForObject_buffer___block_invoke;
  v14 = &unk_1E6ED56C0;
  selfCopy = self;
  v16 = objectCopy;
  v8 = objectCopy;
  v9 = [bufferCopy indexOfObjectPassingTest:&v11];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [bufferCopy count];
  }

  return v9;
}

@end