@interface CHDBar2DType
- (CHDBar2DType)initWithChart:(id)chart;
- (int)defaultLabelPosition;
- (void)setGapWidth:(int)width;
@end

@implementation CHDBar2DType

- (CHDBar2DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDBar2DType;
  result = [(CHDChartTypeWithGrouping *)&v4 initWithChart:chart];
  if (result)
  {
    *(&result->super.mGrouping + 4) = 1;
    result->super.mGrouping = 150;
    *(&result->super.super.mVaryColors + 1) = 0;
    result->mGapWidth = 0;
  }

  return result;
}

- (void)setGapWidth:(int)width
{
  if (width >= 500)
  {
    widthCopy = 500;
  }

  else
  {
    widthCopy = width;
  }

  self->super.mGrouping = widthCopy;
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