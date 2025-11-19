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
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v4 = [a1 energyColors];
    }

    else if (a3 == 2)
    {
      v4 = [a1 elapsedTimeColors];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [a1 distanceColors];
    }
  }

  else
  {
    v4 = [a1 noMetricColors];
  }

  return v4;
}

+ (id)metricColorsForMetricType:()Fitness
{
  switch(a3)
  {
    case 1:
      v3 = [a1 distanceColors];
      break;
    case 2:
    case 7:
      v3 = [a1 energyColors];
      break;
    case 3:
      v3 = [a1 elapsedTimeColors];
      break;
    case 4:
    case 8:
    case 14:
      v3 = [a1 paceColors];
      break;
    case 5:
      v3 = [a1 heartRateColors];
      break;
    case 6:
      v3 = [a1 clockColors];
      break;
    case 9:
      v3 = [a1 lapsColors];
      break;
    case 10:
    case 17:
      v3 = [a1 elevationColors];
      break;
    case 11:
    case 12:
      v3 = [a1 powerColors];
      break;
    case 13:
      v3 = [a1 flightsClimbedColors];
      break;
    case 15:
    case 16:
      v3 = [a1 cadenceColors];
      break;
    case 21:
    case 34:
      v3 = [a1 splitsColors];
      break;
    default:
      v3 = [a1 keyColors];
      break;
  }

  return v3;
}

+ (id)lapsColors
{
  v1 = objc_alloc_init(a1);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientLightColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setNonGradientTextColor:v4];

  v5 = [v1 nonGradientTextColor];
  v6 = [v5 colorWithAlphaComponent:0.300000012];
  [v1 setAdjustmentButtonBackgroundColor:v6];

  v7 = [v1 adjustmentButtonBackgroundColor];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
  v9 = [v8 _colorBlendedWithColor:v7];

  [v1 setLightenedNonGradientColor:v9];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setButtonTextColor:v10];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  [v1 setButtonDisabledTextColor:v11];

  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:v12];

  [v1 setWorkoutRingColorIdentifier:@"lapsWorkout"];

  return v1;
}

+ (id)lapColors
{
  v1 = objc_alloc_init(a1);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setGradientLightColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.635294118 green:0.545098039 blue:1.0 alpha:1.0];
  [v1 setAdjustmentButtonBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:v6];

  v7 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonTextColor:v7];

  v8 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonDisabledTextColor:v8];

  return v1;
}

+ (id)elevationColors
{
  v1 = objc_alloc_init(a1);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setGradientLightColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.505882353 green:1.0 blue:0.368627451 alpha:1.0];
  [v1 setAdjustmentButtonBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:v6];

  v7 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonTextColor:v7];

  v8 = [MEMORY[0x1E69DC888] blackColor];
  [v1 setButtonDisabledTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] colorWithRed:0.592156863 green:1.0 blue:0.478431373 alpha:1.0];
  [v1 setHighContrastTextColor:v9];

  v10 = [v1 nonGradientTextColor];
  v11 = [v1 highContrastTextColor];
  v12 = FIUIColorForCurrentContrastMode(v10, v11);
  [v1 setTextDisplayColor:v12];

  return v1;
}

+ (id)deepBreathingColors
{
  v1 = objc_alloc_init(a1);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.192156863 green:0.639215686 blue:0.701960784 alpha:1.0];
  [v1 setGradientLightColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.352941176 green:0.956862745 blue:0.705882353 alpha:1.0];
  [v1 setGradientDarkColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.517647059 green:0.956862745 blue:0.925490196 alpha:1.0];
  [v1 setNonGradientTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setAdjustmentButtonBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v1 setValueDisplayColor:v6];

  return v1;
}

+ (id)splitsColors
{
  v1 = objc_alloc_init(a1);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.466666667 blue:0.533333333 alpha:1.0];
  [v1 setNonGradientTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.466666667 blue:0.533333333 alpha:1.0];
  [v1 setValueDisplayColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.639215686 blue:0.68627451 alpha:1.0];
  [v1 setHighContrastTextColor:v4];

  v5 = [v1 nonGradientTextColor];
  v6 = [v1 highContrastTextColor];
  v7 = FIUIColorForCurrentContrastMode(v5, v6);
  [v1 setTextDisplayColor:v7];

  return v1;
}

+ (id)metricColorsForGoal:()Fitness
{
  v4 = a3;
  if ([v4 goalTypeIdentifier] == 2 && (objc_msgSend(v4, "requiredDistance"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [a1 paceColors];
  }

  else
  {
    v6 = [a1 metricColorsForGoalTypeIdentifier:{objc_msgSend(v4, "goalTypeIdentifier")}];
  }

  v7 = v6;

  return v7;
}

@end