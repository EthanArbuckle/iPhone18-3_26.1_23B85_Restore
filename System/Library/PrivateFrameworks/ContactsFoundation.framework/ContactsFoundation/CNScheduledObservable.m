@interface CNScheduledObservable
@end

@implementation CNScheduledObservable

void __36___CNScheduledObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 subscribe:v3];
  [v4 addCancelable:v5];
}

@end