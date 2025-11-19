@interface _DPPrio3SumVectorRandomizer
+ (id)randomizerWithEpsilon:(double)a3 parameters:(id)a4;
- (BOOL)addNoiseToData:(id)a3 budgetAuditor:(id)a4 error:(id *)a5;
- (_DPPrio3SumVectorRandomizer)initWithEpsilon:(double)a3 parameters:(id)a4;
- (id)randomizeBitValue:(id)a3 budgetAuditor:(id)a4 metadata:(id)a5 error:(id *)a6;
- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)randomizeVector:(id)a3 budgetAuditor:(id)a4 error:(id *)a5;
- (id)recordWithShardResult:(id)a3 metadata:(id)a4 key:(id)a5;
- (id)shardWithBudgetAuditor:(id)a3 data:(id)a4 error:(id *)a5;
@end

@implementation _DPPrio3SumVectorRandomizer

- (_DPPrio3SumVectorRandomizer)initWithEpsilon:(double)a3 parameters:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 >= 0.0 && a3 <= 16.0)
  {
    v10 = [v7 objectForKeyedSubscript:@"Prio3SumVectorBitWidth"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 integerValue]!= 1)
    {
      v19 = +[_DPLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }

      v18 = 0;
      goto LABEL_27;
    }

    v19 = [v8 objectForKeyedSubscript:@"VDAFNumOfProofs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [_DPPrio3SumVectorShim isValidNumOfProofs:[v19 integerValue]])
    {
      v20 = [v8 objectForKeyedSubscript:@"VDAFType"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [_DPPrio3SumVectorShim isValidVDAFType:[v20 unsignedIntValue]])
      {
        v27.receiver = self;
        v27.super_class = _DPPrio3SumVectorRandomizer;
        v21 = [(_DPPrio3SumVectorRandomizer *)&v27 init];
        v22 = v21;
        if (v21)
        {
          v21->_defaultLocalEpsilon = a3;
          objc_storeStrong(&v21->_plistParameters, a4);
          v23 = [[_DPPrio3SumVectorParameter alloc] initWithBitWidth:[v10 integerValue] numOfAggregators:2 numOfProofs:[v19 integerValue] vdafType:[v20 unsignedIntValue]];
          parameters = v22->_parameters;
          v22->_parameters = v23;
        }

        self = v22;
        v18 = self;
        goto LABEL_26;
      }

      v25 = +[_DPLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }
    }

    else
    {
      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }
    }

    v18 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(_DPPrio3SumVectorRandomizer *)v10 initWithEpsilon:v11 parameters:v12, v13, v14, v15, v16, v17];
  }

  v18 = 0;
LABEL_28:

  return v18;
}

+ (id)randomizerWithEpsilon:(double)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithEpsilon:v6 parameters:a3];

  return v7;
}

- (BOOL)addNoiseToData:(id)a3 budgetAuditor:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_DPPrio3SumVectorRandomizer addNoiseToData:v9 budgetAuditor:? error:?];
    }

    LOBYTE(a5) = 1;
  }

  else
  {
    v10 = [v8 getSymmetricRAPPORLocalEpsilonWithError:a5];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = [_DPBiasedCoin coinWithBias:(1.0 / (exp(v12) + 1.0))];
      v14 = [v7 mutableBytes];
      if ([v7 length])
      {
        v15 = 0;
        while (*(v14 + v15) < 2u)
        {
          if ([v13 flip])
          {
            *(v14 + v15) = *(v14 + v15) == 0;
          }

          if (++v15 >= [v7 length])
          {
            goto LABEL_12;
          }
        }

        if (a5)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid value (%d) at position %zu", *(v14 + v15), v15];
          *a5 = _DPVDAFError(3, v16);

          LOBYTE(a5) = 0;
        }
      }

      else
      {
LABEL_12:
        LOBYTE(a5) = 1;
      }
    }

    else
    {
      LOBYTE(a5) = 0;
    }
  }

  return a5;
}

- (id)shardWithBudgetAuditor:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(_DPPrio3SumVectorRandomizer *)self addNoiseToData:v8 budgetAuditor:a3 error:a5])
  {
    v9 = [(_DPPrio3SumVectorRandomizer *)self parameters];
    v10 = [_DPPrio3SumVectorShim shard:v8 parameter:v9 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)randomizeBitValue:(id)a3 budgetAuditor:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [_DPRandomizerUtils dimensionFromMetadata:a5];
  v13 = v12;
  if (!v12)
  {
    if (a6)
    {
      _DPVDAFError(1, @"Fail to fetch dimension");
      *a6 = v17 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = [v12 unsignedLongValue];
  if (v14 <= 0x186A0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v14 > [v10 unsignedLongValue])
    {
      v18 = [MEMORY[0x277CBEB28] dataWithLength:v14];
      v19 = [v18 mutableBytes];
      *(v19 + [v10 unsignedLongValue]) = 1;
      v17 = [(_DPPrio3SumVectorRandomizer *)self shardWithBudgetAuditor:v11 data:v18 error:a6];

      goto LABEL_14;
    }

    if (a6)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"bitValue=(%@) >= dimension=(%@)", v10, v13];
      v16 = 2;
      goto LABEL_12;
    }
  }

  else if (a6)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", v14, 100000];
    v16 = 4;
LABEL_12:
    *a6 = _DPVDAFError(v16, v15);
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

- (id)randomizeVector:(id)a3 budgetAuditor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    if (a5)
    {
      _DPVDAFError(4, @"vector must not be nil");
      *a5 = v11 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v8 length] > 0x186A0)
  {
    if (a5)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", objc_msgSend(v8, "length"), 100000];
      *a5 = _DPVDAFError(4, v10);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CBEB28] dataWithData:v8];
  v11 = [(_DPPrio3SumVectorRandomizer *)self shardWithBudgetAuditor:v9 data:v12 error:a5];

