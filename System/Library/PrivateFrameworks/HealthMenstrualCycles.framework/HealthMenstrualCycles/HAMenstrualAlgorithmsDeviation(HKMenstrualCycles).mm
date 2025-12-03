@interface HAMenstrualAlgorithmsDeviation(HKMenstrualCycles)
- (HKMCUnconfirmedDeviation)hkmc_deviationOfType:()HKMenstrualCycles;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsDeviation(HKMenstrualCycles)

- (HKMCUnconfirmedDeviation)hkmc_deviationOfType:()HKMenstrualCycles
{
  julianDayOfAnalysisWindowStart = [self julianDayOfAnalysisWindowStart];
  julianDayOfAnalysisWindowEnd = [self julianDayOfAnalysisWindowEnd];
  v7 = julianDayOfAnalysisWindowEnd - [self julianDayOfAnalysisWindowStart] + 1;
  v8 = [HKMCUnconfirmedDeviation alloc];
  metricsForCoreAnalytics = [self metricsForCoreAnalytics];
  v10 = [(HKMCUnconfirmedDeviation *)v8 initWithType:a3 days:julianDayOfAnalysisWindowStart analyticsMetadata:v7, metricsForCoreAnalytics];

  return v10;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "julianDayOfAnalysisWindowStart")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "julianDayOfAnalysisWindowEnd")}];
  metricsForCoreAnalytics = [self metricsForCoreAnalytics];
  v6 = [v2 stringWithFormat:@"<analysis window: %@ - %@, analytics: %@>", v3, v4, metricsForCoreAnalytics];

  return v6;
}

@end