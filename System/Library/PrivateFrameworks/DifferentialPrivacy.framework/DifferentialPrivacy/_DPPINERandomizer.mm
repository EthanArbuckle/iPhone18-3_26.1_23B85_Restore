@interface _DPPINERandomizer
+ (BOOL)isValidCentralEpsilon:(double)epsilon plistParameter:(id)parameter;
+ (id)randomizerWithMaxCentralEpsilon:(double)epsilon parameters:(id)parameters;
- (BOOL)isDPMechanismNoneForMetadata:(id)metadata;
- (_DPPINERandomizer)initWithMaxCentralEpsilon:(double)epsilon parameter:(id)parameter;
- (id)addNoiseToData:(id)data metadata:(id)metadata;
- (id)auditedMetadata:(id)metadata;
- (id)pineParameterWithMetadata:(id)metadata;
- (id)randomizeFloatVector:(id)vector metadata:(id)metadata;
- (id)randomizeFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (id)recordWithShardResult:(id)result noisedVector:(id)vector metadata:(id)metadata key:(id)key;
@end

@implementation _DPPINERandomizer

+ (BOOL)isValidCentralEpsilon:(double)epsilon plistParameter:(id)parameter
{
  v38 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  if (epsilon >= 0.0 && epsilon <= 16.0)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v36[0] = @"MaxCentralDelta";
    v36[1] = @"PINEFractionalBitCount";
    v36[2] = @"MaxDimension";
    v36[3] = @"PINEWraparoundCheckCount";
    v36[4] = @"VDAFType";
    v36[5] = @"VDAFNumOfProofs";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:6];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [parameterCopy objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = +[_DPLog framework];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              +[_DPPINERandomizer isValidCentralEpsilon:plistParameter:];
            }

            goto LABEL_25;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v14 = [parameterCopy objectForKeyedSubscript:@"VDAFType"];
    if (![_DPPINEShim isValidPINEType:[v14 unsignedIntValue]])
    {
      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[_DPPINERandomizer isValidCentralEpsilon:plistParameter:];
      }

      v27 = 0;
      goto LABEL_37;
    }

    v20 = [parameterCopy objectForKeyedSubscript:@"VDAFNumOfProofs"];
    if ([_DPPINEShim isValidNumOfProofs:[v20 unsignedCharValue]])
    {
      v21 = [parameterCopy objectForKeyedSubscript:@"PINEWraparoundCheckCount"];
      if ([_DPPINEShim isValidWraparoundCheckCount:[v21 unsignedCharValue]])
      {
        v22 = [parameterCopy objectForKeyedSubscript:@"MaxCentralDelta"];
        [v22 doubleValue];
        v24 = v23;

        if (v24 > 0.0)
        {
          v30 = [parameterCopy objectForKeyedSubscript:@"MaxDimension"];
          unsignedLongLongValue = [v30 unsignedLongLongValue];

          if ([_DPPrioPlusPlusNoiseGenerator isValidDimension:unsignedLongLongValue])
          {
            v27 = 1;
            goto LABEL_36;
          }

          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [_DPPINERandomizer isValidCentralEpsilon:parameterCopy plistParameter:@"MaxDimension"];
          }
        }

        else
        {
          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [_DPPINERandomizer isValidCentralEpsilon:parameterCopy plistParameter:@"MaxCentralDelta"];
          }
        }
      }

      else
      {
        v25 = +[_DPLog framework];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[_DPPINERandomizer isValidCentralEpsilon:plistParameter:];
        }
      }
    }

    else
    {
      v21 = +[_DPLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[_DPPINERandomizer isValidCentralEpsilon:plistParameter:];
      }
    }

    v27 = 0;
LABEL_36:

LABEL_37:
    goto LABEL_26;
  }

  v14 = +[_DPLog framework];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(_DPPrio3SumVectorRandomizer *)v14 initWithEpsilon:v7 parameters:v8, v9, v10, v11, v12, v13];
  }

