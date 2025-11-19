@interface FISimpleHistogram
- (BOOL)isEqual:(id)a3;
- (FISimpleHistogram)initWithNumberOfBuckets:(int64_t)a3;
- (double)valueForBucketAtIndex:(unint64_t)a3;
- (id)debugDescription;
- (id)descriptionArray;
- (int64_t)numberOfValuesInBucketAtIndex:(unint64_t)a3;
- (void)addValue:(double)a3 toBucketAtIndex:(unint64_t)a4;
- (void)dealloc;
@end

@implementation FISimpleHistogram

- (FISimpleHistogram)initWithNumberOfBuckets:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = FISimpleHistogram;
  v4 = [(FISimpleHistogram *)&v8 init];
  v5 = v4;
  if (a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    if (v4)
    {
      v4->_bucketCount = a3;
      v4->_buckets = malloc_type_calloc(a3, 0x10uLL, 0x1000040451B5BE8uLL);
    }

    v6 = v5;
  }

  return v6;
}

- (void)dealloc
{
  free(self->_buckets);
  v3.receiver = self;
  v3.super_class = FISimpleHistogram;
  [(FISimpleHistogram *)&v3 dealloc];
}

- (double)valueForBucketAtIndex:(unint64_t)a3
{
  result = 0.0;
  if (self->_bucketCount > a3)
  {
    v4 = &self->_buckets[a3];
    if (v4->var0)
    {
      return v4->var1 / v4->var0;
    }
  }

  return result;
}

- (void)addValue:(double)a3 toBucketAtIndex:(unint64_t)a4
{
  if (self->_bucketCount > a4)
  {
    v4 = &self->_buckets[a4];
    ++v4->var0;
    v4->var1 = v4->var1 + a3;
  }
}

- (int64_t)numberOfValuesInBucketAtIndex:(unint64_t)a3
{
  if (self->_bucketCount <= a3)
  {
    return 0;
  }

  else
  {
    return self->_buckets[a3].var0;
  }
}

- (id)debugDescription
{
  v2 = [(FISimpleHistogram *)self descriptionArray];
  v3 = [v2 description];

  return v3;
}

- (id)descriptionArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_bucketCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      buckets = self->_buckets;
      var0 = buckets[v4].var0;
      if (var0)
      {
        v8 = buckets[v4].var1 / var0;
      }

      else
      {
        v8 = 0.0;
      }

      v9 = [&stru_285E60370 stringByPaddingToLength:v8 withString:@"*" startingAtIndex:0];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%02d] %06.2f ", v5, *&v8];
      v11 = [v10 stringByAppendingString:v9];
      [v3 addObject:v11];

      ++v5;
      ++v4;
    }

    while (self->_bucketCount > v5);
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 bucketCount];
      v7 = v6 == [(FISimpleHistogram *)self bucketCount]&& memcmp(v5[2], self->_buckets, 16 * self->_bucketCount) == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end