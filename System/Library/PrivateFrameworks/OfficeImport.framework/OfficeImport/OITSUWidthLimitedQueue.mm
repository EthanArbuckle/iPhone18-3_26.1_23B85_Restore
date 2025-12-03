@interface OITSUWidthLimitedQueue
- (OITSUWidthLimitedQueue)init;
- (OITSUWidthLimitedQueue)initWithLimit:(unint64_t)limit;
- (void)dealloc;
- (void)performAsync:(id)async;
- (void)performSync:(id)sync;
@end

@implementation OITSUWidthLimitedQueue

- (OITSUWidthLimitedQueue)init
{
  v3 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = 2 * v4;
  if (v5 >= 0x18)
  {
    v6 = 24;
  }

  else
  {
    v6 = v5;
  }

  return [(OITSUWidthLimitedQueue *)self initWithLimit:v6];
}

- (OITSUWidthLimitedQueue)initWithLimit:(unint64_t)limit
{
  v7.receiver = self;
  v7.super_class = OITSUWidthLimitedQueue;
  v4 = [(OITSUWidthLimitedQueue *)&v7 init];
  if (v4)
  {
    if (limit)
    {
      if (limit >> 31)
      {
        [OITSUWidthLimitedQueue initWithLimit:];
        LODWORD(limit) = 0x7FFFFFFF;
      }
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUWidthLimitedQueue initWithLimit:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUWidthLimitedQueue.m"], 36, 0, "Queue limit shoudl be at least one.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      LODWORD(limit) = 1;
    }

    v4->mReaderCount = 0;
    v4->mLimit = limit;
    v4->mManagerQueue = dispatch_queue_create("com.apple.iwork.limitedqueue.manager", 0);
    v4->mTargetQueue = dispatch_queue_create("com.apple.iwork.limitedqueue", MEMORY[0x277D85CD8]);
    v4->mUnfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->mManagerQueue);
  dispatch_release(self->mTargetQueue);
  v3.receiver = self;
  v3.super_class = OITSUWidthLimitedQueue;
  [(OITSUWidthLimitedQueue *)&v3 dealloc];
}

- (void)performAsync:(id)async
{
  mManagerQueue = self->mManagerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__OITSUWidthLimitedQueue_performAsync___block_invoke;
  v4[3] = &unk_2799C6638;
  v4[4] = self;
  v4[5] = async;
  dispatch_async(mManagerQueue, v4);
}

void __39__OITSUWidthLimitedQueue_performAsync___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 24);
  v5[2] = __39__OITSUWidthLimitedQueue_performAsync___block_invoke_2;
  v5[3] = &unk_2799C6728;
  v6 = v3;
  dispatch_async(v4, v5);
}

void __39__OITSUWidthLimitedQueue_performAsync___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

- (void)performSync:(id)sync
{
  mManagerQueue = self->mManagerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__OITSUWidthLimitedQueue_performSync___block_invoke;
  v4[3] = &unk_2799C6638;
  v4[4] = self;
  v4[5] = sync;
  dispatch_barrier_sync(mManagerQueue, v4);
}

void __38__OITSUWidthLimitedQueue_performSync___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 24);
  v5[2] = __38__OITSUWidthLimitedQueue_performSync___block_invoke_2;
  v5[3] = &unk_2799C6728;
  v6 = v3;
  dispatch_barrier_sync(v4, v5);
}

void __38__OITSUWidthLimitedQueue_performSync___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

- (uint64_t)initWithLimit:.cold.1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUWidthLimitedQueue initWithLimit:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v0, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUWidthLimitedQueue.m"], 39, 0, "Out-of-bounds type assignment was clamped to max");
  return +[OITSUAssertionHandler logBacktraceThrottled];
}

@end