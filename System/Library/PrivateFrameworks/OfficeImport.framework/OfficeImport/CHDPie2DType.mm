@interface CHDPie2DType
- (BOOL)hasExplosion;
- (CHDPie2DType)initWithChart:(id)a3;
- (id)contentFormat;
- (int)defaultLabelPosition;
@end

@implementation CHDPie2DType

- (CHDPie2DType)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDPie2DType;
  result = [(CHDChartType *)&v4 initWithChart:a3];
  if (result)
  {
    *(&result->super.mVaryColors + 1) = 0;
    LOBYTE(result->mFirstSliceAngle) = 0;
    BYTE1(result->mFirstSliceAngle) = 0;
    BYTE2(result->mFirstSliceAngle) = 0;
  }

  return result;
}

- (int)defaultLabelPosition
{
  mDefaultDataLabel = self->super.mDefaultDataLabel;
  if (!mDefaultDataLabel || ![(CHDDataLabel *)mDefaultDataLabel position])
  {
    return 9;
  }

  v4 = self->super.mDefaultDataLabel;

  return [(CHDDataLabel *)v4 position];
}

- (id)contentFormat
{
  v3 = [(CHDChartType *)self seriesCollection];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CHDChartType *)self seriesCollection];
    WeakRetained = [v5 objectAtIndex:0];

    v7 = [WeakRetained valueData];
    v8 = [v7 contentFormat];

    if (v8)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = [WeakRetained defaultDataLabel];

    if (v9)
    {
      v10 = [WeakRetained defaultDataLabel];
      v8 = [v10 contentFormat];

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v11 = [(CHDChartType *)self defaultDataLabel];

  if (!v11 || (-[CHDChartType defaultDataLabel](self, "defaultDataLabel"), v12 = objc_claimAutoreleasedReturnValue(), [v12 contentFormat], v8 = objc_claimAutoreleasedReturnValue(), v12, !v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mChart);
    v8 = [WeakRetained defaultContentFormat];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BOOL)hasExplosion
{
  v2 = [(CHDChartType *)self seriesCollection];
  v15 = v2;
  v3 = [v2 count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [v2 objectAtIndex:{v4, v14}];
      v14 = v5;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = v5;
      if ([v7 explosion] > 0)
      {
        goto LABEL_12;
      }

      v8 = [v7 dataValuePropertiesCollection];
      v9 = [v8 count];
      if (v9)
      {
        v10 = 0;
        while (1)
        {
          objc_opt_class();
          v11 = [v8 objectAtIndex:v10];
          v12 = [v11 explosion];

          if (v12 >= 1)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }

        v5 = v14;
        v2 = v15;
LABEL_12:

        break;
      }

LABEL_9:

      ++v4;
      v2 = v15;
      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end