LABEL_9:

  return v11;
}

- (id)recordWithShardResult:(id)a3 metadata:(id)a4 key:(id)a5
{
  v33[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dateWithTimeIntervalSinceNow:0.0];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  v15 = [v10 mutableCopy];
  v32[0] = @"Prio3SumVectorChunkLength";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "chunkLength")}];
  v33[0] = v16;
  v32[1] = @"Nonce";
  v17 = [v11 nonce];
  v33[1] = v17;
  v32[2] = @"PublicShare";
  v18 = [v11 publicShare];
  v33[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  [v15 setObject:v19 forKeyedSubscript:@"VDAF"];

  v20 = [_DPKeyProperties privatizationAlgorithmStringFor:16];
  [v15 setObject:v20 forKeyedSubscript:@"PrivatizationAlgorithmCache"];

  v21 = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v22 = [v21 copy];
  [v15 setObject:v22 forKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];

  v23 = [_DPPrioRecord alloc];
  v24 = [v11 inputShares];
  v25 = [v24 objectAtIndexedSubscript:0];
  v26 = [v11 inputShares];
  v27 = [v26 objectAtIndexedSubscript:1];
  v28 = [v11 dimension];

  v29 = [(_DPPrioRecord *)v23 initWithKey:v9 share1:v25 share2:v27 dimension:v28 metadata:v15 creationDate:0 submitted:v14 objectId:0];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v41 = 0;
  v11 = [_DPBudgetAuditor budgetAuditorFromMetadata:v9 plistParameters:v10 error:&v41];
  v12 = v41;

  if (v11)
  {
    v40 = v12;
    v13 = [v11 auditedMetadataWithError:&v40];
    v14 = v40;

    if (v13)
    {
      v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v8;
      v15 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v15)
      {
        v16 = v15;
        v28 = v9;
        v29 = v8;
        v33 = *v37;
        v34 = v11;
        do
        {
          v17 = 0;
          v18 = v14;
          do
          {
            if (*v37 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v36 + 1) + 8 * v17);
            v20 = [_DPLog framework:v28];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v43 = v19;
              _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "Start to privatize bitValue=%@", buf, 0xCu);
            }

            v21 = objc_autoreleasePoolPush();
            v35 = v18;
            v22 = [(_DPPrio3SumVectorRandomizer *)self randomizeBitValue:v19 budgetAuditor:v34 metadata:v13 error:&v35];
            v14 = v35;

            if (v22)
            {
              v23 = [(_DPPrio3SumVectorRandomizer *)self recordWithShardResult:v22 metadata:v13 key:v32];
              if (v23)
              {
                [v30 addObject:v23];
              }

              objc_autoreleasePoolPop(v21);
              v24 = +[_DPLog framework];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v43 = v19;
                _os_log_debug_impl(&dword_22622D000, v24, OS_LOG_TYPE_DEBUG, "Done to privatize bitValue=%@", buf, 0xCu);
              }
            }

            else
            {
              v25 = +[_DPLog framework];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v43 = v19;
                v44 = 2112;
                v45 = v14;
                _os_log_error_impl(&dword_22622D000, v25, OS_LOG_TYPE_ERROR, "Fail to privatize bitValue=%@ with error=%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v21);
            }

            ++v17;
            v18 = v14;
          }

          while (v16 != v17);
          v16 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v16);
        v9 = v28;
        v8 = v29;
        v11 = v34;
      }
    }

    else
    {
      obj = +[_DPLog framework];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
      }

      v30 = 0;
    }

    v12 = v14;
  }

  else
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
    }

    v30 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v38 = 0;
  v11 = [_DPBudgetAuditor budgetAuditorFromMetadata:v9 plistParameters:v10 error:&v38];
  v12 = v38;

  if (v11)
  {
    v37 = v12;
    v13 = [v11 auditedMetadataWithError:&v37];
    v14 = v37;

    v31 = v13;
    if (v13)
    {
      v28 = [MEMORY[0x277CBEBF8] mutableCopy];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v8;
      v15 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v15)
      {
        v16 = v15;
        v26 = v9;
        v27 = v8;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            v19 = v14;
            if (*v34 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v32 = v14;
            v22 = [(_DPPrio3SumVectorRandomizer *)self randomizeVector:v20 budgetAuditor:v11 error:&v32];
            v14 = v32;

            if (v22)
            {
              v23 = [(_DPPrio3SumVectorRandomizer *)self recordWithShardResult:v22 metadata:v31 key:v30];
              if (v23)
              {
                [v28 addObject:v23];
              }
            }

            else
            {
              v23 = +[_DPLog framework];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v40 = v20;
                v41 = 2112;
                v42 = v14;
                _os_log_error_impl(&dword_22622D000, v23, OS_LOG_TYPE_ERROR, "Fail to privatize vector=%@ with error=%@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v21);
          }

          v16 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v16);
        v9 = v26;
        v8 = v27;
      }
    }

    else
    {
      obj = +[_DPLog framework];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
      }

      v28 = 0;
    }

    v12 = v14;
  }

  else
  {
    v31 = +[_DPLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
    }

    v28 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)initWithEpsilon:parameters:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Invalid bitWidth = %@: must be one", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithEpsilon:parameters:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Invalid numOfProofs = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithEpsilon:parameters:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Unknown VDAFType = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithEpsilon:(uint64_t)a3 parameters:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_22622D000, a1, a3, "Invalid epsilon = %f.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)randomizeBitValues:metadata:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Donation failed DP auditing check, error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeBitValues:metadata:forKey:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Failed to create DP budget auditor, error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end