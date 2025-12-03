@interface CHBUnsupportedType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBUnsupportedType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = objc_opt_class();
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if (xlCurrentPlot && (*(*xlCurrentPlot + 16))(xlCurrentPlot) - 6 < 3)
  {
    v4 = objc_opt_class();
  }

  chart = [stateCopy chart];
  v7 = [v4 chartTypeWithChart:chart];

  return v7;
}

@end