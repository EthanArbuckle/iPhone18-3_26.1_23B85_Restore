@interface UIColor(HKMenstrualCyclesUI)
+ (id)_hkmcui_colorWithAssetName:()HKMenstrualCyclesUI;
+ (id)hkmc_calendarTodayLabelColor;
+ (id)hkmc_cycleFactorsTimeIntervalBackgroundColor;
+ (id)hkmc_cycleHistoryFilterLabelColor;
+ (id)hkmc_cycleLogCellBackgroundColor;
+ (id)hkmc_doneButtonLoggingCarouselColor;
+ (id)hkmc_fertilityProjectionColor;
+ (id)hkmc_highContrastCycleFactorsTimeIntervalBackgroundColor;
+ (id)hkmc_highContrastMenstruationBackgroundColor;
+ (id)hkmc_highContrastSupplementaryDataBackgroundColor;
+ (id)hkmc_loggingCardBackgroundColor;
+ (id)hkmc_menstruationBackgroundColor;
+ (id)hkmc_menstruationCalendarFutureColor;
+ (id)hkmc_menstruationProjectionHighColor;
+ (id)hkmc_menstruationProjectionLowColor;
+ (id)hkmc_ovulationDayCycleTimelineColor;
+ (id)hkmc_ovulationDayCycleTimelineReversedColor;
+ (id)hkmc_projectionTextColor;
+ (id)hkmc_supplementaryDataBackgroundColor;
+ (id)hkmc_supplementaryDataTextFutureColor;
@end

@implementation UIColor(HKMenstrualCyclesUI)

+ (id)hkmc_calendarTodayLabelColor
{
  v0 = [MEMORY[0x277D75348] whiteColor];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)_hkmcui_colorWithAssetName:()HKMenstrualCyclesUI
{
  v3 = MEMORY[0x277D75348];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 hkmcui_bundle];
  v7 = [v3 colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

+ (id)hkmc_cycleHistoryFilterLabelColor
{
  v0 = [MEMORY[0x277D75348] systemBackgroundColor];
  v1 = [MEMORY[0x277D75348] labelColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_doneButtonLoggingCarouselColor
{
  v0 = [MEMORY[0x277D75348] _hkmcui_colorWithAssetName:@"DoneButtonLoggingCarousel"];
  v1 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_fertilityProjectionColor
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277D755B8] hkmc_fertilityProjectionImage];
  v2 = [v0 colorWithPatternImage:v1];

  return v2;
}

+ (id)hkmc_loggingCardBackgroundColor
{
  v0 = [MEMORY[0x277D75348] systemGray4Color];
  v1 = [v0 colorWithAlphaComponent:0.13];
  v2 = [MEMORY[0x277D75348] systemGray4Color];
  v3 = [v2 colorWithAlphaComponent:0.7];
  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_menstruationCalendarFutureColor
{
  v0 = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)hkmc_menstruationBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v3 = [v2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_menstruationProjectionHighColor
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277D755B8] hkmc_menstruationProjectionHighImage];
  v2 = [v0 colorWithPatternImage:v1];

  return v2;
}

+ (id)hkmc_menstruationProjectionLowColor
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277D755B8] hkmc_menstruationProjectionLowImage];
  v2 = [v0 colorWithPatternImage:v1];

  return v2;
}

+ (id)hkmc_projectionTextColor
{
  v0 = [MEMORY[0x277D75348] whiteColor];
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_supplementaryDataBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_supplementaryDataTextColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [MEMORY[0x277D75348] hkmc_supplementaryDataTextColor];
  v3 = [v2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_cycleLogCellBackgroundColor
{
  v0 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.8];

  v2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v3 = HKUIDynamicColorWithColors();

  return v3;
}

+ (id)hkmc_cycleFactorsTimeIntervalBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_regularDayColor];
  v1 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_highContrastCycleFactorsTimeIntervalBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_highContrastRegularDayColor];
  v1 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_supplementaryDataTextFutureColor
{
  v1 = [a1 hkmc_supplementaryDataTextColor];
  v2 = [v1 colorWithAlphaComponent:0.2];

  return v2;
}

+ (id)hkmc_highContrastMenstruationBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_highContrastMenstruationColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [MEMORY[0x277D75348] hkmc_highContrastMenstruationColor];
  v3 = [v2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_highContrastSupplementaryDataBackgroundColor
{
  v0 = [MEMORY[0x277D75348] hkmc_highContrastSupplementaryDataTextColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  v2 = [MEMORY[0x277D75348] hkmc_highContrastSupplementaryDataTextColor];
  v3 = [v2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_ovulationDayCycleTimelineColor
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277D755B8] hkmc_ovulationDayImage];
  v2 = [v0 colorWithPatternImage:v1];

  return v2;
}

+ (id)hkmc_ovulationDayCycleTimelineReversedColor
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277D755B8] hkmc_ovulationDayReversedImage];
  v2 = [v0 colorWithPatternImage:v1];

  return v2;
}

@end