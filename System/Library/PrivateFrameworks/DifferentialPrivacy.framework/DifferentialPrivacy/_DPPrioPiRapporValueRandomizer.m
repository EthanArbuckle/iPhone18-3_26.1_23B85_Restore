@interface _DPPrioPiRapporValueRandomizer
+ (id)shouldForwardToV2DelegateWithMetadata:(id)a3;
- (_DPPrioPiRapporValueRandomizer)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4 dynamicVectorSize:(BOOL)a5 piRapporPrime:(unsigned int)a6 piRapporAlpha0:(double)a7 piRapporAlpha1:(double)a8;
- (id)createDPPrioRecordFromPrivatizedShares:(id)a3 forKey:(id)a4 withMetadata:(id)a5 withCreationDate:(double)a6;
- (id)encodeClassIndices:(id)a3 withDimensionality:(unint64_t)a4;
- (id)minBatchSize;
- (id)randomize:(id)a3 metadata:(id)a4;
- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)randomizeVector:(id)a3 metadata:(id)a4;
- (id)v2MetadataFromMetadata:(id)a3;
- (id)v2Randomizer;
- (unint64_t)getAllocationSizeWithPiRapporAlgorithm:(id)a3 numberOfEncodedIndices:(unint64_t)a4;
- (void)minBatchSize;
@end

@implementation _DPPrioPiRapporValueRandomizer

- (_DPPrioPiRapporValueRandomizer)initWithEpsilon:(double)a3 dimensionality:(unint64_t)a4 dynamicVectorSize:(BOOL)a5 piRapporPrime:(unsigned int)a6 piRapporAlpha0:(double)a7 piRapporAlpha1:(double)a8
{
  v8 = self;
  if (!a4 || ((v10 = 16.0, a3 >= 0.0) ? (v11 = a3 > 16.0) : (v11 = 1), v11))
  {
LABEL_7:
    v12 = 0;
    goto LABEL_16;
  }

  v13 = a8;
  v14 = a7;
  v15 = a6;
  if (a6 || a7 != 0.0 || a8 != 0.0)
  {
    goto LABEL_13;
  }

  v18 = a3 - 2;
  if (v18 >= 9)
  {
    v21 = +[_DPLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer initWithEpsilon:dimensionality:dynamicVectorSize:piRapporPrime:piRapporAlpha0:piRapporAlpha1:];
    }

    goto LABEL_7;
  }

  v15 = kPrecomputedPrime[v18];
  v14 = kPrecomputedAlpha0[v18];
  v10 = 1.0;
  v13 = 1.0 - v14;
LABEL_13:
  v22.receiver = self;
  v22.super_class = _DPPrioPiRapporValueRandomizer;
  v19 = [(_DPPrioPiRapporValueRandomizer *)&v22 init];
  if (v19)
  {
    v19->_piRapporAlpha1 = v13;
    v19->_epsilon = a3;
    v19->_p = a4;
    v19->_dynamicVectorSize = a5;
    v19->_piRapporPrime = v15;
    v19->_piRapporAlpha0 = v14;
  }

  v8 = v19;
  v12 = v8;
LABEL_16:

  return v12;
}

