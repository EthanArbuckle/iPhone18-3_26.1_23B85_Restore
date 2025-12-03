@interface BPSAggregations
+ (id)approxPercentile;
+ (id)approxPercentileWithDigestCapacity:(unint64_t)capacity;
+ (id)approximateDistinctCount;
+ (id)avg;
+ (id)count;
+ (id)max;
+ (id)min;
+ (id)sum;
@end

@implementation BPSAggregations

+ (id)min
{
  v2 = [[BPSAggregator alloc] initWithAccumulator:0 closure:&__block_literal_global_6];

  return v2;
}

id __22__BPSAggregations_min__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AD98];
    [a2 floatValue];
    v8 = v7;
    [v5 floatValue];
    if (v8 < *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

+ (id)max
{
  v2 = [[BPSAggregator alloc] initWithAccumulator:0 closure:&__block_literal_global_19];

  return v2;
}

id __22__BPSAggregations_max__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AD98];
    [a2 floatValue];
    v8 = v7;
    [v5 floatValue];
    if (v8 >= *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

+ (id)count
{
  v2 = [[BPSAggregator alloc] initWithAccumulator:&unk_1F4870160 closure:&__block_literal_global_21];

  return v2;
}

uint64_t __24__BPSAggregations_count__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue] + 1;

  return [v2 numberWithInteger:v3];
}

+ (id)sum
{
  v2 = [[BPSAggregator alloc] initWithAccumulator:&unk_1F4870160 closure:&__block_literal_global_24];

  return v2;
}

uint64_t __22__BPSAggregations_sum__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 floatValue];
  v7 = v6;
  [v5 floatValue];
  v9 = v8;

  *&v10 = v7 + v9;
  return [v4 numberWithFloat:v10];
}

+ (id)avg
{
  v2 = [[BPSTuple alloc] initWithFirst:&unk_1F4870160 second:&unk_1F4870160];
  v3 = [[BPSAggregator alloc] initWithAccumulator:v2 closure:&__block_literal_global_28];

  return v3;
}

BPSTuple *__22__BPSAggregations_avg__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 first];
  [v6 floatValue];
  v8 = v7;

  v9 = [v5 second];

  v10 = [v9 integerValue];
  [v4 floatValue];
  v12 = v11;

  v13 = v12 + (v10++ * v8);
  v14 = v13 / v10;
  v15 = [BPSTuple alloc];
  *&v16 = v14;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v19 = [(BPSTuple *)v15 initWithFirst:v17 second:v18];

  return v19;
}

+ (id)approxPercentile
{
  v2 = [BPSAggregator alloc];
  v3 = [[BPSApproxPercentileDigest alloc] initWithCapacity:50];
  v4 = [(BPSAggregator *)v2 initWithAccumulator:v3 closure:&__block_literal_global_31];

  return v4;
}

id __35__BPSAggregations_approxPercentile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 floatValue];
  [v4 addValue:?];

  return v4;
}

+ (id)approxPercentileWithDigestCapacity:(unint64_t)capacity
{
  v4 = [BPSAggregator alloc];
  v5 = [[BPSApproxPercentileDigest alloc] initWithCapacity:capacity];
  v6 = [(BPSAggregator *)v4 initWithAccumulator:v5 closure:&__block_literal_global_34];

  return v6;
}

id __54__BPSAggregations_approxPercentileWithDigestCapacity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 floatValue];
  [v4 addValue:?];

  return v4;
}

+ (id)approximateDistinctCount
{
  v2 = [BPSAggregator alloc];
  v3 = objc_alloc_init(BPSApproximateDistinctCount);
  v4 = [(BPSAggregator *)v2 initWithAccumulator:v3 closure:&__block_literal_global_37];

  return v4;
}

id __43__BPSAggregations_approximateDistinctCount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [v4 addValue:{objc_msgSend(a3, "unsignedLongValue")}];

  return v4;
}

@end