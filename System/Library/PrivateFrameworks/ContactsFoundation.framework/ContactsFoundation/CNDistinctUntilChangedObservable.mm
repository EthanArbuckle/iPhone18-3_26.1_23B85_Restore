@interface CNDistinctUntilChangedObservable
@end

@implementation CNDistinctUntilChangedObservable

void __47___CNDistinctUntilChangedObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained _resultIsDistinctFromLastResult:v4])
  {
    [*(a1 + 32) observerDidReceiveResult:v4];
  }
}

@end