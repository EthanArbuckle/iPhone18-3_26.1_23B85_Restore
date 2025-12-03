@interface HKBloodPressureClassificationUtilities
+ (id)localizedStringForAxisAnnotationAboveLowerBoundValue:(double)value;
+ (id)localizedStringForAxisAnnotationBelowUpperBoundValue:(double)value;
+ (id)localizedStringForAxisAnnotationRangeRelationship:(int64_t)relationship;
+ (id)localizedStringForBloodPressureClassificationCategoryInfographicDescription:(id)description;
+ (id)localizedStringForBloodPressureClassificationCategoryInfographicTitle:(id)title;
+ (id)localizedStringForBloodPressureClassificationCategoryTitle:(id)title;
+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicDescription:(int64_t)description;
+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicReference:(int64_t)reference;
+ (id)localizedStringForBloodPressureClassificationGuidelinesName:(int64_t)name abbreviated:(BOOL)abbreviated;
+ (id)localizedStringForBloodPressureClassificationGuidelinesPreference:(int64_t)preference;
+ (id)metricColorsForCategory:(id)category;
@end

@implementation HKBloodPressureClassificationUtilities

+ (id)localizedStringForBloodPressureClassificationCategoryTitle:(id)title
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_TITLE_%@" stringByReplacingOccurrencesOfString:@"%@" withString:title];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesName:(int64_t)name abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  v5 = HKBloodPressureClassificationGuidelinesIdentifierForGuidelines();
  if (v5)
  {
    if (abbreviatedCopy)
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

+ (id)localizedStringForBloodPressureClassificationGuidelinesPreference:(int64_t)preference
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

+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicDescription:(int64_t)description
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

+ (id)localizedStringForBloodPressureClassificationCategoryInfographicTitle:(id)title
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_CATEGORY_INFOGRAPHIC_TITLE_%@" stringByReplacingOccurrencesOfString:@"%@" withString:title];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationCategoryInfographicDescription:(id)description
{
  v3 = [@"BLOOD_PRESSURE_CLASSIFICATION_CATEGORY_INFOGRAPHIC_DESCRIPTION_%@" stringByReplacingOccurrencesOfString:@"%@" withString:description];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v5;
}

+ (id)localizedStringForBloodPressureClassificationGuidelinesInfographicReference:(int64_t)reference
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

+ (id)localizedStringForAxisAnnotationAboveLowerBoundValue:(double)value
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_OVERLAY_AXIS_ANNOTATION_LOWER_BOUND_%.0f" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  v7 = [v4 initWithFormat:v6, *&value];

  return v7;
}

+ (id)localizedStringForAxisAnnotationBelowUpperBoundValue:(double)value
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_OVERLAY_AXIS_ANNOTATION_UPPER_BOUND_%.0f" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
  v7 = [v4 initWithFormat:v6, *&value];

  return v7;
}

+ (id)localizedStringForAxisAnnotationRangeRelationship:(int64_t)relationship
{
  if (!relationship)
  {
    v3 = @"BLOOD_PRESSURE_CLASSIFICATION_AXIS_ANNOTATION_RANGE_RELATIONSHIP_AND";
    goto LABEL_5;
  }

  if (relationship == 1)
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

+ (id)metricColorsForCategory:(id)category
{
  categoryCopy = category;
  if (([categoryCopy isEqualToString:*MEMORY[0x1E696B528]] & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E696B520]) & 1) != 0 || objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E696B530]))
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