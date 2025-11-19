@interface DRTouchViewModel
- (CAPoint3D)location;
@end

@implementation DRTouchViewModel

- (CAPoint3D)location
{
  x = self->_location.x;
  y = self->_location.y;
  z = self->_location.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end