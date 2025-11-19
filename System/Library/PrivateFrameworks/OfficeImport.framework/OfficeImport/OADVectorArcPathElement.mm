@interface OADVectorArcPathElement
- (OADAdjustPoint)endVector;
- (OADAdjustPoint)startVector;
- (OADVectorArcPathElement)initWithLeft:(OADAdjustCoord)a3 top:(OADAdjustCoord)a4 right:(OADAdjustCoord)a5 bottom:(OADAdjustCoord)a6 startVector:(OADAdjustPoint)a7 endVector:(OADAdjustPoint)a8 clockwise:(BOOL)a9 connectedToPrevious:(BOOL)a10;
@end

@implementation OADVectorArcPathElement

- (OADVectorArcPathElement)initWithLeft:(OADAdjustCoord)a3 top:(OADAdjustCoord)a4 right:(OADAdjustCoord)a5 bottom:(OADAdjustCoord)a6 startVector:(OADAdjustPoint)a7 endVector:(OADAdjustPoint)a8 clockwise:(BOOL)a9 connectedToPrevious:(BOOL)a10
{
  y = a7.y;
  x = a7.x;
  v17.receiver = self;
  v17.super_class = OADVectorArcPathElement;
  result = [(OADVectorArcPathElement *)&v17 init];
  if (result)
  {
    result->mLeft = a3;
    result->mTop = a4;
    result->mRight = a5;
    result->mBottom = a6;
    result->mStartVector.x = x;
    result->mStartVector.y = y;
    result->mEndVector = a8;
    result->mClockwise = a9;
    result->mConnectedToPrevious = a10;
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