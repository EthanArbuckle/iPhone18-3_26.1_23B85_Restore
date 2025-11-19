@interface CNObservableTakeUntilOperator
@end

@implementation CNObservableTakeUntilOperator

void __44___CNObservableTakeUntilOperator_subscribe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

@end