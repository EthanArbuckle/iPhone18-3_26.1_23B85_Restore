@interface CHXBar3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXBar3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDChartType *)CHDBar3DType chartTypeWithChart:v6];

  [CHXBar2DType readFrom:a3 chartType:v7 state:v5];
  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "gapDepth");

  if (v10)
  {
    [v7 setGapDepth:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  }

  v11 = [v5 drawingState];
  v12 = [v11 OAXChartNamespace];
  v13 = OCXFindChild(a3, v12, "shape");

  [v7 setShapeType:{+[CHXChartType chdShapeTypeFromXmlShapeTypeElement:](CHXChartType, "chdShapeTypeFromXmlShapeTypeElement:", v13)}];

  return v7;
}

@end