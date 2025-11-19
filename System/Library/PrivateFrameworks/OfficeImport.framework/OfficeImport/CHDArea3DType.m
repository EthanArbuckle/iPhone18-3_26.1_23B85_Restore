@interface CHDArea3DType
- (CHDArea3DType)initWithChart:(id)a3;
@end

@implementation CHDArea3DType

- (CHDArea3DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDArea3DType;
  result = [(CHDArea2DType *)&v4 initWithChart:a3];
  if (result)
  {
    result->super.super.mGrouping = 150;
  }

  return result;
}

@end