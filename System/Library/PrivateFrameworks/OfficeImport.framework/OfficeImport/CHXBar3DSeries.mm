@interface CHXBar3DSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXBar3DSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDSeries *)CHDBar3DSeries seriesWithChart:chart];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "shape");

  if (v10)
  {
    [v7 setShapeType:{+[CHXChartType chdShapeTypeFromXmlShapeTypeElement:](CHXChartType, "chdShapeTypeFromXmlShapeTypeElement:", v10)}];
  }

  else
  {
    currentChartType = [stateCopy currentChartType];
    [v7 setShapeType:{objc_msgSend(currentChartType, "shapeType")}];
  }

  return v7;
}

@end