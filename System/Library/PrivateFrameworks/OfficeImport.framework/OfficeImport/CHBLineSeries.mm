@interface CHBLineSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBLineSeries

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDLineSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDLineSeries *)v4 initWithChart:chart];

  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  v8 = xlCurrentDefaultSeriesFormat;
  if (xlCurrentDefaultSeriesFormat && (v9 = xlCurrentDefaultSeriesFormat, *(xlCurrentDefaultSeriesFormat + 8)) || (v9 = *([stateCopy xlCurrentPlot] + 24), v8))
  {
    [(CHDLineSeries *)v6 setSmooth:*(v8 + 88)];
  }

  v10 = [CHBMarker readFrom:v9 state:stateCopy];
  [(CHDLineSeries *)v6 setMarker:v10];

  return v6;
}

@end