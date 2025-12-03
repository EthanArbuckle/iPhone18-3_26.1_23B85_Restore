@interface CHDBar3DType
+ (id)stringWithShapeType:(int)type;
- (CHDBar3DType)initWithChart:(id)chart;
@end

@implementation CHDBar3DType

- (CHDBar3DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDBar3DType;
  result = [(CHDBar2DType *)&v4 initWithChart:chart];
  if (result)
  {
    *&result->super.mColumn = 150;
    result->super.mOverlap = 0;
  }

  return result;
}

+ (id)stringWithShapeType:(int)type
{
  if ((type - 1) > 4)
  {
    return @"box";
  }

  else
  {
    return off_2799CD1D0[type - 1];
  }
}

@end