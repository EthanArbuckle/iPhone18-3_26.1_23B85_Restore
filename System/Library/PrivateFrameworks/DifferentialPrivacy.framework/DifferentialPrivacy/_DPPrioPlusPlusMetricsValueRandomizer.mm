@interface _DPPrioPlusPlusMetricsValueRandomizer
+ (id)randomizerWithEpsilon:(double)a3 delta:(double)a4 maxLength:(unint64_t)a5;
- (_DPPrioPlusPlusMetricsValueRandomizer)initWithEpsilon:(double)a3 delta:(double)a4 maxLength:(unint64_t)a5;
- (id)randomizeFloatVector:(id)a3 metadata:(id)a4;
- (id)randomizeFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
@end

@implementation _DPPrioPlusPlusMetricsValueRandomizer

- (_DPPrioPlusPlusMetricsValueRandomizer)initWithEpsilon:(double)a3 delta:(double)a4 maxLength:(unint64_t)a5
{
  v6 = a3 < 0.0 || a3 > 16.0;
  if (v6 || (a4 > 0.0 ? (v9 = a5 == 0) : (v9 = 1), v9))
  {
    v10 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _DPPrioPlusPlusMetricsValueRandomizer;
    v11 = [(_DPPrioPlusPlusMetricsValueRandomizer *)&v13 init];
    if (v11)
    {
      v11->_epsilon = a3;
      v11->_delta = a4;
      v11->_n = a5;
    }

    self = v11;
    v10 = self;
  }

  return v10;
}

+ (id)randomizerWithEpsilon:(double)a3 delta:(double)a4 maxLength:(unint64_t)a5
{
  v5 = [[a1 alloc] initWithEpsilon:a5 delta:a3 maxLength:a4];

  return v5;
}

- (id)randomizeFloatVector:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [v5 length] >> 2;
  n = self->_n;
  p_n = &self->_n;
  if (v6 <= n)
  {
    v10 = [_DPPrioPlusPlusMetricsAlgorithm initializeWithSecretSharingSigma:v6 dimensionality:1000.0];
    v9 = v10;
    if (v10)
    {
      v11 = [v10 randomize:v5];
      goto LABEL_10;
    }

    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPlusPlusMetricsValueRandomizer randomizeFloatVector:v12 metadata:?];
    }
  }

  else
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_DPPrioPlusPlusMetricsValueRandomizer *)p_n randomizeFloatVector:v6 metadata:v9];
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)randomizeFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v26 = a5;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(_DPPrioPlusPlusMetricsValueRandomizer *)self randomizeFloatVector:*(*(&v28 + 1) + 8 * i) metadata:v8];
        if ([v16 count])
        {
          v17 = [v16 objectForKeyedSubscript:@"share1"];
          v18 = [v16 objectForKeyedSubscript:@"share2"];
          v19 = [v16 objectForKeyedSubscript:@"dimensionality"];
          v20 = v8;
          v21 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", v26, v17, v18, [v19 longLongValue], v20, 0, v11, 0);
          if (v21)
          {
            [v24 addObject:v21];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)randomizeFloatVector:(os_log_t)log metadata:.cold.2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "Float vector dimension %lu exceeds limit %lu for PrioPlusPlusMetricsAlgorithm.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end