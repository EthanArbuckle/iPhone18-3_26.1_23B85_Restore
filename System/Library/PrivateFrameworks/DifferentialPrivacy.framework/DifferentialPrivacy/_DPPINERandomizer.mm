@interface _DPPINERandomizer
+ (BOOL)isValidCentralEpsilon:(double)a3 plistParameter:(id)a4;
+ (id)randomizerWithMaxCentralEpsilon:(double)a3 parameters:(id)a4;
- (BOOL)isDPMechanismNoneForMetadata:(id)a3;
- (_DPPINERandomizer)initWithMaxCentralEpsilon:(double)a3 parameter:(id)a4;
- (id)addNoiseToData:(id)a3 metadata:(id)a4;
- (id)auditedMetadata:(id)a3;
- (id)pineParameterWithMetadata:(id)a3;
- (id)randomizeFloatVector:(id)a3 metadata:(id)a4;
- (id)randomizeFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)recordWithShardResult:(id)a3 noisedVector:(id)a4 metadata:(id)a5 key:(id)a6;
@end

@implementation _DPPINERandomizer

+ (BOOL)isValidCentralEpsilon:(double)a3 plistParameter:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3 >= 0.0 && a3 <= 16.0)
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

          v19 = [v5 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
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

    v14 = [v5 objectForKeyedSubscript:@"VDAFType"];
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

    v20 = [v5 objectForKeyedSubscript:@"VDAFNumOfProofs"];
    if ([_DPPINEShim isValidNumOfProofs:[v20 unsignedCharValue]])
    {
      v21 = [v5 objectForKeyedSubscript:@"PINEWraparoundCheckCount"];
      if ([_DPPINEShim isValidWraparoundCheckCount:[v21 unsignedCharValue]])
      {
        v22 = [v5 objectForKeyedSubscript:@"MaxCentralDelta"];
        [v22 doubleValue];
        v24 = v23;

        if (v24 > 0.0)
        {
          v30 = [v5 objectForKeyedSubscript:@"MaxDimension"];
          v31 = [v30 unsignedLongLongValue];

          if ([_DPPrioPlusPlusNoiseGenerator isValidDimension:v31])
          {
            v27 = 1;
            goto LABEL_36;
          }

          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [_DPPINERandomizer isValidCentralEpsilon:v5 plistParameter:@"MaxDimension"];
          }
        }

        else
        {
          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [_DPPINERandomizer isValidCentralEpsilon:v5 plistParameter:@"MaxCentralDelta"];
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

- (_DPPINERandomizer)initWithMaxCentralEpsilon:(double)a3 parameter:(id)a4
{
  v6 = a4;
  if ([objc_opt_class() isValidCentralEpsilon:v6 plistParameter:a3])
  {
    v13.receiver = self;
    v13.super_class = _DPPINERandomizer;
    v7 = [(_DPPINERandomizer *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_maxCentralEpsilon = a3;
      v9 = [v6 copy];
      plistParameter = v8->_plistParameter;
      v8->_plistParameter = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)randomizerWithMaxCentralEpsilon:(double)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithMaxCentralEpsilon:v6 parameter:a3];

  return v7;
}

- (id)addNoiseToData:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v8 = [v7 objectForKeyedSubscript:@"DPConfig"];
  v9 = [v8 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v6 objectForKeyedSubscript:@"DediscoTaskConfig"];

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

  v15 = [MEMORY[0x277CBEB28] dataWithData:v5];
  v16 = [v15 mutableBytes];
  v17 = [v15 length] >> 2;
  _DPClipNorm(v16, v17, 1.0);
  v18 = [_DPPrioPlusPlusNoiseGenerator randomize:v15 dimension:v17 stddev:v14];

  if (v18)
  {
    v18 = v15;
  }

LABEL_15:

  return v18;
}

- (id)pineParameterWithMetadata:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_DPPINERandomizer *)self plistParameter];
  v6 = [v5 objectForKeyedSubscript:@"PINEFractionalBitCount"];

  v7 = [(_DPPINERandomizer *)self plistParameter];
  v8 = [v7 objectForKeyedSubscript:@"VDAFNumOfProofs"];

  v9 = [(_DPPINERandomizer *)self plistParameter];
  v10 = [v9 objectForKeyedSubscript:@"PINEWraparoundCheckCount"];

  v11 = [(_DPPINERandomizer *)self plistParameter];
  v12 = [v11 objectForKeyedSubscript:@"VDAFType"];
  v13 = [v12 unsignedIntValue];

  if (_DPMetadataIsV2(v4))
  {
    v14 = [v4 objectForKeyedSubscript:@"DediscoTaskConfig"];
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
      v22 = [v18 integerValue];
      [v16 floatValue];
      v24 = v23;
      v25 = [v8 integerValue];
      v26 = [v10 integerValue];
      LODWORD(v27) = v24;
      v20 = [(_DPPINEParameter *)v21 initWithFractionalBitCount:v22 l2NormBound:v25 numOfProofs:v26 wraparoundCheckCount:v13 pineType:v27];
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

- (BOOL)isDPMechanismNoneForMetadata:(id)a3
{
  v4 = a3;
  v5 = [(_DPPINERandomizer *)self plistParameter];
  if ([_DPAlgorithmParameters allowDPMechanismNone:v5])
  {
    IsDPMechanismNone = _DPMetadataIsDPMechanismNone(v4);
  }

  else
  {
    IsDPMechanismNone = 0;
  }

  return IsDPMechanismNone;
}

- (id)auditedMetadata:(id)a3
{
  v4 = a3;
  if ([(_DPPINERandomizer *)self isDPMechanismNoneForMetadata:v4])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(_DPPINERandomizer *)self plistParameter];
    v7 = [v6 objectForKeyedSubscript:@"MaxCentralDelta"];
    [v7 doubleValue];

    [(_DPPINERandomizer *)self maxCentralEpsilon];
    v5 = [_DPRandomizerUtils auditedDPParametersWithMetadata:"auditedDPParametersWithMetadata:maxCentralEpsilon:maxCentralDelta:" maxCentralEpsilon:v4 maxCentralDelta:?];
  }

  v8 = v5;

  return v8;
}

