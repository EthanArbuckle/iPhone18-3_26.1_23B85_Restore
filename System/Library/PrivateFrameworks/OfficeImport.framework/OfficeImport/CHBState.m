@interface CHBState
- (CHBState)init;
- (unsigned)chartGroupIndexForType:(int)a3 isForPrimary:(BOOL)a4;
- (void)dealloc;
- (void)deleteXlChartDataSeriesCollection;
- (void)setChart:(id)a3;
- (void)xlChartDataSeriesAtIndex:(int)a3;
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

- (void)setChart:(id)a3
{
  v5 = a3;
  mChart = self->mChart;
  p_mChart = &self->mChart;
  if (mChart != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mChart, a3);
    v5 = v8;
  }
}

- (void)xlChartDataSeriesAtIndex:(int)a3
{
  if (self->mXlCurrentSeriesIndex < 0 || !CFArrayGetCount(self->mXlChartDataSeriesCollection))
  {
    return 0;
  }

  mXlChartDataSeriesCollection = self->mXlChartDataSeriesCollection;

  return CFArrayGetValueAtIndex(mXlChartDataSeriesCollection, a3);
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

- (unsigned)chartGroupIndexForType:(int)a3 isForPrimary:(BOOL)a4
{
  if (a3 == 3 && a4)
  {
    return 0;
  }

  v7 = [(CHBState *)self hasPrimaryMixedArea];
  if (a3 != 3 || a4)
  {
    v8 = [(CHBState *)self hasSecondaryMixedArea];
    if (v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v8)
    {
      v7 = v9;
    }

    if (a3 != 2 || !a4)
    {
      v7 += [(CHBState *)self hasPrimaryMixedColumn];
      if (a3 != 2 || a4)
      {
        v7 += [(CHBState *)self hasSecondaryMixedColumn];
        if (a3 != 1 || !a4)
        {
          v7 += [(CHBState *)self hasPrimaryMixedLine];
        }
      }
    }
  }

  return v7;
}

@end