@interface CHBReaderState
- (CHBReaderState)initWithEBReaderSheetState:(id)a3;
- (OADColorScheme)colorScheme;
- (const)defaultFormatForXlSeries:(const void *)a3;
- (const)xlCurrentDefaultSeriesFormat;
- (void)readAndCacheXlChartDataSeries;
- (void)setChart:(id)a3;
@end

@implementation CHBReaderState

- (void)readAndCacheXlChartDataSeries
{
  if (self->mXlReader)
  {
    [(CHBState *)self deleteXlChartDataSeriesCollection];
    self->super.mXlChartDataSeriesCollection = CFArrayCreateMutable(0, 0, 0);
    SeriesCount = XlChartBinaryReader::getSeriesCount(self->mXlReader);
    self->super.mXlSeriesCount = SeriesCount;
    if (SeriesCount)
    {
      v4 = 0;
      do
      {
        value = 0;
        (*(*self->mXlReader + 736))(self->mXlReader, v4, &value, 1);
        CFArrayAppendValue(self->super.mXlChartDataSeriesCollection, value);
        ++v4;
      }

      while (v4 < self->super.mXlSeriesCount);
    }
  }
}

- (const)xlCurrentDefaultSeriesFormat
{
  v3 = [(CHBState *)self xlChartDataSeriesAtIndex:self->super.mXlCurrentSeriesIndex];

  return [(CHBReaderState *)self defaultFormatForXlSeries:v3];
}

- (OADColorScheme)colorScheme
{
  v2 = [self->mEBReaderSheetState workbook];
  v3 = [v2 theme];
  v4 = [v3 baseStyles];
  v5 = [v4 colorScheme];

  return v5;
}

- (CHBReaderState)initWithEBReaderSheetState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHBReaderState;
  v6 = [(CHBState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mEBReaderSheetState, a3);
    v7->mXlReader = [v5 xlReader];
    v7->mXlCurrentPlot = 0;
  }

  return v7;
}

- (void)setChart:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHBReaderState;
  [(CHBState *)&v7 setChart:v4];
  v5 = [CHAutoStyling autoStylingWithChart:v4 drawingTheme:0];
  mAutoStyling = self->mAutoStyling;
  self->mAutoStyling = v5;
}

- (const)defaultFormatForXlSeries:(const void *)a3
{
  if (!a3 || ((*(a3 + 8) - *(a3 + 6)) & 0x7FFF8) == 0)
  {
    return 0;
  }

  result = XlChartDataSeries::getDefaultFormat(a3, 0);
  if (result)
  {
    if (result->var9 >= 0)
    {
      return 0;
    }
  }

  return result;
}

@end