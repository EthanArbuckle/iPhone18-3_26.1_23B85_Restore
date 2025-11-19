@interface SUUIWeakReference
- (NSObject)object;
@end

@implementation SUUIWeakReference

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end