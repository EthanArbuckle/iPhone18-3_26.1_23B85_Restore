@interface MBCKThroughputEstimator
- (MBCKThroughputEstimator)initWithSamplingPeriod:(double)period maximumNumberOfPeriods:(unint64_t)periods;
- (void)_storeAndComputeThroughput:(id)throughput;
- (void)finishSampling;
- (void)sampleUploadedBytes:(unint64_t)bytes;
@end

@implementation MBCKThroughputEstimator

- (MBCKThroughputEstimator)initWithSamplingPeriod:(double)period maximumNumberOfPeriods:(unint64_t)periods
{
  v10.receiver = self;
  v10.super_class = MBCKThroughputEstimator;
  v6 = [(MBCKThroughputEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(MBCKThroughputEstimator *)v6 setSamplingPeriod:period];
    [(MBCKThroughputEstimator *)v7 setMaxSamplingPeriods:periods];
    v8 = objc_opt_new();
    [(MBCKThroughputEstimator *)v7 setThroughputs:v8];

    [(MBCKThroughputEstimator *)v7 setStartDateOfCurrentPeriod:0];
    [(MBCKThroughputEstimator *)v7 setUploadedBytesInCurrentPeriod:0];
    atomic_store(0, &v7->_retriesInCurrentPeriod);
  }

  return v7;
}

- (void)sampleUploadedBytes:(unint64_t)bytes
{
  obj = self;
  objc_sync_enter(obj);
  v4 = +[NSDate now];
  startDateOfCurrentPeriod = [(MBCKThroughputEstimator *)obj startDateOfCurrentPeriod];

  if (!startDateOfCurrentPeriod)
  {
    [(MBCKThroughputEstimator *)obj setStartDateOfCurrentPeriod:v4];
  }

  startDateOfCurrentPeriod2 = [(MBCKThroughputEstimator *)obj startDateOfCurrentPeriod];
  [v4 timeIntervalSinceDate:startDateOfCurrentPeriod2];
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
    bytes += [(MBCKThroughputEstimator *)obj uploadedBytesInCurrentPeriod];
  }

  [(MBCKThroughputEstimator *)obj setUploadedBytesInCurrentPeriod:bytes];

  objc_sync_exit(obj);
}

- (void)_storeAndComputeThroughput:(id)throughput
{
  throughputCopy = throughput;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  startDateOfCurrentPeriod = [(MBCKThroughputEstimator *)selfCopy startDateOfCurrentPeriod];

  if (startDateOfCurrentPeriod)
  {
    v6 = +[NSDateFormatter ISO8601Formatter];
    startDateOfCurrentPeriod2 = [(MBCKThroughputEstimator *)selfCopy startDateOfCurrentPeriod];
    v8 = [v6 stringFromDate:startDateOfCurrentPeriod2];

    v9 = atomic_exchange(&selfCopy->_retriesInCurrentPeriod, 0);
    uploadedBytesInCurrentPeriod = [(MBCKThroughputEstimator *)selfCopy uploadedBytesInCurrentPeriod];
    startDateOfCurrentPeriod3 = [(MBCKThroughputEstimator *)selfCopy startDateOfCurrentPeriod];
    [throughputCopy timeIntervalSinceDate:startDateOfCurrentPeriod3];
    v13 = (uploadedBytesInCurrentPeriod / v12);

    throughputs = selfCopy->_throughputs;
    v15 = [NSString stringWithFormat:@"%@|%lu|%lu", v8, v13, v9];
    [(NSMutableArray *)throughputs addObject:v15];

    v16 = [(NSMutableArray *)selfCopy->_throughputs count];
    if (v16 > [(MBCKThroughputEstimator *)selfCopy maxSamplingPeriods])
    {
      [(NSMutableArray *)selfCopy->_throughputs removeObjectAtIndex:0];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)finishSampling
{
  v3 = +[NSDate now];
  [(MBCKThroughputEstimator *)self _storeAndComputeThroughput:v3];
}

@end