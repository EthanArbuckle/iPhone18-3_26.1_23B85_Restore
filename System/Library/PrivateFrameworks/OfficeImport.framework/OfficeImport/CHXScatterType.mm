@interface CHXScatterType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXScatterType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  chart = [state chart];
  v5 = [(CHDChartType *)CHDScatterType chartTypeWithChart:chart];

  [v5 setVaryColors:0];

  return v5;
}

@end