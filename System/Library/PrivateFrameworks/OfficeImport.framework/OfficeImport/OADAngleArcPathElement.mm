@interface OADAngleArcPathElement
- (OADAdjustPoint)center;
- (OADAdjustPoint)semiaxes;
- (OADAngleArcPathElement)initWithCenter:(OADAdjustPoint)a3 semiaxes:(OADAdjustPoint)a4 startAngle:(OADAdjustCoord)a5 angleLength:(OADAdjustCoord)a6 connectedToPrevious:(BOOL)a7;
@end

@implementation OADAngleArcPathElement

- (OADAngleArcPathElement)initWithCenter:(OADAdjustPoint)a3 semiaxes:(OADAdjustPoint)a4 startAngle:(OADAdjustCoord)a5 angleLength:(OADAdjustCoord)a6 connectedToPrevious:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v11 = a3.y;
  v12 = a3.x;
  v14.receiver = self;
  v14.super_class = OADAngleArcPathElement;
  result = [(OADAngleArcPathElement *)&v14 init];
  if (result)
  {
    result->mCenter.x = v12;
    result->mCenter.y = v11;
    result->mSemiaxes.x = x;
    result->mSemiaxes.y = y;
    result->mStartAngle = a5;
    result->mAngleLength = a6;
    result->mConnectedToPrevious = a7;
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