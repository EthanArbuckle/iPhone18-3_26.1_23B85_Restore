@interface HAHypertensivePatternAnalyzer
+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)a3 forDateInterval:(id)a4;
@end

@implementation HAHypertensivePatternAnalyzer

+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)a3 forDateInterval:(id)a4
{
  v4 = [HAHermitNotificationAlgorithms analyzeMeasurements:a3 forDateInterval:a4];
  v5 = v5;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

@end