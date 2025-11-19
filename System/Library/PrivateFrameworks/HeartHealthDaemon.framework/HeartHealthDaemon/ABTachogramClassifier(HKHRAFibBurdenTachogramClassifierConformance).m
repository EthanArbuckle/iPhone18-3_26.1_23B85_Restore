@interface ABTachogramClassifier(HKHRAFibBurdenTachogramClassifierConformance)
- (HKHRAFibBurdenTachogramClassificationProvider)classifyHeartbeatSeries:()HKHRAFibBurdenTachogramClassifierConformance;
@end

@implementation ABTachogramClassifier(HKHRAFibBurdenTachogramClassifierConformance)

- (HKHRAFibBurdenTachogramClassificationProvider)classifyHeartbeatSeries:()HKHRAFibBurdenTachogramClassifierConformance
{
  v4 = a3;
  v5 = [a1 classifyTachogram:v4];
  v6 = [v5 aFibDetected];
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  v8 = [v4 startDate];
  v9 = [v4 endDate];
  v10 = [v7 initWithStartDate:v8 endDate:v9];

  v11 = objc_alloc(MEMORY[0x277D12FF8]);
  v12 = [v4 UUID];
  v13 = [v4 _timeZone];

  v14 = [v11 initWithSampleUUID:v12 classification:v6 sampleDateInterval:v10 sampleTimeZone:v13];
  v15 = [[HKHRAFibBurdenTachogramClassificationProvider alloc] initWithSampleClassification:v14 tachogramClassification:v5];

  return v15;
}

@end