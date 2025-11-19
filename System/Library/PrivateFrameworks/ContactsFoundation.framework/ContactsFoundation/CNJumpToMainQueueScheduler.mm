@interface CNJumpToMainQueueScheduler
@end

@implementation CNJumpToMainQueueScheduler

void __61___CNJumpToMainQueueScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __71___CNJumpToMainQueueScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void __72___CNJumpToMainQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

@end