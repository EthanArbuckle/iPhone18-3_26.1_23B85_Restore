@interface CHXUnsupportedSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXUnsupportedSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = [a4 chart];
  v5 = [(CHDSeries *)CHDUnsupportedSeries seriesWithChart:v4];

  return v5;
}

@end