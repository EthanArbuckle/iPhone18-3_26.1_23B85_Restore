@interface MTWeakRef
- (id)value;
@end

@implementation MTWeakRef

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_value);

  return WeakRetained;
}

@end