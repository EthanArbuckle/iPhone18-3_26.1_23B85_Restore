@interface CHXBar3DSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXBar3DSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDSeries *)CHDBar3DSeries seriesWithChart:v6];

  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "shape");

  if (v10)
  {
    [v7 setShapeType:{+[CHXChartType chdShapeTypeFromXmlShapeTypeElement:](CHXChartType, "chdShapeTypeFromXmlShapeTypeElement:", v10)}];
  }

  else
  {
    v11 = [v5 currentChartType];
    [v7 setShapeType:{objc_msgSend(v11, "shapeType")}];
  }

  return v7;
}

@end