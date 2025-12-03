@interface OADArcToPathElement
- (OADAdjustPoint)semiaxes;
- (OADArcToPathElement)initWithSemiaxes:(OADAdjustPoint)semiaxes startAngle:(OADAdjustCoord)angle angleLength:(OADAdjustCoord)length;
@end

@implementation OADArcToPathElement

- (OADArcToPathElement)initWithSemiaxes:(OADAdjustPoint)semiaxes startAngle:(OADAdjustCoord)angle angleLength:(OADAdjustCoord)length
{
  y = semiaxes.y;
  x = semiaxes.x;
  v10.receiver = self;
  v10.super_class = OADArcToPathElement;
  result = [(OADArcToPathElement *)&v10 init];
  if (result)
  {
    result->mSemiaxes.x = x;
    result->mSemiaxes.y = y;
    result->mStartAngle = angle;
    result->mAngleLength = length;
  }

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