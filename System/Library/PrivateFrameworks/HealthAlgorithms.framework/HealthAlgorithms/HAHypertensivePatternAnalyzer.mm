@interface HAHypertensivePatternAnalyzer
+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval;
@end

@implementation HAHypertensivePatternAnalyzer

+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval
{
  v4 = [HAHermitNotificationAlgorithms analyzeMeasurements:measurements forDateInterval:interval];
  v5 = v5;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

@end