@interface CHDBar3DType
+ (id)stringWithShapeType:(int)a3;
- (CHDBar3DType)initWithChart:(id)a3;
@end

@implementation CHDBar3DType

- (CHDBar3DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDBar3DType;
  result = [(CHDBar2DType *)&v4 initWithChart:a3];
  if (result)
  {
    *&result->super.mColumn = 150;
    result->super.mOverlap = 0;
  }

  return result;
}

+ (id)stringWithShapeType:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return @"box";
  }

  else
  {
    return off_2799CD1D0[a3 - 1];
  }
}

@end