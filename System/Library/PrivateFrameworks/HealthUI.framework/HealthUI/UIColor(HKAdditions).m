@interface UIColor(HKAdditions)
+ (id)_accessibilityColorView;
+ (id)_accessibilityHigherContrastTintColorForColorIfNeeded:()HKAdditions;
+ (id)hk_activityCardGrayColor;
+ (id)hk_activityExerciseGoalLineColor;
+ (id)hk_activityExerciseGoalMetGradientBottomColor;
+ (id)hk_activityExerciseGoalMetGradientTopColor;
+ (id)hk_activityExerciseGoalMissedGradientBottomColor;
+ (id)hk_activityExerciseGoalMissedGradientTopColor;
+ (id)hk_activityKeyColor;
+ (id)hk_activityLegendLabelColor;
+ (id)hk_activityMoveGoalLineColor;
+ (id)hk_activityMoveGoalMetGradientBottomColor;
+ (id)hk_activityMoveGoalMetGradientTopColor;
+ (id)hk_activityMoveGoalMetNonGradientColor;
+ (id)hk_activityMoveGoalMissedGradientBottomColor;
+ (id)hk_activityMoveGoalMissedGradientTopColor;
+ (id)hk_activityMoveGoalMissedNonGradientColor;
+ (id)hk_activityPausedColor;
+ (id)hk_activitySeparatorLollipopColor;
+ (id)hk_activityStandGoalLineColor;
+ (id)hk_activityStandGoalMetGradientBottomColor;
+ (id)hk_activityStandGoalMetGradientTopColor;
+ (id)hk_activityStandGoalMissedGradientBottomColor;
+ (id)hk_activityStandGoalMissedGradientTopColor;
+ (id)hk_alertHeaderBackgroundColor;
+ (id)hk_allergiesClinicalKeyColor;
+ (id)hk_appErrorColor;
+ (id)hk_appInteractionDisabledColor;
+ (id)hk_appKeyColor;
+ (id)hk_chartInfoButtonPrimaryColor;
+ (id)hk_chartInfoButtonQuaternaryColor;
+ (id)hk_chartOverlayPillAltColor;
+ (id)hk_chartOverlayPillDarkColor;
+ (id)hk_chartOverlayPillLightColor;
+ (id)hk_chartPointLabelBackgroundColor;
+ (id)hk_clinicalNotesClinicalKeyColor;
+ (id)hk_clinicalRecordShowMoreBackgroundColor;
+ (id)hk_colorNamed:()HKAdditions inBundle:compatibleWithTraitCollection:;
+ (id)hk_conditionsClinicalKeyColor;
+ (id)hk_electrocardiogramCardHeaderColor;
+ (id)hk_electrocardiogramCardOnboardingBackgroundColor;
+ (id)hk_electrocardiogramCardOnboardingHeaderColor;
+ (id)hk_electrocardiogramChartBorderColor;
+ (id)hk_electrocardiogramChartMediumGridlineColor;
+ (id)hk_hearingHealthAudioExposureColorForClassification:()HKAdditions;
+ (id)hk_hearingHealthAudioExposureLoudFill;
+ (id)hk_hearingHealthAudioExposureOkFill;
+ (id)hk_hearingHealthAudiogramAverageLineColor;
+ (id)hk_hearingHealthAudiogramDisabledLineColor;
+ (id)hk_hearingHealthAudiogramDisabledPointMarkerColor;
+ (id)hk_hearingHealthAudiogramLeftEarAnnotationColor;
+ (id)hk_hearingHealthAudiogramLeftEarDeemphasizedColor;
+ (id)hk_hearingHealthAudiogramLeftEarLineColor;
+ (id)hk_hearingHealthAudiogramLeftEarPointMarkerColor;
+ (id)hk_hearingHealthAudiogramRightEarAnnotationColor;
+ (id)hk_hearingHealthAudiogramRightEarDeemphasizedColor;
+ (id)hk_hearingHealthAudiogramRightEarLineColor;
+ (id)hk_hearingHealthAudiogramRightEarPointMarkerColor;
+ (id)hk_immunizationsClinicalKeyColor;
+ (id)hk_labResultsClinicalKeyColor;
+ (id)hk_lightGrayTextColor;
+ (id)hk_medicationDoseEventSkippedColor;
+ (id)hk_otherSecondaryColor;
+ (id)hk_pregnancyKeyColor;
+ (id)hk_proceduresClinicalKeyColor;
+ (id)hk_reproductiveHealthStartOfCycleColor;
+ (id)hk_sleepAsleepDeepColor;
+ (id)hk_sleepAwakeColor;
+ (id)hk_sleepColorForSleepAnalysis:()HKAdditions;
+ (id)hk_sleepInBedColor;
+ (id)hk_sleepInactiveColorForSleepAnalysis:()HKAdditions;
+ (id)hk_sleepPrimaryTextColorForSleepAnalysis:()HKAdditions;
+ (id)hk_unknownCategoryClinicalKeyColor;
+ (id)hk_vitalsClinicalKeyColor;
+ (id)hk_workoutKeyColor;
+ (uint64_t)hk_randomColor;
- (id)_colorWithSaturationAdjustedByPercentage:()HKAdditions;
@end

