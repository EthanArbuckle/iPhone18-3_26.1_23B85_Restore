@interface DESDediscoUploader
+ (BOOL)hasAllZeroData:(id)a3;
+ (BOOL)uploadViaDedisco:(id)a3 jsonResult:(id)a4 recipe:(id)a5 bundleIdentifier:(id)a6 submissionCount:(unsigned int *)a7 error:(id *)a8;
- (BOOL)donateCategoricalMetadata:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5;
- (BOOL)donateFedStatsMetrics:(id)a3 dataKey:(id)a4 dataTypeContent:(id)a5 dediscoMetadata:(id)a6 error:(id *)a7 recorder:(id)a8;
- (BOOL)donateMetrics:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5;
- (BOOL)scaleData:(id)a3 withScalingFactor:(double)a4;
- (DESDediscoUploader)initWithBundleIdentifier:(id)a3 recipe:(id)a4;
- (unsigned)donateResult:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5;
@end

@implementation DESDediscoUploader

+ (BOOL)uploadViaDedisco:(id)a3 jsonResult:(id)a4 recipe:(id)a5 bundleIdentifier:(id)a6 submissionCount:(unsigned int *)a7 error:(id *)a8
{
  v107[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [[DESDediscoUploader alloc] initWithBundleIdentifier:v17 recipe:v16];
  if (v18)
  {
    v84 = a1;
    v104 = *MEMORY[0x277D05410];
    v105 = &stru_285C10228;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    if (v14)
    {
      v20 = objc_alloc_init(DESDPFloatValueRecorder);
      v21 = [(DESDediscoUploader *)v18 donateResult:v14 dediscoMetadata:v19 recorder:v20];
      if (a7)
      {
        *a7 += v21;
      }

      if (!v21)
      {
        v85 = v17;
        v51 = a8;
        v52 = v15;
        v53 = MEMORY[0x277CCACA8];
        v54 = [(DESDediscoUploader *)v18 key];
        v55 = [v54 resultsKeyString];
        v90 = [v53 stringWithFormat:@"Failed to submit result to Dedisco for %@, skip metadata submission", v55];

        v56 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v15 = v52;
        if (!v51)
        {
          LOBYTE(a8) = 0;
          v17 = v85;
LABEL_66:

          goto LABEL_67;
        }

        v57 = MEMORY[0x277CCA9B8];
        v102 = *MEMORY[0x277CCA470];
        v103 = v90;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        [v57 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v58];
        *v51 = LOBYTE(a8) = 0;
        v17 = v85;
LABEL_65:

        goto LABEL_66;
      }
    }

    v89 = v19;
    v93 = 0;
    v22 = [DESFedStatsDataType extractFedStatsDataTypeFrom:v16 forKey:&v93];
    v23 = v93;
    v20 = v23;
    v90 = v22;
    v87 = v15;
    v88 = v14;
    if (v22 && v23)
    {
      v82 = v16;
      v24 = objc_alloc_init(DESFedStatsRecorder);
      v92 = 0;
      v25 = [(DESDediscoUploader *)v18 donateFedStatsMetrics:v15 dataKey:v20 dataTypeContent:v22 dediscoMetadata:v89 error:&v92 recorder:v24];
      v26 = v92;
      v27 = [(DESDediscoUploader *)v18 key];
      v28 = [v27 metadataEncodedMetricsKeyString];

      v29 = +[DESLogging coreChannel];
      v30 = v29;
      if (!v25)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v58 = v26;
        if (a8)
        {
          v62 = MEMORY[0x277CCA9B8];
          v100 = *MEMORY[0x277CCA470];
          v63 = [v26 localizedDescription];
          v101 = v63;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          *a8 = [v62 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2012 userInfo:v64];

          v58 = v26;
        }

        LOBYTE(a8) = 0;
        v15 = v87;
        v14 = v88;
        v16 = v82;
        goto LABEL_64;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v99 = v28;
        _os_log_impl(&dword_248FF7000, v30, OS_LOG_TYPE_INFO, "Donated data for: %@ using FedStats encoding", buf, 0xCu);
      }

      v14 = v88;
      if (a7)
      {
        ++*a7;
      }

      v15 = v87;
      v16 = v82;
    }

    v91 = 0;
    v24 = [DESAggregatableMetadata encodeMetadata:v15 recipe:v16 error:&v91];
    v83 = v91;
    if (!v24)
    {
      v59 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader uploadViaDedisco:v18 jsonResult:? recipe:? bundleIdentifier:? submissionCount:? error:?];
      }

      v58 = v83;
      if (a8)
      {
        v60 = v83;
        v61 = a8;
        LOBYTE(a8) = 0;
        *v61 = v83;
      }

      goto LABEL_64;
    }

    v81 = a8;
    v31 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
    if ([(DESDPFloatValueRecorder *)v31 length])
    {
      v32 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
      v33 = [v84 hasAllZeroData:v32];

      if (v33)
      {
        goto LABEL_24;
      }

      v31 = objc_alloc_init(DESDPFloatValueRecorder);
      v34 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
      v35 = [(DESDediscoUploader *)v18 donateMetrics:v34 dediscoMetadata:v89 recorder:v31];

      if (!v35)
      {
        v86 = v17;
        v65 = MEMORY[0x277CCACA8];
        v66 = [(DESDediscoUploader *)v18 key];
        v67 = [v66 metricsKeyString];
        v68 = [v65 stringWithFormat:@"Failed to donate aggregatable metrics for: %@", v67];

        v69 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (v81)
        {
          v70 = MEMORY[0x277CCA9B8];
          v96 = *MEMORY[0x277CCA470];
          v97 = v68;
          v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          *v81 = [v70 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v71];
        }

LABEL_62:
        LOBYTE(a8) = 0;
        v15 = v87;
        v14 = v88;
        v17 = v86;
        goto LABEL_63;
      }

      v36 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(DESDediscoUploader *)v18 key];
        v38 = [v37 metricsKeyString];
        *buf = 138412290;
        v99 = v38;
        _os_log_impl(&dword_248FF7000, v36, OS_LOG_TYPE_INFO, "Donated aggregatable metrics for: %@", buf, 0xCu);
      }

      if (a7)
      {
        ++*a7;
      }
    }