- (id)randomize:(id)a3 metadata:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_DPPrioPiRapporValueRandomizer *)self p];
  if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AlgorithmParameters", @"Dimensionality"];
    v10 = [v7 valueForKeyPath:v9];
    v11 = v10;
    if (v10)
    {
      v8 = [v10 unsignedIntegerValue];
    }
  }

  if ([v6 unsignedIntegerValue] >= v8)
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer randomize:metadata:];
    }

    v13 = 0;
  }

  else
  {
    v16[0] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13 = [(_DPPrioPiRapporValueRandomizer *)self encodeClassIndices:v12 withDimensionality:v8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)randomizeVector:(id)a3 metadata:(id)a4
{
  v5 = a3;
  if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
  {
    v6 = [v5 length];
  }

  else
  {
    v6 = [(_DPPrioPiRapporValueRandomizer *)self p];
  }

  v7 = v6;
  if ([v5 length] == v6)
  {
    v8 = [MEMORY[0x277CBEBF8] mutableCopy];
    v9 = [v5 bytes];
    if ([v5 length])
    {
      v10 = 0;
      while (*(v9 + v10) < 2u)
      {
        if (*(v9 + v10))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          [v8 addObject:v11];
        }

        if (++v10 >= [v5 length])
        {
          goto LABEL_11;
        }
      }

      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPiRapporValueRandomizer randomizeVector:metadata:];
      }
    }

    else
    {
LABEL_11:
      if ([v8 count])
      {
        v12 = [(_DPPrioPiRapporValueRandomizer *)self encodeClassIndices:v8 withDimensionality:v7];
        goto LABEL_21;
      }

      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPiRapporValueRandomizer randomizeVector:metadata:];
      }
    }
  }

  else
  {
    v8 = +[_DPLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer randomizeVector:v5 metadata:?];
    }
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)encodeClassIndices:(id)a3 withDimensionality:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_DPPrioPiRapporValueRandomizer *)self piRapporPrime];
  [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha0];
  v9 = v8;
  [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha1];
  v11 = [_DPPiRapporAlgorithm piRapporWithNumberOfClasses:a4 prime:v7 alpha0:v9 alpha1:v10];
  if (!v11)
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

    goto LABEL_7;
  }

  v12 = [v6 count];
  if ([(_DPPrioPiRapporValueRandomizer *)self getAllocationSizeWithPiRapporAlgorithm:v11 numberOfEncodedIndices:v12]>= 0x100000)
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

