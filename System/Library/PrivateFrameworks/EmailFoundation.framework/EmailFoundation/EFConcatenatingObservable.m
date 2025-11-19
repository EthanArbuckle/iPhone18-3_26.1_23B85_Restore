@interface EFConcatenatingObservable
@end

@implementation EFConcatenatingObservable

void __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
  }
}

void __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) ef_tail];
    v5 = *(a1 + 32);
    v6 = v4;
    [v2 subscribeObserver:v3 toObservables:? unless:?];
  }
}

void __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    [*(a1 + 40) observerDidFailWithError:v3];
  }
}

@end