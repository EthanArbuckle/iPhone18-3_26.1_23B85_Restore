@interface CNDistinctObservable
@end

@implementation CNDistinctObservable

void __35___CNDistinctObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _resultIsDistinct:?])
  {
    [*(a1 + 40) observerDidReceiveResult:v3];
  }
}

@end