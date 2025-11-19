@interface HFItemUpdateFutureWrapper
@end

@implementation HFItemUpdateFutureWrapper

void __64___HFItemUpdateFutureWrapper_wrapperWithFuture_item_isInternal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setOutcome:v3];
}

@end