LABEL_25:
  v27 = 0;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (_DPPINERandomizer)initWithMaxCentralEpsilon:(double)epsilon parameter:(id)parameter
{
  parameterCopy = parameter;
  if ([objc_opt_class() isValidCentralEpsilon:parameterCopy plistParameter:epsilon])
  {
    v13.receiver = self;
    v13.super_class = _DPPINERandomizer;
    v7 = [(_DPPINERandomizer *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_maxCentralEpsilon = epsilon;
      v9 = [parameterCopy copy];
      plistParameter = v8->_plistParameter;
      v8->_plistParameter = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)randomizerWithMaxCentralEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [[self alloc] initWithMaxCentralEpsilon:parametersCopy parameter:epsilon];

  return v7;
}

- (id)addNoiseToData:(id)data metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  v8 = [v7 objectForKeyedSubscript:@"DPConfig"];
  v9 = [v8 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];

  v13 = [v12 objectForKeyedSubscript:@"MinBatchSize"];

  if (!v13)
  {
    v20 = +[_DPLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_DPPINERandomizer addNoiseToData:metadata:];
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 longLongValue])
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DPPINERandomizer addNoiseToData:metadata:];
    }

    goto LABEL_10;
  }

  v14 = v11 / sqrt([v13 longLongValue]);
  if (![_DPPrioPlusPlusNoiseGenerator isValidSigma:v14])
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_DPPINERandomizer *)v19 addNoiseToData:v22 metadata:v23, v24, v25, v26, v27, v28];
    }

LABEL_10:

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v15 = [MEMORY[0x277CBEB28] dataWithData:dataCopy];
  mutableBytes = [v15 mutableBytes];
  v17 = [v15 length] >> 2;
  _DPClipNorm(mutableBytes, v17, 1.0);
  v18 = [_DPPrioPlusPlusNoiseGenerator randomize:v15 dimension:v17 stddev:v14];

  if (v18)
  {
    v18 = v15;
  }

LABEL_15:

  return v18;
}

- (id)pineParameterWithMetadata:(id)metadata
{
  v39 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  plistParameter = [(_DPPINERandomizer *)self plistParameter];
  v6 = [plistParameter objectForKeyedSubscript:@"PINEFractionalBitCount"];

  plistParameter2 = [(_DPPINERandomizer *)self plistParameter];
  v8 = [plistParameter2 objectForKeyedSubscript:@"VDAFNumOfProofs"];

  plistParameter3 = [(_DPPINERandomizer *)self plistParameter];
  v10 = [plistParameter3 objectForKeyedSubscript:@"PINEWraparoundCheckCount"];

  plistParameter4 = [(_DPPINERandomizer *)self plistParameter];
  v12 = [plistParameter4 objectForKeyedSubscript:@"VDAFType"];
  unsignedIntValue = [v12 unsignedIntValue];

  if (_DPMetadataIsV2(metadataCopy))
  {
    v14 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
    v15 = [v14 objectForKeyedSubscript:@"VDAFConfig"];

    v16 = [v15 objectForKeyedSubscript:@"L2NormBoundWithNoise"];
    v17 = [v15 objectForKeyedSubscript:@"FractionalBitCount"];

    if (v17)
    {
      v18 = [v15 objectForKeyedSubscript:@"FractionalBitCount"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 integerValue] < 0)
      {
        v19 = +[_DPLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v32 = @"DediscoTaskConfig";
          v33 = 2112;
          v34 = @"VDAFConfig";
          v35 = 2112;
          v36 = @"FractionalBitCount";
          v37 = 2112;
          v38 = v18;
          _os_log_error_impl(&dword_22622D000, v19, OS_LOG_TYPE_ERROR, "Invalid %@.%@.%@=%@", buf, 0x2Au);
        }

        v20 = 0;
LABEL_17:

        v6 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v18 = v6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      v21 = [_DPPINEParameter alloc];
      integerValue = [v18 integerValue];
      [v16 floatValue];
      v24 = v23;
      integerValue2 = [v8 integerValue];
      integerValue3 = [v10 integerValue];
      LODWORD(v27) = v24;
      v20 = [(_DPPINEParameter *)v21 initWithFractionalBitCount:integerValue l2NormBound:integerValue2 numOfProofs:integerValue3 wraparoundCheckCount:unsignedIntValue pineType:v27];
    }

    else
    {
      v28 = +[_DPLog framework];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_DPPINERandomizer pineParameterWithMetadata:];
      }

      v20 = 0;
    }

    goto LABEL_17;
  }

  v15 = +[_DPLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [_DPPINERandomizer pineParameterWithMetadata:v15];
  }

  v20 = 0;
