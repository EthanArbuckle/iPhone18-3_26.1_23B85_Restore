@interface ULQueueScheduler
- (ULQueueScheduler)initWithQueue:(id)a3;
- (void)performAsyncBlock:(id)a3;
- (void)performSyncBlock:(id)a3;
@end

@implementation ULQueueScheduler

- (ULQueueScheduler)initWithQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULQueueScheduler;
  v5 = [(ULQueueScheduler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULQueueScheduler *)v5 setQueue:v4];
  }

  return v6;
}

- (void)performAsyncBlock:(id)a3
{
  v4 = a3;
  v5 = [(ULQueueScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ULQueueScheduler_performAsyncBlock___block_invoke;
  block[3] = &unk_2798DAA20;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)performSyncBlock:(id)a3
{
  v4 = a3;
  v5 = [(ULQueueScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ULQueueScheduler_performSyncBlock___block_invoke;
  block[3] = &unk_2798DAA20;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

@end