@interface ARUIMetricColors(Fitness)
+ (id)deepBreathingColors;
+ (id)elevationColors;
+ (id)lapColors;
+ (id)lapsColors;
+ (id)metricColorsForGoal:()Fitness;
+ (id)metricColorsForGoalTypeIdentifier:()Fitness;
+ (id)metricColorsForMetricType:()Fitness;
+ (id)splitsColors;
@end

@implementation ARUIMetricColors(Fitness)

+ (id)metricColorsForGoalTypeIdentifier:()Fitness
{
  energyColors = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      energyColors = [self energyColors];
    }

    else if (a3 == 2)
    {
      energyColors = [self elapsedTimeColors];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      energyColors = [self distanceColors];
    }
  }

  else
  {
    energyColors = [self noMetricColors];
  }

  return energyColors;
}

+ (id)metricColorsForMetricType:()Fitness
{
  switch(a3)
  {
    case 1:
      distanceColors = [self distanceColors];
      break;
    case 2:
    case 7:
      distanceColors = [self energyColors];
      break;
    case 3:
      distanceColors = [self elapsedTimeColors];
      break;
    case 4:
    case 8:
    case 14:
      distanceColors = [self paceColors];
      break;
    case 5:
      distanceColors = [self heartRateColors];
      break;
    case 6:
      distanceColors = [self clockColors];
      break;
    case 9:
      distanceColors = [self lapsColors];
      break;
    case 10:
    case 17:
      distanceColors = [self elevationColors];
      break;
    case 11:
    case 12:
      distanceColors = [self powerColors];
      break;
    case 13:
      distanceColors = [self flightsClimbedColors];
      break;
    case 15:
    case 16:
      distanceColors = [self cadenceColors];
      break;
    case 21:
    case 34:
      distanceColors = [self splitsColors];
      break;
    default:
      distanceColors = [self keyColors];
      break;
  }

  return distanceColors;
}

+ (id)lapsColors
{
  v1 = objc_alloc_init(self);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientLightColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setNonGradientTextColor:v4];

  nonGradientTextColor = [v1 nonGradientTextColor];
  v6 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v1 setAdjustmentButtonBackgroundColor:v6];

  adjustmentButtonBackgroundColor = [v1 adjustmentButtonBackgroundColor];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
  v9 = [v8 _colorBlendedWithColor:adjustmentButtonBackgroundColor];

  [v1 setLightenedNonGradientColor:v9];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setButtonTextColor:whiteColor];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  [v1 setButtonDisabledTextColor:v11];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:whiteColor2];

  [v1 setWorkoutRingColorIdentifier:@"lapsWorkout"];

  return v1;
}

+ (id)lapColors
{
  v1 = objc_alloc_init(self);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientLightColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setAdjustmentButtonBackgroundColor:v5];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:whiteColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonTextColor:blackColor];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonDisabledTextColor:blackColor2];

  return v1;
}

+ (id)elevationColors
{
  v1 = objc_alloc_init(self);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setGradientLightColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setAdjustmentButtonBackgroundColor:v5];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:whiteColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonTextColor:blackColor];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonDisabledTextColor:blackColor2];

  v9 = [MEMORY[0x1E69DC888] colorWithRed:0.592156863 green:1.0 blue:0.478431373 alpha:1.0];
  [v1 setHighContrastTextColor:v9];

  nonGradientTextColor = [v1 nonGradientTextColor];
  highContrastTextColor = [v1 highContrastTextColor];
  v12 = FIUIColorForCurrentContrastMode(nonGradientTextColor, highContrastTextColor);
  [v1 setTextDisplayColor:v12];

  return v1;
}

+ (id)deepBreathingColors
{
  v1 = objc_alloc_init(self);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.192156863 green:0.639215686 blue:0.701960784 alpha:1.0];
  [v1 setGradientLightColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.352941176 green:0.956862745 blue:0.705882353 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.517647059 green:0.956862745 blue:0.925490196 alpha:1.0];
  [v1 setNonGradientTextColor:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setAdjustmentButtonBackgroundColor:whiteColor];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:whiteColor2];

  return v1;
}

+ (id)splitsColors
{
  v1 = objc_alloc_init(self);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.466666667 blue:0.533333333 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.466666667 blue:0.533333333 alpha:1.0];
  [v1 setValueDisplayColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.639215686 blue:0.68627451 alpha:1.0];
  [v1 setHighContrastTextColor:v4];

  nonGradientTextColor = [v1 nonGradientTextColor];
  highContrastTextColor = [v1 highContrastTextColor];
  v7 = FIUIColorForCurrentContrastMode(nonGradientTextColor, highContrastTextColor);
  [v1 setTextDisplayColor:v7];

  return v1;
}

+ (id)metricColorsForGoal:()Fitness
{
  v4 = a3;
  if ([v4 goalTypeIdentifier] == 2 && (objc_msgSend(v4, "requiredDistance"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    paceColors = [self paceColors];
  }

  else
  {
    paceColors = [self metricColorsForGoalTypeIdentifier:{objc_msgSend(v4, "goalTypeIdentifier")}];
  }

  v7 = paceColors;

  return v7;
}

@end