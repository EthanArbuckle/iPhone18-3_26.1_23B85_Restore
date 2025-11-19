@interface CSAdaptiveFontMetricsProvider
+ (BOOL)providesMetricsForFont:(id)a3;
+ (double)defaultWeightForBaseFont:(id)a3;
@end

@implementation CSAdaptiveFontMetricsProvider

+ (BOOL)providesMetricsForFont:(id)a3
{
  v3 = [CSAdaptiveFontProvider providerForBaseFont:a3];
  v4 = v3 != 0;

  return v4;
}

+ (double)defaultWeightForBaseFont:(id)a3
{
  v3 = [CSAdaptiveFontProvider providerForBaseFont:a3];
  [v3 defaultWeight];
  v5 = v4;

  return v5;
}

@end