@interface CHXDoughnutType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXDoughnutType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDPie2DType chartTypeWithChart:chart];

  [v7 setDoughnutType:1];
  [CHXPie2DType readFrom:element chartType:v7 state:stateCopy];

  return v7;
}

@end