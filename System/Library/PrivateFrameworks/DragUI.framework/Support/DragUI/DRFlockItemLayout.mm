@interface DRFlockItemLayout
- (CGPoint)center;
@end

@implementation DRFlockItemLayout

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end