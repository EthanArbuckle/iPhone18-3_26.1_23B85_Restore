@interface DKSyncCompositeOperation
@end

@implementation DKSyncCompositeOperation

uint64_t __44___DKSyncCompositeOperation_initWithParent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    v3 = atomic_load((*(a1 + 40) + 264));
    if ((v3 & 1) == 0)
    {
      result = [*(a1 + 40) isCancelled];
      if ((result & 1) == 0)
      {
        v4 = *(a1 + 40);

        return [v4 setReadyToStart:1];
      }
    }
  }

  return result;
}

@end