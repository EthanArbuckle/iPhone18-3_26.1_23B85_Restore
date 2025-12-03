@interface CHXLineType
+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state;
@end

@implementation CHXLineType

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