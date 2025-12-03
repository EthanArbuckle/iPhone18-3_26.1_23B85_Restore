@interface _DPPrioPlusPlusMetadataValueRandomizer
- (_DPPrioPlusPlusMetadataValueRandomizer)initWithEpsilon:(double)epsilon dimensionality:(unint64_t)dimensionality dynamicVectorSize:(BOOL)size;
- (id)randomizeBitVector:(id)vector metadata:(id)metadata;
- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
@end

@implementation _DPPrioPlusPlusMetadataValueRandomizer

- (_DPPrioPlusPlusMetadataValueRandomizer)initWithEpsilon:(double)epsilon dimensionality:(unint64_t)dimensionality dynamicVectorSize:(BOOL)size
{
  if (!dimensionality || (epsilon >= 0.0 ? (v6 = epsilon > 16.0) : (v6 = 1), v6))
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _DPPrioPlusPlusMetadataValueRandomizer;
    v10 = [(_DPPrioPlusPlusMetadataValueRandomizer *)&v12 init];
    if (v10)
    {
      v10->_epsilon = epsilon;
      v10->_p = dimensionality;
      v10->_dynamicVectorSize = size;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)randomizeBitVector:(id)vector metadata:(id)metadata
{
  vectorCopy = vector;
  if ([(_DPPrioPlusPlusMetadataValueRandomizer *)self dynamicVectorSize])
  {
    v6 = [vectorCopy length];
  }

  else
  {
    v6 = [(_DPPrioPlusPlusMetadataValueRandomizer *)self p];
  }

  v7 = v6;
  bytes = [vectorCopy bytes];
  if ([vectorCopy length])
  {
    v9 = 0;
    while (*(bytes + v9) <= 1u)
    {
      if (++v9 >= [vectorCopy length])
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
      v12 = [v10 randomize:vectorCopy];
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

- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
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

        v15 = [(_DPPrioPlusPlusMetadataValueRandomizer *)self randomizeBitVector:*(*(&v31 + 1) + 8 * v14) metadata:metadataCopy];
        if ([v15 count])
        {
          v16 = [v15 objectForKeyedSubscript:@"share1"];
          v17 = [v15 objectForKeyedSubscript:@"share2"];
          v18 = [v15 objectForKeyedSubscript:@"dimensionality"];
          v19 = metadataCopy;
          if ([(_DPPrioPlusPlusMetadataValueRandomizer *)self dynamicVectorSize])
          {
            v20 = [v19 mutableCopy];
            [v20 setObject:v18 forKey:@"dimensionality"];
            v21 = [v20 copy];

            v19 = v21;
            v13 = v25;
          }

          v22 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", keyCopy, v16, v17, [v18 longLongValue], v19, 0, v11, 0);
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