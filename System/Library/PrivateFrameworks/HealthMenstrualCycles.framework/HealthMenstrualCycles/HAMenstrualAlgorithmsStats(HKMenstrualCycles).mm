@interface HAMenstrualAlgorithmsStats(HKMenstrualCycles)
- (HKMCStatistics)hkmc_statistics;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsStats(HKMenstrualCycles)

- (HKMCStatistics)hkmc_statistics
{
  v14 = [HKMCStatistics alloc];
  numberOfCyclesFound = [self numberOfCyclesFound];
  integerValue = [numberOfCyclesFound integerValue];
  julianDayOfFirstCycleStart = [self julianDayOfFirstCycleStart];
  julianDayOfLastCycleStart = [self julianDayOfLastCycleStart];
  medianCycleLength = [self medianCycleLength];
  lowerCycleLengthPercentile = [self lowerCycleLengthPercentile];
  upperCycleLengthPercentile = [self upperCycleLengthPercentile];
  medianMenstruationLength = [self medianMenstruationLength];
  lowerMenstruationLengthPercentile = [self lowerMenstruationLengthPercentile];
  upperMenstruationLengthPercentile = [self upperMenstruationLengthPercentile];
  v12 = [(HKMCStatistics *)v14 initWithNumberOfCycles:integerValue firstMenstruationStartDayIndex:julianDayOfFirstCycleStart lastMenstruationStartDayIndex:julianDayOfLastCycleStart cycleLengthMedian:medianCycleLength cycleLengthLowerPercentile:lowerCycleLengthPercentile cycleLengthUpperPercentile:upperCycleLengthPercentile menstruationLengthMedian:medianMenstruationLength menstruationLengthLowerPercentile:lowerMenstruationLengthPercentile menstruationLengthUpperPercentile:upperMenstruationLengthPercentile];

  return v12;
}

- (id)hkmc_description
{
  v13 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  numberOfCyclesFound = [self numberOfCyclesFound];
  julianDayOfLastCycleStart = [self julianDayOfLastCycleStart];
  medianCycleLength = [self medianCycleLength];
  lowerCycleLengthPercentile = [self lowerCycleLengthPercentile];
  upperCycleLengthPercentile = [self upperCycleLengthPercentile];
  medianMenstruationLength = [self medianMenstruationLength];
  lowerMenstruationLengthPercentile = [self lowerMenstruationLengthPercentile];
  upperMenstruationLengthPercentile = [self upperMenstruationLengthPercentile];
  v11 = [v13 stringWithFormat:@"<%@:%p %@ cycles, lastMenstruationStart: %@, cycleLength: %@ (%@ - %@) menstruationLength: %@ (%@ - %@)>", v2, self, numberOfCyclesFound, julianDayOfLastCycleStart, medianCycleLength, lowerCycleLengthPercentile, upperCycleLengthPercentile, medianMenstruationLength, lowerMenstruationLengthPercentile, upperMenstruationLengthPercentile];

  return v11;
}

@end