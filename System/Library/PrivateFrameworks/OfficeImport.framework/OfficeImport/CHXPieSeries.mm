@interface CHXPieSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXPieSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDSeries *)CHDPieSeries seriesWithChart:chart];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "explosion");

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