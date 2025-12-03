@interface CHDLine2DType
- (CHDLine2DType)initWithChart:(id)chart;
@end

@implementation CHDLine2DType

- (CHDLine2DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDLine2DType;
  result = [(CHDLineType *)&v4 initWithChart:chart];
  if (result)
  {
    LOBYTE(result->super.super.mGrouping) = 1;
    BYTE1(result->super.super.mGrouping) = 0;
  }

  return result;
}

@end