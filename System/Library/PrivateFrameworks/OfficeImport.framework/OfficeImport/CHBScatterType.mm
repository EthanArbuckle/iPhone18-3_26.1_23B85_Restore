@interface CHBScatterType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBScatterType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDScatterType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDChartType *)v4 initWithChart:chart];

  return v6;
}

@end