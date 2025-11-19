@interface CNJumpToMainRunLoopScheduler
@end

@implementation CNJumpToMainRunLoopScheduler

void __63___CNJumpToMainRunLoopScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __73___CNJumpToMainRunLoopScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void __74___CNJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __74___CNJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

@end