@interface CHXPieSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXPieSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDSeries *)CHDPieSeries seriesWithChart:v6];

  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "explosion");

  if (v10)
  {
    v11 = CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val");
  }

  else
  {
    v11 = 0;
  }

  [v7 setExplosion:v11];

  return v7;
}

@end