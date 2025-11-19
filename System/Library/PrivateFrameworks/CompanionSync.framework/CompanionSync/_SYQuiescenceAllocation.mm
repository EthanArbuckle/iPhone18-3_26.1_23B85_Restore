@interface _SYQuiescenceAllocation
- (id)object;
@end

@implementation _SYQuiescenceAllocation

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end