@interface CHXBubbleType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXBubbleType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDBubbleType chartTypeWithChart:chart];

  [v7 setVaryColors:0];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "bubbleScale");

  if (v10)
  {
    [v7 setBubbleScale:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v13 = OCXFindChild(element, oAXChartNamespace2, "showNegBubbles");

  if (v13)
  {
    [v7 setShowNegBubbles:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v16 = OCXFindChild(element, oAXChartNamespace3, "sizeRepresents");

  if (v16)
  {
    v21 = 0;
    v17 = CXOptionalStringAttribute(v16, CXNoNamespace, "val", &v21);
    v18 = v21;
    v19 = v18;
    if (v17)
    {
      [v7 setSizeRepresentsRadius:{objc_msgSend(v18, "isEqualToString:", @"w"}];
    }
  }

  return v7;
}

@end