LABEL_24:
    v39 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
    if ([v39 length])
    {
      v40 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
      v41 = [v84 hasAllZeroData:v40];

      if ((v41 & 1) == 0)
      {
        a8 = objc_alloc_init(DESDPBitValueRecorder);
        v42 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
        v43 = [(DESDediscoUploader *)v18 donateCategoricalMetadata:v42 dediscoMetadata:v89 recorder:a8];

        if (v43)
        {
          v44 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [(DESDediscoUploader *)v18 key];
            v46 = [v45 metadataKeyString];
            *buf = 138412290;
            v99 = v46;
            _os_log_impl(&dword_248FF7000, v44, OS_LOG_TYPE_INFO, "Donated categorical metadata for: %@", buf, 0xCu);
          }

          v15 = v87;
          if (a7)
          {
            ++*a7;
          }

          LOBYTE(a8) = 1;
          v14 = v88;
          goto LABEL_63;
        }

        v86 = v17;
        v72 = MEMORY[0x277CCACA8];
        v73 = [(DESDediscoUploader *)v18 key];
        v74 = [v73 metadataKeyString];
        v75 = [v72 stringWithFormat:@"Failed to donate categorical metadata for: %@", v74];

        v76 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (v81)
        {
          v77 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA470];
          v95 = v75;
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          *v81 = [v77 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v78];
        }

        goto LABEL_62;
      }
    }

    else
    {
    }

    LOBYTE(a8) = 1;
    v15 = v87;
    v14 = v88;
LABEL_63:
    v58 = v83;
LABEL_64:

    v19 = v89;
    goto LABEL_65;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create DESDediscoUploader for: %@", v17];
  v47 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
  }

  if (a8)
  {
    v48 = MEMORY[0x277CCA9B8];
    v49 = v17;
    v50 = a8;
    v106 = *MEMORY[0x277CCA470];
    v107[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    [v48 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v20];
    *v50 = LOBYTE(a8) = 0;
    v17 = v49;
LABEL_67:
  }

  v79 = *MEMORY[0x277D85DE8];
  return a8;
}

- (DESDediscoUploader)initWithBundleIdentifier:(id)a3 recipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = DESDediscoUploader;
  v8 = [(DESDediscoUploader *)&v23 init];
  if (v8)
  {
    v9 = DESIsInternalInstall();
    v10 = @"production";
    if (v9)
    {
      v10 = @"carry";
    }

    v11 = v10;
    v12 = [v7 privacyIdentifierExt];
    v22 = v6;
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, v12];
    }

    else
    {
      v13 = v6;
    }

    v14 = v13;
    v15 = [v7 recipeUserInfo];
    v16 = [v15 objectForKeyedSubscript:@"ramsayRecipeID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v7 recipeUserInfo];
      v18 = [v17 objectForKeyedSubscript:@"ramsayRecipeID"];
    }

    else
    {
      v18 = [v7 recipeID];
    }

    v19 = [[DESDediscoKey alloc] initWithPrivacyID:v14 environment:v11 recipeID:v18];
    key = v8->_key;
    v8->_key = v19;

    objc_storeStrong(&v8->_recipe, a4);
    v6 = v22;
  }

  return v8;
}

