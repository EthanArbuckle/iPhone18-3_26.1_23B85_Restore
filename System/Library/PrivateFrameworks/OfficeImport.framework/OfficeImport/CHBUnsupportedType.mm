@interface CHBUnsupportedType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBUnsupportedType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 xlCurrentPlot];
  if (v5 && (*(*v5 + 16))(v5) - 6 < 3)
  {
    v4 = objc_opt_class();
  }

  v6 = [v3 chart];
  v7 = [v4 chartTypeWithChart:v6];

  return v7;
}

@end