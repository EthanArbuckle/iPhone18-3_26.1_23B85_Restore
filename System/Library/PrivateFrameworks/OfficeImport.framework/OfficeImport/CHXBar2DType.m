@interface CHXBar2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
+ (void)readFrom:(_xmlNode *)a3 chartType:(id)a4 state:(id)a5;
@end

@implementation CHXBar2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 chart];
  v8 = [(CHDChartType *)CHDBar2DType chartTypeWithChart:v7];

  [a1 readFrom:a3 chartType:v8 state:v6];

  return v8;
}

+ (void)readFrom:(_xmlNode *)a3 chartType:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  [v7 setVaryColors:0];
  v9 = [v8 drawingState];
  v10 = [v9 OAXChartNamespace];
  v11 = OCXFindChild(a3, v10, "gapWidth");

  if (v11)
  {
    [v7 setGapWidth:{CXRequiredUnsignedLongAttribute(v11, CXNoNamespace, "val")}];
  }

  v12 = [v8 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = OCXFindChild(a3, v13, "overlap");

  if (v14)
  {
    [v7 setOverlap:{-CXRequiredLongAttribute(v14, CXNoNamespace, "val")}];
  }

  v15 = [v8 drawingState];
  v16 = [v15 OAXChartNamespace];
  v17 = OCXFindChild(a3, v16, "barDir");

  if (v17)
  {
    v23 = 0;
    v17 = CXOptionalStringAttribute(v17, CXNoNamespace, "val", &v23);
    v18 = v23;
    v19 = v18;
    if (v17)
    {
      v17 = [v18 isEqualToString:@"col"];
    }
  }

  [v7 setColumn:v17];
  v20 = [v8 drawingState];
  v21 = [v20 OAXChartNamespace];
  v22 = OCXFindChild(a3, v21, "grouping");

  [v7 setGrouping:{+[CHXChartType chdGroupingFromXmlGroupingElement:](CHXChartType, "chdGroupingFromXmlGroupingElement:", v22)}];
}

@end