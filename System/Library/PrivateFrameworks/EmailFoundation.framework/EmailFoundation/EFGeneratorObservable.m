@interface EFGeneratorObservable
@end

@implementation EFGeneratorObservable

void __57___EFGeneratorObservable__scheduleNextResultForObserver___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isCanceled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_isFinished") & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    v4 = (*(*(v2 + 48) + 16))();
    [*(a1 + 40) observerDidReceiveResult:?];
    [*(a1 + 32) _updateState];
    [*(a1 + 32) _scheduleNextResultForObserver:*(a1 + 40)];
  }
}

@end