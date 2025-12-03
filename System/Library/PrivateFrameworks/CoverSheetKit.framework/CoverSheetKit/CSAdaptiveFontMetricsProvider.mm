@interface CSAdaptiveFontMetricsProvider
+ (BOOL)providesMetricsForFont:(id)font;
+ (double)defaultWeightForBaseFont:(id)font;
@end

@implementation CSAdaptiveFontMetricsProvider

+ (BOOL)providesMetricsForFont:(id)font
{
  v3 = [CSAdaptiveFontProvider providerForBaseFont:font];
  v4 = v3 != 0;

  return v4;
}

+ (double)defaultWeightForBaseFont:(id)font
{
  v3 = [CSAdaptiveFontProvider providerForBaseFont:font];
  [v3 defaultWeight];
  v5 = v4;

  return v5;
}

@end