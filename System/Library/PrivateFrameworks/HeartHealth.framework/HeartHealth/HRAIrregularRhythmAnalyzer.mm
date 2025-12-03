@interface HRAIrregularRhythmAnalyzer
- (HRAIrregularRhythmAnalyzer)initWithIrregularRhythmVersion:(int64_t)version;
- (id)processTachograms:(id)tachograms;
@end

@implementation HRAIrregularRhythmAnalyzer

- (HRAIrregularRhythmAnalyzer)initWithIrregularRhythmVersion:(int64_t)version
{
  v4.receiver = self;
  v4.super_class = HRAIrregularRhythmAnalyzer;
  return [(HRAIrregularRhythmAnalyzer *)&v4 init];
}

- (id)processTachograms:(id)tachograms
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHRMockHeartRhythmAlgorithms.m" lineNumber:25 description:@"This stub implementation should never be called"];

  return 0;
}

@end