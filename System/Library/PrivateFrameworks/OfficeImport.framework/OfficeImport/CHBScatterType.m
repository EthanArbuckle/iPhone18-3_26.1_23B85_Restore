@interface CHBScatterType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBScatterType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDScatterType alloc];
  v5 = [v3 chart];
  v6 = [(CHDChartType *)v4 initWithChart:v5];

  return v6;
}

@end