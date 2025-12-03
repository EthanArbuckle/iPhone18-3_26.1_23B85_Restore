@interface ICCloudThrottlingLevel
- (ICCloudThrottlingLevel)init;
- (ICCloudThrottlingLevel)initWithBatchInterval:(double)interval maximumBatchIntervalFactor:(double)factor numberOfBatches:(unint64_t)batches;
- (id)description;
@end

@implementation ICCloudThrottlingLevel

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ICCloudThrottlingLevel *)self batchInterval];
  v5 = v4;
  [(ICCloudThrottlingLevel *)self maximumBatchIntervalFactor];
  return [v3 stringWithFormat:@"<batchInterval=%d maximumBatchIntervalFactor=%d numberOfBatches=%d>", v5, v6, -[ICCloudThrottlingLevel numberOfBatches](self, "numberOfBatches")];
}

- (ICCloudThrottlingLevel)init
{
  [(ICCloudThrottlingLevel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICCloudThrottlingLevel)initWithBatchInterval:(double)interval maximumBatchIntervalFactor:(double)factor numberOfBatches:(unint64_t)batches
{
  v9.receiver = self;
  v9.super_class = ICCloudThrottlingLevel;
  result = [(ICCloudThrottlingLevel *)&v9 init];
  if (result)
  {
    result->_batchInterval = interval;
    result->_maximumBatchIntervalFactor = factor;
    result->_numberOfBatches = batches;
  }

  return result;
}

@end