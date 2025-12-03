@interface CHXLineSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXLineSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDSeries *)CHDLineSeries seriesWithChart:chart];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "marker");

  v11 = [CHXMarker chdMarkerFromXmlMarkerElement:v10 state:stateCopy];
  [v7 setMarker:v11];
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v14 = OCXFindChild(element, oAXChartNamespace2, "smooth");

  if (v14)
  {
    [v7 setSmooth:{CXRequiredBoolAttribute(v14, CXNoNamespace, "val")}];
  }

  return v7;
}

@end