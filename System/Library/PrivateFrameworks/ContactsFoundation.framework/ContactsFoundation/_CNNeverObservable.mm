@interface _CNNeverObservable
- (id)subscribe:(id)subscribe;
@end

@implementation _CNNeverObservable

- (id)subscribe:(id)subscribe
{
  v3 = objc_alloc_init(CNCancelationToken);

  return v3;
}

@end