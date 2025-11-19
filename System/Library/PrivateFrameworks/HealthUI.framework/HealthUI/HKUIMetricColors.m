@interface HKUIMetricColors
+ (id)activityColors;
+ (id)allergiesClinicalColors;
+ (id)bodyMeasurementColors;
+ (id)carePlansClinicalColors;
+ (id)categoryColorsWithColor:(id)a3;
+ (id)clinicalNotesClinicalColors;
+ (id)conditionsClinicalColors;
+ (id)defaultClinicalColors;
+ (id)defaultContextViewColorsUsingColor:(id)a3;
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
+ (id)sleepColorsForSleepAnalysis:(int64_t)a3;
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
  v3 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)activityColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_activityKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)bodyMeasurementColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_bodyMeasurementsKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)mindfulnessColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_mindfulnessKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)mobilityColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_mobilityKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)nutritionColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_nutritionKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)pregnancyColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_pregnancyKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)reproductiveHealthColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)sleepColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_sleepKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)sleepColorsForSleepAnalysis:(int64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:a3];
  [v4 setKeyColor:v5];

  v6 = [MEMORY[0x1E69DC888] hk_sleepPrimaryTextColorForSleepAnalysis:a3];
  [v4 setContextViewPrimaryTextColor:v6];

  v7 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:v7];

  return v4;
}

+ (id)hearingHealthColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_hearingHealthKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)respiratoryColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_respiratoryKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillDarkColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)otherColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_otherKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)symptomsColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_symptomsKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)categoryColorsWithColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKeyColor:v3];

  v5 = [MEMORY[0x1E69DC888] hk_chartOverlayPillLightColor];
  [v4 setContextViewPrimaryTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:v6];

  return v4;
}

+ (id)defaultContextViewColorsUsingColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setKeyColor:v3];

  v5 = [MEMORY[0x1E69DC888] hk_defaultPrimaryTextColor];
  [v4 setContextViewPrimaryTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v4 setContextViewSecondaryTextColor:v6];

  return v4;
}

+ (id)disabledContextViewColor
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] systemGray4Color];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

  return v2;
}

+ (id)workoutContextViewColors
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] hk_workoutKeyColor];
  [v2 setKeyColor:v3];

  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setContextViewPrimaryTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  [v2 setContextViewSecondaryTextColor:v5];

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
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_allergiesClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)carePlansClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_carePlansClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)clinicalNotesClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_clinicalNotesClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)conditionsClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_conditionsClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)devicesClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_devicesClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)immunizationsClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_immunizationsClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)insuranceClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_insuranceClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)labResultsClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_labResultsClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)medicationsClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_medicationsClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)medicationTrackingColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_medicationTrackingKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)proceduresClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_proceduresClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)socialHistoryClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_socialHistoryClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)vitalsClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_vitalsClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

+ (id)unknownCategoryClinicalColors
{
  v2 = [a1 defaultClinicalColors];
  v3 = [MEMORY[0x1E69DC888] hk_unknownCategoryClinicalKeyColor];
  [v2 setKeyColor:v3];

  return v2;
}

@end