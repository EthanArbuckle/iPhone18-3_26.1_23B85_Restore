@interface CHDBubbleType
- (BOOL)is3DType;
- (CHDBubbleType)initWithChart:(id)chart;
- (int)defaultLabelPosition;
@end

@implementation CHDBubbleType

- (CHDBubbleType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDBubbleType;
  result = [(CHDChartType *)&v4 initWithChart:chart];
  if (result)
  {
    *(&result->super.mVaryColors + 1) = 100;
  }

  return result;
}

- (int)defaultLabelPosition
{
  mDefaultDataLabel = self->super.mDefaultDataLabel;
  if (!mDefaultDataLabel || ![(CHDDataLabel *)mDefaultDataLabel position])
  {
    return 6;
  }

  v4 = self->super.mDefaultDataLabel;

  return [(CHDDataLabel *)v4 position];
}

- (BOOL)is3DType
{
  seriesCollection = [(CHDChartType *)self seriesCollection];
  v3 = [seriesCollection count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [seriesCollection objectAtIndex:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = v5;
      isBubble3D = [v7 isBubble3D];

      if (isBubble3D)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end