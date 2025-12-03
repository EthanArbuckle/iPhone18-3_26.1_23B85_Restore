@interface CHXUnsupportedSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXUnsupportedSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  chart = [state chart];
  v5 = [(CHDSeries *)CHDUnsupportedSeries seriesWithChart:chart];

  return v5;
}

@end