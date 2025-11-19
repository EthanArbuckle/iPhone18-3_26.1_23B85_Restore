@interface CHDLine3DType
- (CHDLine3DType)initWithChart:(id)a3;
@end

@implementation CHDLine3DType

- (CHDLine3DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDLine3DType;
  result = [(CHDLineType *)&v4 initWithChart:a3];
  if (result)
  {
    result->super.super.mGrouping = 150;
  }

  return result;
}

@end