@interface CHBUnsupportedSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBUnsupportedSeries

+ (id)chdSeriesWithState:(id)state
{
  chart = [state chart];
  v4 = [(CHDSeries *)CHDUnsupportedSeries seriesWithChart:chart];

  return v4;
}

@end