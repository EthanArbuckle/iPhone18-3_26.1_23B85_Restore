@interface CNOperationQueueScheduler
@end

@implementation CNOperationQueueScheduler

void __70___CNOperationQueueScheduler_performCancelableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

uint64_t __71___CNOperationQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _enqueueBlock:v4 qualityOfService:v5];
  }

  return result;
}

@end