@interface _DPPrioValueRandomizer
+ (id)randomizerWithEpsilon:(double)epsilon parameters:(id)parameters;
+ (id)shouldForwardToDelegateWithMetadata:(id)metadata;
- (_DPPrioValueRandomizer)initWithEpsilon:(double)epsilon parameters:(id)parameters;
- (id)delegateMetadataFromMetadata:(id)metadata;
- (id)delegateRandomizer;
- (id)randomize:(id)randomize withLocalEpsilon:(double)epsilon metadata:(id)metadata;
- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key;
- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (id)randomizeVector:(id)vector withLocalEpsilon:(double)epsilon metadata:(id)metadata;
- (void)delegateRandomizer;
@end

@implementation _DPPrioValueRandomizer

- (_DPPrioValueRandomizer)initWithEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v8 = parametersCopy;
  if (epsilon < 0.0 || epsilon > 16.0)
  {
    selfCopy = 0;
  }

  else
  {
    if (parametersCopy)
    {
      v11 = [parametersCopy objectForKeyedSubscript:{@"p", 16.0}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 unsignedIntegerValue])
      {
        v12 = [v8 objectForKeyedSubscript:@"dynamicVectorSize"];
        bOOLValue = [v12 BOOLValue];
        v17.receiver = self;
        v17.super_class = _DPPrioValueRandomizer;
        v14 = [(_DPPrioValueRandomizer *)&v17 init];
        v15 = v14;
        if (v14)
        {
          v14->_defaultLocalEpsilon = epsilon;
          v14->_p = [v11 unsignedIntegerValue];
          v15->_dynamicVectorSize = bOOLValue;
          objc_storeStrong(&v15->_plistParameters, parameters);
        }

        self = v15;
        selfCopy = self;
      }

      else
      {
        v12 = +[_DPLog framework];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_DPPrioValueRandomizer initWithEpsilon:parameters:];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioValueRandomizer initWithEpsilon:parameters:];
      }

      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)randomizerWithEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [[self alloc] initWithEpsilon:parametersCopy parameters:epsilon];

  return v7;
}

- (id)randomize:(id)randomize withLocalEpsilon:(double)epsilon metadata:(id)metadata
{
  randomizeCopy = randomize;
  metadataCopy = metadata;
  unsignedIntegerValue = [(_DPPrioValueRandomizer *)self p];
  if ([(_DPPrioValueRandomizer *)self dynamicVectorSize])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AlgorithmParameters", @"Dimensionality"];
    v12 = [metadataCopy valueForKeyPath:v11];
    v13 = v12;
    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
    }
  }

  if (unsignedIntegerValue < 0x186A1)
  {
    v14 = [_DPPrioAlgorithm prioWithEpsilon:unsignedIntegerValue dimensionality:epsilon];
    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __62___DPPrioValueRandomizer_randomize_withLocalEpsilon_metadata___block_invoke;
      v18[3] = &unk_27858B498;
      v19 = randomizeCopy;
      v15 = [v14 privatizeDataWithBlock:v18];
      v16 = v19;
    }

    else
    {
      v16 = +[_DPLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioValueRandomizer randomize:withLocalEpsilon:metadata:];
      }

      v15 = 0;
    }
  }

  else
  {
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioValueRandomizer randomize:withLocalEpsilon:metadata:];
    }

    v15 = 0;
  }

  return v15;
}

