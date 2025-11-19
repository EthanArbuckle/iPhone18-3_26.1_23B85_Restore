@interface CHDPlotArea
- (BOOL)hasSecondaryAxis;
- (BOOL)hasSecondaryYAxisDeleted;
- (BOOL)isCategoryAxesReversed:(BOOL)a3;
- (CHDPlotArea)initWithChart:(id)a3;
- (id)description;
- (void)markSecondaryAxes;
- (void)setGraphicProperties:(id)a3;
@end

@implementation CHDPlotArea

- (CHDPlotArea)initWithChart:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CHDPlotArea;
  v5 = [(CHDPlotArea *)&v11 init];
  if (v5)
  {
    v6 = [[CHDChartTypesCollection alloc] initWithChart:v4];
    mChartTypes = v5->mChartTypes;
    v5->mChartTypes = v6;

    v8 = objc_alloc_init(CHDAxesCollection);
    mAxes = v5->mAxes;
    v5->mAxes = v8;

    *&v5->mCategoryAxesReversed = 0;
    v5->mContainsVolumeStockType = 0;
  }

  return v5;
}

- (BOOL)hasSecondaryAxis
{
  v3 = [(EDCollection *)self->mAxes count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = [(EDCollection *)self->mAxes objectAtIndex:v5];
      v8 = v7;
      if (v7)
      {
        if ([v7 isSecondary])
        {
          break;
        }
      }

      v6 = ++v5 < v4;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

- (BOOL)hasSecondaryYAxisDeleted
{
  v3 = [(EDCollection *)self->mAxes count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    v6 = [(EDCollection *)self->mAxes objectAtIndex:v5];
    v7 = v6;
    if (v6)
    {
      if ([v6 isSecondary] && objc_msgSend(v7, "axisType") == 4)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  v8 = [v7 isDeleted];

  return v8;
}

- (void)markSecondaryAxes
{
  if ([(EDCollection *)self->mChartTypes count])
  {
    v3 = 0;
    do
    {
      v4 = [(EDCollection *)self->mChartTypes objectAtIndex:v3];
      v5 = [v4 axisIds];
      for (i = 0; i < [v5 count]; ++i)
      {
        v7 = [v5 objectAtIndex:i];
        v8 = -[EDKeyedCollection objectWithKey:](self->mAxes, "objectWithKey:", [v7 intValue]);
        [v8 setSecondary:v3 != 0];
      }

      ++v3;
    }

    while (v3 < [(EDCollection *)self->mChartTypes count]);
  }
}

- (void)setGraphicProperties:(id)a3
{
  v5 = a3;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mGraphicProperties, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDPlotArea;
  v2 = [(CHDPlotArea *)&v4 description];

  return v2;
}

- (BOOL)isCategoryAxesReversed:(BOOL)a3
{
  if (!self->mCategoryAxesReversedOverridden)
  {
    v4 = a3;
    v5 = [(CHDPlotArea *)self axes];
    v6 = [v5 count];
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [v5 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && !self->mCategoryAxesReversed)
        {
          self->mCategoryAxesReversed = [v8 isReverseOrder];
          self->mCategoryAxesReversedOverridden = 1;
          if (v4)
          {
            if ([v8 isReverseOrder])
            {
              [v8 setReverseOrderOverridden:1];
            }

            [v8 setReverseOrder:0];
          }
        }
      }
    }
  }

  return self->mCategoryAxesReversed;
}

@end