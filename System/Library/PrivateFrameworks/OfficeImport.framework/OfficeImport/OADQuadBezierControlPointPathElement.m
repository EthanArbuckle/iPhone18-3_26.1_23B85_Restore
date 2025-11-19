@interface OADQuadBezierControlPointPathElement
- (OADAdjustPoint)controlPoint;
- (OADQuadBezierControlPointPathElement)initWithControlPoint:(OADAdjustPoint)a3;
@end

@implementation OADQuadBezierControlPointPathElement

- (OADQuadBezierControlPointPathElement)initWithControlPoint:(OADAdjustPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = OADQuadBezierControlPointPathElement;
  result = [(OADQuadBezierControlPointPathElement *)&v6 init];
  if (result)
  {
    result->mControlPoint.x = x;
    result->mControlPoint.y = y;
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

@end