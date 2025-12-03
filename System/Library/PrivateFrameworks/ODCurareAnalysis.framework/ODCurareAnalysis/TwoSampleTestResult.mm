@interface TwoSampleTestResult
- (id)description;
@end

@implementation TwoSampleTestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  testStatistic = [(TwoSampleTestResult *)self testStatistic];
  [testStatistic doubleValue];
  v6 = [v3 stringWithFormat:@"%f", v5];

  testStatistic2 = [(TwoSampleTestResult *)self testStatistic];

  if (!testStatistic2)
  {

    v6 = @"(null)";
  }

  v8 = MEMORY[0x277CCACA8];
  rejectNullHypothesis = [(TwoSampleTestResult *)self rejectNullHypothesis];
  v10 = [v8 stringWithFormat:@"%d", objc_msgSend(rejectNullHypothesis, "BOOLValue")];

  rejectNullHypothesis2 = [(TwoSampleTestResult *)self rejectNullHypothesis];

  v25 = v6;
  if (!rejectNullHypothesis2)
  {

    v10 = @"(null)";
  }

  v24 = MEMORY[0x277CCACA8];
  testRan = [(TwoSampleTestResult *)self testRan];
  testSkippedReason = [(TwoSampleTestResult *)self testSkippedReason];
  sampleSize1 = [(TwoSampleTestResult *)self sampleSize1];
  numSuccesses1 = [(TwoSampleTestResult *)self numSuccesses1];
  minTimestamp1 = [(TwoSampleTestResult *)self minTimestamp1];
  maxTimestamp1 = [(TwoSampleTestResult *)self maxTimestamp1];
  sampleSize2 = [(TwoSampleTestResult *)self sampleSize2];
  numSuccesses2 = [(TwoSampleTestResult *)self numSuccesses2];
  minTimestamp2 = [(TwoSampleTestResult *)self minTimestamp2];
  maxTimestamp2 = [(TwoSampleTestResult *)self maxTimestamp2];
  v21 = [v24 stringWithFormat:@"TwoSampleTestResult:\n testRan=%d\n testSkippedReason=%@\n testStatistic=%@\n rejectNullHypothesis=%@\n sampleSize1=%ld\n numSuccesses1=%ld\n minTimestamp1=%@\n maxTimestamp1=%@\n sampleSize2=%ld\n numSuccesses2=%ld\n minTimestamp2=%@\n maxTimestamp2=%@\n", testRan, testSkippedReason, v25, v10, sampleSize1, numSuccesses1, minTimestamp1, maxTimestamp1, sampleSize2, numSuccesses2, minTimestamp2, maxTimestamp2];

  return v21;
}

@end