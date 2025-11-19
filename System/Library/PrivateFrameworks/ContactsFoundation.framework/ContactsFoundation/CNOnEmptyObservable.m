@interface CNOnEmptyObservable
@end

@implementation CNOnEmptyObservable

void __34___CNOnEmptyObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 observableDidSendResult];
  [*(a1 + 40) observerDidReceiveResult:v4];
}

void __34___CNOnEmptyObservable_subscribe___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isObservableEmpty])
  {
    v4 = [*(a1 + 32) subscribeNextObservable:*(a1 + 40)];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained addCancelable:v4];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 observerDidComplete];
  }
}

@end