@interface OADQuadBezierToPathElement
- (OADAdjustPoint)controlPoint;
- (OADAdjustPoint)toPoint;
- (OADQuadBezierToPathElement)initWithControlPoint:(OADAdjustPoint)a3 toPoint:(OADAdjustPoint)a4;
@end

@implementation OADQuadBezierToPathElement

- (OADQuadBezierToPathElement)initWithControlPoint:(OADAdjustPoint)a3 toPoint:(OADAdjustPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9.receiver = self;
  v9.super_class = OADQuadBezierToPathElement;
  result = [(OADQuadBezierToPathElement *)&v9 init];
  if (result)
  {
    result->mControlPoint.x = v7;
    result->mControlPoint.y = v6;
    result->mToPoint.x = x;
    result->mToPoint.y = y;
  }

  return result;
}

- (OADAdjustPoint)controlPoint
{
  p_mControlPoint = &self->mControlPoint;
  x = self->mControlPoint.x;
  y = p_mControlPoint->y;
  result.y = y;
  result.x = x;
  return result;
}

- (OADAdjustPoint)toPoint
{
  p_mToPoint = &self->mToPoint;
  x = self->mToPoint.x;
  y = p_mToPoint->y;
  result.y = y;
  result.x = x;
  return result;
}

@end