- (unsigned)donateResult:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v66 = a5;
  v10 = [(DESDediscoUploader *)self key];
  v11 = [v10 resultsKeyString];

  v12 = self;
  v13 = [[DESGaussianAlgorithmParameters alloc] initWith:v11 recipe:self->_recipe];
  v14 = v13;
  if (v13)
  {
    [(DESGaussianAlgorithmParameters *)v13 clippingBound];
    v16 = v15;
    v17 = [v9 mutableCopy];
    v18 = [(DESRecipe *)self->_recipe federatedBufferDownScalingFactor];
    if (!v18)
    {
      p_super = +[DESLogging coreChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
      }

      goto LABEL_46;
    }

    v65 = self;
    if ([(DESRecipe *)self->_recipe useSparsification])
    {
      v19 = objc_alloc_init(DESSparsification);
      if (!v19)
      {
        p_super = +[DESLogging coreChannel];
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
        }

        goto LABEL_46;
      }

      v20 = v19;
      v21 = v12;
      recipe = v12->_recipe;
      v23 = [(DESDediscoUploader *)v21 key];
      v72 = 0;
      v63 = v20;
      v24 = [(DESSparsification *)v20 splitResultToChunksWithResult:v8 recipe:recipe baseKey:v23 error:&v72];
      p_super = v72;

      if (p_super)
      {
        v26 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [DESDediscoUploader donateResult:v65 dediscoMetadata:p_super recorder:?];
        }

        goto LABEL_45;
      }

      if (![(DESGaussianAlgorithmParameters *)v14 calculateAndVerifyPerChunkClippingBoundsIn:v24 withOverallClippingBound:v16])
      {
LABEL_45:

        goto LABEL_46;
      }

      v60 = v11;
      v61 = v9;
      v62 = v8;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v35 = v24;
      v36 = [v35 countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (!v36)
      {
        v64 = 0;
        goto LABEL_50;
      }

      v37 = v36;
      v64 = 0;
      v67 = *v69;
      v38 = v65;
LABEL_30:
      v39 = 0;
      while (1)
      {
        if (*v69 != v67)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v68 + 1) + 8 * v39);
        v41 = [v40 clippingBound];
        [v41 doubleValue];
        v43 = v42;

        [v18 doubleValue];
        v45 = v43 * v44;
        -[DESGaussianAlgorithmParameters addPerChunkParametersWith:numChunks:](v14, "addPerChunkParametersWith:numChunks:", [v35 count], v43);
        v46 = [(DESGaussianAlgorithmParameters *)v14 parameters];
        [v17 setObject:v46 forKeyedSubscript:@"AlgorithmParameters"];

        v47 = [v40 data];
        v48 = [(DESDediscoUploader *)v38 scaleData:v47 withScalingFactor:v45];

        if (v48)
        {
          v49 = v18;
          v50 = v14;
          v51 = [v40 key];
          v52 = [v40 data];
          v53 = v17;
          v54 = [v66 record:v51 data:v52 metadata:v17];

          if (!v54)
          {
            v17 = v53;
            v14 = v50;
            v18 = v49;
            v38 = v65;
            goto LABEL_42;
          }

          ++v64;
          v55 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            [(DESDediscoUploader *)v73 donateResult:v40 dediscoMetadata:&v74 recorder:v55];
          }

          v17 = v53;
          v14 = v50;
          v18 = v49;
          v38 = v65;
        }

        else
        {
          v55 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
            v57 = [v40 key];
            *buf = 138412546;
            v76 = v56;
            v77 = 2112;
            v78 = v57;
            _os_log_error_impl(&dword_248FF7000, v55, OS_LOG_TYPE_ERROR, "Failed to scale chunk data by %@, for key: %@", buf, 0x16u);
          }
        }

