@interface MBCKThroughputEstimator
- (MBCKThroughputEstimator)initWithSamplingPeriod:(double)a3 maximumNumberOfPeriods:(unint64_t)a4;
- (void)_storeAndComputeThroughput:(id)a3;
- (void)finishSampling;
- (void)sampleUploadedBytes:(unint64_t)a3;
@end

@implementation MBCKThroughputEstimator

- (MBCKThroughputEstimator)initWithSamplingPeriod:(double)a3 maximumNumberOfPeriods:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = MBCKThroughputEstimator;
  v6 = [(MBCKThroughputEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(MBCKThroughputEstimator *)v6 setSamplingPeriod:a3];
    [(MBCKThroughputEstimator *)v7 setMaxSamplingPeriods:a4];
    v8 = objc_opt_new();
    [(MBCKThroughputEstimator *)v7 setThroughputs:v8];

    [(MBCKThroughputEstimator *)v7 setStartDateOfCurrentPeriod:0];
    [(MBCKThroughputEstimator *)v7 setUploadedBytesInCurrentPeriod:0];
    atomic_store(0, &v7->_retriesInCurrentPeriod);
  }

  return v7;
}

- (void)sampleUploadedBytes:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = +[NSDate now];
  v5 = [(MBCKThroughputEstimator *)obj startDateOfCurrentPeriod];

  if (!v5)
  {
    [(MBCKThroughputEstimator *)obj setStartDateOfCurrentPeriod:v4];
  }

  v6 = [(MBCKThroughputEstimator *)obj startDateOfCurrentPeriod];
  [v4 timeIntervalSinceDate:v6];
  v8 = v7;
  [(MBCKThroughputEstimator *)obj samplingPeriod];
  v10 = v9;

  if (v8 >= v10)
  {
    [(MBCKThroughputEstimator *)obj _storeAndComputeThroughput:v4];
    [(MBCKThroughputEstimator *)obj setStartDateOfCurrentPeriod:v4];
  }

  else
  {
    a3 += [(MBCKThroughputEstimator *)obj uploadedBytesInCurrentPeriod];
  }

  [(MBCKThroughputEstimator *)obj setUploadedBytesInCurrentPeriod:a3];

  objc_sync_exit(obj);
}

- (void)_storeAndComputeThroughput:(id)a3
{
  v17 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MBCKThroughputEstimator *)v4 startDateOfCurrentPeriod];

  if (v5)
  {
    v6 = +[NSDateFormatter ISO8601Formatter];
    v7 = [(MBCKThroughputEstimator *)v4 startDateOfCurrentPeriod];
    v8 = [v6 stringFromDate:v7];

    v9 = atomic_exchange(&v4->_retriesInCurrentPeriod, 0);
    v10 = [(MBCKThroughputEstimator *)v4 uploadedBytesInCurrentPeriod];
    v11 = [(MBCKThroughputEstimator *)v4 startDateOfCurrentPeriod];
    [v17 timeIntervalSinceDate:v11];
    v13 = (v10 / v12);

    throughputs = v4->_throughputs;
    v15 = [NSString stringWithFormat:@"%@|%lu|%lu", v8, v13, v9];
    [(NSMutableArray *)throughputs addObject:v15];

    v16 = [(NSMutableArray *)v4->_throughputs count];
    if (v16 > [(MBCKThroughputEstimator *)v4 maxSamplingPeriods])
    {
      [(NSMutableArray *)v4->_throughputs removeObjectAtIndex:0];
    }
  }

  objc_sync_exit(v4);
}

- (void)finishSampling
{
  v3 = +[NSDate now];
  [(MBCKThroughputEstimator *)self _storeAndComputeThroughput:v3];
}

@end