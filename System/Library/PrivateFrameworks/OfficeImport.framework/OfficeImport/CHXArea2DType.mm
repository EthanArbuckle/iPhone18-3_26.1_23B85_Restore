@interface CHXArea2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
+ (void)readFrom:(_xmlNode *)a3 chartType:(id)a4 state:(id)a5;
@end

@implementation CHXArea2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 chart];
  v8 = [(CHDChartType *)CHDArea2DType chartTypeWithChart:v7];

  [a1 readFrom:a3 chartType:v8 state:v6];

  return v8;
}

+ (void)readFrom:(_xmlNode *)a3 chartType:(id)a4 state:(id)a5
{
  v11 = a4;
  v7 = a5;
  [v11 setVaryColors:0];
  v8 = [v7 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "grouping");

  [v11 setGrouping:{+[CHXChartType chdGroupingFromXmlGroupingElement:](CHXChartType, "chdGroupingFromXmlGroupingElement:", v10)}];
}

@end