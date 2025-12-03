@interface CHBPieSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBPieSeries

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDPieSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDSeries *)v4 initWithChart:chart];

  v7 = *([stateCopy xlCurrentPlot] + 24);
  if (v7)
  {
    [(CHDPieSeries *)v6 setExplosion:*(v7 + 68)];
  }

  return v6;
}

@end