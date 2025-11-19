@interface CHBScatterSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBScatterSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDScatterSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDLineSeries *)v4 initWithChart:v5];

  v7 = [v3 xlCurrentDefaultSeriesFormat];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 88);
    if (*(v7 + 8))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v8 = *([v3 xlCurrentPlot] + 24);
  if (!(v9 & 1 | (v8 == 0)))
  {
    v9 = *(v8 + 88);
  }

LABEL_7:
  [(CHDLineSeries *)v6 setSmooth:v9 & 1];
  v10 = [CHBMarker readFrom:v8 state:v3];
  [(CHDLineSeries *)v6 setMarker:v10];

  return v6;
}

@end