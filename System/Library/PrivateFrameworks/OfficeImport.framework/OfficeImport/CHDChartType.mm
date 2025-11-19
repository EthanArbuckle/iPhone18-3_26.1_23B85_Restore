@interface CHDChartType
+ (id)chartTypeWithChart:(id)a3;
- (BOOL)isPlotedOnSecondaryAxis;
- (CHDChartType)initWithChart:(id)a3;
- (id)axes;
- (id)axisForClass:(Class)a3;
- (id)chart;
- (id)contentFormat;
- (id)defaultTitleWithResources:(id)a3;
- (id)description;
- (int)defaultLabelPosition;
- (unint64_t)categoryCount;
- (void)setDefaultDataLabel:(id)a3;
- (void)setSeriesCollection:(id)a3;
- (void)switchAxes:(id)a3;
@end

@implementation CHDChartType

- (id)chart
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);

  return WeakRetained;
}

- (id)axes
{
  v3 = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v5 = [WeakRetained plotArea];
  v6 = [v5 axes];

  v7 = [(EDCollection *)self->mAxisIds count];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [(EDCollection *)self->mAxisIds objectAtIndex:i];
      v10 = [v9 intValue];

      v11 = [v6 objectWithKey:v10];
      if (v11)
      {
        [v3 addObject:v11];
      }
    }
  }

  return v3;
}

- (unint64_t)categoryCount
{
  v3 = [(EDCollection *)self->mSeries count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v7 = [(EDCollection *)self->mSeries objectAtIndex:i];
    v8 = v7;
    if (v7)
    {
      if (([v7 isEmpty] & 1) == 0)
      {
        v9 = [v8 categoryCount];
        if (v9 > v5)
        {
          v5 = v9;
        }
      }
    }
  }

  return v5;
}

- (CHDChartType)initWithChart:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CHDChartType;
  v5 = [(CHDChartType *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, v4);
    v7 = objc_alloc_init(EDCollection);
    mAxisIds = v6->mAxisIds;
    v6->mAxisIds = v7;

    v9 = [[CHDSeriesCollection alloc] initWithChart:v4];
    mSeries = v6->mSeries;
    v6->mSeries = v9;

    v6->mVaryColors = 1;
  }

  return v6;
}

+ (id)chartTypeWithChart:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:v3];

  return v4;
}

- (BOOL)isPlotedOnSecondaryAxis
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v4 = [WeakRetained plotArea];
  v5 = [v4 hasSecondaryAxis];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->mChart);
  v7 = [v6 plotArea];
  v8 = [v7 axes];

  v9 = [(EDCollection *)self->mAxisIds count];
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(EDCollection *)self->mAxisIds objectAtIndex:v10];
      v12 = [v11 intValue];

      v13 = [v8 objectWithKey:v12];
      v14 = v13;
      if (v13)
      {
        if ([v13 isSecondary])
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_7;
      }
    }

    v15 = 1;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (void)switchAxes:(id)a3
{
  v17 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v5 = [WeakRetained plotArea];
  v6 = [v5 axes];

  v7 = [v6 count];
  v8 = [v17 count];
  if (v7 == 4 && v8 == 2)
  {
    v9 = [v17 objectAtIndex:0];
    v10 = [v9 intValue];

    v11 = [v17 objectAtIndex:1];
    v12 = [v11 intValue];

    for (i = 0; i != 4; ++i)
    {
      v14 = [v6 objectAtIndex:i];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 axisId];
        if (v16 != v10 && v16 != v12)
        {
          [v15 setSecondary:1];
        }
      }
    }
  }
}

- (id)axisForClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v5 = [WeakRetained plotArea];
  v6 = [v5 axes];

  v7 = [(EDCollection *)self->mAxisIds count];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [(EDCollection *)self->mAxisIds objectAtIndex:v8];
      v10 = [v6 objectWithKey:{objc_msgSend(v9, "intValue")}];

      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

- (void)setSeriesCollection:(id)a3
{
  v5 = a3;
  mSeries = self->mSeries;
  p_mSeries = &self->mSeries;
  if (mSeries != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mSeries, a3);
    v5 = v8;
  }
}

- (void)setDefaultDataLabel:(id)a3
{
  v5 = a3;
  mDefaultDataLabel = self->mDefaultDataLabel;
  p_mDefaultDataLabel = &self->mDefaultDataLabel;
  if (mDefaultDataLabel != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDefaultDataLabel, a3);
    v5 = v8;
  }
}

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v3 = [WeakRetained defaultContentFormat];

  return v3;
}

- (int)defaultLabelPosition
{
  mDefaultDataLabel = self->mDefaultDataLabel;
  if (mDefaultDataLabel)
  {
    LODWORD(mDefaultDataLabel) = [(CHDDataLabel *)mDefaultDataLabel position];
  }

  return mDefaultDataLabel;
}

- (id)defaultTitleWithResources:(id)a3
{
  v4 = a3;
  if ([(EDCollection *)self->mSeries count]== 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(EDCollection *)self->mSeries objectAtIndex:0];
    v6 = [v5 lastCachedName];

    if (v6)
    {
      EDValue::EDValue(&v10, [v6 value]);
      if (EDValue::isStringType(&v10))
      {
        v7 = EDValue::resolvedEDStringValue(&v10, v4);
        v8 = [v7 copy];
      }

      else
      {
        v8 = 0;
      }

      EDValue::~EDValue(&v10);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDChartType;
  v2 = [(CHDChartType *)&v4 description];

  return v2;
}

@end