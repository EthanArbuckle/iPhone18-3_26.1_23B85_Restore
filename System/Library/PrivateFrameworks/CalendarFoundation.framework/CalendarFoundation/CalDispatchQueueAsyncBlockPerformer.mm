@interface CalDispatchQueueAsyncBlockPerformer
- (CalDispatchQueueAsyncBlockPerformer)initWithQueue:(id)a3;
- (id)performAfterDelay:(double)a3 block:(id)a4;
- (id)performAsync:(id)a3;
@end

@implementation CalDispatchQueueAsyncBlockPerformer

- (CalDispatchQueueAsyncBlockPerformer)initWithQueue:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CalDispatchQueueAsyncBlockPerformer *)a2 initWithQueue:?];
  }

  v10.receiver = self;
  v10.super_class = CalDispatchQueueAsyncBlockPerformer;
  v7 = [(CalDispatchQueueAsyncBlockPerformer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, a3);
  }

  return v8;
}

- (id)performAsync:(id)a3
{
  v4 = a3;
  v5 = [CalCancelableDispatchBlock alloc];
  v6 = [(CalDispatchQueueAsyncBlockPerformer *)self queue];
  v7 = [(CalCancelableDispatchBlock *)v5 initWithBlock:v4 inQueue:v6];

  [(CalCancelableDispatchBlock *)v7 performAsync];

  return v7;
}

- (id)performAfterDelay:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [CalCancelableDispatchBlock alloc];
  v8 = [(CalDispatchQueueAsyncBlockPerformer *)self queue];
  v9 = [(CalCancelableDispatchBlock *)v7 initWithBlock:v6 inQueue:v8];

  [(CalCancelableDispatchBlock *)v9 performAfterDelay:a3];

  return v9;
}

- (void)initWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDispatchQueueAsyncBlockPerformer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"queue != nil"}];
}

@end