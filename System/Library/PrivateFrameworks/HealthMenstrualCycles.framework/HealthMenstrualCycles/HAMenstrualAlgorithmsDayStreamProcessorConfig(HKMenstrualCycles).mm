@interface HAMenstrualAlgorithmsDayStreamProcessorConfig(HKMenstrualCycles)
+ (id)hkmc_configurationWithBirthDateComponents:()HKMenstrualCycles userReportedCycleLength:onDayIndex:userReportedMenstruationLength:onDayIndex:;
@end

@implementation HAMenstrualAlgorithmsDayStreamProcessorConfig(HKMenstrualCycles)

+ (id)hkmc_configurationWithBirthDateComponents:()HKMenstrualCycles userReportedCycleLength:onDayIndex:userReportedMenstruationLength:onDayIndex:
{
  v11 = a4;
  v12 = a6;
  v13 = MEMORY[0x277D0FC98];
  v14 = a3;
  v15 = objc_alloc_init(v13);
  [v15 setBirthDateComponents:v14];

  if (v11)
  {
    v16 = MEMORY[0x277CCABB0];
    dayUnit = [MEMORY[0x277CCDAB0] dayUnit];
    [v11 doubleValueForUnit:dayUnit];
    v18 = [v16 numberWithDouble:?];
    [v15 setUserReportedCycleLength:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v15 setJulianDayOfUserReportedCycleLength:v19];
  }

  if (v12)
  {
    v20 = MEMORY[0x277CCABB0];
    dayUnit2 = [MEMORY[0x277CCDAB0] dayUnit];
    [v12 doubleValueForUnit:dayUnit2];
    v22 = [v20 numberWithDouble:?];
    [v15 setUserReportedMenstruationLength:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    [v15 setJulianDayOfUserReportedMenstruationLength:v23];
  }

  return v15;
}

@end