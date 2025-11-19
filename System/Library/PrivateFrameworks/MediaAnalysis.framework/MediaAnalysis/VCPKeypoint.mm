@interface VCPKeypoint
- (CGPoint)location;
@end

@implementation VCPKeypoint

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end