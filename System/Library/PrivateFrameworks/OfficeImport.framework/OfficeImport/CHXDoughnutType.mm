@interface CHXDoughnutType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXDoughnutType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDChartType *)CHDPie2DType chartTypeWithChart:v6];

  [v7 setDoughnutType:1];
  [CHXPie2DType readFrom:a3 chartType:v7 state:v5];

  return v7;
}

@end