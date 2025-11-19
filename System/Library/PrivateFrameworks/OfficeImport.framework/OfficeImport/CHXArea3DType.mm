@interface CHXArea3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXArea3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDChartType *)CHDArea3DType chartTypeWithChart:v6];

  [CHXArea2DType readFrom:a3 chartType:v7 state:v5];
  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "gapDepth");

  if (v10)
  {
    [v7 setGapDepth:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  return v7;
}

@end