LABEL_18:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isDPMechanismNoneForMetadata:(id)metadata
{
  metadataCopy = metadata;
  plistParameter = [(_DPPINERandomizer *)self plistParameter];
  if ([_DPAlgorithmParameters allowDPMechanismNone:plistParameter])
  {
    IsDPMechanismNone = _DPMetadataIsDPMechanismNone(metadataCopy);
  }

  else
  {
    IsDPMechanismNone = 0;
  }

  return IsDPMechanismNone;
}

- (id)auditedMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(_DPPINERandomizer *)self isDPMechanismNoneForMetadata:metadataCopy])
  {
    v5 = metadataCopy;
  }

  else
  {
    plistParameter = [(_DPPINERandomizer *)self plistParameter];
    v7 = [plistParameter objectForKeyedSubscript:@"MaxCentralDelta"];
    [v7 doubleValue];

    [(_DPPINERandomizer *)self maxCentralEpsilon];
    v5 = [_DPRandomizerUtils auditedDPParametersWithMetadata:"auditedDPParametersWithMetadata:maxCentralEpsilon:maxCentralDelta:" maxCentralEpsilon:metadataCopy maxCentralDelta:?];
  }

  v8 = v5;

  return v8;
}

- (id)randomizeFloatVector:(id)vector metadata:(id)metadata
{
  vectorCopy = vector;
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v8 = [vectorCopy length] >> 2;
  plistParameter = [(_DPPINERandomizer *)self plistParameter];
  v10 = [plistParameter objectForKeyedSubscript:@"MaxDimension"];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  if (v8 <= unsignedLongLongValue)
  {
    v12 = [(_DPPINERandomizer *)self pineParameterWithMetadata:metadataCopy];
    if (v12)
    {
      v14 = _DPL2Norm([vectorCopy bytes], v8);
      [v12 l2NormBound];
      if (v14 <= v15)
      {
        v19 = 0;
        v13 = [_DPPINEShim shard:vectorCopy parameter:v12 error:&v19];
        v16 = v19;
        if (!v13)
        {
          v17 = +[_DPLog framework];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [_DPPINERandomizer randomizeFloatVector:metadata:];
          }
        }
      }

      else
      {
        v16 = +[_DPLog framework];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [_DPPINERandomizer randomizeFloatVector:v12 metadata:?];
        }

        v13 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPPINERandomizer randomizeFloatVector:metadata:];
    }
  }

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

