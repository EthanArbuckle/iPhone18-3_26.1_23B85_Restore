@interface CHDChartType
+ (id)chartTypeWithChart:(id)chart;
- (BOOL)isPlotedOnSecondaryAxis;
- (CHDChartType)initWithChart:(id)chart;
- (id)axes;
- (id)axisForClass:(Class)class;
- (id)chart;
- (id)contentFormat;
- (id)defaultTitleWithResources:(id)resources;
- (id)description;
- (int)defaultLabelPosition;
- (unint64_t)categoryCount;
- (void)setDefaultDataLabel:(id)label;
- (void)setSeriesCollection:(id)collection;
- (void)switchAxes:(id)axes;
@end

@implementation CHDChartType

- (id)chart
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);

  return WeakRetained;
}

- (id)axes
{
  array = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  plotArea = [WeakRetained plotArea];
  axes = [plotArea axes];

  v7 = [(EDCollection *)self->mAxisIds count];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [(EDCollection *)self->mAxisIds objectAtIndex:i];
      intValue = [v9 intValue];

      v11 = [axes objectWithKey:intValue];
      if (v11)
      {
        [array addObject:v11];
      }
    }
  }

  return array;
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
        categoryCount = [v8 categoryCount];
        if (categoryCount > v5)
        {
          v5 = categoryCount;
        }
      }
    }
  }

  return v5;
}

- (CHDChartType)initWithChart:(id)chart
{
  chartCopy = chart;
  v12.receiver = self;
  v12.super_class = CHDChartType;
  v5 = [(CHDChartType *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, chartCopy);
    v7 = objc_alloc_init(EDCollection);
    mAxisIds = v6->mAxisIds;
    v6->mAxisIds = v7;

    v9 = [[CHDSeriesCollection alloc] initWithChart:chartCopy];
    mSeries = v6->mSeries;
    v6->mSeries = v9;

    v6->mVaryColors = 1;
  }

  return v6;
}

+ (id)chartTypeWithChart:(id)chart
{
  chartCopy = chart;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:chartCopy];

  return v4;
}

- (BOOL)isPlotedOnSecondaryAxis
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  plotArea = [WeakRetained plotArea];
  hasSecondaryAxis = [plotArea hasSecondaryAxis];

  if (!hasSecondaryAxis)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->mChart);
  plotArea2 = [v6 plotArea];
  axes = [plotArea2 axes];

  v9 = [(EDCollection *)self->mAxisIds count];
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(EDCollection *)self->mAxisIds objectAtIndex:v10];
      intValue = [v11 intValue];

      v13 = [axes objectWithKey:intValue];
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

- (void)switchAxes:(id)axes
{
  axesCopy = axes;
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  plotArea = [WeakRetained plotArea];
  axes = [plotArea axes];

  v7 = [axes count];
  v8 = [axesCopy count];
  if (v7 == 4 && v8 == 2)
  {
    v9 = [axesCopy objectAtIndex:0];
    intValue = [v9 intValue];

    v11 = [axesCopy objectAtIndex:1];
    intValue2 = [v11 intValue];

    for (i = 0; i != 4; ++i)
    {
      v14 = [axes objectAtIndex:i];
      v15 = v14;
      if (v14)
      {
        axisId = [v14 axisId];
        if (axisId != intValue && axisId != intValue2)
        {
          [v15 setSecondary:1];
        }
      }
    }
  }
}

- (id)axisForClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  plotArea = [WeakRetained plotArea];
  axes = [plotArea axes];

  v7 = [(EDCollection *)self->mAxisIds count];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [(EDCollection *)self->mAxisIds objectAtIndex:v8];
      v10 = [axes objectWithKey:{objc_msgSend(v9, "intValue")}];

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

- (void)setSeriesCollection:(id)collection
{
  collectionCopy = collection;
  mSeries = self->mSeries;
  p_mSeries = &self->mSeries;
  if (mSeries != collectionCopy)
  {
    v8 = collectionCopy;
    objc_storeStrong(p_mSeries, collection);
    collectionCopy = v8;
  }
}

- (void)setDefaultDataLabel:(id)label
{
  labelCopy = label;
  mDefaultDataLabel = self->mDefaultDataLabel;
  p_mDefaultDataLabel = &self->mDefaultDataLabel;
  if (mDefaultDataLabel != labelCopy)
  {
    v8 = labelCopy;
    objc_storeStrong(p_mDefaultDataLabel, label);
    labelCopy = v8;
  }
}

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  defaultContentFormat = [WeakRetained defaultContentFormat];

  return defaultContentFormat;
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

- (id)defaultTitleWithResources:(id)resources
{
  resourcesCopy = resources;
  if ([(EDCollection *)self->mSeries count]== 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(EDCollection *)self->mSeries objectAtIndex:0];
    lastCachedName = [v5 lastCachedName];

    if (lastCachedName)
    {
      EDValue::EDValue(&v10, [lastCachedName value]);
      if (EDValue::isStringType(&v10))
      {
        v7 = EDValue::resolvedEDStringValue(&v10, resourcesCopy);
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