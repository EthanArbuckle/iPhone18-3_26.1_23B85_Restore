@interface _CNBoundedQueueingStrategy
- (_CNBoundedQueueingStrategy)initWithCapacity:(unint64_t)capacity;
- (_CNBoundedQueueingStrategy)initWithCapacity:(unint64_t)capacity overflowHandler:(id)handler;
- (void)enqueueObject:(id)object buffer:(id)buffer;
@end

@implementation _CNBoundedQueueingStrategy

- (_CNBoundedQueueingStrategy)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = _CNBoundedQueueingStrategy;
  v4 = [(_CNBoundedQueueingStrategy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = v4;
  }

  return v5;
}

- (_CNBoundedQueueingStrategy)initWithCapacity:(unint64_t)capacity overflowHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(_CNBoundedQueueingStrategy *)self initWithCapacity:capacity];
  if (v7)
  {
    v8 = [handlerCopy copy];
    overflowHandler = v7->_overflowHandler;
    v7->_overflowHandler = v8;

    v10 = v7;
  }

  return v7;
}

- (void)enqueueObject:(id)object buffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  if ([bufferCopy count] == self->_capacity)
  {
    overflowHandler = self->_overflowHandler;
    if (overflowHandler)
    {
      firstObject = [bufferCopy firstObject];
      overflowHandler[2](overflowHandler, firstObject);
    }

    [bufferCopy removeObjectAtIndex:0];
  }

  [bufferCopy addObject:objectCopy];
}

@end