@interface CHDBubbleType
- (BOOL)is3DType;
- (CHDBubbleType)initWithChart:(id)a3;
- (int)defaultLabelPosition;
@end

@implementation CHDBubbleType

- (CHDBubbleType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDBubbleType;
  result = [(CHDChartType *)&v4 initWithChart:a3];
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
  v2 = [(CHDChartType *)self seriesCollection];
  v3 = [v2 count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [v2 objectAtIndex:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = v5;
      v8 = [v7 isBubble3D];

      if (v8)
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