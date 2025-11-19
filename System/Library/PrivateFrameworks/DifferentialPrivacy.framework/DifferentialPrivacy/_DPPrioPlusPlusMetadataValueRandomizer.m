@interface _DPPrioPlusPlusMetadataValueRandomizer
- (_DPPrioPlusPlusMetadataValueRandomizer)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4 dynamicVectorSize:(BOOL)a5;
- (id)randomizeBitVector:(id)a3 metadata:(id)a4;
- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
@end

@implementation _DPPrioPlusPlusMetadataValueRandomizer

- (_DPPrioPlusPlusMetadataValueRandomizer)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4 dynamicVectorSize:(BOOL)a5
{
  if (!a4 || (a3 >= 0.0 ? (v6 = a3 > 16.0) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _DPPrioPlusPlusMetadataValueRandomizer;
    v10 = [(_DPPrioPlusPlusMetadataValueRandomizer *)&v12 init];
    if (v10)
    {
      v10->_epsilon = a3;
      v10->_p = a4;
      v10->_dynamicVectorSize = a5;
    }

    self = v10;
    v7 = self;
  }

  return v7;
}

- (id)randomizeBitVector:(id)a3 metadata:(id)a4
{
  v5 = a3;
  if ([(_DPPrioPlusPlusMetadataValueRandomizer *)self dynamicVectorSize])
  {
    v6 = [v5 length];
  }

  else
  {
    v6 = [(_DPPrioPlusPlusMetadataValueRandomizer *)self p];
  }

  v7 = v6;
  v8 = [v5 bytes];
  if ([v5 length])
  {
    v9 = 0;
    while (*(v8 + v9) <= 1u)
    {
      if (++v9 >= [v5 length])
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_8:
    v10 = [_DPPrioPlusPlusMetadataAlgorithm initializeWithDimensionality:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 randomize:v5];
    }

    else
    {
      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPlusPlusMetadataValueRandomizer randomizeBitVector:v13 metadata:?];
      }

      v12 = 0;
    }
  }

  return v12;
}

- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v28 = a5;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v26 = [MEMORY[0x277CBEBF8] mutableCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v29 = *v32;
    do
    {
      v14 = 0;
      v25 = v13;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [(_DPPrioPlusPlusMetadataValueRandomizer *)self randomizeBitVector:*(*(&v31 + 1) + 8 * v14) metadata:v8];
        if ([v15 count])
        {
          v16 = [v15 objectForKeyedSubscript:@"share1"];
          v17 = [v15 objectForKeyedSubscript:@"share2"];
          v18 = [v15 objectForKeyedSubscript:@"dimensionality"];
          v19 = v8;
          if ([(_DPPrioPlusPlusMetadataValueRandomizer *)self dynamicVectorSize])
          {
            v20 = [v19 mutableCopy];
            [v20 setObject:v18 forKey:@"dimensionality"];
            v21 = [v20 copy];

            v19 = v21;
            v13 = v25;
          }

          v22 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", v28, v16, v17, [v18 longLongValue], v19, 0, v11, 0);
          if (v22)
          {
            [v26 addObject:v22];
          }
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

@end