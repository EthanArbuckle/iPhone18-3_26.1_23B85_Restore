@interface CHBUnsupportedSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBUnsupportedSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = [a3 chart];
  v4 = [(CHDSeries *)CHDUnsupportedSeries seriesWithChart:v3];

  return v4;
}

@end