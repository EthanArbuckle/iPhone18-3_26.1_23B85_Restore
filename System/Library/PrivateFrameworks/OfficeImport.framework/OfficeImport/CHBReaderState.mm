@interface CHBReaderState
- (CHBReaderState)initWithEBReaderSheetState:(id)state;
- (OADColorScheme)colorScheme;
- (const)defaultFormatForXlSeries:(const void *)series;
- (const)xlCurrentDefaultSeriesFormat;
- (void)readAndCacheXlChartDataSeries;
- (void)setChart:(id)chart;
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
  workbook = [self->mEBReaderSheetState workbook];
  theme = [workbook theme];
  baseStyles = [theme baseStyles];
  colorScheme = [baseStyles colorScheme];

  return colorScheme;
}

- (CHBReaderState)initWithEBReaderSheetState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = CHBReaderState;
  v6 = [(CHBState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mEBReaderSheetState, state);
    v7->mXlReader = [stateCopy xlReader];
    v7->mXlCurrentPlot = 0;
  }

  return v7;
}

- (void)setChart:(id)chart
{
  chartCopy = chart;
  v7.receiver = self;
  v7.super_class = CHBReaderState;
  [(CHBState *)&v7 setChart:chartCopy];
  v5 = [CHAutoStyling autoStylingWithChart:chartCopy drawingTheme:0];
  mAutoStyling = self->mAutoStyling;
  self->mAutoStyling = v5;
}

- (const)defaultFormatForXlSeries:(const void *)series
{
  if (!series || ((*(series + 8) - *(series + 6)) & 0x7FFF8) == 0)
  {
    return 0;
  }

  result = XlChartDataSeries::getDefaultFormat(series, 0);
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