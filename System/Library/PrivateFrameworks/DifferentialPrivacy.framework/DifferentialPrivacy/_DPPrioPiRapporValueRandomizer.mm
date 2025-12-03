@interface _DPPrioPiRapporValueRandomizer
+ (id)shouldForwardToV2DelegateWithMetadata:(id)metadata;
- (_DPPrioPiRapporValueRandomizer)initWithEpsilon:(double)epsilon dimensionality:(unint64_t)dimensionality dynamicVectorSize:(BOOL)size piRapporPrime:(unsigned int)prime piRapporAlpha0:(double)alpha0 piRapporAlpha1:(double)alpha1;
- (id)createDPPrioRecordFromPrivatizedShares:(id)shares forKey:(id)key withMetadata:(id)metadata withCreationDate:(double)date;
- (id)encodeClassIndices:(id)indices withDimensionality:(unint64_t)dimensionality;
- (id)minBatchSize;
- (id)randomize:(id)randomize metadata:(id)metadata;
- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key;
- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (id)randomizeVector:(id)vector metadata:(id)metadata;
- (id)v2MetadataFromMetadata:(id)metadata;
- (id)v2Randomizer;
- (unint64_t)getAllocationSizeWithPiRapporAlgorithm:(id)algorithm numberOfEncodedIndices:(unint64_t)indices;
- (void)minBatchSize;
@end

@implementation _DPPrioPiRapporValueRandomizer

- (_DPPrioPiRapporValueRandomizer)initWithEpsilon:(double)epsilon dimensionality:(unint64_t)dimensionality dynamicVectorSize:(BOOL)size piRapporPrime:(unsigned int)prime piRapporAlpha0:(double)alpha0 piRapporAlpha1:(double)alpha1
{
  selfCopy = self;
  if (!dimensionality || ((v10 = 16.0, epsilon >= 0.0) ? (v11 = epsilon > 16.0) : (v11 = 1), v11))
  {
LABEL_7:
    v12 = 0;
    goto LABEL_16;
  }

  alpha1Copy = alpha1;
  alpha0Copy = alpha0;
  primeCopy = prime;
  if (prime || alpha0 != 0.0 || alpha1 != 0.0)
  {
    goto LABEL_13;
  }

  v18 = epsilon - 2;
  if (v18 >= 9)
  {
    v21 = +[_DPLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer initWithEpsilon:dimensionality:dynamicVectorSize:piRapporPrime:piRapporAlpha0:piRapporAlpha1:];
    }

    goto LABEL_7;
  }

  primeCopy = kPrecomputedPrime[v18];
  alpha0Copy = kPrecomputedAlpha0[v18];
  v10 = 1.0;
  alpha1Copy = 1.0 - alpha0Copy;
LABEL_13:
  v22.receiver = self;
  v22.super_class = _DPPrioPiRapporValueRandomizer;
  v19 = [(_DPPrioPiRapporValueRandomizer *)&v22 init];
  if (v19)
  {
    v19->_piRapporAlpha1 = alpha1Copy;
    v19->_epsilon = epsilon;
    v19->_p = dimensionality;
    v19->_dynamicVectorSize = size;
    v19->_piRapporPrime = primeCopy;
    v19->_piRapporAlpha0 = alpha0Copy;
  }

  selfCopy = v19;
  v12 = selfCopy;
LABEL_16:

  return v12;
}

- (id)randomize:(id)randomize metadata:(id)metadata
{
  v16[1] = *MEMORY[0x277D85DE8];
  randomizeCopy = randomize;
  metadataCopy = metadata;
  unsignedIntegerValue = [(_DPPrioPiRapporValueRandomizer *)self p];
  if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AlgorithmParameters", @"Dimensionality"];
    v10 = [metadataCopy valueForKeyPath:v9];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }
  }

  if ([randomizeCopy unsignedIntegerValue] >= unsignedIntegerValue)
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
    v16[0] = randomizeCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13 = [(_DPPrioPiRapporValueRandomizer *)self encodeClassIndices:v12 withDimensionality:unsignedIntegerValue];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)randomizeVector:(id)vector metadata:(id)metadata
{
  vectorCopy = vector;
  if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
  {
    v6 = [vectorCopy length];
  }

  else
  {
    v6 = [(_DPPrioPiRapporValueRandomizer *)self p];
  }

  v7 = v6;
  if ([vectorCopy length] == v6)
  {
    v8 = [MEMORY[0x277CBEBF8] mutableCopy];
    bytes = [vectorCopy bytes];
    if ([vectorCopy length])
    {
      v10 = 0;
      while (*(bytes + v10) < 2u)
      {
        if (*(bytes + v10))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          [v8 addObject:v11];
        }

        if (++v10 >= [vectorCopy length])
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
      [_DPPrioPiRapporValueRandomizer randomizeVector:vectorCopy metadata:?];
    }
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)encodeClassIndices:(id)indices withDimensionality:(unint64_t)dimensionality
{
  indicesCopy = indices;
  piRapporPrime = [(_DPPrioPiRapporValueRandomizer *)self piRapporPrime];
  [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha0];
  v9 = v8;
  [(_DPPrioPiRapporValueRandomizer *)self piRapporAlpha1];
  v11 = [_DPPiRapporAlgorithm piRapporWithNumberOfClasses:dimensionality prime:piRapporPrime alpha0:v9 alpha1:v10];
  if (!v11)
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPiRapporValueRandomizer encodeClassIndices:withDimensionality:];
    }

    goto LABEL_7;
  }

  v12 = [indicesCopy count];
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
  v17 = [v11 encodeClassIndices:indicesCopy];
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
  phi0 = [v17 phi0];
  bytes = [phi0 bytes];

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __72___DPPrioPiRapporValueRandomizer_encodeClassIndices_withDimensionality___block_invoke;
  v34 = &unk_27858B4E8;
  v37 = v12;
  v38 = bytes;
  v21 = v11;
  v35 = v21;
  v36 = indicesCopy;
  v22 = [v13 privatizeDataWithLocalDP:0 withBlock:&v31];
  v23 = [v22 count];
  if (v23)
  {
    v24 = [v22 mutableCopy];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v24 setObject:v25 forKeyedSubscript:@"numberOfEncodedIndices"];

    otherPhi = [v18 otherPhi];
    [v24 setObject:otherPhi forKeyedSubscript:@"otherPhi"];

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

