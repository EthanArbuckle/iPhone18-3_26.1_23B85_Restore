@interface OADArcToPathElement
- (OADAdjustPoint)semiaxes;
- (OADArcToPathElement)initWithSemiaxes:(OADAdjustPoint)a3 startAngle:(OADAdjustCoord)a4 angleLength:(OADAdjustCoord)a5;
@end

@implementation OADArcToPathElement

- (OADArcToPathElement)initWithSemiaxes:(OADAdjustPoint)a3 startAngle:(OADAdjustCoord)a4 angleLength:(OADAdjustCoord)a5
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = OADArcToPathElement;
  result = [(OADArcToPathElement *)&v10 init];
  if (result)
  {
    result->mSemiaxes.x = x;
    result->mSemiaxes.y = y;
    result->mStartAngle = a4;
    result->mAngleLength = a5;
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