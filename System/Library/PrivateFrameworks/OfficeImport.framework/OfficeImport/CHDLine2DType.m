@interface CHDLine2DType
- (CHDLine2DType)initWithChart:(id)a3;
@end

@implementation CHDLine2DType

- (CHDLine2DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDLine2DType;
  result = [(CHDLineType *)&v4 initWithChart:a3];
  if (result)
  {
    LOBYTE(result->super.super.mGrouping) = 1;
    BYTE1(result->super.super.mGrouping) = 0;
  }

  return result;
}

@end