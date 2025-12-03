@interface NSArray(_DASAdditions)
+ (id)array:()_DASAdditions withItemsIn:;
+ (id)arrayWithIntersectionOf:()_DASAdditions and:;
+ (id)arrayWithObjectsFrom:()_DASAdditions;
+ (id)arrayWithUnionOf:()_DASAdditions and:;
- (double)cooccurrencesWith:()_DASAdditions;
- (double)correlationWith:()_DASAdditions;
- (double)mean;
- (double)standardDeviation;
- (double)standardDeviationWithMean:()_DASAdditions;
- (uint64_t)anyItemsIntersectArray:()_DASAdditions;
@end

@implementation NSArray(_DASAdditions)

+ (id)arrayWithIntersectionOf:()_DASAdditions and:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v6 containsObject:{v14, v18}])
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  objc_autoreleasePoolPop(v7);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)arrayWithUnionOf:()_DASAdditions and:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (([array containsObject:v14] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if (([array containsObject:{v20, v24}] & 1) == 0)
        {
          [array addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [array copy];
  objc_autoreleasePoolPop(v7);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)array:()_DASAdditions withItemsIn:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if ([v6 count])
    {
      v8 = v5;
      v9 = objc_autoreleasePoolPush();
      array = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if ([v7 containsObject:{v16, v21}])
            {
              [array addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v17 = [array count];
      if (v17 != [v11 count])
      {
        v18 = [array copy];

        v11 = v18;
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)arrayWithObjectsFrom:()_DASAdditions
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 count];
  v12 = [MEMORY[0x1E695DFA8] setWithObject:v10];
  v40 = &a10;
  v13 = a9;
  if (v13)
  {
    v14 = v13;
    while ([v14 conformsToProtocol:&unk_1F2EDE9E0])
    {
      v11 += [v14 count];
      [v12 addObject:v14];
      v15 = v40++;
      v16 = *v15;

      v14 = v16;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v18 = 0;
  }

  else
  {
LABEL_5:
    v17 = 2;
    if (v11 > 2)
    {
      v17 = v11;
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:1 << (log2((v17 - 1)) + 1)];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v12;
    v19 = [v14 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v31 = v10;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v33;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v33 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [v18 addObject:*(*(&v32 + 1) + 8 * j)];
              }

              v26 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v26);
          }
        }

        v20 = [v14 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v20);
      v10 = v31;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v18;
}

- (uint64_t)anyItemsIntersectArray:()_DASAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([self containsObject:{*(*(&v14 + 1) + 8 * i), v14}])
          {
            v11 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (double)mean
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if ([self count])
  {
    firstObject = [self firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      selfCopy = self;
      v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(selfCopy);
            }

            [*(*(&v13 + 1) + 8 * v9) doubleValue];
            v2 = v2 + v10;
            ++v9;
          }

          while (v7 != v9);
          v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v2 = v2 / [selfCopy count];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (double)standardDeviationWithMean:()_DASAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v13 + 1) + 8 * i) doubleValue];
        v7 = v7 + (v9 - a2) * (v9 - a2);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [selfCopy count];
  v11 = *MEMORY[0x1E69E9840];
  return sqrt(v7 / (v10 - 1));
}

- (double)standardDeviation
{
  if ([self count] < 2)
  {
    return 0.0;
  }

  firstObject = [self firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  [self mean];

  [self standardDeviationWithMean:?];
  return result;
}

- (double)cooccurrencesWith:()_DASAdditions
{
  v4 = a3;
  firstObject = [self firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v14 = 1.79769313e308;
    goto LABEL_12;
  }

  firstObject2 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = [v4 count];
  if (v8 != [self count])
  {
    goto LABEL_11;
  }

  if ([self count])
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [self objectAtIndexedSubscript:v9];
      v12 = [v4 objectAtIndexedSubscript:v9];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v10 = v10 + 1.0;
      }

      ++v9;
    }

    while (v9 < [self count]);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = v10 / [self count];
LABEL_12:

  return v14;
}

- (double)correlationWith:()_DASAdditions
{
  v4 = a3;
  firstObject = [self firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v14 = 1.79769313e308;
    goto LABEL_12;
  }

  firstObject2 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = [v4 count];
  if (v8 != [self count])
  {
    goto LABEL_11;
  }

  v9 = [self count];
  if (v9 < 2)
  {
    goto LABEL_11;
  }

  v10 = v9;
  [self mean];
  v12 = v11;
  [self standardDeviationWithMean:?];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v15 = v13;
    [v4 mean];
    v17 = v16;
    [v4 standardDeviationWithMean:?];
    if (v18 != 0.0)
    {
      v19 = v18;
      for (i = 0; i != v10; ++i)
      {
        v21 = [self objectAtIndexedSubscript:i];
        [v21 doubleValue];
        v23 = v22 - v12;
        v24 = [v4 objectAtIndexedSubscript:i];
        [v24 doubleValue];
        v14 = v14 + v23 * (v25 - v17);
      }

      v14 = 1.0 / (v10 - 1) * (v14 / (v15 * v19));
    }
  }

LABEL_12:

  return v14;
}

@end