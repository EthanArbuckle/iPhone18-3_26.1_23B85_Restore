@interface Timeseries
- (Timeseries)init;
- (id)runBinomialTestTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 pHypothesis:(id)a9 error:(id *)a10;
- (id)runChangeDetectionWithEvents:(id)a3 test:(id)a4 lastRun:(id)a5;
- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 error:(id *)a9;
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

- (id)runBinomialTestTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 pHypothesis:(id)a9 error:(id *)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [(Timeseries *)self underlyingObject];
  v25 = [v24 runBinomialTestTimeseriesWithSamples:v23 sampleTimestamps:v22 chunkMethod:v21 minimumSampleSize:v20 lastTimestampPreviousTest:v19 significanceLevel:v18 pHypothesis:v17 error:a10];

  return v25;
}

- (id)runZTestBinomialProportionsTimeseriesWithSamples:(id)a3 sampleTimestamps:(id)a4 chunkMethod:(id)a5 minimumSampleSize:(id)a6 lastTimestampPreviousTest:(id)a7 significanceLevel:(id)a8 error:(id *)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(Timeseries *)self underlyingObject];
  v22 = [v21 runZTestBinomialProportionsTimeseriesWithSamples:v20 sampleTimestamps:v19 chunkMethod:v18 minimumSampleSize:v17 lastTimestampPreviousTest:v16 significanceLevel:v15 error:a9];

  return v22;
}

- (id)runChangeDetectionWithEvents:(id)a3 test:(id)a4 lastRun:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(Timeseries *)self underlyingObject];
  v12 = [v11 runChangeDetectionWithEvents:v10 test:v9 lastRun:v8];

  return v12;
}

@end