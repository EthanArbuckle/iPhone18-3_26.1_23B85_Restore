@interface SGRandomization
+ (id)shuffledSamplingWithoutReplacementForK:(unint64_t)a3 fromN:(unint64_t)a4 withRng:(id)a5;
+ (void)shuffleMutableArray:(id)a3 inApproxEqualEpsilon:(double)a4 withValueBlock:(id)a5 withRng:(id)a6;
+ (void)shuffleMutableArray:(id)a3 inRange:(_NSRange)a4 withRng:(id)a5;
+ (void)shuffleMutableArray:(id)a3 withRng:(id)a4;
@end

@implementation SGRandomization

+ (id)shuffledSamplingWithoutReplacementForK:(unint64_t)a3 fromN:(unint64_t)a4 withRng:(id)a5
{
  v9 = a5;
  if (a3 > a4)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"SGRandomization.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"k <= n"}];

    v10 = objc_opt_new();
  }

  else
  {
    v10 = objc_opt_new();
    if (!a3)
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

  while (a3 != v11);
LABEL_5:
  [a1 shuffleMutableArray:v10 withRng:v9];
  v13 = a3;
  if (a3 < a4)
  {
    v14 = a3 + 1;
    do
    {
      if (v9)
      {
        v15 = [v9 next] % v14;
      }

      else
      {
        v15 = arc4random_uniform(v14);
      }

      if (v15 < a3)
      {
        v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v13];
        [v10 setObject:v16 atIndexedSubscript:v15];
      }

      v13 = v14++;
    }

    while (v13 < a4);
  }

  return v10;
}

+ (void)shuffleMutableArray:(id)a3 inApproxEqualEpsilon:(double)a4 withValueBlock:(id)a5 withRng:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"SGRandomization.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"valueBlock"}];
  }

  if ([v11 count] >= 2)
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
    v22 = v12;
    v23 = v26;
    v25 = a4;
    v24 = &v27;
    v14 = v11;
    v20 = v14;
    v15 = v13;
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

+ (void)shuffleMutableArray:(id)a3 inRange:(_NSRange)a4 withRng:(id)a5
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v10 = a5;
  if (location + length > [v14 count])
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SGRandomization.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= mutableArray.count"}];
  }

  if (length >= 2)
  {
    for (i = (location + length - 1); i > location; LODWORD(length) = length - 1)
    {
      if (v10)
      {
        v12 = [v10 next] % length;
      }

      else
      {
        v12 = arc4random_uniform(length);
      }

      [v14 exchangeObjectAtIndex:i-- withObjectAtIndex:v12 + location];
    }
  }
}

+ (void)shuffleMutableArray:(id)a3 withRng:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[SGRandomization shuffleMutableArray:inRange:withRng:](SGRandomization, "shuffleMutableArray:inRange:withRng:", v6, 0, [v6 count], v5);
}

@end