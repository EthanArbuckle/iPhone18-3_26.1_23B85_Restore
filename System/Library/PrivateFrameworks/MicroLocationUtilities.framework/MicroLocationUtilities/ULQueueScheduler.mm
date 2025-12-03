@interface ULQueueScheduler
- (ULQueueScheduler)initWithQueue:(id)queue;
- (void)performAsyncBlock:(id)block;
- (void)performSyncBlock:(id)block;
@end

@implementation ULQueueScheduler

- (ULQueueScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = ULQueueScheduler;
  v5 = [(ULQueueScheduler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULQueueScheduler *)v5 setQueue:queueCopy];
  }

  return v6;
}

- (void)performAsyncBlock:(id)block
{
  blockCopy = block;
  queue = [(ULQueueScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ULQueueScheduler_performAsyncBlock___block_invoke;
  block[3] = &unk_2798DAA20;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, block);
}

- (void)performSyncBlock:(id)block
{
  blockCopy = block;
  queue = [(ULQueueScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ULQueueScheduler_performSyncBlock___block_invoke;
  block[3] = &unk_2798DAA20;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, block);
}

@end