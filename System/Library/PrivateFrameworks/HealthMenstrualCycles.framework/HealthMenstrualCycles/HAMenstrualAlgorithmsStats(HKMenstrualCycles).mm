@interface HAMenstrualAlgorithmsStats(HKMenstrualCycles)
- (HKMCStatistics)hkmc_statistics;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsStats(HKMenstrualCycles)

- (HKMCStatistics)hkmc_statistics
{
  v14 = [HKMCStatistics alloc];
  v2 = [a1 numberOfCyclesFound];
  v3 = [v2 integerValue];
  v4 = [a1 julianDayOfFirstCycleStart];
  v5 = [a1 julianDayOfLastCycleStart];
  v6 = [a1 medianCycleLength];
  v7 = [a1 lowerCycleLengthPercentile];
  v8 = [a1 upperCycleLengthPercentile];
  v9 = [a1 medianMenstruationLength];
  v10 = [a1 lowerMenstruationLengthPercentile];
  v11 = [a1 upperMenstruationLengthPercentile];
  v12 = [(HKMCStatistics *)v14 initWithNumberOfCycles:v3 firstMenstruationStartDayIndex:v4 lastMenstruationStartDayIndex:v5 cycleLengthMedian:v6 cycleLengthLowerPercentile:v7 cycleLengthUpperPercentile:v8 menstruationLengthMedian:v9 menstruationLengthLowerPercentile:v10 menstruationLengthUpperPercentile:v11];

  return v12;
}

- (id)hkmc_description
{
  v13 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v3 = [a1 numberOfCyclesFound];
  v4 = [a1 julianDayOfLastCycleStart];
  v5 = [a1 medianCycleLength];
  v6 = [a1 lowerCycleLengthPercentile];
  v7 = [a1 upperCycleLengthPercentile];
  v8 = [a1 medianMenstruationLength];
  v9 = [a1 lowerMenstruationLengthPercentile];
  v10 = [a1 upperMenstruationLengthPercentile];
  v11 = [v13 stringWithFormat:@"<%@:%p %@ cycles, lastMenstruationStart: %@, cycleLength: %@ (%@ - %@) menstruationLength: %@ (%@ - %@)>", v2, a1, v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end