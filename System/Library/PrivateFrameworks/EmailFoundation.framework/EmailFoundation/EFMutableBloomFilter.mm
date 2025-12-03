@interface EFMutableBloomFilter
- (EFMutableBloomFilter)initWithBucketCount:(unint64_t)count hashFunctionCount:(unint64_t)functionCount seed:(unint64_t)seed;
- (EFMutableBloomFilter)initWithFalsePositiveRate:(double)rate forExpectedCount:(unint64_t)count seed:(unint64_t)seed;
- (id)_initWithBucketCount:(unint64_t)count hashFunctionCount:(unint64_t)functionCount seed:(unint64_t)seed indexes:(id)indexes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addData:(id)data;
- (void)addString:(id)string;
@end

@implementation EFMutableBloomFilter

- (EFMutableBloomFilter)initWithFalsePositiveRate:(double)rate forExpectedCount:(unint64_t)count seed:(unint64_t)seed
{
  if (rate <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:515 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate > 0.0"}];
  }

  if (rate >= 1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate < 1.0"}];

    if (count)
    {
      goto LABEL_5;
    }
  }

  else if (count)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];

LABEL_5:
  v9 = log(rate);
  v10 = v9 * -1.44269504;
  if (v9 * -1.44269504 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = vcvtpd_u64_f64(fmin(v10, 100.0));
  v12 = v9 * -2.08136898;
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = vcvtpd_u64_f64(fmin(v12 * count, 9.22337204e18));

  return [(EFMutableBloomFilter *)self initWithBucketCount:v13 hashFunctionCount:v11];
}

- (EFMutableBloomFilter)initWithBucketCount:(unint64_t)count hashFunctionCount:(unint64_t)functionCount seed:(unint64_t)seed
{
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = [(EFMutableBloomFilter *)self _initWithBucketCount:count hashFunctionCount:functionCount seed:seed indexes:v9];

  return v10;
}

- (id)_initWithBucketCount:(unint64_t)count hashFunctionCount:(unint64_t)functionCount seed:(unint64_t)seed indexes:(id)indexes
{
  v10 = [indexes mutableCopy];
  v13.receiver = self;
  v13.super_class = EFMutableBloomFilter;
  v11 = [(EFBloomFilter *)&v13 _initWithBucketCount:count hashFunctionCount:functionCount seed:seed indexes:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EFBloomFilter alloc];
  bucketCount = [(EFBloomFilter *)self bucketCount];
  hashFunctionCount = [(EFBloomFilter *)self hashFunctionCount];
  seed = [(EFBloomFilter *)self seed];
  v8 = [(NSIndexSet *)self->super._indexes copy];
  v9 = [(EFBloomFilter *)v4 _initWithBucketCount:bucketCount hashFunctionCount:hashFunctionCount seed:seed indexes:v8];

  return v9;
}

- (void)addString:(id)string
{
  stringCopy = string;
  addStringToIndexes(self->super._indexes, stringCopy, [(EFBloomFilter *)self bucketCount], [(EFBloomFilter *)self hashFunctionCount], [(EFBloomFilter *)self seed]);
}

- (void)addData:(id)data
{
  dataCopy = data;
  addDataToIndexes(self->super._indexes, dataCopy, [(EFBloomFilter *)self bucketCount], [(EFBloomFilter *)self hashFunctionCount], [(EFBloomFilter *)self seed]);
}

@end