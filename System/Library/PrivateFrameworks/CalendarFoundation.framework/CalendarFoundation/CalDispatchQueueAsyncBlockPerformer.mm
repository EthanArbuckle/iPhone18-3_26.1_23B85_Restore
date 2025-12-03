@interface CalDispatchQueueAsyncBlockPerformer
- (CalDispatchQueueAsyncBlockPerformer)initWithQueue:(id)queue;
- (id)performAfterDelay:(double)delay block:(id)block;
- (id)performAsync:(id)async;
@end

@implementation CalDispatchQueueAsyncBlockPerformer

- (CalDispatchQueueAsyncBlockPerformer)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [(CalDispatchQueueAsyncBlockPerformer *)a2 initWithQueue:?];
  }

  v10.receiver = self;
  v10.super_class = CalDispatchQueueAsyncBlockPerformer;
  v7 = [(CalDispatchQueueAsyncBlockPerformer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, queue);
  }

  return v8;
}

- (id)performAsync:(id)async
{
  asyncCopy = async;
  v5 = [CalCancelableDispatchBlock alloc];
  queue = [(CalDispatchQueueAsyncBlockPerformer *)self queue];
  v7 = [(CalCancelableDispatchBlock *)v5 initWithBlock:asyncCopy inQueue:queue];

  [(CalCancelableDispatchBlock *)v7 performAsync];

  return v7;
}

- (id)performAfterDelay:(double)delay block:(id)block
{
  blockCopy = block;
  v7 = [CalCancelableDispatchBlock alloc];
  queue = [(CalDispatchQueueAsyncBlockPerformer *)self queue];
  v9 = [(CalCancelableDispatchBlock *)v7 initWithBlock:blockCopy inQueue:queue];

  [(CalCancelableDispatchBlock *)v9 performAfterDelay:delay];

  return v9;
}

- (void)initWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDispatchQueueAsyncBlockPerformer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"queue != nil"}];
}

@end