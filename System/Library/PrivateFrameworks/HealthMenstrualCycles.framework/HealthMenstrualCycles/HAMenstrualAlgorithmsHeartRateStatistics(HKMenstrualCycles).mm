@interface HAMenstrualAlgorithmsHeartRateStatistics(HKMenstrualCycles)
+ (id)hkmc_heartRateStatisticsWithStatistics:()HKMenstrualCycles;
@end

@implementation HAMenstrualAlgorithmsHeartRateStatistics(HKMenstrualCycles)

+ (id)hkmc_heartRateStatisticsWithStatistics:()HKMenstrualCycles
{
  if (a3)
  {
    v3 = MEMORY[0x277D0FCB8];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = MEMORY[0x277CCABB0];
    [v4 percentileQuantityValue];
    v7 = [v6 numberWithDouble:?];
    [v5 setLowerPercentile:v7];

    sampleCount = [v4 sampleCount];
    [v5 setSampleCount:sampleCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end