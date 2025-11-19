@interface CHXOfPieType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXOfPieType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [CHXPie2DType chdChartTypeFromXmlChartTypeElement:a3 state:v5];
  v7 = [v5 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = OCXFindChild(a3, v8, "ofPieType");

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