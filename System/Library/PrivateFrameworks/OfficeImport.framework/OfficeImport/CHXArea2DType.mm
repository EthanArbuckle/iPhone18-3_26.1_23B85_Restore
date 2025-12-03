@interface CHXArea2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state;
@end

@implementation CHXArea2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v8 = [(CHDChartType *)CHDArea2DType chartTypeWithChart:chart];

  [self readFrom:element chartType:v8 state:stateCopy];

  return v8;
}

+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state
{
  typeCopy = type;
  stateCopy = state;
  [typeCopy setVaryColors:0];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(from, oAXChartNamespace, "grouping");

  [typeCopy setGrouping:{+[CHXChartType chdGroupingFromXmlGroupingElement:](CHXChartType, "chdGroupingFromXmlGroupingElement:", v10)}];
}

@end