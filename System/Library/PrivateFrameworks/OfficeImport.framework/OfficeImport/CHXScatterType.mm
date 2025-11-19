@interface CHXScatterType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXScatterType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = [a4 chart];
  v5 = [(CHDChartType *)CHDScatterType chartTypeWithChart:v4];

  [v5 setVaryColors:0];

  return v5;
}

@end