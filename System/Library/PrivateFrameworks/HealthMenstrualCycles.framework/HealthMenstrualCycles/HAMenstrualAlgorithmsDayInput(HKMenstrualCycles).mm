@interface HAMenstrualAlgorithmsDayInput(HKMenstrualCycles)
+ (id)hkmc_dayInputWithDaySummary:()HKMenstrualCycles;
+ (id)hkmc_dayInputWithHeartStatistics:()HKMenstrualCycles;
+ (id)hkmc_emptyDayInputWithDayIndex:()HKMenstrualCycles;
- (void)hkmc_updateWithHeartStatistics:()HKMenstrualCycles;
@end

@implementation HAMenstrualAlgorithmsDayInput(HKMenstrualCycles)

+ (id)hkmc_dayInputWithDaySummary:()HKMenstrualCycles
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D0FC88]);
  [v4 setJulianDay:{objc_msgSend(v3, "dayIndex")}];
  menstrualFlow = [v3 menstrualFlow];
  v6 = 0x40302010500uLL >> (8 * menstrualFlow);
  if (menstrualFlow >= 6)
  {
    LOBYTE(v6) = 0;
  }

  [v4 setFlow:v6 & 7];
  [v4 setSpotting:{objc_msgSend(v3, "intermenstrualBleeding")}];
  ovulationTestResult = [v3 ovulationTestResult];
  v8 = 0x203010300uLL >> (8 * ovulationTestResult);
  if (ovulationTestResult >= 5)
  {
    LOBYTE(v8) = 0;
  }

  [v4 setOvulationTestResult:v8 & 3];
  pregnancyTestResult = [v3 pregnancyTestResult];
  v10 = 0x2010300u >> (8 * pregnancyTestResult);
  if (pregnancyTestResult >= 4)
  {
    LOBYTE(v10) = 0;
  }

  [v4 setPregnancyTestResult:v10 & 3];
  v11 = MEMORY[0x277D0FCE0];
  wristTemperature = [v3 wristTemperature];
  v13 = [v11 hkmc_wristTemperatureWithTemperature:wristTemperature];
  [v4 setWristTemperature:v13];

  return v4;
}

+ (id)hkmc_emptyDayInputWithDayIndex:()HKMenstrualCycles
{
  v4 = objc_alloc_init(MEMORY[0x277D0FC88]);
  [v4 setJulianDay:a3];

  return v4;
}

+ (id)hkmc_dayInputWithHeartStatistics:()HKMenstrualCycles
{
  v3 = MEMORY[0x277D0FC88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setJulianDay:{objc_msgSend(v4, "dayIndex")}];
  v6 = MEMORY[0x277D0FCB8];
  tenthPercentileAwakeHeartRateStatistics = [v4 tenthPercentileAwakeHeartRateStatistics];
  v8 = [v6 hkmc_heartRateStatisticsWithStatistics:tenthPercentileAwakeHeartRateStatistics];
  [v5 setSedentaryHeartRateStatistics:v8];

  v9 = MEMORY[0x277D0FCB8];
  tenthPercentileAsleepHeartRateStatistics = [v4 tenthPercentileAsleepHeartRateStatistics];

  v11 = [v9 hkmc_heartRateStatisticsWithStatistics:tenthPercentileAsleepHeartRateStatistics];
  [v5 setSleepHeartRateStatistics:v11];

  return v5;
}

- (void)hkmc_updateWithHeartStatistics:()HKMenstrualCycles
{
  v4 = MEMORY[0x277D0FCB8];
  v5 = a3;
  tenthPercentileAwakeHeartRateStatistics = [v5 tenthPercentileAwakeHeartRateStatistics];
  v7 = [v4 hkmc_heartRateStatisticsWithStatistics:tenthPercentileAwakeHeartRateStatistics];
  [self setSedentaryHeartRateStatistics:v7];

  v8 = MEMORY[0x277D0FCB8];
  tenthPercentileAsleepHeartRateStatistics = [v5 tenthPercentileAsleepHeartRateStatistics];

  v9 = [v8 hkmc_heartRateStatisticsWithStatistics:tenthPercentileAsleepHeartRateStatistics];
  [self setSleepHeartRateStatistics:v9];
}

@end