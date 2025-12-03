@interface _DPPrioPlusPlusValueRandomizer
+ (id)randomizerWithEpsilon:(double)epsilon delta:(double)delta maxLength:(unint64_t)length;
- (_DPPrioPlusPlusValueRandomizer)initWithEpsilon:(double)epsilon delta:(double)delta maxLength:(unint64_t)length;
- (id)randomizeFloatVector:(id)vector metadata:(id)metadata;
- (id)randomizeFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
@end

@implementation _DPPrioPlusPlusValueRandomizer

- (_DPPrioPlusPlusValueRandomizer)initWithEpsilon:(double)epsilon delta:(double)delta maxLength:(unint64_t)length
{
  v6 = epsilon < 0.0 || epsilon > 16.0;
  if (v6 || (delta > 0.0 ? (v9 = length == 0) : (v9 = 1), v9))
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _DPPrioPlusPlusValueRandomizer;
    v11 = [(_DPPrioPlusPlusValueRandomizer *)&v13 init];
    if (v11)
    {
      v11->_epsilon = epsilon;
      v11->_delta = delta;
      v11->_n = length;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)randomizerWithEpsilon:(double)epsilon delta:(double)delta maxLength:(unint64_t)length
{
  v5 = [[self alloc] initWithEpsilon:length delta:epsilon maxLength:delta];

  return v5;
}

- (id)randomizeFloatVector:(id)vector metadata:(id)metadata
{
  vectorCopy = vector;
  metadataCopy = metadata;
  v8 = [vectorCopy length] >> 2;
  p_n = &self->_n;
  if (v8 <= self->_n)
  {
    [(_DPPrioPlusPlusValueRandomizer *)self epsilon];
    v12 = v11;
    [(_DPPrioPlusPlusValueRandomizer *)self delta];
    v14 = [_DPRandomizerUtils auditedDPParametersWithMetadata:metadataCopy maxCentralEpsilon:v12 maxCentralDelta:v13];

    if (v14)
    {
      v15 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
      v16 = [v15 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
      [v16 doubleValue];
      v18 = v17;

      v19 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
      v20 = [v19 objectForKeyedSubscript:@"CurrentCohortSize"];

      if (v20)
      {
        v21 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
        v22 = [v21 objectForKeyedSubscript:@"CurrentCohortSize"];
        v18 = v18 / sqrt([v22 longLongValue]);
      }

      v23 = [_DPPrioPlusPlusAlgorithm initializeWithSigma:v8 secretSharingSigma:v18 dimensionality:1000.0];
      v10 = v23;
      if (v23)
      {
        v24 = [v23 randomize:vectorCopy];
        goto LABEL_15;
      }

      v25 = +[_DPLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPlusPlusValueRandomizer randomizeFloatVector:v25 metadata:?];
      }
    }

    else
    {
      v10 = +[_DPLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPlusPlusValueRandomizer randomizeFloatVector:v10 metadata:?];
      }
    }
  }

  else
  {
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_DPPrioPlusPlusValueRandomizer *)p_n randomizeFloatVector:v8 metadata:v10];
    }
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (id)randomizeFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v36 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v26 = [MEMORY[0x277CBEBF8] mutableCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = vectorsCopy;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v28 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [(_DPPrioPlusPlusValueRandomizer *)self randomizeFloatVector:*(*(&v31 + 1) + 8 * i) metadata:metadataCopy];
        if ([v15 count])
        {
          v16 = [v15 objectForKeyedSubscript:@"share1"];
          v17 = [v15 objectForKeyedSubscript:@"share2"];
          v18 = [v15 objectForKeyedSubscript:@"dimensionality"];
          v19 = [metadataCopy mutableCopy];
          v20 = [_DPKeyNames keyPropertiesForKey:keyCopy];
          dataSource = [v20 dataSource];

          if (dataSource)
          {
            v22 = [v15 objectForKeyedSubscript:@"NoisedData"];
            [v19 setObject:v22 forKeyedSubscript:@"NoisedData"];
          }

          v23 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", keyCopy, v16, v17, [v18 longLongValue], v19, 0, v11, 0);
          if (v23)
          {
            [v26 addObject:v23];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)randomizeFloatVector:(os_log_t)log metadata:.cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "Float vector dimension %lu exceeds limit %lu for PrioPlusPlusAlgorithm.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end