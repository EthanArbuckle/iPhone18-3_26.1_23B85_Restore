@interface HKCardioFitnessPopulationNormsViewModel
- (id)ageBucketsTitle;
- (id)chartTitle;
- (id)classificationIdentifierForIndex:(unint64_t)index;
- (id)classificationIndexForSampleValue:(double)value age:(int64_t)age sex:(int64_t)sex;
- (id)currentDataForBiologicalSex;
- (id)footerText;
- (id)levelsTitle;
- (id)localizedClassificationDescriptionForIndex:(unint64_t)index;
- (id)localizedClassificationNameForIndex:(unint64_t)index;
- (id)localizedClassificationTitleForIndex:(unint64_t)index;
- (id)quantityUnitTitle;
- (id)seriesHighlightedSegmentColor;
- (id)viewTitle;
- (unint64_t)maximumUserAgeBucketIndex;
@end

@implementation HKCardioFitnessPopulationNormsViewModel

- (id)classificationIndexForSampleValue:(double)value age:(int64_t)age sex:(int64_t)sex
{
  v6 = [HKCardioFitnessUtilities cardioFitnessLevelForVO2Max:sex biologicalSex:age age:value];
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKPopulationNormsAbstractViewModel classificationIndexForLevelIndex:](self, "classificationIndexForLevelIndex:", v6)}];
  }

  return v7;
}

- (id)viewTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_POPULATION_CHART_VIEW_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)chartTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_POPULATION_CHART_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)levelsTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_LEVELS_VIEW_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)quantityUnitTitle
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"Localizable-CardioFitness"];

  return v3;
}

- (id)ageBucketsTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_POPULATION_CHART_AGE_BUCKETS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)footerText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_LEVELS_ATTRIBUTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)seriesHighlightedSegmentColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.588235294 blue:0.666666667 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.741176471 green:0.2 blue:0.31372549 alpha:1.0];
  v4 = HKUIDynamicColorWithColors(v2, v3);

  return v4;
}

- (id)localizedClassificationTitleForIndex:(unint64_t)index
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self classificationIndexForLevelIndex:index];

  return [HKCardioFitnessUtilities localizedStringForCardioFitnessTitle:v3];
}

- (id)classificationIdentifierForIndex:(unint64_t)index
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self classificationIndexForLevelIndex:index];

  return [HKCardioFitnessUtilities classificationIdentifierForIndex:v3];
}

- (id)localizedClassificationDescriptionForIndex:(unint64_t)index
{
  v4 = [(HKPopulationNormsAbstractViewModel *)self classificationIndexForLevelIndex:index];
  currentAgeInYears = [(HKPopulationNormsAbstractViewModel *)self currentAgeInYears];
  v6 = +[HKCardioFitnessUtilities localizedStringForCardioFitnessDescription:age:](HKCardioFitnessUtilities, "localizedStringForCardioFitnessDescription:age:", v4, [currentAgeInYears integerValue]);

  return v6;
}

- (id)localizedClassificationNameForIndex:(unint64_t)index
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self classificationIndexForLevelIndex:index];

  return [HKCardioFitnessUtilities localizedStringForCardioFitnessLevelName:v3];
}

- (id)currentDataForBiologicalSex
{
  currentBiologicalSex = [(HKPopulationNormsAbstractViewModel *)self currentBiologicalSex];

  return [HKCardioFitnessUtilities flattenedCardioFitnessDataForBiologicalSex:currentBiologicalSex];
}

- (unint64_t)maximumUserAgeBucketIndex
{
  currentDataForBiologicalSex = [(HKCardioFitnessPopulationNormsViewModel *)self currentDataForBiologicalSex];
  if ([currentDataForBiologicalSex count])
  {
    v3 = [currentDataForBiologicalSex count] - 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end