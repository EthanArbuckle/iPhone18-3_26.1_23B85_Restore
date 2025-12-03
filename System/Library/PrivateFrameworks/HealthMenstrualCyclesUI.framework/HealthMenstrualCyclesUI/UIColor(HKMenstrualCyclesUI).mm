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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)_hkmcui_colorWithAssetName:()HKMenstrualCyclesUI
{
  v3 = MEMORY[0x277D75348];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  hkmcui_bundle = [v4 hkmcui_bundle];
  v7 = [v3 colorNamed:v5 inBundle:hkmcui_bundle compatibleWithTraitCollection:0];

  return v7;
}

+ (id)hkmc_cycleHistoryFilterLabelColor
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_doneButtonLoggingCarouselColor
{
  v0 = [MEMORY[0x277D75348] _hkmcui_colorWithAssetName:@"DoneButtonLoggingCarousel"];
  tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_fertilityProjectionColor
{
  v0 = MEMORY[0x277D75348];
  hkmc_fertilityProjectionImage = [MEMORY[0x277D755B8] hkmc_fertilityProjectionImage];
  v2 = [v0 colorWithPatternImage:hkmc_fertilityProjectionImage];

  return v2;
}

+ (id)hkmc_loggingCardBackgroundColor
{
  systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
  v1 = [systemGray4Color colorWithAlphaComponent:0.13];
  systemGray4Color2 = [MEMORY[0x277D75348] systemGray4Color];
  v3 = [systemGray4Color2 colorWithAlphaComponent:0.7];
  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_menstruationCalendarFutureColor
{
  hkmc_menstruationColor = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v1 = [hkmc_menstruationColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)hkmc_menstruationBackgroundColor
{
  hkmc_menstruationColor = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v1 = [hkmc_menstruationColor colorWithAlphaComponent:0.08];

  hkmc_menstruationColor2 = [MEMORY[0x277D75348] hkmc_menstruationColor];
  v3 = [hkmc_menstruationColor2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_menstruationProjectionHighColor
{
  v0 = MEMORY[0x277D75348];
  hkmc_menstruationProjectionHighImage = [MEMORY[0x277D755B8] hkmc_menstruationProjectionHighImage];
  v2 = [v0 colorWithPatternImage:hkmc_menstruationProjectionHighImage];

  return v2;
}

+ (id)hkmc_menstruationProjectionLowColor
{
  v0 = MEMORY[0x277D75348];
  hkmc_menstruationProjectionLowImage = [MEMORY[0x277D755B8] hkmc_menstruationProjectionLowImage];
  v2 = [v0 colorWithPatternImage:hkmc_menstruationProjectionLowImage];

  return v2;
}

+ (id)hkmc_projectionTextColor
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_supplementaryDataBackgroundColor
{
  hkmc_supplementaryDataTextColor = [MEMORY[0x277D75348] hkmc_supplementaryDataTextColor];
  v1 = [hkmc_supplementaryDataTextColor colorWithAlphaComponent:0.08];

  hkmc_supplementaryDataTextColor2 = [MEMORY[0x277D75348] hkmc_supplementaryDataTextColor];
  v3 = [hkmc_supplementaryDataTextColor2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_cycleLogCellBackgroundColor
{
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v1 = [secondarySystemBackgroundColor colorWithAlphaComponent:0.8];

  secondarySystemBackgroundColor2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v3 = HKUIDynamicColorWithColors();

  return v3;
}

+ (id)hkmc_cycleFactorsTimeIntervalBackgroundColor
{
  hkmc_regularDayColor = [MEMORY[0x277D75348] hkmc_regularDayColor];
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_highContrastCycleFactorsTimeIntervalBackgroundColor
{
  hkmc_highContrastRegularDayColor = [MEMORY[0x277D75348] hkmc_highContrastRegularDayColor];
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v2 = HKUIDynamicColorWithColors();

  return v2;
}

+ (id)hkmc_supplementaryDataTextFutureColor
{
  hkmc_supplementaryDataTextColor = [self hkmc_supplementaryDataTextColor];
  v2 = [hkmc_supplementaryDataTextColor colorWithAlphaComponent:0.2];

  return v2;
}

+ (id)hkmc_highContrastMenstruationBackgroundColor
{
  hkmc_highContrastMenstruationColor = [MEMORY[0x277D75348] hkmc_highContrastMenstruationColor];
  v1 = [hkmc_highContrastMenstruationColor colorWithAlphaComponent:0.08];

  hkmc_highContrastMenstruationColor2 = [MEMORY[0x277D75348] hkmc_highContrastMenstruationColor];
  v3 = [hkmc_highContrastMenstruationColor2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_highContrastSupplementaryDataBackgroundColor
{
  hkmc_highContrastSupplementaryDataTextColor = [MEMORY[0x277D75348] hkmc_highContrastSupplementaryDataTextColor];
  v1 = [hkmc_highContrastSupplementaryDataTextColor colorWithAlphaComponent:0.08];

  hkmc_highContrastSupplementaryDataTextColor2 = [MEMORY[0x277D75348] hkmc_highContrastSupplementaryDataTextColor];
  v3 = [hkmc_highContrastSupplementaryDataTextColor2 colorWithAlphaComponent:0.24];

  v4 = HKUIDynamicColorWithColors();

  return v4;
}

+ (id)hkmc_ovulationDayCycleTimelineColor
{
  v0 = MEMORY[0x277D75348];
  hkmc_ovulationDayImage = [MEMORY[0x277D755B8] hkmc_ovulationDayImage];
  v2 = [v0 colorWithPatternImage:hkmc_ovulationDayImage];

  return v2;
}

+ (id)hkmc_ovulationDayCycleTimelineReversedColor
{
  v0 = MEMORY[0x277D75348];
  hkmc_ovulationDayReversedImage = [MEMORY[0x277D755B8] hkmc_ovulationDayReversedImage];
  v2 = [v0 colorWithPatternImage:hkmc_ovulationDayReversedImage];

  return v2;
}

@end