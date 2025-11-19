@interface TestResult
- (id)description;
@end

@implementation TestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TestResult *)self pValue];
  [v4 doubleValue];
  v6 = [v3 stringWithFormat:@"%f", v5];

  v7 = [(TestResult *)self pValue];

  if (!v7)
  {

    v6 = @"(null)";
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [(TestResult *)self rejectNullHypothesis];
  v10 = [v8 stringWithFormat:@"%d", objc_msgSend(v9, "BOOLValue")];

  v11 = [(TestResult *)self rejectNullHypothesis];

  if (!v11)
  {

    v10 = @"(null)";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [(TestResult *)self testRan];
  v14 = [(TestResult *)self testSkippedReason];
  v15 = [(TestResult *)self sampleSize];
  v16 = [(TestResult *)self numSuccesses];
  v17 = [(TestResult *)self minTimestamp];
  v18 = [(TestResult *)self maxTimestamp];
  v19 = [v12 stringWithFormat:@"TestResult:\n testRan=%d\n testSkippedReason=%@\n pValue=%@\n rejectNullHypothesis=%@\n sampleSize=%ld\n numSuccesses=%ld\n minTimestamp=%@\n maxTimestamp=%@", v13, v14, v6, v10, v15, v16, v17, v18];

  return v19;
}

@end