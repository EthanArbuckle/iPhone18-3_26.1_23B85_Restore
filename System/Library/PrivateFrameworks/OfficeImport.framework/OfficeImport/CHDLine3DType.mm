@interface CHDLine3DType
- (CHDLine3DType)initWithChart:(id)chart;
@end

@implementation CHDLine3DType

- (CHDLine3DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDLine3DType;
  result = [(CHDLineType *)&v4 initWithChart:chart];
  if (result)
  {
    result->super.super.mGrouping = 150;
  }

  return result;
}

@end