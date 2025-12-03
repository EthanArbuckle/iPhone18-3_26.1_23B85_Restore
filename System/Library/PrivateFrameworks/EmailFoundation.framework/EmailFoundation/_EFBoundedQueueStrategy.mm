@interface _EFBoundedQueueStrategy
- (_EFBoundedQueueStrategy)initWithCapacity:(unint64_t)capacity overflowHandler:(id)handler;
- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer;
@end

@implementation _EFBoundedQueueStrategy

- (_EFBoundedQueueStrategy)initWithCapacity:(unint64_t)capacity overflowHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = _EFBoundedQueueStrategy;
  v7 = [(_EFBoundedQueueStrategy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = capacity;
    v9 = _Block_copy(handlerCopy);
    overflowHandler = v8->_overflowHandler;
    v8->_overflowHandler = v9;
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

  while ([v9 count] >= self->_capacity)
  {
    overflowHandler = self->_overflowHandler;
    if (overflowHandler)
    {
      firstObject = [v9 firstObject];
      overflowHandler[2](overflowHandler, firstObject);
    }

    [v9 removeObjectAtIndex:0];
  }

  [v9 addObject:objectCopy];
}

@end