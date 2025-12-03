@interface CHXOfPieType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXOfPieType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = [CHXPie2DType chdChartTypeFromXmlChartTypeElement:element state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = OCXFindChild(element, oAXChartNamespace, "ofPieType");

  if (v9 && (CXRequiredStringAttribute(v9, CXNoNamespace, "val"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:@"bar"], v10, (v11 & 1) != 0))
  {
    [v6 setBarOfPieType:1];
  }

  else
  {
    [v6 setPieOfPieType:1];
  }

  return v6;
}

@end