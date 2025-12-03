@interface HKUIMetricColors
+ (id)activityColors;
+ (id)allergiesClinicalColors;
+ (id)bodyMeasurementColors;
+ (id)carePlansClinicalColors;
+ (id)categoryColorsWithColor:(id)color;
+ (id)clinicalNotesClinicalColors;
+ (id)conditionsClinicalColors;
+ (id)defaultClinicalColors;
+ (id)defaultContextViewColorsUsingColor:(id)color;
+ (id)devicesClinicalColors;
+ (id)disabledContextViewColor;
+ (id)hearingHealthColors;
+ (id)immunizationsClinicalColors;
+ (id)insuranceClinicalColors;
+ (id)labResultsClinicalColors;
+ (id)medicationTrackingColors;
+ (id)medicationsClinicalColors;
+ (id)mindfulnessColors;
+ (id)mobilityColors;
+ (id)nutritionColors;
+ (id)otherColors;
+ (id)pregnancyColors;
+ (id)proceduresClinicalColors;
+ (id)reproductiveHealthColors;
+ (id)respiratoryColors;
+ (id)sleepColors;
+ (id)sleepColorsForSleepAnalysis:(int64_t)analysis;
+ (id)socialHistoryClinicalColors;
+ (id)symptomsColors;
+ (id)unknownCategoryClinicalColors;
+ (id)vitalsClinicalColors;
+ (id)vitalsColors;
+ (id)workoutContextViewColors;
@end

@implementation HKUIMetricColors

+ (id)vitalsColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  [v2 setKeyColor:hk_vitalsKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)activityColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_activityKeyColor = [MEMORY[0x1E69DC888] hk_activityKeyColor];
  [v2 setKeyColor:hk_activityKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)bodyMeasurementColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_bodyMeasurementsKeyColor = [MEMORY[0x1E69DC888] hk_bodyMeasurementsKeyColor];
  [v2 setKeyColor:hk_bodyMeasurementsKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)mindfulnessColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_mindfulnessKeyColor = [MEMORY[0x1E69DC888] hk_mindfulnessKeyColor];
  [v2 setKeyColor:hk_mindfulnessKeyColor];

  hk_chartOverlayPillDarkColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillDarkColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)mobilityColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_mobilityKeyColor = [MEMORY[0x1E69DC888] hk_mobilityKeyColor];
  [v2 setKeyColor:hk_mobilityKeyColor];

  hk_chartOverlayPillDarkColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillDarkColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)nutritionColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_nutritionKeyColor = [MEMORY[0x1E69DC888] hk_nutritionKeyColor];
  [v2 setKeyColor:hk_nutritionKeyColor];

  hk_chartOverlayPillDarkColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillDarkColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)pregnancyColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_pregnancyKeyColor = [MEMORY[0x1E69DC888] hk_pregnancyKeyColor];
  [v2 setKeyColor:hk_pregnancyKeyColor];

  hk_chartOverlayPillDarkColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillDarkColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)reproductiveHealthColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_reproductiveHealthKeyColor = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
  [v2 setKeyColor:hk_reproductiveHealthKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)sleepColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_sleepKeyColor = [MEMORY[0x1E69DC888] hk_sleepKeyColor];
  [v2 setKeyColor:hk_sleepKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)sleepColorsForSleepAnalysis:(int64_t)analysis
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:analysis];
  [v4 setKeyColor:v5];

  v6 = [MEMORY[0x1E69DC888] hk_sleepPrimaryTextColorForSleepAnalysis:analysis];
  [v4 setContextViewPrimaryTextColor:v6];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v4;
}

+ (id)hearingHealthColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_hearingHealthKeyColor = [MEMORY[0x1E69DC888] hk_hearingHealthKeyColor];
  [v2 setKeyColor:hk_hearingHealthKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)respiratoryColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_respiratoryKeyColor = [MEMORY[0x1E69DC888] hk_respiratoryKeyColor];
  [v2 setKeyColor:hk_respiratoryKeyColor];

  hk_chartOverlayPillDarkColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillDarkColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)otherColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_otherKeyColor = [MEMORY[0x1E69DC888] hk_otherKeyColor];
  [v2 setKeyColor:hk_otherKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)symptomsColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_symptomsKeyColor = [MEMORY[0x1E69DC888] hk_symptomsKeyColor];
  [v2 setKeyColor:hk_symptomsKeyColor];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)categoryColorsWithColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKeyColor:colorCopy];

  hk_chartOverlayPillLightColor = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v4 setContextViewPrimaryTextColor:hk_chartOverlayPillLightColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v4;
}

+ (id)defaultContextViewColorsUsingColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKeyColor:colorCopy];

  hk_defaultPrimaryTextColor = [MEMORY[0x1E69DC888] hk_defaultPrimaryTextColor];
  [v4 setContextViewPrimaryTextColor:hk_defaultPrimaryTextColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v4;
}

+ (id)disabledContextViewColor
{
  v2 = objc_alloc_init(objc_opt_class());
  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  [v2 setKeyColor:systemGray4Color];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewPrimaryTextColor:hk_defaultSecondaryTextColor];

  hk_defaultSecondaryTextColor2 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor2];

  return v2;
}

+ (id)workoutContextViewColors
{
  v2 = objc_alloc_init(objc_opt_class());
  hk_workoutKeyColor = [MEMORY[0x1E69DC888] hk_workoutKeyColor];
  [v2 setKeyColor:hk_workoutKeyColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setContextViewPrimaryTextColor:whiteColor];

  hk_defaultSecondaryTextColor = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:hk_defaultSecondaryTextColor];

  return v2;
}

+ (id)defaultClinicalColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_47];
  [v2 setContextViewPrimaryTextColor:v3];
  [v2 setContextViewSecondaryTextColor:v3];

  return v2;
}

id __51__HKUIMetricColors_Clinical__defaultClinicalColors__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

+ (id)allergiesClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_allergiesClinicalKeyColor = [MEMORY[0x1E69DC888] hk_allergiesClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_allergiesClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)carePlansClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_carePlansClinicalKeyColor = [MEMORY[0x1E69DC888] hk_carePlansClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_carePlansClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)clinicalNotesClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_clinicalNotesClinicalKeyColor = [MEMORY[0x1E69DC888] hk_clinicalNotesClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_clinicalNotesClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)conditionsClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_conditionsClinicalKeyColor = [MEMORY[0x1E69DC888] hk_conditionsClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_conditionsClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)devicesClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_devicesClinicalKeyColor = [MEMORY[0x1E69DC888] hk_devicesClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_devicesClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)immunizationsClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_immunizationsClinicalKeyColor = [MEMORY[0x1E69DC888] hk_immunizationsClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_immunizationsClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)insuranceClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_insuranceClinicalKeyColor = [MEMORY[0x1E69DC888] hk_insuranceClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_insuranceClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)labResultsClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_labResultsClinicalKeyColor = [MEMORY[0x1E69DC888] hk_labResultsClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_labResultsClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)medicationsClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_medicationsClinicalKeyColor = [MEMORY[0x1E69DC888] hk_medicationsClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_medicationsClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)medicationTrackingColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_medicationTrackingKeyColor = [MEMORY[0x1E69DC888] hk_medicationTrackingKeyColor];
  [defaultClinicalColors setKeyColor:hk_medicationTrackingKeyColor];

  return defaultClinicalColors;
}

+ (id)proceduresClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_proceduresClinicalKeyColor = [MEMORY[0x1E69DC888] hk_proceduresClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_proceduresClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)socialHistoryClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_socialHistoryClinicalKeyColor = [MEMORY[0x1E69DC888] hk_socialHistoryClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_socialHistoryClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)vitalsClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_vitalsClinicalKeyColor = [MEMORY[0x1E69DC888] hk_vitalsClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_vitalsClinicalKeyColor];

  return defaultClinicalColors;
}

+ (id)unknownCategoryClinicalColors
{
  defaultClinicalColors = [self defaultClinicalColors];
  hk_unknownCategoryClinicalKeyColor = [MEMORY[0x1E69DC888] hk_unknownCategoryClinicalKeyColor];
  [defaultClinicalColors setKeyColor:hk_unknownCategoryClinicalKeyColor];

  return defaultClinicalColors;
}

@end