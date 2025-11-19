@interface TKKeyPathObservation
- (NSObject)object;
@end

@implementation TKKeyPathObservation

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end