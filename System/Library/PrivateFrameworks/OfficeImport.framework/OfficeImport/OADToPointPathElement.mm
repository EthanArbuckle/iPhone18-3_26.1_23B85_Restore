@interface OADToPointPathElement
- (OADAdjustPoint)toPoint;
- (OADToPointPathElement)initWithToPoint:(OADAdjustPoint)a3;
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

- (OADToPointPathElement)initWithToPoint:(OADAdjustPoint)a3
{
  y = a3.y;
  x = a3.x;
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