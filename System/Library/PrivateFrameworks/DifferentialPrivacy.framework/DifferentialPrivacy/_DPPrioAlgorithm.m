@interface _DPPrioAlgorithm
+ (id)prioWithEpsilon:(double)a3 dimensionality:(unint64_t)a4;
- (_DPPrioAlgorithm)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4;
- (id)privatizeDataWithLocalDP:(BOOL)a3 withBlock:(id)a4;
- (void)dealloc;
@end

@implementation _DPPrioAlgorithm

- (_DPPrioAlgorithm)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4
{
  v5 = self;
  if (a3 < 0.0 || a3 > 16.0)
  {
    goto LABEL_15;
  }

  v15.receiver = self;
  v15.super_class = _DPPrioAlgorithm;
  v8 = [(_DPPrioAlgorithm *)&v15 init];
  v5 = v8;
  if (v8)
  {
    v8->_dimension = a4;
    v8->_epsilon = a3;
    v9 = [_DPBiasedCoin coinWithBias:(1.0 / (exp(a3) + 1.0))];
    coin = v5->_coin;
    v5->_coin = v9;

    if ((2 * nextPowerOfTwo(a4 + 1)) > 0x100000)
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioAlgorithm initWithEpsilon:? dimensionality:?];
      }

LABEL_14:

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    v12 = prio_memory_alloc(v5->_dimension);
    v5->_prioMemory = v12;
    if (!v12)
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioAlgorithm initWithEpsilon:? dimensionality:?];
      }

      goto LABEL_14;
    }
  }

  v5 = v5;
  v13 = v5;
LABEL_16:

  return v13;
}

- (void)dealloc
{
  prio_memory_free(self->_prioMemory);
  v3.receiver = self;
  v3.super_class = _DPPrioAlgorithm;
  [(_DPPrioAlgorithm *)&v3 dealloc];
}

+ (id)prioWithEpsilon:(double)a3 dimensionality:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithEpsilon:a4 dimensionality:a3];

  return v4;
}

- (id)privatizeDataWithLocalDP:(BOOL)a3 withBlock:(id)a4
{
  v4 = a3;
  v25[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(_DPPrioAlgorithm *)self dimension];
  v8 = prio_share_length(v7);
  v9 = +[_DPPrioSeedablePRNG seedLength];
  v10 = [MEMORY[0x277CBEB28] dataWithLength:4 * v8];
  if (v10)
  {
    v23 = v6;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    v12 = [v10 mutableBytes];
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v9, [v11 mutableBytes]))
    {
      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioAlgorithm privatizeDataWithLocalDP:withBlock:];
      }
    }

    else
    {
      if (v6[2](v6, v12, v7))
      {
        if (v7 && v4)
        {
          v15 = v12;
          v16 = v7;
          do
          {
            v17 = [(_DPPrioAlgorithm *)self coin];
            v18 = [v17 flip];

            if (v18)
            {
              *v15 = *v15 == 0;
            }

            ++v15;
            --v16;
          }

          while (v16);
        }

        prio_encode(v7, v12, v8, [(_DPPrioAlgorithm *)self prioMemory]);
        v19 = [_DPPrioSeedablePRNG randomDataFromSeed:v11 length:v8];
        v13 = v19;
        if (v19)
        {
          share_array_prng(v12, [v19 bytes], v8);
          v24[0] = @"share1";
          v24[1] = @"share2";
          v25[0] = v10;
          v25[1] = v11;
          v24[2] = @"dimensionality";
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
          v25[2] = v20;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
        }

        else
        {
          v20 = +[_DPLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [_DPPrioAlgorithm privatizeDataWithLocalDP:withBlock:];
          }

          v14 = 0;
        }

        v6 = v23;

        goto LABEL_20;
      }

      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioAlgorithm privatizeDataWithLocalDP:withBlock:];
      }
    }

    v14 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v11 = +[_DPLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_DPPrioAlgorithm privatizeDataWithLocalDP:withBlock:];
  }

  v14 = 0;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)initWithEpsilon:(uint64_t *)a1 dimensionality:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithEpsilon:(uint64_t *)a1 dimensionality:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)privatizeDataWithLocalDP:withBlock:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end