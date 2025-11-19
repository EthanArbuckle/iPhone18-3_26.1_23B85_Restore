@interface CHXLineType
+ (void)readFrom:(_xmlNode *)a3 chartType:(id)a4 state:(id)a5;
@end

@implementation CHXLineType

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