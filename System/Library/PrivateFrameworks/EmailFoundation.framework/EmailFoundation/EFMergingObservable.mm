@interface EFMergingObservable
@end

@implementation EFMergingObservable

void __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFB0] null];
  [v1 finishWithResult:?];
}

uint64_t __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    [*(a1 + 40) observerDidComplete];
    v3 = *(a1 + 32);

    return [v3 cancel];
  }

  return result;
}

void __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidFailWithError:v3];
    [*(a1 + 32) cancel];
  }
}

@end