- (id)recordWithShardResult:(id)result noisedVector:(id)vector metadata:(id)metadata key:(id)key
{
  v36[6] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  vectorCopy = vector;
  keyCopy = key;
  v11 = MEMORY[0x277CBEAA8];
  metadataCopy = metadata;
  v13 = [v11 dateWithTimeIntervalSinceNow:0.0];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [metadataCopy mutableCopy];
  v35[0] = @"PINEChunkLength";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(resultCopy, "chunkLength")}];
  v36[0] = v17;
  v35[1] = @"PINEChunkLengthNormEquality";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(resultCopy, "chunkLengthNormEquality")}];
  v36[1] = v18;
  v35[2] = @"PINEFractionalBitCount";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(resultCopy, "fractionalBitCount")}];
  v36[2] = v19;
  v35[3] = @"PINEL2NormBoundInt";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "l2NormBoundInt")}];
  v36[3] = v20;
  v35[4] = @"Nonce";
  nonce = [resultCopy nonce];
  v36[4] = nonce;
  v35[5] = @"PublicShare";
  publicShare = [resultCopy publicShare];
  v36[5] = publicShare;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
  [v16 setObject:v23 forKeyedSubscript:@"VDAF"];

  v24 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  dataSource = [v24 dataSource];

  if (dataSource)
  {
    [v16 setObject:vectorCopy forKeyedSubscript:@"NoisedData"];
  }

  v26 = [_DPPrioRecord alloc];
  inputShares = [resultCopy inputShares];
  v28 = [inputShares objectAtIndexedSubscript:0];
  inputShares2 = [resultCopy inputShares];
  v30 = [inputShares2 objectAtIndexedSubscript:1];
  v31 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:](v26, "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", keyCopy, v28, v30, [resultCopy dimension], v16, 0, v15, 0);

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)randomizeFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v46 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v33 = [MEMORY[0x277CBEBF8] mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = vectorsCopy;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v11)
  {
    v13 = v11;
    v36 = *v40;
    *&v12 = 138412290;
    v32 = v12;
    obj = v10;
    while (2)
    {
      v14 = 0;
      do
      {
        v15 = metadataCopy;
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * v14);
        v17 = +[_DPLog daemon];
        v18 = +[_DPLog daemon];
        v19 = os_signpost_id_make_with_pointer(v18, v16);

        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22622D000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "_DPPINERandomizer", &unk_22629C805, buf, 2u);
        }

        metadataCopy = [(_DPPINERandomizer *)self auditedMetadata:v15];

        if ([(_DPPINERandomizer *)self isDPMechanismNoneForMetadata:metadataCopy])
        {
          v20 = +[_DPLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [_DPPINERandomizer randomizeFloatVectors:v38 metadata:v20 forKey:?];
          }

          v21 = v16;
        }

        else
        {
          v21 = [(_DPPINERandomizer *)self addNoiseToData:v16 metadata:metadataCopy];
          if (!v21)
          {
            v29 = +[_DPLog framework];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [_DPPINERandomizer randomizeFloatVectors:metadata:forKey:];
            }

            v10 = obj;
            v28 = 0;
            v27 = v33;
            goto LABEL_28;
          }
        }

        v22 = [(_DPPINERandomizer *)self randomizeFloatVector:v21 metadata:metadataCopy];
        v23 = +[_DPLog daemon];
        v24 = +[_DPLog daemon];
        v25 = os_signpost_id_make_with_pointer(v24, v16);

        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22622D000, v23, OS_SIGNPOST_INTERVAL_END, v25, "_DPPINERandomizer", &unk_22629C805, buf, 2u);
        }

        if (v22)
        {
          v26 = [(_DPPINERandomizer *)self recordWithShardResult:v22 noisedVector:v21 metadata:metadataCopy key:keyCopy];
          if (v26)
          {
            [v33 addObject:v26];
          }
        }

        else
        {
          v26 = +[_DPLog framework];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            v44 = keyCopy;
            _os_log_error_impl(&dword_22622D000, v26, OS_LOG_TYPE_ERROR, "Fail to privatize vector with key=%@, continuing...", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v13 != v14);
      v10 = obj;
      v13 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v27 = v33;
  v28 = v33;
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (void)isValidCentralEpsilon:plistParameter:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v0, v1, "Invalid parameter in plist: key=%@, value= (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isValidCentralEpsilon:plistParameter:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Invalid parameter in plist: kDPVDAFType=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isValidCentralEpsilon:plistParameter:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Invalid parameter in plist: kDPVDAFNumOfProofs=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isValidCentralEpsilon:(void *)a1 plistParameter:(uint64_t)a2 .cold.5(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)isValidCentralEpsilon:(void *)a1 plistParameter:(uint64_t)a2 .cold.6(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addNoiseToData:(uint64_t)a3 metadata:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_22622D000, a1, a3, "Invalid sigma=%f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addNoiseToData:metadata:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v0, v1, "Invalid value for %@=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addNoiseToData:metadata:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v0, v1, "Missing key=%@.%@ in metadata");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)pineParameterWithMetadata:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Invalid VDAFConfig.kDPMetadataVDAFConfigL2NormBoundWithNoise=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeFloatVector:metadata:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Fail to shard with error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeFloatVector:(void *)a1 metadata:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 l2NormBound];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeFloatVector:metadata:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v0, v1, "Float vector dimension=%lu exceeds limit=%lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)randomizeFloatVectors:metadata:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Fail to add noise to vector with key=%@, continuing...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)randomizeFloatVectors:(uint8_t *)buf metadata:(_BYTE *)a2 forKey:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22622D000, log, OS_LOG_TYPE_DEBUG, "DPMechanismNone is detected", buf, 2u);
}

@end