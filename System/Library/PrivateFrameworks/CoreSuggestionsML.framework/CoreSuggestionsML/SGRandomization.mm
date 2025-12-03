@interface SGRandomization
+ (id)shuffledSamplingWithoutReplacementForK:(unint64_t)k fromN:(unint64_t)n withRng:(id)rng;
+ (void)shuffleMutableArray:(id)array inApproxEqualEpsilon:(double)epsilon withValueBlock:(id)block withRng:(id)rng;
+ (void)shuffleMutableArray:(id)array inRange:(_NSRange)range withRng:(id)rng;
+ (void)shuffleMutableArray:(id)array withRng:(id)rng;
@end

@implementation SGRandomization

+ (id)shuffledSamplingWithoutReplacementForK:(unint64_t)k fromN:(unint64_t)n withRng:(id)rng
{
  rngCopy = rng;
  if (k > n)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRandomization.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"k <= n"}];

    v10 = objc_opt_new();
  }

  else
  {
    v10 = objc_opt_new();
    if (!k)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
  do
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v11];
    [v10 addObject:v12];

    ++v11;
  }

  while (k != v11);
LABEL_5:
  [self shuffleMutableArray:v10 withRng:rngCopy];
  kCopy = k;
  if (k < n)
  {
    v14 = k + 1;
    do
    {
      if (rngCopy)
      {
        v15 = [rngCopy next] % v14;
      }

      else
      {
        v15 = arc4random_uniform(v14);
      }

      if (v15 < k)
      {
        v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:kCopy];
        [v10 setObject:v16 atIndexedSubscript:v15];
      }

      kCopy = v14++;
    }

    while (kCopy < n);
  }

  return v10;
}

+ (void)shuffleMutableArray:(id)array inApproxEqualEpsilon:(double)epsilon withValueBlock:(id)block withRng:(id)rng
{
  arrayCopy = array;
  blockCopy = block;
  rngCopy = rng;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRandomization.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"valueBlock"}];
  }

  if ([arrayCopy count] >= 2)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __83__SGRandomization_shuffleMutableArray_inApproxEqualEpsilon_withValueBlock_withRng___block_invoke;
    v19[3] = &unk_278EB8560;
    v22 = blockCopy;
    v23 = v26;
    epsilonCopy = epsilon;
    v24 = &v27;
    v14 = arrayCopy;
    v20 = v14;
    v15 = rngCopy;
    v21 = v15;
    [v14 enumerateObjectsUsingBlock:v19];
    v16 = v28[3];
    v17 = [v14 count];
    [SGRandomization shuffleMutableArray:v14 inRange:v16 withRng:v17 - v28[3], v15];

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(&v27, 8);
  }
}

void __83__SGRandomization_shuffleMutableArray_inApproxEqualEpsilon_withValueBlock_withRng___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 48) + 16))();
  v6 = v5;
  if (a3 && vabdd_f64(v5, *(*(*(a1 + 56) + 8) + 24)) >= *(a1 + 72))
  {
    v7 = *(*(*(a1 + 64) + 8) + 24);
    [SGRandomization shuffleMutableArray:*(a1 + 32) inRange:v7 withRng:a3 - v7, *(a1 + 40)];
    *(*(*(a1 + 64) + 8) + 24) = a3;
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

+ (void)shuffleMutableArray:(id)array inRange:(_NSRange)range withRng:(id)rng
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  rngCopy = rng;
  if (location + length > [arrayCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRandomization.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= mutableArray.count"}];
  }

  if (length >= 2)
  {
    for (i = (location + length - 1); i > location; LODWORD(length) = length - 1)
    {
      if (rngCopy)
      {
        v12 = [rngCopy next] % length;
      }

      else
      {
        v12 = arc4random_uniform(length);
      }

      [arrayCopy exchangeObjectAtIndex:i-- withObjectAtIndex:v12 + location];
    }
  }
}

+ (void)shuffleMutableArray:(id)array withRng:(id)rng
{
  rngCopy = rng;
  arrayCopy = array;
  +[SGRandomization shuffleMutableArray:inRange:withRng:](SGRandomization, "shuffleMutableArray:inRange:withRng:", arrayCopy, 0, [arrayCopy count], rngCopy);
}

@end