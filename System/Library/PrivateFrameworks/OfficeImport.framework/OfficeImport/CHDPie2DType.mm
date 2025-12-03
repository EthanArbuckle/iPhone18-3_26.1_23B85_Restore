@interface CHDPie2DType
- (BOOL)hasExplosion;
- (CHDPie2DType)initWithChart:(id)chart;
- (id)contentFormat;
- (int)defaultLabelPosition;
@end

@implementation CHDPie2DType

- (CHDPie2DType)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDPie2DType;
  result = [(CHDChartType *)&v4 initWithChart:chart];
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
  seriesCollection = [(CHDChartType *)self seriesCollection];
  v4 = [seriesCollection count];

  if (v4)
  {
    seriesCollection2 = [(CHDChartType *)self seriesCollection];
    WeakRetained = [seriesCollection2 objectAtIndex:0];

    valueData = [WeakRetained valueData];
    contentFormat = [valueData contentFormat];

    if (contentFormat)
    {
LABEL_10:

      goto LABEL_11;
    }

    defaultDataLabel = [WeakRetained defaultDataLabel];

    if (defaultDataLabel)
    {
      defaultDataLabel2 = [WeakRetained defaultDataLabel];
      contentFormat = [defaultDataLabel2 contentFormat];

      if (contentFormat)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  defaultDataLabel3 = [(CHDChartType *)self defaultDataLabel];

  if (!defaultDataLabel3 || (-[CHDChartType defaultDataLabel](self, "defaultDataLabel"), v12 = objc_claimAutoreleasedReturnValue(), [v12 contentFormat], contentFormat = objc_claimAutoreleasedReturnValue(), v12, !contentFormat))
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mChart);
    contentFormat = [WeakRetained defaultContentFormat];
    goto LABEL_10;
  }

LABEL_11:

  return contentFormat;
}

- (BOOL)hasExplosion
{
  seriesCollection = [(CHDChartType *)self seriesCollection];
  v15 = seriesCollection;
  v3 = [seriesCollection count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [seriesCollection objectAtIndex:{v4, v14}];
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

      dataValuePropertiesCollection = [v7 dataValuePropertiesCollection];
      v9 = [dataValuePropertiesCollection count];
      if (v9)
      {
        v10 = 0;
        while (1)
        {
          objc_opt_class();
          v11 = [dataValuePropertiesCollection objectAtIndex:v10];
          explosion = [v11 explosion];

          if (explosion >= 1)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }

        v5 = v14;
        seriesCollection = v15;
LABEL_12:

        break;
      }

LABEL_9:

      ++v4;
      seriesCollection = v15;
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