@interface CHBScatterSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBScatterSeries

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDScatterSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDLineSeries *)v4 initWithChart:chart];

  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  v8 = xlCurrentDefaultSeriesFormat;
  if (xlCurrentDefaultSeriesFormat)
  {
    v9 = *(xlCurrentDefaultSeriesFormat + 88);
    if (*(xlCurrentDefaultSeriesFormat + 8))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v8 = *([stateCopy xlCurrentPlot] + 24);
  if (!(v9 & 1 | (v8 == 0)))
  {
    v9 = *(v8 + 88);
  }

LABEL_7:
  [(CHDLineSeries *)v6 setSmooth:v9 & 1];
  v10 = [CHBMarker readFrom:v8 state:stateCopy];
  [(CHDLineSeries *)v6 setMarker:v10];

  return v6;
}

@end