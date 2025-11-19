@interface CNImmediateScheduler
@end

@implementation CNImmediateScheduler

void __65___CNImmediateScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end