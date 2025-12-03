@interface _DPPrioPlusPlusMetadataAlgorithm
+ (id)initializeWithDimensionality:(unint64_t)dimensionality;
- (_DPPrioPlusPlusMetadataAlgorithm)initWithDimensionality:(unint64_t)dimensionality;
- (id)randomize:(id)randomize;
- (void)dealloc;
@end

@implementation _DPPrioPlusPlusMetadataAlgorithm

+ (id)initializeWithDimensionality:(unint64_t)dimensionality
{
  v3 = [[self alloc] initWithDimensionality:dimensionality];

  return v3;
}

- (_DPPrioPlusPlusMetadataAlgorithm)initWithDimensionality:(unint64_t)dimensionality
{
  v10.receiver = self;
  v10.super_class = _DPPrioPlusPlusMetadataAlgorithm;
  v4 = [(_DPPrioPlusPlusMetadataAlgorithm *)&v10 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v4->_dimension = dimensionality;
  if (dimensionality && (2 * nextPowerOfTwo(dimensionality + 1)) <= 0x100000)
  {
    v8 = prio_memory_alloc(v5[1]);
    v5[2] = v8;
    if (!v8)
    {
      v6 = +[_DPLog framework];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPlusPlusMetadataAlgorithm initWithDimensionality:?];
      }

      goto LABEL_6;
    }

LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  v6 = +[_DPLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_DPPrioPlusPlusMetadataAlgorithm initWithDimensionality:?];
  }

LABEL_6:

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)dealloc
{
  prio_memory_free(self->_prioMemory);
  v3.receiver = self;
  v3.super_class = _DPPrioPlusPlusMetadataAlgorithm;
  [(_DPPrioPlusPlusMetadataAlgorithm *)&v3 dealloc];
}

- (id)randomize:(id)randomize
{
  v22[3] = *MEMORY[0x277D85DE8];
  randomizeCopy = randomize;
  dimension = [(_DPPrioPlusPlusMetadataAlgorithm *)self dimension];
  v6 = prio_share_length(dimension);
  v7 = [MEMORY[0x277CBEB28] dataWithLength:4 * v6];
  mutableBytes = [v7 mutableBytes];
  bytes = [randomizeCopy bytes];
  if (dimension)
  {
    v10 = mutableBytes;
    v11 = dimension;
    while (1)
    {
      v13 = *bytes++;
      v12 = v13;
      if (v13 >= 2)
      {
        break;
      }

      *v10++ = v12;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPlusPlusMetadataAlgorithm randomize:];
    }

    v18 = 0;
  }

  else
  {
LABEL_5:
    prio_encode(dimension, mutableBytes, v6, [(_DPPrioPlusPlusMetadataAlgorithm *)self prioMemory]);
    v14 = +[_DPPrioSeedablePRNG generateSeed];
    v15 = [_DPPrioSeedablePRNG randomDataFromSeed:v14 length:v6];
    v16 = v15;
    if (v15)
    {
      share_array_prng(mutableBytes, [v15 bytes], v6);
      v21[0] = @"share1";
      v21[1] = @"share2";
      v22[0] = v7;
      v22[1] = v14;
      v21[2] = @"dimensionality";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:dimension];
      v22[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    }

    else
    {
      v17 = +[_DPLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPlusPlusMetadataAlgorithm randomize:];
      }

      v18 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)initWithDimensionality:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDimensionality:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

@end