@implementation UIColor(HKAdditions)

+ (id)hk_activityKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"activity_category_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_appKeyColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkBlueColor];
  }

  else
  {
    [a1 hk_appTintColor];
  }
  v2 = ;

  return v2;
}

+ (id)hk_appErrorColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }
  v0 = ;

  return v0;
}

+ (id)hk_appInteractionDisabledColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkMidGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemMidGrayColor];
  }
  v0 = ;

  return v0;
}

+ (id)hk_alertHeaderBackgroundColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.870588243 blue:0.0 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.894117653 blue:0.172549024 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_medicationDoseEventSkippedColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.678431392 green:0.870588243 blue:0.960784316 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.196078435 green:0.411764711 blue:0.501960814 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_reproductiveHealthStartOfCycleColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [a1 hk_reproductiveHealthKeyColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.600000024 green:0.796078444 blue:1.0 alpha:1.0];
  }
  v2 = ;

  return v2;
}

+ (id)hk_pregnancyKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"pregnancy_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_sleepAwakeColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"sleep_awake" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_sleepInBedColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"sleep_in_bed_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_sleepAsleepDeepColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"sleep_deep_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_sleepColorForSleepAnalysis:()HKAdditions
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v3 = [a1 hk_sleepAsleepCoreColor];
        break;
      case 4:
        v3 = [a1 hk_sleepAsleepDeepColor];
        break;
      case 5:
        v3 = [a1 hk_sleepAsleepREMColor];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v3 = [a1 hk_sleepAsleepColor];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v3 = [a1 hk_sleepAwakeColor];
    }
  }

  else
  {
    v3 = [a1 hk_sleepInBedColor];
  }

  a2 = v3;
LABEL_15:

  return a2;
}

+ (id)hk_sleepInactiveColorForSleepAnalysis:()HKAdditions
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v3 = [a1 hk_sleepInactiveAsleepCoreColor];
        break;
      case 4:
        v3 = [a1 hk_sleepInactiveAsleepDeepColor];
        break;
      case 5:
        v3 = [a1 hk_sleepInactiveAsleepREMColor];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v3 = [a1 hk_sleepInactiveAsleepColor];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v3 = [a1 hk_sleepInactiveAwakeColor];
    }
  }

  else
  {
    v3 = [a1 hk_sleepInactiveInBedColor];
  }

  a2 = v3;
LABEL_15:

  return a2;
}

+ (id)hk_sleepPrimaryTextColorForSleepAnalysis:()HKAdditions
{
  if (a3 > 5)
  {
  }

  else
  {
    if (((1 << a3) & 5) != 0 || ((1 << a3) & 0x18) == 0)
    {
      a1 = [a1 hk_chartOverlayPillDarkColor];
    }

    else
    {
      a1 = [a1 hk_chartOverlayPillLightColor];
    }
  }

  return a1;
}

+ (id)hk_otherSecondaryColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"other_secondary_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_workoutKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"activity_category_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_chartInfoButtonPrimaryColor
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = [MEMORY[0x1E69DC888] whiteColor];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_chartInfoButtonQuaternaryColor
{
  v0 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v1 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_chartPointLabelBackgroundColor
{
  v0 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.7];

  return v1;
}

+ (id)hk_chartOverlayPillLightColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"chart_overlay_pill_light_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_chartOverlayPillDarkColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"chart_overlay_pill_dark_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_chartOverlayPillAltColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"chart_overlay_pill_alt_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_activityCardGrayColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemLightGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v0 = ;

  return v0;
}

