@interface _CNEmptyObservable
- (id)subscribe:(id)subscribe;
@end

@implementation _CNEmptyObservable

- (id)subscribe:(id)subscribe
{
  [subscribe observerDidComplete];
  v3 = objc_alloc_init(_CNEmptyObservableCancelationToken);

  return v3;
}

@end