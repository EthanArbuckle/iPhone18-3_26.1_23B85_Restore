@interface CHXLine2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXLine2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDLine2DType chartTypeWithChart:chart];

  [CHXLineType readFrom:element chartType:v7 state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "marker");

  if (v10)
  {
    [v7 setShowMarker:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
  }

  return v7;
}

@end