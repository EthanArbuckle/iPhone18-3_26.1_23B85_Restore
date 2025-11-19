@interface CHBPieSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBPieSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDPieSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDSeries *)v4 initWithChart:v5];

  v7 = *([v3 xlCurrentPlot] + 24);
  if (v7)
  {
    [(CHDPieSeries *)v6 setExplosion:*(v7 + 68)];
  }

  return v6;
}

@end