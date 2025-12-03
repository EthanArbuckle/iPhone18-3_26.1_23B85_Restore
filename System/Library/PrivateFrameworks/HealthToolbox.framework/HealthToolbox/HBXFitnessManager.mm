@interface HBXFitnessManager
+ (id)divingFitnessNonGradientTextColor;
+ (id)fitnessIconFor:(id)for;
+ (id)fitnessNonGradientTextColor;
@end

@implementation HBXFitnessManager

+ (id)fitnessIconFor:(id)for
{
  v3 = [MEMORY[0x277D0A810] activityTypeWithWorkout:for];
  v4 = FIUIStaticWorkoutIconImage();
  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

+ (id)fitnessNonGradientTextColor
{
  keyColors = [MEMORY[0x277CE8E80] keyColors];
  nonGradientTextColor = [keyColors nonGradientTextColor];

  return nonGradientTextColor;
}

+ (id)divingFitnessNonGradientTextColor
{
  diveColors = [MEMORY[0x277CE8E80] diveColors];
  nonGradientTextColor = [diveColors nonGradientTextColor];

  return nonGradientTextColor;
}

@end