LABEL_7:
    v14 = 0;
    goto LABEL_24;
  }

  [(_DPPrioPiRapporValueRandomizer *)self epsilon];
  v13 = +[_DPPrioAlgorithm prioWithEpsilon:dimensionality:](_DPPrioAlgorithm, "prioWithEpsilon:dimensionality:", v12 * [v11 prime], v15);
  if (!v13)
  {
    v28 = +[_DPLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

    goto LABEL_22;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [v11 encodeClassIndices:v6];
  if (!v17)
  {
    v29 = +[_DPLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

    objc_autoreleasePoolPop(v16);
    v28 = 0;
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 phi0];
  v20 = [v19 bytes];

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __72___DPPrioPiRapporValueRandomizer_encodeClassIndices_withDimensionality___block_invoke;
  v34 = &unk_27858B4E8;
  v37 = v12;
  v38 = v20;
  v21 = v11;
  v35 = v21;
  v36 = v6;
  v22 = [v13 privatizeDataWithLocalDP:0 withBlock:&v31];
  v23 = [v22 count];
  if (v23)
  {
    v24 = [v22 mutableCopy];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v24 setObject:v25 forKeyedSubscript:@"numberOfEncodedIndices"];

    v26 = [v18 otherPhi];
    [v24 setObject:v26 forKeyedSubscript:@"otherPhi"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "numberOfClasses")}];
    [v24 setObject:v27 forKeyedSubscript:@"dimensionality"];

    v28 = [v24 copy];
  }

  else
  {
    v24 = +[_DPLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

    v28 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!v23)
  {
LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v28 = v28;
  v14 = v28;
LABEL_23:

LABEL_24:

  return v14;
}

- (unint64_t)getAllocationSizeWithPiRapporAlgorithm:(id)a3 numberOfEncodedIndices:(unint64_t)a4
{
  v5 = a3;
  v6 = prio_share_length([v5 prime] * a4);
  v7 = +[_DPPrioSeedablePRNG seedLength];
  v8 = [v5 numberOfOtherPhi];

  return v7 + 4 * v6 + 8 * a4 * v8 + 56;
}

- (id)createDPPrioRecordFromPrivatizedShares:(id)a3 forKey:(id)a4 withMetadata:(id)a5 withCreationDate:(double)a6
{
  v10 = a3;
  v38 = a4;
  v37 = a5;
  v11 = [v10 objectForKeyedSubscript:@"share1"];
  v12 = [v10 objectForKeyedSubscript:@"share2"];
  v13 = [v10 objectForKeyedSubscript:@"numberOfEncodedIndices"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v10 objectForKeyedSubscript:@"otherPhi"];
  v16 = [[_DPDediscoPrioPiRapporShare alloc] initWithPrioShare:v11 numberOfEncodedIndices:v14 piRapporOtherPhi:v15];
  v40 = 0;
  v17 = [(_DPDediscoPrioPiRapporShare *)v16 serializeAndReturnError:&v40];
  v18 = v40;
  if (v18)
  {
    v19 = v18;
    v20 = +[_DPLog framework];
    if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer createDPPrioRecordFromPrivatizedShares:forKey:withMetadata:withCreationDate:];
    }

    v21 = 0;
  }

  else
  {
    v36 = v17;
    v20 = [[_DPDediscoPrioPiRapporShare alloc] initWithPrioShare:v12 numberOfEncodedIndices:v14 piRapporOtherPhi:v15];
    v39 = 0;
    v22 = [(_DPDediscoPrioPiRapporShare *)v20 serializeAndReturnError:&v39];
    v19 = v39;
    if (v19)
    {
      v23 = +[_DPLog framework];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_DPPrioPiRapporValueRandomizer createDPPrioRecordFromPrivatizedShares:forKey:withMetadata:withCreationDate:];
      }

      v21 = 0;
    }

    else
    {
      v34 = v12;
      v35 = v22;
      v32 = [v10 objectForKeyedSubscript:?];
      v24 = objc_opt_new();
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[_DPPrioPiRapporValueRandomizer piRapporPrime](self, "piRapporPrime")}];
      [v24 setObject:v25 forKeyedSubscript:@"PiRapporPrime"];

      v26 = MEMORY[0x277CCABB0];
      [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha0];
      v27 = [v26 numberWithDouble:?];
      [v24 setObject:v27 forKeyedSubscript:@"PiRapporAlpha0"];

      v28 = MEMORY[0x277CCABB0];
      [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha1];
      v29 = [v28 numberWithDouble:?];
      [v24 setObject:v29 forKeyedSubscript:@"PiRapporAlpha1"];

      v23 = v32;
      v30 = [v37 mutableCopy];
      v33 = v24;
      [v30 setObject:v24 forKeyedSubscript:@"AlgorithmParameters"];
      if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
      {
        [v30 setObject:v32 forKeyedSubscript:@"dimensionality"];
      }

      v22 = v35;
      v21 = [[_DPPrioRecord alloc] initWithKey:v38 share1:v36 share2:v35 dimension:[v32 longLongValue] metadata:v30 creationDate:0 submitted:a6 objectId:0];

      v12 = v34;
    }

    v17 = v36;
  }

  return v21;
}

+ (id)shouldForwardToV2DelegateWithMetadata:(id)a3
{
  v3 = a3;
  v4 = _DPDediscoVersionWithMetadata(v3);
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

- (id)minBatchSize
{
  [(_DPPrioPiRapporValueRandomizer *)self epsilon];
  if ((v3 - 12) > 0xFFFFFFF5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:minBatchSize_minBatchSizes[v3 - 2]];
  }

  else
  {
    v4 = +[_DPLog framework];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(_DPPrioPiRapporValueRandomizer *)self minBatchSize];
    }

    v5 = 0;
  }

  return v5;
}

