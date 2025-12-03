@interface OADAngleArcPathElement
- (OADAdjustPoint)center;
- (OADAdjustPoint)semiaxes;
- (OADAngleArcPathElement)initWithCenter:(OADAdjustPoint)center semiaxes:(OADAdjustPoint)semiaxes startAngle:(OADAdjustCoord)angle angleLength:(OADAdjustCoord)length connectedToPrevious:(BOOL)previous;
@end

@implementation OADAngleArcPathElement

- (OADAngleArcPathElement)initWithCenter:(OADAdjustPoint)center semiaxes:(OADAdjustPoint)semiaxes startAngle:(OADAdjustCoord)angle angleLength:(OADAdjustCoord)length connectedToPrevious:(BOOL)previous
{
  y = semiaxes.y;
  x = semiaxes.x;
  v11 = center.y;
  v12 = center.x;
  v14.receiver = self;
  v14.super_class = OADAngleArcPathElement;
  result = [(OADAngleArcPathElement *)&v14 init];
  if (result)
  {
    result->mCenter.x = v12;
    result->mCenter.y = v11;
    result->mSemiaxes.x = x;
    result->mSemiaxes.y = y;
    result->mStartAngle = angle;
    result->mAngleLength = length;
    result->mConnectedToPrevious = previous;
  }

  return result;
}

- (OADAdjustPoint)center
{
  p_mCenter = &self->mCenter;
  x = self->mCenter.x;
  y = p_mCenter->y;
  result.y = y;
  result.x = x;
  return result;
}

- (OADAdjustPoint)semiaxes
{
  p_mSemiaxes = &self->mSemiaxes;
  x = self->mSemiaxes.x;
  y = p_mSemiaxes->y;
  result.y = y;
  result.x = x;
  return result;
}

@end