- (id)randomizeFloatVector:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v8 = [v6 length] >> 2;
  v9 = [(_DPPINERandomizer *)self plistParameter];
  v10 = [v9 objectForKeyedSubscript:@"MaxDimension"];
  v11 = [v10 unsignedLongLongValue];

  if (v8 <= v11)
  {
    v12 = [(_DPPINERandomizer *)self pineParameterWithMetadata:v7];
    if (v12)
    {
      v14 = _DPL2Norm([v6 bytes], v8);
      [v12 l2NormBound];
      if (v14 <= v15)
      {
        v19 = 0;
        v13 = [_DPPINEShim shard:v6 parameter:v12 error:&v19];
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

- (id)recordWithShardResult:(id)a3 noisedVector:(id)a4 metadata:(id)a5 key:(id)a6
{
  v36[6] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v34 = a4;
  v10 = a6;
  v11 = MEMORY[0x277CBEAA8];
  v12 = a5;
  v13 = [v11 dateWithTimeIntervalSinceNow:0.0];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [v12 mutableCopy];
  v35[0] = @"PINEChunkLength";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "chunkLength")}];
  v36[0] = v17;
  v35[1] = @"PINEChunkLengthNormEquality";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "chunkLengthNormEquality")}];
  v36[1] = v18;
  v35[2] = @"PINEFractionalBitCount";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "fractionalBitCount")}];
  v36[2] = v19;
  v35[3] = @"PINEL2NormBoundInt";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "l2NormBoundInt")}];
  v36[3] = v20;
  v35[4] = @"Nonce";
  v21 = [v9 nonce];
  v36[4] = v21;
  v35[5] = @"PublicShare";
  v22 = [v9 publicShare];
  v36[5] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
  [v16 setObject:v23 forKeyedSubscript:@"VDAF"];

  v24 = [_DPKeyNames keyPropertiesForKey:v10];
  v25 = [v24 dataSource];

  if (v25)
  {
    [v16 setObject:v34 forKeyedSubscript:@"NoisedData"];
  }

  v26 = [_DPPrioRecord alloc];
  v27 = [v9 inputShares];
  v28 = [v27 objectAtIndexedSubscript:0];
  v29 = [v9 inputShares];
  v30 = [v29 objectAtIndexedSubscript:1];
  v31 = -[_DPPrioRecord initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:](v26, "initWithKey:share1:share2:dimension:metadata:creationDate:submitted:objectId:", v10, v28, v30, [v9 dimension], v16, 0, v15, 0);

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)randomizeFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v35 = a5;
  v33 = [MEMORY[0x277CBEBF8] mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = v8;
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
        v15 = v9;
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

        v9 = [(_DPPINERandomizer *)self auditedMetadata:v15];

        if ([(_DPPINERandomizer *)self isDPMechanismNoneForMetadata:v9])
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
          v21 = [(_DPPINERandomizer *)self addNoiseToData:v16 metadata:v9];
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

        v22 = [(_DPPINERandomizer *)self randomizeFloatVector:v21 metadata:v9];
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
          v26 = [(_DPPINERandomizer *)self recordWithShardResult:v22 noisedVector:v21 metadata:v9 key:v35];
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
            v44 = v35;
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