@interface MRPerformAsyncOperationsUntilSuccess
@end

@implementation MRPerformAsyncOperationsUntilSuccess

void ___MRPerformAsyncOperationsUntilSuccess_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 removeObjectAtIndex:0];
    _MRPerformAsyncOperationsUntilSuccess(v3, v4, *(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end