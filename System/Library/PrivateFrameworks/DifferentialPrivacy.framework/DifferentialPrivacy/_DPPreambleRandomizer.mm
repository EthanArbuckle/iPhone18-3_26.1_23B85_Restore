@interface _DPPreambleRandomizer
+ (id)randomizerWithMaxCentralEpsilon:(double)a3 parameters:(id)a4;
- (_DPPreambleRandomizer)initWithMaxCentralEpsilon:(double)a3 parameter:(id)a4;
- (id)randomizeBitValue:(id)a3 metadata:(id)a4 error:(id *)a5;
- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5;
- (id)recordWithShardResult:(id)a3 metadata:(id)a4 key:(id)a5;
@end

@implementation _DPPreambleRandomizer

- (_DPPreambleRandomizer)initWithMaxCentralEpsilon:(double)a3 parameter:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _DPPreambleRandomizer;
  v7 = [(_DPPreambleRandomizer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_maxCentralEpsilon = a3;
    v9 = [v6 copy];
    plistParameters = v8->_plistParameters;
    v8->_plistParameters = v9;
  }

  return v8;
}

+ (id)randomizerWithMaxCentralEpsilon:(double)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithMaxCentralEpsilon:v6 parameter:a3];

  return v7;
}

- (id)recordWithShardResult:(id)a3 metadata:(id)a4 key:(id)a5
{
  v42[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAA8];
  v40 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 dateWithTimeIntervalSinceNow:0.0];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [v9 mutableCopy];
  v15 = [v9 objectForKeyedSubscript:@"DediscoTaskConfig"];

  v16 = [v15 mutableCopy];
  v17 = [v16 objectForKeyedSubscript:@"DPConfig"];
  v18 = [v17 mutableCopy];

  v19 = MEMORY[0x277CCABB0];
  [v10 cohortSigma];
  v20 = [v19 numberWithDouble:?];
  [v18 setObject:v20 forKeyedSubscript:@"CohortSigma"];

  v21 = MEMORY[0x277CCABB0];
  [v10 sigmaLocal];
  v22 = [v21 numberWithDouble:?];
  [v18 setObject:v22 forKeyedSubscript:@"SigmaLocal"];

  v23 = MEMORY[0x277CCABB0];
  [v10 scalingFactor];
  v24 = [v23 numberWithDouble:?];
  [v18 setObject:v24 forKeyedSubscript:@"PreambleScalingFactor"];

  [v18 removeObjectForKey:@"PreambleParameters"];
  [v16 setObject:v18 forKeyedSubscript:@"DPConfig"];
  [v14 setObject:v16 forKeyedSubscript:@"DediscoTaskConfig"];
  v41[0] = @"Nonce";
  v25 = [v10 nonce];
  v42[0] = v25;
  v41[1] = @"PublicShare";
  v26 = [v10 publicShare];
  v42[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v14 setObject:v27 forKeyedSubscript:@"VDAF"];

  v28 = [_DPKeyProperties privatizationAlgorithmStringFor:20];
  [v14 setObject:v28 forKeyedSubscript:@"PrivatizationAlgorithmCache"];

  v29 = [(_DPPreambleRandomizer *)self plistParameters];
  v30 = [v29 copy];
  [v14 setObject:v30 forKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];

  v31 = [_DPPrioRecord alloc];
  v32 = [v10 inputShares];
  v33 = [v32 objectAtIndexedSubscript:0];
  v34 = [v10 inputShares];
  v35 = [v34 objectAtIndexedSubscript:1];
  v36 = [v10 dimension];

  v37 = [(_DPPrioRecord *)v31 initWithKey:v40 share1:v33 share2:v35 dimension:v36 metadata:v14 creationDate:0 submitted:v13 objectId:0];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)randomizeBitValue:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [_DPRandomizerUtils dimensionFromMetadata:v8];
  v10 = v9;
  if (!v9)
  {
    if (a5)
    {
      _DPVDAFError(1, @"Fail to fetch dimension");
      *a5 = v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = [v9 unsignedLongValue];
  if (v11 > 0x800000)
  {
    if (a5)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", v11, 0x800000];
      *a5 = _DPVDAFError(4, v12);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_9;
  }

  v13 = +[_DPPreambleShim shard:metaData:dimension:error:](_DPPreambleShim, "shard:metaData:dimension:error:", v7, v8, [v10 intValue], a5);
LABEL_9:

  return v13;
}

- (id)randomizeBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31 = a5;
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v38 = [v8 count];
    _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Attempting to privatize with Preamble for %lu one-hot indices", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v16 = *v34;
    *&v12 = 138412546;
    v28 = v12;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * v17);
        v20 = +[_DPLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v38 = v14;
          v39 = 2112;
          v40 = v31;
          _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "Privatizing with Preamble for vector %lu for %@", buf, 0x16u);
        }

        v21 = objc_autoreleasePoolPush();
        v32 = v18;
        v22 = [(_DPPreambleRandomizer *)self randomizeBitValue:v19 metadata:v9 error:&v32];
        v15 = v32;

        if (v22)
        {
          v23 = [(_DPPreambleRandomizer *)self recordWithShardResult:v22 metadata:v9 key:v31];
          if (v23)
          {
            [v29 addObject:v23];
          }

          objc_autoreleasePoolPop(v21);
          v24 = +[_DPLog framework];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v31;
            _os_log_debug_impl(&dword_22622D000, v24, OS_LOG_TYPE_DEBUG, "Successfully privatized with Preamble for %@", buf, 0xCu);
          }
        }

        else
        {
          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            v38 = v31;
            v39 = 2112;
            v40 = v15;
            _os_log_error_impl(&dword_22622D000, v25, OS_LOG_TYPE_ERROR, "Fail to privatize one-hot with Preamble for %@ error=%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
        }

        ++v17;
        ++v14;
        v18 = v15;
      }

      while (v13 != v17);
      v13 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v13);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)randomizeBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v12 = +[_DPLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v26 = [v8 count];
    _os_log_impl(&dword_22622D000, v12, OS_LOG_TYPE_INFO, "Attempting to privatize with Preamble for %lu raw one-hot vectors", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke;
  v20[3] = &unk_27858B2B0;
  v21 = v10;
  v22 = v9;
  v23 = self;
  v13 = v11;
  v24 = v13;
  v14 = v9;
  v15 = v10;
  [v8 enumerateObjectsUsingBlock:v20];
  v16 = v24;
  v17 = v13;

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

@end