@interface CHXLine3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXLine3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDLine3DType chartTypeWithChart:chart];

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