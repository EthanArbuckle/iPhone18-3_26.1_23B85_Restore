@interface CHBState
- (CHBState)init;
- (unsigned)chartGroupIndexForType:(int)type isForPrimary:(BOOL)primary;
- (void)dealloc;
- (void)deleteXlChartDataSeriesCollection;
- (void)setChart:(id)chart;
- (void)xlChartDataSeriesAtIndex:(int)index;
- (void)xlCurrentChartDataSeries;
@end

@implementation CHBState

- (CHBState)init
{
  v3.receiver = self;
  v3.super_class = CHBState;
  result = [(CHBState *)&v3 init];
  if (result)
  {
    result->mXlChartDataSeriesCollection = 0;
    *&result->mXlSeriesCount = 0;
    *(&result->mXlCurrentSeriesIndex + 2) = 0;
  }

  return result;
}

- (void)deleteXlChartDataSeriesCollection
{
  mXlChartDataSeriesCollection = self->mXlChartDataSeriesCollection;
  if (mXlChartDataSeriesCollection)
  {
    Count = CFArrayGetCount(mXlChartDataSeriesCollection);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->mXlChartDataSeriesCollection, i);
        if (ValueAtIndex)
        {
          (*(*ValueAtIndex + 8))(ValueAtIndex);
        }
      }
    }

    CFArrayRemoveAllValues(self->mXlChartDataSeriesCollection);
    CFRelease(self->mXlChartDataSeriesCollection);
    self->mXlChartDataSeriesCollection = 0;
  }
}

- (void)dealloc
{
  [(CHBState *)self deleteXlChartDataSeriesCollection];
  v3.receiver = self;
  v3.super_class = CHBState;
  [(CHBState *)&v3 dealloc];
}

- (void)setChart:(id)chart
{
  chartCopy = chart;
  mChart = self->mChart;
  p_mChart = &self->mChart;
  if (mChart != chartCopy)
  {
    v8 = chartCopy;
    objc_storeStrong(p_mChart, chart);
    chartCopy = v8;
  }
}

- (void)xlChartDataSeriesAtIndex:(int)index
{
  if (self->mXlCurrentSeriesIndex < 0 || !CFArrayGetCount(self->mXlChartDataSeriesCollection))
  {
    return 0;
  }

  mXlChartDataSeriesCollection = self->mXlChartDataSeriesCollection;

  return CFArrayGetValueAtIndex(mXlChartDataSeriesCollection, index);
}

- (void)xlCurrentChartDataSeries
{
  mXlCurrentSeriesIndex = self->mXlCurrentSeriesIndex;
  if ((mXlCurrentSeriesIndex & 0x80000000) != 0)
  {
    return 0;
  }

  mXlChartDataSeriesCollection = self->mXlChartDataSeriesCollection;
  if (!mXlChartDataSeriesCollection)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(mXlChartDataSeriesCollection, mXlCurrentSeriesIndex);
  }
}

- (unsigned)chartGroupIndexForType:(int)type isForPrimary:(BOOL)primary
{
  if (type == 3 && primary)
  {
    return 0;
  }

  hasPrimaryMixedArea = [(CHBState *)self hasPrimaryMixedArea];
  if (type != 3 || primary)
  {
    hasSecondaryMixedArea = [(CHBState *)self hasSecondaryMixedArea];
    if (hasPrimaryMixedArea)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (hasSecondaryMixedArea)
    {
      hasPrimaryMixedArea = v9;
    }

    if (type != 2 || !primary)
    {
      hasPrimaryMixedArea += [(CHBState *)self hasPrimaryMixedColumn];
      if (type != 2 || primary)
      {
        hasPrimaryMixedArea += [(CHBState *)self hasSecondaryMixedColumn];
        if (type != 1 || !primary)
        {
          hasPrimaryMixedArea += [(CHBState *)self hasPrimaryMixedLine];
        }
      }
    }
  }

  return hasPrimaryMixedArea;
}

@end