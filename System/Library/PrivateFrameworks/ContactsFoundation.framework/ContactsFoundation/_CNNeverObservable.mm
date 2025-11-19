@interface _CNNeverObservable
- (id)subscribe:(id)a3;
@end

@implementation _CNNeverObservable

- (id)subscribe:(id)a3
{
  v3 = objc_alloc_init(CNCancelationToken);

  return v3;
}

@end