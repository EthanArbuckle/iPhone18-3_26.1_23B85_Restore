@interface CNConcatenatingObservable
@end

@implementation CNConcatenatingObservable

void __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidReceiveResult:v4];
  }
}

void __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 56) subscribeObserver:*(a1 + 32) toObservables:*(a1 + 40) unless:WeakRetained];
  }
}

void __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isCanceled] & 1) == 0)
  {
    [*(a1 + 32) observerDidFailWithError:v4];
  }
}

@end