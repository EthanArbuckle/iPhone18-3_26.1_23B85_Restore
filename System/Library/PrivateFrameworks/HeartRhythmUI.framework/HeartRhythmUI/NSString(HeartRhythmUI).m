@interface NSString(HeartRhythmUI)
+ (id)hrui_atrialFibrillationVideoPath;
+ (id)hrui_explanationVideoPath;
+ (id)hrui_highOrLowHeartRateVideoPath;
+ (id)hrui_inconclusiveVideoPath;
+ (id)hrui_sinusRhythmVideoPath;
@end

@implementation NSString(HeartRhythmUI)

+ (id)hrui_explanationVideoPath
{
  v0 = HRHeartRhythmUIFrameworkBundle();
  v1 = [v0 pathForResource:@"Explanation_Loop_h264" ofType:@"mov"];

  return v1;
}

+ (id)hrui_sinusRhythmVideoPath
{
  v0 = HRHeartRhythmUIFrameworkBundle();
  v1 = [v0 pathForResource:@"Sinus_Rhythm_Result_Loop_h264" ofType:@"mov"];

  return v1;
}

+ (id)hrui_atrialFibrillationVideoPath
{
  v0 = HRHeartRhythmUIFrameworkBundle();
  v1 = [v0 pathForResource:@"Atrial_Fibrillation_Result_Loop_h264" ofType:@"mov"];

  return v1;
}

+ (id)hrui_highOrLowHeartRateVideoPath
{
  v0 = HRHeartRhythmUIFrameworkBundle();
  v1 = [v0 pathForResource:@"High_Low_Heart_Rate_Result_Loop_h264" ofType:@"mov"];

  return v1;
}

+ (id)hrui_inconclusiveVideoPath
{
  v0 = HRHeartRhythmUIFrameworkBundle();
  v1 = [v0 pathForResource:@"Inconclusive_Result_Loop_h264" ofType:@"mov"];

  return v1;
}

@end