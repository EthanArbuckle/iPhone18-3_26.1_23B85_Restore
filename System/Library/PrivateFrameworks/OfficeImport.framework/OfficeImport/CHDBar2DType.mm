@interface CHDBar2DType
- (CHDBar2DType)initWithChart:(id)a3;
- (int)defaultLabelPosition;
- (void)setGapWidth:(int)a3;
@end

@implementation CHDBar2DType

- (CHDBar2DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDBar2DType;
  result = [(CHDChartTypeWithGrouping *)&v4 initWithChart:a3];
  if (result)
  {
    *(&result->super.mGrouping + 4) = 1;
    result->super.mGrouping = 150;
    *(&result->super.super.mVaryColors + 1) = 0;
    result->mGapWidth = 0;
  }

  return result;
}

- (void)setGapWidth:(int)a3
{
  if (a3 >= 500)
  {
    v3 = 500;
  }

  else
  {
    v3 = a3;
  }

  self->super.mGrouping = v3;
}

- (int)defaultLabelPosition
{
  mDefaultDataLabel = self->super.super.mDefaultDataLabel;
  if (mDefaultDataLabel && [(CHDDataLabel *)mDefaultDataLabel position])
  {
    v4 = self->super.super.mDefaultDataLabel;

    return [(CHDDataLabel *)v4 position];
  }

  else if ([(CHDChartTypeWithGrouping *)self isGroupingStacked])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

@end