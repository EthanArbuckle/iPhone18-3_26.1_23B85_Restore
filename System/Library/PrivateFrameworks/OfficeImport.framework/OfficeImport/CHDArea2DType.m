@interface CHDArea2DType
- (CHDArea2DType)initWithChart:(id)a3;
- (int)defaultLabelPosition;
@end

@implementation CHDArea2DType

- (CHDArea2DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDArea2DType;
  result = [(CHDChartTypeWithGrouping *)&v4 initWithChart:a3];
  if (result)
  {
    *(&result->super.super.mVaryColors + 1) = 3;
  }

  return result;
}

- (int)defaultLabelPosition
{
  mDefaultDataLabel = self->super.super.mDefaultDataLabel;
  if (!mDefaultDataLabel || ![(CHDDataLabel *)mDefaultDataLabel position])
  {
    return 6;
  }

  v4 = self->super.super.mDefaultDataLabel;

  return [(CHDDataLabel *)v4 position];
}

@end