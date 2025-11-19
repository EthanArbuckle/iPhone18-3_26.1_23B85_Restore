@interface _CNEmptyObservable
- (id)subscribe:(id)a3;
@end

@implementation _CNEmptyObservable

- (id)subscribe:(id)a3
{
  [a3 observerDidComplete];
  v3 = objc_alloc_init(_CNEmptyObservableCancelationToken);

  return v3;
}

@end