@interface _EFBufferedQueueStrategy
- (_EFBufferedQueueStrategy)initWithCapacity:(unint64_t)a3 batchHandler:(id)a4;
- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5;
@end

@implementation _EFBufferedQueueStrategy

- (_EFBufferedQueueStrategy)initWithCapacity:(unint64_t)a3 batchHandler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _EFBufferedQueueStrategy;
  v7 = [(_EFBufferedQueueStrategy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = a3;
    v9 = _Block_copy(v6);
    batchHandler = v8->_batchHandler;
    v8->_batchHandler = v9;
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

  [v9 addObject:v12];
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