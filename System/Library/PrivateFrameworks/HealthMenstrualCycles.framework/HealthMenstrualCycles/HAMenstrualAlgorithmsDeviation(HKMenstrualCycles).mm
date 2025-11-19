@interface HAMenstrualAlgorithmsDeviation(HKMenstrualCycles)
- (HKMCUnconfirmedDeviation)hkmc_deviationOfType:()HKMenstrualCycles;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsDeviation(HKMenstrualCycles)

- (HKMCUnconfirmedDeviation)hkmc_deviationOfType:()HKMenstrualCycles
{
  v5 = [a1 julianDayOfAnalysisWindowStart];
  v6 = [a1 julianDayOfAnalysisWindowEnd];
  v7 = v6 - [a1 julianDayOfAnalysisWindowStart] + 1;
  v8 = [HKMCUnconfirmedDeviation alloc];
  v9 = [a1 metricsForCoreAnalytics];
  v10 = [(HKMCUnconfirmedDeviation *)v8 initWithType:a3 days:v5 analyticsMetadata:v7, v9];

  return v10;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "julianDayOfAnalysisWindowStart")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "julianDayOfAnalysisWindowEnd")}];
  v5 = [a1 metricsForCoreAnalytics];
  v6 = [v2 stringWithFormat:@"<analysis window: %@ - %@, analytics: %@>", v3, v4, v5];

  return v6;
}

@end