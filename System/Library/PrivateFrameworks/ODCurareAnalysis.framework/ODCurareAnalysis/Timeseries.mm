@interface Timeseries
- (Timeseries)init;
- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0;
- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run;
- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error;
@end

@implementation Timeseries

- (Timeseries)init
{
  v6.receiver = self;
  v6.super_class = Timeseries;
  v2 = [(Timeseries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    underlyingObject = v2->_underlyingObject;
    v2->_underlyingObject = v3;
  }

  return v2;
}

- (id)runBinomialTestTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level pHypothesis:(id)hypothesis error:(id *)self0
{
  hypothesisCopy = hypothesis;
  levelCopy = level;
  testCopy = test;
  sizeCopy = size;
  methodCopy = method;
  timestampsCopy = timestamps;
  samplesCopy = samples;
  underlyingObject = [(Timeseries *)self underlyingObject];
  v25 = [underlyingObject runBinomialTestTimeseriesWithSamples:samplesCopy sampleTimestamps:timestampsCopy chunkMethod:methodCopy minimumSampleSize:sizeCopy lastTimestampPreviousTest:testCopy significanceLevel:levelCopy pHypothesis:hypothesisCopy error:error];

  return v25;
}

- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)samples sampleTimestamps:(id)timestamps chunkMethod:(id)method minimumSampleSize:(id)size lastTimestampPreviousTest:(id)test significanceLevel:(id)level error:(id *)error
{
  levelCopy = level;
  testCopy = test;
  sizeCopy = size;
  methodCopy = method;
  timestampsCopy = timestamps;
  samplesCopy = samples;
  underlyingObject = [(Timeseries *)self underlyingObject];
  v22 = [underlyingObject runZTestBinomialProportionsTimeseriesWithSamples:samplesCopy sampleTimestamps:timestampsCopy chunkMethod:methodCopy minimumSampleSize:sizeCopy lastTimestampPreviousTest:testCopy significanceLevel:levelCopy error:error];

  return v22;
}

- (id)runChangeDetectionWithEvents:(id)events test:(id)test lastRun:(id)run
{
  runCopy = run;
  testCopy = test;
  eventsCopy = events;
  underlyingObject = [(Timeseries *)self underlyingObject];
  v12 = [underlyingObject runChangeDetectionWithEvents:eventsCopy test:testCopy lastRun:runCopy];

  return v12;
}

@end