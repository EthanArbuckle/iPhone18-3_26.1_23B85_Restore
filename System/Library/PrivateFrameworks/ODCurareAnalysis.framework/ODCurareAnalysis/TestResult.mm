@interface TestResult
- (id)description;
@end

@implementation TestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  pValue = [(TestResult *)self pValue];
  [pValue doubleValue];
  v6 = [v3 stringWithFormat:@"%f", v5];

  pValue2 = [(TestResult *)self pValue];

  if (!pValue2)
  {

    v6 = @"(null)";
  }

  v8 = MEMORY[0x277CCACA8];
  rejectNullHypothesis = [(TestResult *)self rejectNullHypothesis];
  v10 = [v8 stringWithFormat:@"%d", objc_msgSend(rejectNullHypothesis, "BOOLValue")];

  rejectNullHypothesis2 = [(TestResult *)self rejectNullHypothesis];

  if (!rejectNullHypothesis2)
  {

    v10 = @"(null)";
  }

  v12 = MEMORY[0x277CCACA8];
  testRan = [(TestResult *)self testRan];
  testSkippedReason = [(TestResult *)self testSkippedReason];
  sampleSize = [(TestResult *)self sampleSize];
  numSuccesses = [(TestResult *)self numSuccesses];
  minTimestamp = [(TestResult *)self minTimestamp];
  maxTimestamp = [(TestResult *)self maxTimestamp];
  v19 = [v12 stringWithFormat:@"TestResult:\n testRan=%d\n testSkippedReason=%@\n pValue=%@\n rejectNullHypothesis=%@\n sampleSize=%ld\n numSuccesses=%ld\n minTimestamp=%@\n maxTimestamp=%@", testRan, testSkippedReason, v6, v10, sampleSize, numSuccesses, minTimestamp, maxTimestamp];

  return v19;
}

@end