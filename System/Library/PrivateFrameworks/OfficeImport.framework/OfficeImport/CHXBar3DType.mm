@interface CHXBar3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXBar3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDBar3DType chartTypeWithChart:chart];

  [CHXBar2DType readFrom:element chartType:v7 state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "gapDepth");

  if (v10)
  {
    [v7 setGapDepth:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v13 = OCXFindChild(element, oAXChartNamespace2, "shape");

  [v7 setShapeType:{+[CHXChartType chdShapeTypeFromXmlShapeTypeElement:](CHXChartType, "chdShapeTypeFromXmlShapeTypeElement:", v13)}];

  return v7;
}

@end