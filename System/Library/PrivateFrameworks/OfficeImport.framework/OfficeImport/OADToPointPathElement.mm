@interface OADToPointPathElement
- (OADAdjustPoint)toPoint;
- (OADToPointPathElement)initWithToPoint:(OADAdjustPoint)point;
@end

@implementation OADToPointPathElement

- (OADAdjustPoint)toPoint
{
  p_mToPoint = &self->mToPoint;
  x = self->mToPoint.x;
  y = p_mToPoint->y;
  result.y = y;
  result.x = x;
  return result;
}

- (OADToPointPathElement)initWithToPoint:(OADAdjustPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = OADToPointPathElement;
  result = [(OADToPointPathElement *)&v6 init];
  if (result)
  {
    result->mToPoint.x = x;
    result->mToPoint.y = y;
  }

  return result;
}

@end