- (id)randomizeVector:(id)vector withLocalEpsilon:(double)epsilon metadata:(id)metadata
{
  vectorCopy = vector;
  if ([(_DPPrioValueRandomizer *)self dynamicVectorSize])
  {
    v8 = [vectorCopy length];
  }

  else
  {
    v8 = [(_DPPrioValueRandomizer *)self p];
  }

  v9 = [_DPPrioAlgorithm prioWithEpsilon:v8 dimensionality:epsilon];
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68___DPPrioValueRandomizer_randomizeVector_withLocalEpsilon_metadata___block_invoke;
    v13[3] = &unk_27858B498;
    v14 = vectorCopy;
    v10 = [v9 privatizeDataWithBlock:v13];
    v11 = v14;
  }

  else
  {
    v11 = +[_DPLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioValueRandomizer randomize:withLocalEpsilon:metadata:];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)shouldForwardToDelegateWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = _DPDediscoVersionWithMetadata(metadataCopy);
  if (v4 == 1)
  {
    v6 = MEMORY[0x277CBEC28];
  }

  else if (v4)
  {
    v6 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = +[_DPLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_DPPrioValueRandomizer shouldForwardToDelegateWithMetadata:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)delegateRandomizer
{
  v3 = [_DPKeyProperties privatizationAlgorithmStringFor:16];
  v4 = [_DPAlgorithmParameters algorithmParametersForKey:v3];
  v5 = [v4 mutableCopy];

  plistParameters = [(_DPPrioValueRandomizer *)self plistParameters];
  v7 = [plistParameters objectForKeyedSubscript:@"DefaultMinBatchSize"];

  if (v7)
  {
    plistParameters2 = [(_DPPrioValueRandomizer *)self plistParameters];
    v9 = [plistParameters2 objectForKeyedSubscript:@"DefaultMinBatchSize"];
    [v5 setObject:v9 forKeyedSubscript:@"DefaultMinBatchSize"];

    plistParameters3 = [(_DPPrioValueRandomizer *)self plistParameters];
    v11 = [plistParameters3 objectForKeyedSubscript:@"epsilon"];

    if (v11)
    {
      plistParameters4 = [(_DPPrioValueRandomizer *)self plistParameters];
      v13 = [plistParameters4 objectForKeyedSubscript:@"epsilon"];
      [v5 setObject:v13 forKeyedSubscript:@"epsilon"];
    }

    v14 = [_DPPrio3SumVectorRandomizer alloc];
    [(_DPPrioValueRandomizer *)self defaultLocalEpsilon];
    v15 = [(_DPPrio3SumVectorRandomizer *)v14 initWithEpsilon:v5 parameters:?];
  }

  else
  {
    v16 = +[_DPLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioValueRandomizer delegateRandomizer];
    }

    v15 = 0;
  }

  return v15;
}

- (id)delegateMetadataFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Expecting v2 metadata but got nil"];
  }

  if (_DPMetadataIsV2(metadataCopy))
  {
    goto LABEL_5;
  }

  v5 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
  v6 = [v5 objectForKeyedSubscript:@"Dimensionality"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_5:
    v8 = metadataCopy;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
      [dictionary addEntriesFromDictionary:v12];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_DPPrioValueRandomizer p](self, "p")}];
    [dictionary setObject:v13 forKeyedSubscript:@"Dimensionality"];

    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(_DPPrioValueRandomizer *)self delegateMetadataFromMetadata:v14];
    }

    v8 = [metadataCopy mutableCopy];
    [v8 setObject:dictionary forKeyedSubscript:@"AlgorithmParameters"];
  }

  return v8;
}

- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key
{
  v51 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  selfCopy = self;
  v10 = [objc_opt_class() shouldForwardToDelegateWithMetadata:metadataCopy];
  v11 = v10;
  if (v10)
  {
    if ([v10 BOOLValue])
    {
      v12 = +[_DPLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
      }

      delegateRandomizer = [(_DPPrioValueRandomizer *)self delegateRandomizer];
      v14 = [(_DPPrioValueRandomizer *)selfCopy delegateMetadataFromMetadata:metadataCopy];
      v38 = [delegateRandomizer randomizeBitValues:valuesCopy metadata:v14 forKey:keyCopy];
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
      [v15 timeIntervalSinceReferenceDate];
      v17 = v16;

      plistParameters = [(_DPPrioValueRandomizer *)self plistParameters];
      v49 = 0;
      v14 = [_DPBudgetAuditor budgetAuditorFromMetadata:metadataCopy plistParameters:plistParameters error:&v49];
      delegateRandomizer = v49;

      if (v14)
      {
        v48 = delegateRandomizer;
        v19 = [v14 getSymmetricRAPPORLocalEpsilonWithError:&v48];
        v20 = v48;

        v41 = v19;
        if (v19)
        {
          v47 = v20;
          v21 = [v14 auditedMetadataWithError:&v47];
          delegateRandomizer = v47;

          if (v21)
          {
            v37 = delegateRandomizer;
            v38 = [MEMORY[0x277CBEBF8] mutableCopy];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            obj = valuesCopy;
            v22 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v22)
            {
              v23 = v22;
              v34 = v14;
              v35 = v11;
              v36 = valuesCopy;
              v24 = *v44;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v44 != v24)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v26 = *(*(&v43 + 1) + 8 * i);
                  [v41 doubleValue];
                  v27 = [(_DPPrioValueRandomizer *)selfCopy randomize:v26 withLocalEpsilon:v21 metadata:?];
                  if ([v27 count])
                  {
                    v28 = [v27 objectForKeyedSubscript:@"share1"];
                    v29 = [v27 objectForKeyedSubscript:@"share2"];
                    v30 = [v27 objectForKeyedSubscript:@"dimensionality"];
                    v31 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", keyCopy, v28, v29, [v30 longLongValue], v21, 0, v17, 0);
                    if (v31)
                    {
                      [v38 addObject:v31];
                    }
                  }
                }

                v23 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
              }

              while (v23);
              valuesCopy = v36;
              v14 = v34;
              v11 = v35;
            }

            delegateRandomizer = v37;
          }

          else
          {
            obj = +[_DPLog framework];
            if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
            {
              [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
            }

            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          delegateRandomizer = v20;
        }
      }

      else
      {
        v41 = +[_DPLog framework];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
        }

        v38 = 0;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v56 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [objc_opt_class() shouldForwardToDelegateWithMetadata:metadataCopy];
  v12 = v11;
  if (!v11)
  {
    v44 = 0;
    goto LABEL_34;
  }

  if ([v11 BOOLValue])
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
    }

    delegateRandomizer = [(_DPPrioValueRandomizer *)self delegateRandomizer];
    v44 = [delegateRandomizer randomizeBitVectors:vectorsCopy metadata:metadataCopy forKey:keyCopy];
    goto LABEL_33;
  }

  v42 = v12;
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;

  plistParameters = [(_DPPrioValueRandomizer *)self plistParameters];
  v54 = 0;
  v19 = [_DPBudgetAuditor budgetAuditorFromMetadata:metadataCopy plistParameters:plistParameters error:&v54];
  delegateRandomizer = v54;

  v41 = v19;
  if (!v19)
  {
    v43 = +[_DPLog framework];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
    }

    v44 = 0;
    goto LABEL_32;
  }

  v20 = v19;
  v53 = delegateRandomizer;
  v21 = [v19 getSymmetricRAPPORLocalEpsilonWithError:&v53];
  v22 = v53;

  v43 = v21;
  if (v21)
  {
    v52 = v22;
    v23 = [v20 auditedMetadataWithError:&v52];
    v40 = v52;

    if (v23)
    {
      v38 = metadataCopy;
      v44 = [MEMORY[0x277CBEBF8] mutableCopy];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v39 = vectorsCopy;
      obj = vectorsCopy;
      v24 = v21;
      v47 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v47)
      {
        v46 = *v49;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v49 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v48 + 1) + 8 * i);
            [v24 doubleValue];
            v27 = [(_DPPrioValueRandomizer *)self randomizeVector:v26 withLocalEpsilon:v23 metadata:?];
            if ([v27 count])
            {
              v28 = [v27 objectForKeyedSubscript:@"share1"];
              v29 = [v27 objectForKeyedSubscript:@"share2"];
              v30 = [v27 objectForKeyedSubscript:@"dimensionality"];
              if ([(_DPPrioValueRandomizer *)self dynamicVectorSize])
              {
                v31 = [v23 mutableCopy];
                [v31 setObject:v30 forKey:@"dimensionality"];
                selfCopy = self;
                v33 = keyCopy;
                v34 = [v31 copy];

                v23 = v34;
                keyCopy = v33;
                self = selfCopy;
                v24 = v43;
              }

              v35 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:]([_DPPrioRecord alloc], "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", keyCopy, v28, v29, [v30 longLongValue], v23, 0, v17, 0);
              if (v35)
              {
                [v44 addObject:v35];
              }
            }
          }

          v47 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v47);
      }

      metadataCopy = v38;
      vectorsCopy = v39;
    }

    else
    {
      v23 = +[_DPLog framework];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        delegateRandomizer = v40;
        [_DPPrioValueRandomizer randomizeBitValues:metadata:forKey:];
        v44 = 0;
        goto LABEL_31;
      }

      v44 = 0;
    }

    delegateRandomizer = v40;
LABEL_31:

    goto LABEL_32;
  }

  v44 = 0;
  delegateRandomizer = v22;
LABEL_32:
  v12 = v42;

LABEL_33:
LABEL_34:

  v36 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)initWithEpsilon:parameters:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEpsilon:parameters:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)randomize:withLocalEpsilon:metadata:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)randomize:withLocalEpsilon:metadata:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)shouldForwardToDelegateWithMetadata:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)delegateRandomizer
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)delegateMetadataFromMetadata:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 p];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "Using default dimensionality %lu while forwarding to v2 route", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)randomizeBitValues:metadata:forKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)randomizeBitValues:metadata:forKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end