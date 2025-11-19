@interface HKBloodPressureClassificationUtilities
+ (id)localizedStringForAxisAnnotationAboveLowerBoundValue:(double)a3;
+ (id)localizedStringForAxisAnnotationBelowUpperBoundValue:(double)a3;
+ (id)localizedStringForAxisAnnotationRangeRelationship:(int64_t)a3;
+ (id)localizedStringForBloodPressureClassificationCategoryInfographicDescription:(id)a3;
+ (id)localizedStringForBloodPressureClassificationCategoryInfographicTitle:(id)a3;
+ (id)localizedStringForBloodPressureClassificationCategoryTitle:(id)a3;
+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicDescription:(int64_t)a3;
+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicReference:(int64_t)a3;
+ (id)localizedStringForBloodPressureClassificationGuidelinesName:(int64_t)a3 abbreviated:(BOOL)a4;
+ (id)localizedStringForBloodPressureClassificationGuidelinesPreference:(int64_t)a3;
+ (id)metricColorsForCategory:(id)a3;
@end

@implementation HKBloodPressureClassificationUtilities

+ (id)localizedStringForBloodPressureClassificationCategoryTitle:(id)a3
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_TITLE_%@" stringByReplacingOccurrencesOfString:@"%@" withString:a3];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesName:(int64_t)a3 abbreviated:(BOOL)a4
{
  v4 = a4;
  v5 = HKBloodPressureClassificationGuidelinesIdentifierForGuidelines();
  if (v5)
  {
    if (v4)
    {
      v6 = @"BLOOD_PRESSURE_CLASSIFICATION_GUIDELINES_NAME_ABBREVIATION_%@";
    }

    else
    {
      v6 = @"BLOOD_PRESSURE_CLASSIFICATION_GUIDELINES_NAME_%@";
    }

    v7 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:@"%@" withString:v5];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesPreference:(int64_t)a3
{
  v3 = HKBloodPressureClassificationGuidelinesIdentifierForGuidelines();
  if (v3)
  {
    v4 = [@"BLOOD_PRESSURE_CLASSIFICATION_GUIDELINES_PREFERENCE_%@" stringByReplacingOccurrencesOfString:@"%@" withString:v3];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicDescription:(int64_t)a3
{
  v3 = HKBloodPressureClassificationGuidelinesIdentifierForGuidelines();
  if (v3)
  {
    v4 = [@"BLOOD_PRESSURE_CLASSIFICATION_GUIDELINES_DESCRIPTION_%@" stringByReplacingOccurrencesOfString:@"%@" withString:v3];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)localizedStringForBloodPressureClassificationCategoryInfographicTitle:(id)a3
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_CATEGORY_INFOGRAPHIC_TITLE_%@" stringByReplacingOccurrencesOfString:@"%@" withString:a3];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationCategoryInfographicDescription:(id)a3
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_CATEGORY_INFOGRAPHIC_DESCRIPTION_%@" stringByReplacingOccurrencesOfString:@"%@" withString:a3];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicReference:(int64_t)a3
{
  v3 = HKBloodPressureClassificationGuidelinesIdentifierForGuidelines();
  if (v3)
  {
    v4 = [@"BLOOD_PRESSURE_CLASSIFICATION_GUIDELINES_REFERENCE_FOOTER_%@" stringByReplacingOccurrencesOfString:@"%@" withString:v3];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)localizedStringForAxisAnnotationAboveLowerBoundValue:(double)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_OVERLAY_AXIS_ANNOTATION_LOWER_BOUND_%.0f" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  v7 = [v4 initWithFormat:v6, *&a3];

  return v7;
}

+ (id)localizedStringForAxisAnnotationBelowUpperBoundValue:(double)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_OVERLAY_AXIS_ANNOTATION_UPPER_BOUND_%.0f" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  v7 = [v4 initWithFormat:v6, *&a3];

  return v7;
}

+ (id)localizedStringForAxisAnnotationRangeRelationship:(int64_t)a3
{
  if (!a3)
  {
    v3 = @"BLOOD_PRESSURE_CLASSIFICATION_AXIS_ANNOTATION_RANGE_RELATIONSHIP_AND";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = @"BLOOD_PRESSURE_CLASSIFICATION_AXIS_ANNOTATION_RANGE_RELATIONSHIP_OR";
LABEL_5:
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)metricColorsForCategory:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E696B528]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E696B520]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E696B530]))
  {
    v4 = +[HKUIMetricColors pregnancyColors];
  }

  else
  {
    v4 = +[HKUIMetricColors vitalsColors];
  }

  v5 = v4;

  return v5;
}

@end