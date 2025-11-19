@interface UIImage(HeartRhythmUI)
+ (id)hrui_ECGAppIconImage;
+ (id)hrui_ECGOnboardingWristImage;
+ (id)hrui_atrialFibrillationDetectionIllustrationImage;
+ (id)hrui_cannotDoImage;
+ (id)hrui_heartRateIconImage;
+ (id)hrui_screenWidthImageWithName:()HeartRhythmUI;
+ (id)hrui_warningImage;
+ (id)hrui_watchIconImage;
+ (id)hrui_waveformImage;
@end

@implementation UIImage(HeartRhythmUI)

+ (id)hrui_screenWidthImageWithName:()HeartRhythmUI
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = HRHeartRhythmUIFrameworkBundle();
  v6 = [v3 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)hrui_ECGOnboardingWristImage
{
  v1 = MEMORY[0x277D755B8];
  v2 = [a1 _watchImageName];
  v3 = [v1 hrui_screenWidthImageWithName:v2];

  return v3;
}

+ (id)hrui_cannotDoImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"cannot_do" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_warningImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"warning" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_ECGAppIconImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"ECG_app_icon_new" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_waveformImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"waveform" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_atrialFibrillationDetectionIllustrationImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"afib_detection_illustration" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_heartRateIconImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"heart_rate_icon" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hrui_watchIconImage
{
  v0 = MEMORY[0x277D755B8];
  v1 = HRHeartRhythmUIFrameworkBundle();
  v2 = [v0 imageNamed:@"watch_icon" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

@end