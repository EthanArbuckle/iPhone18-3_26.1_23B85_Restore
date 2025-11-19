@interface VCPHandObservation
- (CGRect)bounds;
- (VCPHandObservation)init;
@end

@implementation VCPHandObservation

- (VCPHandObservation)init
{
  v3.receiver = self;
  v3.super_class = VCPHandObservation;
  result = [(VCPHandObservation *)&v3 init];
  if (result)
  {
    result->_gestureType = -1;
  }

  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end