@interface CHXScatterSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXScatterSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDSeries *)CHDScatterSeries seriesWithChart:v6];

  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "marker");

  v11 = [CHXMarker chdMarkerFromXmlMarkerElement:v10 state:v5];
  [v7 setMarker:v11];
  v12 = [v5 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = OCXFindChild(a3, v13, "smooth");

  if (v14)
  {
    [v7 setSmooth:{CXRequiredBoolAttribute(v14, CXNoNamespace, "val")}];
  }

  return v7;
}

@end