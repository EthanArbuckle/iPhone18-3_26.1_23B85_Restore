@interface EFMutableBloomFilter
- (EFMutableBloomFilter)initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5;
- (EFMutableBloomFilter)initWithFalsePositiveRate:(double)a3 forExpectedCount:(unint64_t)a4 seed:(unint64_t)a5;
- (id)_initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5 indexes:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addData:(id)a3;
- (void)addString:(id)a3;
@end

@implementation EFMutableBloomFilter

- (EFMutableBloomFilter)initWithFalsePositiveRate:(double)a3 forExpectedCount:(unint64_t)a4 seed:(unint64_t)a5
{
  if (a3 <= 0.0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:515 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate > 0.0"}];
  }

  if (a3 >= 1.0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate < 1.0"}];

    if (a4)
    {
      goto LABEL_5;
    }
  }

  else if (a4)
  {
    goto LABEL_5;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];

LABEL_5:
  v9 = log(a3);
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

  v13 = vcvtpd_u64_f64(fmin(v12 * a4, 9.22337204e18));

  return [(EFMutableBloomFilter *)self initWithBucketCount:v13 hashFunctionCount:v11];
}

- (EFMutableBloomFilter)initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = [(EFMutableBloomFilter *)self _initWithBucketCount:a3 hashFunctionCount:a4 seed:a5 indexes:v9];

  return v10;
}

- (id)_initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5 indexes:(id)a6
{
  v10 = [a6 mutableCopy];
  v13.receiver = self;
  v13.super_class = EFMutableBloomFilter;
  v11 = [(EFBloomFilter *)&v13 _initWithBucketCount:a3 hashFunctionCount:a4 seed:a5 indexes:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EFBloomFilter alloc];
  v5 = [(EFBloomFilter *)self bucketCount];
  v6 = [(EFBloomFilter *)self hashFunctionCount];
  v7 = [(EFBloomFilter *)self seed];
  v8 = [(NSIndexSet *)self->super._indexes copy];
  v9 = [(EFBloomFilter *)v4 _initWithBucketCount:v5 hashFunctionCount:v6 seed:v7 indexes:v8];

  return v9;
}

- (void)addString:(id)a3
{
  v4 = a3;
  addStringToIndexes(self->super._indexes, v4, [(EFBloomFilter *)self bucketCount], [(EFBloomFilter *)self hashFunctionCount], [(EFBloomFilter *)self seed]);
}

- (void)addData:(id)a3
{
  v4 = a3;
  addDataToIndexes(self->super._indexes, v4, [(EFBloomFilter *)self bucketCount], [(EFBloomFilter *)self hashFunctionCount], [(EFBloomFilter *)self seed]);
}

@end