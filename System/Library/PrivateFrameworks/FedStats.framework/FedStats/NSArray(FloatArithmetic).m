@interface NSArray(FloatArithmetic)
+ (id)arrayWithData:()FloatArithmetic;
- (id)arrayByElementwiseAdd:()FloatArithmetic;
- (id)arrayByScalingWith:()FloatArithmetic;
@end

@implementation NSArray(FloatArithmetic)

+ (id)arrayWithData:()FloatArithmetic
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = ldiv([v3 length], 4);
    if (v4.rem)
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NSArrayConstructorWithData" reason:@"FloatDataSizeNotDivisibleBy4" userInfo:0];
      objc_exception_throw(v13);
    }

    quot = v4.quot;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4.quot];
    v7 = [v3 bytes];
    if (v4.quot)
    {
      v9 = v7;
      do
      {
        v10 = *v9++;
        LODWORD(v8) = v10;
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        [v6 addObject:v11];

        --quot;
      }

      while (quot);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)arrayByElementwiseAdd:()FloatArithmetic
{
  v4 = a3;
  v5 = [a1 count];
  if (v5 != [v4 count])
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = @"DimensionMismatch";
    goto LABEL_11;
  }

  v6 = [v4 count];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = [a1 objectAtIndex:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v10 = [v4 objectAtIndex:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v11 = MEMORY[0x277CCABB0];
      [v9 floatValue];
      v13 = v12;
      [v10 floatValue];
      *&v15 = v13 + v14;
      v16 = [v11 numberWithFloat:v15];
      [v7 addObject:v16];

      if (v6 == ++v8)
      {
        goto LABEL_7;
      }
    }

    v18 = MEMORY[0x277CBEAD8];
    v19 = @"ItemNotNSNumber";
LABEL_11:
    v20 = [v18 exceptionWithName:@"NSArrayElementwiseAdd" reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

LABEL_7:

  return v7;
}

- (id)arrayByScalingWith:()FloatArithmetic
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NSArrayElementwiseAdd" reason:@"ItemNotNSNumber" userInfo:{0, v18}];
          objc_exception_throw(v17);
        }

        v11 = MEMORY[0x277CCABB0];
        [v10 floatValue];
        *&v13 = v12 * a2;
        v14 = [v11 numberWithFloat:v13];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

@end