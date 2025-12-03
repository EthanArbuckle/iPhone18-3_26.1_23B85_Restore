@interface OADVectorArcPathElement
- (OADAdjustPoint)endVector;
- (OADAdjustPoint)startVector;
- (OADVectorArcPathElement)initWithLeft:(OADAdjustCoord)left top:(OADAdjustCoord)top right:(OADAdjustCoord)right bottom:(OADAdjustCoord)bottom startVector:(OADAdjustPoint)vector endVector:(OADAdjustPoint)endVector clockwise:(BOOL)clockwise connectedToPrevious:(BOOL)self0;
@end

@implementation OADVectorArcPathElement

- (OADVectorArcPathElement)initWithLeft:(OADAdjustCoord)left top:(OADAdjustCoord)top right:(OADAdjustCoord)right bottom:(OADAdjustCoord)bottom startVector:(OADAdjustPoint)vector endVector:(OADAdjustPoint)endVector clockwise:(BOOL)clockwise connectedToPrevious:(BOOL)self0
{
  y = vector.y;
  x = vector.x;
  v17.receiver = self;
  v17.super_class = OADVectorArcPathElement;
  result = [(OADVectorArcPathElement *)&v17 init];
  if (result)
  {
    result->mLeft = left;
    result->mTop = top;
    result->mRight = right;
    result->mBottom = bottom;
    result->mStartVector.x = x;
    result->mStartVector.y = y;
    result->mEndVector = endVector;
    result->mClockwise = clockwise;
    result->mConnectedToPrevious = previous;
  }

  return result;
}

- (OADAdjustPoint)startVector
{
  p_mStartVector = &self->mStartVector;
  x = self->mStartVector.x;
  y = p_mStartVector->y;
  result.y = y;
  result.x = x;
  return result;
}

- (OADAdjustPoint)endVector
{
  p_mEndVector = &self->mEndVector;
  x = self->mEndVector.x;
  y = p_mEndVector->y;
  result.y = y;
  result.x = x;
  return result;
}

@end