- (unint64_t)getAllocationSizeWithPiRapporAlgorithm:(id)algorithm numberOfEncodedIndices:(unint64_t)indices
{
  algorithmCopy = algorithm;
  v6 = prio_share_length([algorithmCopy prime] * indices);
  v7 = +[_DPPrioSeedablePRNG seedLength];
  numberOfOtherPhi = [algorithmCopy numberOfOtherPhi];

  return v7 + 4 * v6 + 8 * indices * numberOfOtherPhi + 56;
}

- (id)createDPPrioRecordFromPrivatizedShares:(id)shares forKey:(id)key withMetadata:(id)metadata withCreationDate:(double)date
{
  sharesCopy = shares;
  keyCopy = key;
  metadataCopy = metadata;
  v11 = [sharesCopy objectForKeyedSubscript:@"share1"];
  v12 = [sharesCopy objectForKeyedSubscript:@"share2"];
  v13 = [sharesCopy objectForKeyedSubscript:@"numberOfEncodedIndices"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  v15 = [sharesCopy objectForKeyedSubscript:@"otherPhi"];
  v16 = [[_DPDediscoPrioPiRapporShare alloc] initWithPrioShare:v11 numberOfEncodedIndices:unsignedIntegerValue piRapporOtherPhi:v15];
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
    v20 = [[_DPDediscoPrioPiRapporShare alloc] initWithPrioShare:v12 numberOfEncodedIndices:unsignedIntegerValue piRapporOtherPhi:v15];
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
      v32 = [sharesCopy objectForKeyedSubscript:?];
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
      v30 = [metadataCopy mutableCopy];
      v33 = v24;
      [v30 setObject:v24 forKeyedSubscript:@"AlgorithmParameters"];
      if ([(_DPPrioPiRapporValueRandomizer *)self dynamicVectorSize])
      {
        [v30 setObject:v32 forKeyedSubscript:@"dimensionality"];
      }

      v22 = v35;
      v21 = [[_DPPrioRecord alloc] initWithKey:keyCopy share1:v36 share2:v35 dimension:[v32 longLongValue] metadata:v30 creationDate:0 submitted:date objectId:0];

      v12 = v34;
    }

    v17 = v36;
  }

  return v21;
}

+ (id)shouldForwardToV2DelegateWithMetadata:(id)metadata
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
  minBatchSize = [(_DPPrioPiRapporValueRandomizer *)self minBatchSize];
  if (minBatchSize)
  {
    v4 = [_DPKeyProperties privatizationAlgorithmStringFor:20];
    v5 = [_DPAlgorithmParameters algorithmParametersForKey:v4];
    v6 = [v5 mutableCopy];

    [v6 setObject:minBatchSize forKeyedSubscript:@"DefaultMinBatchSize"];
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

- (id)v2MetadataFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Expecting v2 metadata but got nil"];
  }

  v5 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
  v6 = [v5 objectForKeyedSubscript:@"Dimensionality"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
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

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_DPPrioPiRapporValueRandomizer p](self, "p")}];
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
  v35 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [objc_opt_class() shouldForwardToV2DelegateWithMetadata:metadataCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v2Randomizer = [(_DPPrioPiRapporValueRandomizer *)self v2Randomizer];
      v14 = [(_DPPrioPiRapporValueRandomizer *)self v2MetadataFromMetadata:metadataCopy];
      v15 = [v2Randomizer randomizeBitValues:valuesCopy metadata:v14 forKey:keyCopy];
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
      v29 = valuesCopy;
      v19 = valuesCopy;
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

            v24 = [(_DPPrioPiRapporValueRandomizer *)self randomize:*(*(&v30 + 1) + 8 * i) metadata:metadataCopy];
            if ([v24 count])
            {
              v25 = [(_DPPrioPiRapporValueRandomizer *)self createDPPrioRecordFromPrivatizedShares:v24 forKey:keyCopy withMetadata:metadataCopy withCreationDate:v18];
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
      valuesCopy = v29;
    }
  }

  else
  {
    v15 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [objc_opt_class() shouldForwardToV2DelegateWithMetadata:metadataCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v2Randomizer = [(_DPPrioPiRapporValueRandomizer *)self v2Randomizer];
      v14 = [v2Randomizer randomizeBitVectors:vectorsCopy metadata:metadataCopy forKey:keyCopy];
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
      v28 = vectorsCopy;
      v18 = vectorsCopy;
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

            v23 = [(_DPPrioPiRapporValueRandomizer *)self randomizeVector:*(*(&v29 + 1) + 8 * i) metadata:metadataCopy];
            if ([v23 count])
            {
              v24 = [(_DPPrioPiRapporValueRandomizer *)self createDPPrioRecordFromPrivatizedShares:v23 forKey:keyCopy withMetadata:metadataCopy withCreationDate:v17];
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
      vectorsCopy = v28;
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
  [self epsilon];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end