LABEL_42:
        if (v37 == ++v39)
        {
          v37 = [v35 countByEnumeratingWithState:&v68 objects:v79 count:16];
          if (!v37)
          {
LABEL_50:

            v8 = v62;
            p_super = &v63->super;
            v11 = v60;
            v9 = v61;
            v27 = v64;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }
    }

    if ([v8 length] >= 0xE7EF1)
    {
      p_super = +[DESLogging coreChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:v8 dediscoMetadata:self recorder:?];
      }

      goto LABEL_46;
    }

    [v18 doubleValue];
    v29 = v16 * v28;
    [(DESGaussianAlgorithmParameters *)v14 addPerChunkParametersWith:1 numChunks:v16];
    v30 = [(DESGaussianAlgorithmParameters *)v14 parameters];
    [v17 setObject:v30 forKeyedSubscript:@"AlgorithmParameters"];

    p_super = [v8 mutableCopy];
    if (![(DESDediscoUploader *)self scaleData:p_super withScalingFactor:v29])
    {
      v34 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
      }

      goto LABEL_46;
    }

    if (![v66 record:v11 data:p_super metadata:v17])
    {
LABEL_46:
      v27 = 0;
      goto LABEL_47;
    }

    v31 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [(DESDediscoUploader *)self key];
      v33 = [v32 resultsKeyString];
      *buf = 138412290;
      v76 = v33;
      _os_log_impl(&dword_248FF7000, v31, OS_LOG_TYPE_INFO, "Donated result for key: %@", buf, 0xCu);
    }

    v27 = 1;
LABEL_47:
  }

  else
  {
    v17 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
    }

    v27 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)donateMetrics:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DESDediscoUploader *)self key];
  v12 = [v11 metricsKeyString];

  LOBYTE(v11) = [v8 record:v12 data:v10 metadata:v9];
  return v11;
}

- (BOOL)donateCategoricalMetadata:(id)a3 dediscoMetadata:(id)a4 recorder:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DESDediscoUploader *)self key];
  v12 = [v11 metadataKeyString];

  LOBYTE(v11) = [v8 record:v12 data:v10 metadata:v9];
  return v11;
}

- (BOOL)donateFedStatsMetrics:(id)a3 dataKey:(id)a4 dataTypeContent:(id)a5 dediscoMetadata:(id)a6 error:(id *)a7 recorder:(id)a8
{
  v32[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [v14 valueForKeyPath:v15];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = [(DESDediscoUploader *)self key];
    v22 = [v21 metadataEncodedMetricsKeyString];

    v23 = [v14 valueForKeyPath:v15];
    v24 = [v18 record:v22 data:v23 dataTypeContent:v16 metadata:v17 errorOut:a7];
  }

  else
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value of key %@ is not array type, cannot use FedStats Encoding", v15];
    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (a7)
    {
      v27 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA470];
      v32[0] = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a7 = [v27 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2012 userInfo:v28];
    }

    v24 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)scaleData:(id)a3 withScalingFactor:(double)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v8 = fabs(a4) == INFINITY;
  if (a4 > 2.22507386e-308 && !v8)
  {
    v9 = [v5 mutableBytes];
    if ([v6 length] >= 4)
    {
      v10 = 0;
      do
      {
        v11 = *(v9 + 4 * v10) / a4;
        *(v9 + 4 * v10++) = v11;
      }

      while (v10 < [v6 length] >> 2);
    }

    v7 = 1;
  }

  return v7;
}

+ (BOOL)hasAllZeroData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] >= 4)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 4 * v6);
      v5 = v7 == 0;
      if (v7)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [v3 length] >> 2);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (void)uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "Failed to submit for: %@ using FedStats encoding", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)uploadViaDedisco:(void *)a1 jsonResult:recipe:bundleIdentifier:submissionCount:error:.cold.5(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 key];
  v2 = [v1 resultsKeyString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)donateResult:(void *)a1 dediscoMetadata:recorder:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v3 = [a1 key];
  v10 = [v3 resultsKeyString];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)donateResult:(void *)a1 dediscoMetadata:(void *)a2 recorder:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a1 length];
  v3 = [a2 key];
  v10 = [v3 resultsKeyString];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)donateResult:(void *)a1 dediscoMetadata:(void *)a2 recorder:.cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 key];
  v4 = [v3 resultsKeyString];
  v11 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)donateResult:(void *)a3 dediscoMetadata:(NSObject *)a4 recorder:.cold.4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 key];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_248FF7000, a4, OS_LOG_TYPE_DEBUG, "Donated result chunk for key: %@", a1, 0xCu);
}

- (void)donateResult:(void *)a1 dediscoMetadata:recorder:.cold.5(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 key];
  v2 = [v1 resultsKeyString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)donateResult:(void *)a1 dediscoMetadata:recorder:.cold.7(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 key];
  v2 = [v1 resultsKeyString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end