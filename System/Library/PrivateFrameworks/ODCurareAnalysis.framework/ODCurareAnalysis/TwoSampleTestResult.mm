@interface TwoSampleTestResult
- (id)description;
@end

@implementation TwoSampleTestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TwoSampleTestResult *)self testStatistic];
  [v4 doubleValue];
  v6 = [v3 stringWithFormat:@"%f", v5];

  v7 = [(TwoSampleTestResult *)self testStatistic];

  if (!v7)
  {

    v6 = @"(null)";
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [(TwoSampleTestResult *)self rejectNullHypothesis];
  v10 = [v8 stringWithFormat:@"%d", objc_msgSend(v9, "BOOLValue")];

  v11 = [(TwoSampleTestResult *)self rejectNullHypothesis];

  v25 = v6;
  if (!v11)
  {

    v10 = @"(null)";
  }

  v24 = MEMORY[0x277CCACA8];
  v23 = [(TwoSampleTestResult *)self testRan];
  v12 = [(TwoSampleTestResult *)self testSkippedReason];
  v13 = [(TwoSampleTestResult *)self sampleSize1];
  v14 = [(TwoSampleTestResult *)self numSuccesses1];
  v15 = [(TwoSampleTestResult *)self minTimestamp1];
  v16 = [(TwoSampleTestResult *)self maxTimestamp1];
  v17 = [(TwoSampleTestResult *)self sampleSize2];
  v18 = [(TwoSampleTestResult *)self numSuccesses2];
  v19 = [(TwoSampleTestResult *)self minTimestamp2];
  v20 = [(TwoSampleTestResult *)self maxTimestamp2];
  v21 = [v24 stringWithFormat:@"TwoSampleTestResult:\n testRan=%d\n testSkippedReason=%@\n testStatistic=%@\n rejectNullHypothesis=%@\n sampleSize1=%ld\n numSuccesses1=%ld\n minTimestamp1=%@\n maxTimestamp1=%@\n sampleSize2=%ld\n numSuccesses2=%ld\n minTimestamp2=%@\n maxTimestamp2=%@\n", v23, v12, v25, v10, v13, v14, v15, v16, v17, v18, v19, v20];

  return v21;
}

@end