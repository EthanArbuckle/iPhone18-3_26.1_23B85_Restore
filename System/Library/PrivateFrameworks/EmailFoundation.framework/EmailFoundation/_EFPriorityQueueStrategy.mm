@interface _EFPriorityQueueStrategy
- (_EFPriorityQueueStrategy)initWithComparator:(id)comparator;
- (unint64_t)_indexForObject:(id)object buffer:(id)buffer;
- (unint64_t)_insertionIndexForObject:(id)object buffer:(id)buffer;
- (void)dequeueObject:(id)object buffer:(id)buffer;
- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer;
@end

@implementation _EFPriorityQueueStrategy

- (_EFPriorityQueueStrategy)initWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v9.receiver = self;
  v9.super_class = _EFPriorityQueueStrategy;
  v5 = [(_EFPriorityQueueStrategy *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(comparatorCopy);
    comparator = v5->_comparator;
    v5->_comparator = v6;
  }

  return v5;
}

- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer
{
  existsCopy = exists;
  objectCopy = object;
  bufferCopy = buffer;
  if (existsCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___EFPriorityQueueStrategy_enqueueObject_replaceIfExists_buffer___block_invoke;
    v11[3] = &unk_1E8249AB8;
    v12 = objectCopy;
    v10 = [bufferCopy indexesOfObjectsPassingTest:v11];
    [bufferCopy removeObjectsAtIndexes:v10];
  }

  [bufferCopy insertObject:objectCopy atIndex:{-[_EFPriorityQueueStrategy _insertionIndexForObject:buffer:](self, "_insertionIndexForObject:buffer:", objectCopy, bufferCopy)}];
}

- (void)dequeueObject:(id)object buffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v7 = [(_EFPriorityQueueStrategy *)self _indexForObject:objectCopy buffer:bufferCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < [bufferCopy count])
  {
    [bufferCopy removeObjectAtIndex:v7];
  }
}

- (unint64_t)_insertionIndexForObject:(id)object buffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v8 = [bufferCopy indexOfObject:objectCopy inSortedRange:0 options:objc_msgSend(bufferCopy usingComparator:{"count"), 1536, self->_comparator}];

  return v8;
}

- (unint64_t)_indexForObject:(id)object buffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v8 = [bufferCopy indexOfObject:objectCopy inSortedRange:0 options:objc_msgSend(bufferCopy usingComparator:{"count"), 512, self->_comparator}];

  return v8;
}

@end