+ (id)hk_activityMoveGoalLineColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.89 green:0.01 blue:0.1 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.980392158 green:0.0666666701 blue:0.309803933 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityMoveGoalMetGradientTopColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.988 green:0.156 blue:0.457 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.97647059 green:0.219607845 blue:0.521568656 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityMoveGoalMetGradientBottomColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.879 green:0.0 blue:0.082 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.980392158 green:0.0666666701 blue:0.309803933 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityMoveGoalMetNonGradientColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.980392158 green:0.0666666701 blue:0.309803933 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.980392158 green:0.0666666701 blue:0.309803933 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityMoveGoalMissedGradientTopColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.996 green:0.747 blue:0.837 alpha:1.0];
  v3 = [a1 hk_activityMoveGoalMetGradientTopColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityMoveGoalMissedGradientBottomColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.964 green:0.7 blue:0.725 alpha:1.0];
  v3 = [a1 hk_activityMoveGoalMetGradientBottomColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityMoveGoalMissedNonGradientColor
{
  v1 = [a1 hk_activityMoveGoalMetNonGradientColor];
  v2 = [v1 colorWithAlphaComponent:0.3];

  return v2;
}

+ (id)hk_activityExerciseGoalLineColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.13 green:0.88 blue:0.0 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.650980413 green:1.0 blue:0.0 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityExerciseGoalMetGradientTopColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.691 green:0.996 blue:0.0 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.847058833 green:1.0 blue:0.0 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityExerciseGoalMetGradientBottomColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.219 green:0.859 blue:0.0 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.600000024 green:1.0 blue:0.0 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityExerciseGoalMissedGradientTopColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.876 green:0.998 blue:0.6 alpha:1.0];
  v3 = [a1 hk_activityExerciseGoalMetGradientTopColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityExerciseGoalMissedGradientBottomColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.6876 green:0.944 blue:0.6 alpha:1.0];
  v3 = [a1 hk_activityExerciseGoalMetGradientBottomColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityStandGoalLineColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.08 green:0.73 blue:0.87 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:1.0 blue:0.964705884 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityStandGoalMetGradientTopColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.977 blue:0.813 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:1.0 blue:0.65882355 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityStandGoalMetGradientBottomColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.727 blue:0.871 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.847058833 blue:1.0 alpha:1.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activityStandGoalMissedGradientTopColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.991 blue:0.925 alpha:1.0];
  v3 = [a1 hk_activityStandGoalMetGradientTopColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityStandGoalMissedGradientBottomColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.891 blue:0.948 alpha:1.0];
  v3 = [a1 hk_activityStandGoalMetGradientBottomColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = HKUIDynamicColorWithColors(v2, v4);

  return v5;
}

+ (id)hk_activityPausedColor
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  v2 = HKUIDynamicColorWithColors(v0, v1);

  return v2;
}

+ (id)hk_activitySeparatorLollipopColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = 0.337254912;
    v1 = 0.345098048;
  }

  else
  {
    v0 = 0.227450982;
    v1 = 0.235294119;
  }

  v2 = [MEMORY[0x1E69DC888] colorWithRed:v0 green:v0 blue:v1 alpha:1.0];

  return v2;
}

+ (id)hk_activityLegendLabelColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.56 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v0 = ;

  return v0;
}

+ (id)hk_electrocardiogramCardHeaderColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"card_header_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_electrocardiogramCardOnboardingHeaderColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 colorNamed:@"card_onboarding_header_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_electrocardiogramCardOnboardingBackgroundColor
{
  v0 = [objc_opt_class() hk_electrocardiogramCardOnboardingHeaderColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)hk_electrocardiogramChartMediumGridlineColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = [MEMORY[0x1E69DC888] systemDarkMidGrayColor];
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] systemGrayColor];
    v0 = [v1 colorWithAlphaComponent:0.3];
  }

  return v0;
}

+ (id)hk_electrocardiogramChartBorderColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] systemGrayColor];
    v0 = [v1 colorWithAlphaComponent:0.6];
  }

  return v0;
}

+ (id)hk_hearingHealthAudioExposureOkFill
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.00784313772 green:0.866666675 blue:0.31764707 alpha:1.0];
  v3 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v2];

  return v3;
}

+ (id)hk_hearingHealthAudioExposureLoudFill
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.792156875 blue:0.0 alpha:1.0];
  v3 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v2];

  return v3;
}

