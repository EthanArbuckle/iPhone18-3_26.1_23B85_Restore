@interface CHDArea3DType
- (CHDArea3DType)initWithChart:(id)chart;
@end

@implementation CHDArea3DType

- (CHDArea3DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDArea3DType;
  result = [(CHDArea2DType *)&v4 initWithChart:chart];
  if (result)
  {
    result->super.super.mGrouping = 150;
  }

  return result;
}

@end