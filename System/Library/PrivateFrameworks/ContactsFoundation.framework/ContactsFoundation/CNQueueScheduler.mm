@interface CNQueueScheduler
@end

@implementation CNQueueScheduler

uint64_t __61___CNQueueScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void __62___CNQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) cancel];

  objc_autoreleasePoolPop(v2);
}

@end