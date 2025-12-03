@interface ABTachogramClassifier(HKHRAFibBurdenTachogramClassifierConformance)
- (HKHRAFibBurdenTachogramClassificationProvider)classifyHeartbeatSeries:()HKHRAFibBurdenTachogramClassifierConformance;
@end

@implementation ABTachogramClassifier(HKHRAFibBurdenTachogramClassifierConformance)

- (HKHRAFibBurdenTachogramClassificationProvider)classifyHeartbeatSeries:()HKHRAFibBurdenTachogramClassifierConformance
{
  v4 = a3;
  v5 = [self classifyTachogram:v4];
  aFibDetected = [v5 aFibDetected];
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [v4 startDate];
  endDate = [v4 endDate];
  v10 = [v7 initWithStartDate:startDate endDate:endDate];

  v11 = objc_alloc(MEMORY[0x277D12FF8]);
  uUID = [v4 UUID];
  _timeZone = [v4 _timeZone];

  v14 = [v11 initWithSampleUUID:uUID classification:aFibDetected sampleDateInterval:v10 sampleTimeZone:_timeZone];
  v15 = [[HKHRAFibBurdenTachogramClassificationProvider alloc] initWithSampleClassification:v14 tachogramClassification:v5];

  return v15;
}

@end