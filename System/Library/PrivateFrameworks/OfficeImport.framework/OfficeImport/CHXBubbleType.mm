@interface CHXBubbleType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXBubbleType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDChartType *)CHDBubbleType chartTypeWithChart:v6];

  [v7 setVaryColors:0];
  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "bubbleScale");

  if (v10)
  {
    [v7 setBubbleScale:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  v11 = [v5 drawingState];
  v12 = [v11 OAXChartNamespace];
  v13 = OCXFindChild(a3, v12, "showNegBubbles");

  if (v13)
  {
    [v7 setShowNegBubbles:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  v14 = [v5 drawingState];
  v15 = [v14 OAXChartNamespace];
  v16 = OCXFindChild(a3, v15, "sizeRepresents");

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