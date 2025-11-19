@interface BKEnrollPearlProgressInfo
- (BKEnrollPearlProgressInfo)initWithPercents:(int64_t)a3;
- (id)dictionary;
- (id)initFromDictionary:(id)a3;
- (id)initFromEnrollInfo:(id *)a3;
@end

@implementation BKEnrollPearlProgressInfo

- (BKEnrollPearlProgressInfo)initWithPercents:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = BKEnrollPearlProgressInfo;
  v4 = [(BKEnrollPearlProgressInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_percentageCompleted = a3;
    v6 = [MEMORY[0x1E695DEC8] array];
    enrolledPoses = v5->_enrolledPoses;
    v5->_enrolledPoses = v6;
  }

  return v5;
}

- (id)initFromEnrollInfo:(id *)a3
{
  if (a3)
  {
    v18.receiver = self;
    v18.super_class = BKEnrollPearlProgressInfo;
    v4 = [(BKEnrollPearlProgressInfo *)&v18 init];
    if (v4)
    {
      v17 = v4;
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(&a3->var2.var12 + 1))
      {
        v6 = 0;
        do
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          var13_low = LOWORD(a3->var2.var13);
          if (LOWORD(a3->var2.var13))
          {
            v9 = 0;
            v10 = &a3->var2.var13 + 2;
            do
            {
              v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v10[v6 * var13_low], v17}];
              [v7 addObject:v11];

              ++v9;
              var13_low = LOWORD(a3->var2.var13);
              ++v10;
            }

            while (v9 < var13_low);
          }

          v12 = [v7 copy];
          [v5 addObject:v12];

          ++v6;
        }

        while (v6 < *(&a3->var2.var12 + 1));
      }

      v13 = v17;
      v17->_percentageCompleted = a3->var1;
      v14 = [v5 copy];
      enrolledPoses = v13->_enrolledPoses;
      v13->_enrolledPoses = v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    [(BKEnrollPearlProgressInfo *)self initFromEnrollInfo:?];
    return v19;
  }

  return v13;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKEnrollPearlProgressInfo;
  v5 = [(BKEnrollPearlProgressInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"percentageCompleted"];
    v5->_percentageCompleted = [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"enrollPoses"];
    enrolledPoses = v5->_enrolledPoses;
    v5->_enrolledPoses = v7;
  }

  return v5;
}

- (id)dictionary
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"BKEnrollPearlProgressInfo";
  v8[0] = @"class";
  v8[1] = @"percentageCompleted";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_percentageCompleted];
  v8[2] = @"enrollPoses";
  enrolledPoses = self->_enrolledPoses;
  v9[1] = v3;
  v9[2] = enrolledPoses;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)initFromEnrollInfo:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = a1;
  v10 = *MEMORY[0x1E69E9840];
}

@end