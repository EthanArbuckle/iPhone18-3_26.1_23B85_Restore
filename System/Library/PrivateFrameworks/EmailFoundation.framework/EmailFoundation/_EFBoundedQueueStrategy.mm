@interface _EFBoundedQueueStrategy
- (_EFBoundedQueueStrategy)initWithCapacity:(unint64_t)a3 overflowHandler:(id)a4;
- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5;
@end

@implementation _EFBoundedQueueStrategy

- (_EFBoundedQueueStrategy)initWithCapacity:(unint64_t)a3 overflowHandler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _EFBoundedQueueStrategy;
  v7 = [(_EFBoundedQueueStrategy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = a3;
    v9 = _Block_copy(v6);
    overflowHandler = v8->_overflowHandler;
    v8->_overflowHandler = v9;
  }

  return v8;
}

- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  v9 = v8;
  if (v6)
  {
    [v8 removeObject:v12];
  }

  while ([v9 count] >= self->_capacity)
  {
    overflowHandler = self->_overflowHandler;
    if (overflowHandler)
    {
      v11 = [v9 firstObject];
      overflowHandler[2](overflowHandler, v11);
    }

    [v9 removeObjectAtIndex:0];
  }

  [v9 addObject:v12];
}

@end