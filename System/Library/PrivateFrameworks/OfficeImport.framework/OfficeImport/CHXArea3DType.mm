@interface CHXArea3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXArea3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDArea3DType chartTypeWithChart:chart];

  [CHXArea2DType readFrom:element chartType:v7 state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "gapDepth");

  if (v10)
  {
    [v7 setGapDepth:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  return v7;
}

@end