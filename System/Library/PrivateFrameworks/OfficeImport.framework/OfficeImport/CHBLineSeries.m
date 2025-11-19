@interface CHBLineSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBLineSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDLineSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDLineSeries *)v4 initWithChart:v5];

  v7 = [v3 xlCurrentDefaultSeriesFormat];
  v8 = v7;
  if (v7 && (v9 = v7, *(v7 + 8)) || (v9 = *([v3 xlCurrentPlot] + 24), v8))
  {
    [(CHDLineSeries *)v6 setSmooth:*(v8 + 88)];
  }

  v10 = [CHBMarker readFrom:v9 state:v3];
  [(CHDLineSeries *)v6 setMarker:v10];

  return v6;
}

@end