- (id)v2Randomizer
{
  v3 = [(_DPPrioPiRapporValueRandomizer *)self minBatchSize];
  if (v3)
  {
    v4 = [_DPKeyProperties privatizationAlgorithmStringFor:20];
    v5 = [_DPAlgorithmParameters algorithmParametersForKey:v4];
    v6 = [v5 mutableCopy];

    [v6 setObject:v3 forKeyedSubscript:@"DefaultMinBatchSize"];
    v7 = MEMORY[0x277CCABB0];
    [(_DPPrioPiRapporValueRandomizer *)self epsilon];
    v8 = [v7 numberWithDouble:?];
    [v6 setObject:v8 forKeyedSubscript:@"epsilon"];

    v9 = [_DPPreambleRandomizer alloc];
    [(_DPPrioPiRapporValueRandomizer *)self epsilon];
    v10 = [(_DPPreambleRandomizer *)v9 initWithMaxCentralEpsilon:v6 parameter:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)v2MetadataFromMetadata:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Expecting v2 metadata but got nil"];
  }

  v5 = [v4 objectForKeyedSubscript:@"AlgorithmParameters"];
  v6 = [v5 objectForKeyedSubscript:@"Dimensionality"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v4;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [v4 objectForKeyedSubscript:@"AlgorithmParameters"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"AlgorithmParameters"];
      [v9 addEntriesFromDictionary:v12];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_DPPrioPiRapporValueRandomizer p](self, "p")}];
    [v9 setObject:v13 forKeyedSubscript:@"Dimensionality"];

    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(_DPPrioValueRandomizer *)self delegateMetadataFromMetadata:v14];
    }

    v8 = [v4 mutableCopy];
    [v8 setObject:v9 forKeyedSubscript:@"AlgorithmParameters"];
  }

  return v8;
}

- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() shouldForwardToV2DelegateWithMetadata:v9];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v13 = [(_DPPrioPiRapporValueRandomizer *)self v2Randomizer];
      v14 = [(_DPPrioPiRapporValueRandomizer *)self v2MetadataFromMetadata:v9];
      v15 = [v13 randomizeBitValues:v8 metadata:v14 forKey:v10];
    }

    else
    {
      v28 = v12;
      v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;

      v15 = [MEMORY[0x277CBEBF8] mutableCopy];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = v8;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [(_DPPrioPiRapporValueRandomizer *)self randomize:*(*(&v30 + 1) + 8 * i) metadata:v9];
            if ([v24 count])
            {
              v25 = [(_DPPrioPiRapporValueRandomizer *)self createDPPrioRecordFromPrivatizedShares:v24 forKey:v10 withMetadata:v9 withCreationDate:v18];
              if (v25)
              {
                [v15 addObject:v25];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v21);
      }

      v12 = v28;
      v8 = v29;
    }
  }

  else
  {
    v15 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() shouldForwardToV2DelegateWithMetadata:v9];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v13 = [(_DPPrioPiRapporValueRandomizer *)self v2Randomizer];
      v14 = [v13 randomizeBitVectors:v8 metadata:v9 forKey:v10];
    }

    else
    {
      v27 = v12;
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
      [v15 timeIntervalSinceReferenceDate];
      v17 = v16;

      v14 = [MEMORY[0x277CBEBF8] mutableCopy];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v8;
      v18 = v8;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [(_DPPrioPiRapporValueRandomizer *)self randomizeVector:*(*(&v29 + 1) + 8 * i) metadata:v9];
            if ([v23 count])
            {
              v24 = [(_DPPrioPiRapporValueRandomizer *)self createDPPrioRecordFromPrivatizedShares:v23 forKey:v10 withMetadata:v9 withCreationDate:v17];
              if (v24)
              {
                [v14 addObject:v24];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      v12 = v27;
      v8 = v28;
    }
  }

  else
  {
    v14 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)initWithEpsilon:dimensionality:dynamicVectorSize:piRapporPrime:piRapporAlpha0:piRapporAlpha1:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)randomize:metadata:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_22622D000, v1, OS_LOG_TYPE_ERROR, "Input bit position should be less than dimensionality (%lu), instead got %lu.", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)randomizeVector:(void *)a1 metadata:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeVector:metadata:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)randomizeVector:metadata:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeClassIndices:withDimensionality:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeClassIndices:withDimensionality:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeClassIndices:withDimensionality:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeClassIndices:withDimensionality:.cold.4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeClassIndices:withDimensionality:.cold.5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDPPrioRecordFromPrivatizedShares:forKey:withMetadata:withCreationDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)minBatchSize
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 epsilon];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end