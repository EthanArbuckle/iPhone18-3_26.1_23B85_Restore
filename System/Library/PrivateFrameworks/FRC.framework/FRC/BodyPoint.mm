@interface BodyPoint
- (BodyPoint)init;
- (CGPoint)location;
- (void)dealloc;
@end

@implementation BodyPoint

- (BodyPoint)init
{
  v3.receiver = self;
  v3.super_class = BodyPoint;
  return [(BodyPoint *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BodyPoint;
  [(BodyPoint *)&v2 dealloc];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end