+ (id)hk_hearingHealthAudioExposureColorForClassification:()HKAdditions
{
  if (a3 == 2)
  {
    v3 = [a1 hk_hearingHealthAudioExposureLoudFill];
  }

  else if (a3 == 1)
  {
    v3 = [a1 hk_hearingHealthAudioExposureOkFill];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)hk_hearingHealthAudiogramLeftEarLineColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.498039216 green:0.737254918 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.360784322 blue:0.749019623 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] systemBlueColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramLeftEarPointMarkerColor
{
  v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v2];

  return v3;
}

+ (id)hk_hearingHealthAudiogramLeftEarAnnotationColor
{
  v1 = [a1 hk_hearingHealthAudiogramLeftEarPointMarkerColor];
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 yodel];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];

    v1 = v5;
  }

  return v1;
}

+ (id)hk_hearingHealthAudiogramLeftEarDeemphasizedColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.749019623 green:0.866666675 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.192156866 blue:0.400000006 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramRightEarLineColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.749019623 green:0.866666675 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.192156866 blue:0.400000006 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] systemPinkColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramRightEarPointMarkerColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.498039216 green:0.737254918 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.286274523 blue:0.600000024 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] systemPinkColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramRightEarAnnotationColor
{
  v1 = [a1 hk_hearingHealthAudiogramRightEarPointMarkerColor];
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 yodel];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];

    v1 = v5;
  }

  return v1;
}

+ (id)hk_hearingHealthAudiogramRightEarDeemphasizedColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.749019623 green:0.866666675 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.192156866 blue:0.400000006 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramAverageLineColor
{
  v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v2];

  return v3;
}

+ (id)hk_hearingHealthAudiogramDisabledLineColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.909803927 green:0.909803927 blue:0.917647064 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.20784314 green:0.20784314 blue:0.219607845 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 yodel];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v4 = v8;
  }

  v9 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v9;
}

+ (id)hk_hearingHealthAudiogramDisabledPointMarkerColor
{
  v2 = [MEMORY[0x1E69DC888] systemLightMidGrayColor];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.278431386 green:0.278431386 blue:0.290196091 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  v5 = [a1 _accessibilityHigherContrastTintColorForColorIfNeeded:v4];

  return v5;
}

+ (id)hk_clinicalRecordShowMoreBackgroundColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"clinical_record_show_more_background_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_allergiesClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"allergies_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_clinicalNotesClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"clinical_notes_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_conditionsClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"conditions_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_immunizationsClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"immunizations_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_labResultsClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"lab_results_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_proceduresClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"procedures_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_vitalsClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"vitals_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_unknownCategoryClinicalKeyColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 hk_colorNamed:@"unknown_category_clinical_key_color" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_lightGrayTextColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.462745098 green:0.466666667 blue:0.462745098 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] lightGrayColor];
  }
  v0 = ;

  return v0;
}

+ (id)hk_colorNamed:()HKAdditions inBundle:compatibleWithTraitCollection:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (_UIApplicationIsExtension())
  {
    [MEMORY[0x1E69DC888] hk_appTintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorNamed:v7 inBundle:v8 compatibleWithTraitCollection:v9];
  }
  v10 = ;

  return v10;
}

+ (uint64_t)hk_randomColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = random() / 2147483650.0;

  return [v0 colorWithHue:v1 saturation:1.0 brightness:0.9 alpha:1.0];
}

+ (id)_accessibilityColorView
{
  if (_accessibilityColorView_onceToken != -1)
  {
    +[UIColor(HKAdditions) _accessibilityColorView];
  }

  v1 = _accessibilityColorView_accessibilityColorView;

  return v1;
}

+ (id)_accessibilityHigherContrastTintColorForColorIfNeeded:()HKAdditions
{
  v4 = a3;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v5 = [a1 _accessibilityColorView];
    v6 = [v5 _accessibilityHigherContrastTintColorForColor:v4];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (id)_colorWithSaturationAdjustedByPercentage:()HKAdditions
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if ([a1 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7])
  {
    v4 = 1.0;
    if (v9 + a2 <= 1.0)
    {
      v4 = v9 + a2;
    }

    v5 = [MEMORY[0x1E69DC888] colorWithHue:v10 saturation:v4 brightness:v8 alpha:v7];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

@end