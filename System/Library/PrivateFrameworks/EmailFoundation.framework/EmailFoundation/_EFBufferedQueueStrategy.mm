@interface _EFBufferedQueueStrategy
- (_EFBufferedQueueStrategy)initWithCapacity:(unint64_t)capacity batchHandler:(id)handler;
- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer;
@end

@implementation _EFBufferedQueueStrategy

- (_EFBufferedQueueStrategy)initWithCapacity:(unint64_t)capacity batchHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = _EFBufferedQueueStrategy;
  v7 = [(_EFBufferedQueueStrategy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = capacity;
    v9 = _Block_copy(handlerCopy);
    batchHandler = v8->_batchHandler;
    v8->_batchHandler = v9;
  }

  return v8;
}

- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer
{
  existsCopy = exists;
  objectCopy = object;
  bufferCopy = buffer;
  v9 = bufferCopy;
  if (existsCopy)
  {
    [bufferCopy removeObject:objectCopy];
  }

  [v9 addObject:objectCopy];
  if ([v9 count] >= self->_capacity)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v9 copy];
    (*(self->_batchHandler + 2))();
    [v9 removeAllObjects];

    objc_autoreleasePoolPop(v10);
  }
}

@end