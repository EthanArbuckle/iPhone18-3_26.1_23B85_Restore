@interface DESDediscoUploader
+ (BOOL)hasAllZeroData:(id)data;
+ (BOOL)uploadViaDedisco:(id)dedisco jsonResult:(id)result recipe:(id)recipe bundleIdentifier:(id)identifier submissionCount:(unsigned int *)count error:(id *)error;
- (BOOL)donateCategoricalMetadata:(id)metadata dediscoMetadata:(id)dediscoMetadata recorder:(id)recorder;
- (BOOL)donateFedStatsMetrics:(id)metrics dataKey:(id)key dataTypeContent:(id)content dediscoMetadata:(id)metadata error:(id *)error recorder:(id)recorder;
- (BOOL)donateMetrics:(id)metrics dediscoMetadata:(id)metadata recorder:(id)recorder;
- (BOOL)scaleData:(id)data withScalingFactor:(double)factor;
- (DESDediscoUploader)initWithBundleIdentifier:(id)identifier recipe:(id)recipe;
- (unsigned)donateResult:(id)result dediscoMetadata:(id)metadata recorder:(id)recorder;
@end

@implementation DESDediscoUploader

+ (BOOL)uploadViaDedisco:(id)dedisco jsonResult:(id)result recipe:(id)recipe bundleIdentifier:(id)identifier submissionCount:(unsigned int *)count error:(id *)error
{
  v107[1] = *MEMORY[0x277D85DE8];
  dediscoCopy = dedisco;
  resultCopy = result;
  recipeCopy = recipe;
  identifierCopy = identifier;
  v18 = [[DESDediscoUploader alloc] initWithBundleIdentifier:identifierCopy recipe:recipeCopy];
  if (v18)
  {
    selfCopy = self;
    v104 = *MEMORY[0x277D05410];
    v105 = &stru_285C10228;
    identifierCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    if (dediscoCopy)
    {
      v20 = objc_alloc_init(DESDPFloatValueRecorder);
      v21 = [(DESDediscoUploader *)v18 donateResult:dediscoCopy dediscoMetadata:identifierCopy recorder:v20];
      if (count)
      {
        *count += v21;
      }

      if (!v21)
      {
        v85 = identifierCopy;
        errorCopy = error;
        v52 = resultCopy;
        v53 = MEMORY[0x277CCACA8];
        v54 = [(DESDediscoUploader *)v18 key];
        resultsKeyString = [v54 resultsKeyString];
        v90 = [v53 stringWithFormat:@"Failed to submit result to Dedisco for %@, skip metadata submission", resultsKeyString];

        v56 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        resultCopy = v52;
        if (!errorCopy)
        {
          LOBYTE(error) = 0;
          identifierCopy = v85;
LABEL_66:

          goto LABEL_67;
        }

        v57 = MEMORY[0x277CCA9B8];
        v102 = *MEMORY[0x277CCA470];
        v103 = v90;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        [v57 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v58];
        *errorCopy = LOBYTE(error) = 0;
        identifierCopy = v85;
LABEL_65:

        goto LABEL_66;
      }
    }

    v89 = identifierCopy;
    v93 = 0;
    v22 = [DESFedStatsDataType extractFedStatsDataTypeFrom:recipeCopy forKey:&v93];
    v23 = v93;
    v20 = v23;
    v90 = v22;
    v87 = resultCopy;
    v88 = dediscoCopy;
    if (v22 && v23)
    {
      v82 = recipeCopy;
      v24 = objc_alloc_init(DESFedStatsRecorder);
      v92 = 0;
      v25 = [(DESDediscoUploader *)v18 donateFedStatsMetrics:resultCopy dataKey:v20 dataTypeContent:v22 dediscoMetadata:v89 error:&v92 recorder:v24];
      v26 = v92;
      v27 = [(DESDediscoUploader *)v18 key];
      metadataEncodedMetricsKeyString = [v27 metadataEncodedMetricsKeyString];

      v29 = +[DESLogging coreChannel];
      v30 = v29;
      if (!v25)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v58 = v26;
        if (error)
        {
          v62 = MEMORY[0x277CCA9B8];
          v100 = *MEMORY[0x277CCA470];
          localizedDescription = [v26 localizedDescription];
          v101 = localizedDescription;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          *error = [v62 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2012 userInfo:v64];

          v58 = v26;
        }

        LOBYTE(error) = 0;
        resultCopy = v87;
        dediscoCopy = v88;
        recipeCopy = v82;
        goto LABEL_64;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v99 = metadataEncodedMetricsKeyString;
        _os_log_impl(&dword_248FF7000, v30, OS_LOG_TYPE_INFO, "Donated data for: %@ using FedStats encoding", buf, 0xCu);
      }

      dediscoCopy = v88;
      if (count)
      {
        ++*count;
      }

      resultCopy = v87;
      recipeCopy = v82;
    }

    v91 = 0;
    v24 = [DESAggregatableMetadata encodeMetadata:resultCopy recipe:recipeCopy error:&v91];
    v83 = v91;
    if (!v24)
    {
      v59 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader uploadViaDedisco:v18 jsonResult:? recipe:? bundleIdentifier:? submissionCount:? error:?];
      }

      v58 = v83;
      if (error)
      {
        v60 = v83;
        errorCopy2 = error;
        LOBYTE(error) = 0;
        *errorCopy2 = v83;
      }

      goto LABEL_64;
    }

    errorCopy3 = error;
    v31 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
    if ([(DESDPFloatValueRecorder *)v31 length])
    {
      v32 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
      v33 = [selfCopy hasAllZeroData:v32];

      if (v33)
      {
        goto LABEL_24;
      }

      v31 = objc_alloc_init(DESDPFloatValueRecorder);
      v34 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedNumericMetadata"];
      v35 = [(DESDediscoUploader *)v18 donateMetrics:v34 dediscoMetadata:v89 recorder:v31];

      if (!v35)
      {
        v86 = identifierCopy;
        v65 = MEMORY[0x277CCACA8];
        v66 = [(DESDediscoUploader *)v18 key];
        metricsKeyString = [v66 metricsKeyString];
        v68 = [v65 stringWithFormat:@"Failed to donate aggregatable metrics for: %@", metricsKeyString];

        v69 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (errorCopy3)
        {
          v70 = MEMORY[0x277CCA9B8];
          v96 = *MEMORY[0x277CCA470];
          v97 = v68;
          v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          *errorCopy3 = [v70 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v71];
        }

LABEL_62:
        LOBYTE(error) = 0;
        resultCopy = v87;
        dediscoCopy = v88;
        identifierCopy = v86;
        goto LABEL_63;
      }

      v36 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(DESDediscoUploader *)v18 key];
        metricsKeyString2 = [v37 metricsKeyString];
        *buf = 138412290;
        v99 = metricsKeyString2;
        _os_log_impl(&dword_248FF7000, v36, OS_LOG_TYPE_INFO, "Donated aggregatable metrics for: %@", buf, 0xCu);
      }

      if (count)
      {
        ++*count;
      }
    }

LABEL_24:
    v39 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
    if ([v39 length])
    {
      v40 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
      v41 = [selfCopy hasAllZeroData:v40];

      if ((v41 & 1) == 0)
      {
        error = objc_alloc_init(DESDPBitValueRecorder);
        v42 = [(DESFedStatsRecorder *)v24 objectForKeyedSubscript:@"encodedCategoricalMetadata"];
        v43 = [(DESDediscoUploader *)v18 donateCategoricalMetadata:v42 dediscoMetadata:v89 recorder:error];

        if (v43)
        {
          v44 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [(DESDediscoUploader *)v18 key];
            metadataKeyString = [v45 metadataKeyString];
            *buf = 138412290;
            v99 = metadataKeyString;
            _os_log_impl(&dword_248FF7000, v44, OS_LOG_TYPE_INFO, "Donated categorical metadata for: %@", buf, 0xCu);
          }

          resultCopy = v87;
          if (count)
          {
            ++*count;
          }

          LOBYTE(error) = 1;
          dediscoCopy = v88;
          goto LABEL_63;
        }

        v86 = identifierCopy;
        v72 = MEMORY[0x277CCACA8];
        v73 = [(DESDediscoUploader *)v18 key];
        metadataKeyString2 = [v73 metadataKeyString];
        v75 = [v72 stringWithFormat:@"Failed to donate categorical metadata for: %@", metadataKeyString2];

        v76 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (errorCopy3)
        {
          v77 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA470];
          v95 = v75;
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          *errorCopy3 = [v77 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v78];
        }

        goto LABEL_62;
      }
    }

    else
    {
    }

    LOBYTE(error) = 1;
    resultCopy = v87;
    dediscoCopy = v88;
LABEL_63:
    v58 = v83;
LABEL_64:

    identifierCopy = v89;
    goto LABEL_65;
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create DESDediscoUploader for: %@", identifierCopy];
  v47 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
  }

  if (error)
  {
    v48 = MEMORY[0x277CCA9B8];
    v49 = identifierCopy;
    errorCopy4 = error;
    v106 = *MEMORY[0x277CCA470];
    v107[0] = identifierCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    [v48 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2006 userInfo:v20];
    *errorCopy4 = LOBYTE(error) = 0;
    identifierCopy = v49;
LABEL_67:
  }

  v79 = *MEMORY[0x277D85DE8];
  return error;
}

- (DESDediscoUploader)initWithBundleIdentifier:(id)identifier recipe:(id)recipe
{
  identifierCopy = identifier;
  recipeCopy = recipe;
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
    privacyIdentifierExt = [recipeCopy privacyIdentifierExt];
    v22 = identifierCopy;
    if (privacyIdentifierExt)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", identifierCopy, privacyIdentifierExt];
    }

    else
    {
      v13 = identifierCopy;
    }

    v14 = v13;
    recipeUserInfo = [recipeCopy recipeUserInfo];
    v16 = [recipeUserInfo objectForKeyedSubscript:@"ramsayRecipeID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recipeUserInfo2 = [recipeCopy recipeUserInfo];
      recipeID = [recipeUserInfo2 objectForKeyedSubscript:@"ramsayRecipeID"];
    }

    else
    {
      recipeID = [recipeCopy recipeID];
    }

    v19 = [[DESDediscoKey alloc] initWithPrivacyID:v14 environment:v11 recipeID:recipeID];
    key = v8->_key;
    v8->_key = v19;

    objc_storeStrong(&v8->_recipe, recipe);
    identifierCopy = v22;
  }

  return v8;
}

- (unsigned)donateResult:(id)result dediscoMetadata:(id)metadata recorder:(id)recorder
{
  v80 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  metadataCopy = metadata;
  recorderCopy = recorder;
  v10 = [(DESDediscoUploader *)self key];
  resultsKeyString = [v10 resultsKeyString];

  selfCopy = self;
  v13 = [[DESGaussianAlgorithmParameters alloc] initWith:resultsKeyString recipe:self->_recipe];
  v14 = v13;
  if (v13)
  {
    [(DESGaussianAlgorithmParameters *)v13 clippingBound];
    v16 = v15;
    v17 = [metadataCopy mutableCopy];
    federatedBufferDownScalingFactor = [(DESRecipe *)self->_recipe federatedBufferDownScalingFactor];
    if (!federatedBufferDownScalingFactor)
    {
      p_super = +[DESLogging coreChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
      }

      goto LABEL_46;
    }

    selfCopy2 = self;
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
      v21 = selfCopy;
      recipe = selfCopy->_recipe;
      v23 = [(DESDediscoUploader *)v21 key];
      v72 = 0;
      v63 = v20;
      v24 = [(DESSparsification *)v20 splitResultToChunksWithResult:resultCopy recipe:recipe baseKey:v23 error:&v72];
      p_super = v72;

      if (p_super)
      {
        v26 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [DESDediscoUploader donateResult:selfCopy2 dediscoMetadata:p_super recorder:?];
        }

        goto LABEL_45;
      }

      if (![(DESGaussianAlgorithmParameters *)v14 calculateAndVerifyPerChunkClippingBoundsIn:v24 withOverallClippingBound:v16])
      {
LABEL_45:

        goto LABEL_46;
      }

      v60 = resultsKeyString;
      v61 = metadataCopy;
      v62 = resultCopy;
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
      v38 = selfCopy2;
LABEL_30:
      v39 = 0;
      while (1)
      {
        if (*v69 != v67)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v68 + 1) + 8 * v39);
        clippingBound = [v40 clippingBound];
        [clippingBound doubleValue];
        v43 = v42;

        [federatedBufferDownScalingFactor doubleValue];
        v45 = v43 * v44;
        -[DESGaussianAlgorithmParameters addPerChunkParametersWith:numChunks:](v14, "addPerChunkParametersWith:numChunks:", [v35 count], v43);
        parameters = [(DESGaussianAlgorithmParameters *)v14 parameters];
        [v17 setObject:parameters forKeyedSubscript:@"AlgorithmParameters"];

        data = [v40 data];
        v48 = [(DESDediscoUploader *)v38 scaleData:data withScalingFactor:v45];

        if (v48)
        {
          v49 = federatedBufferDownScalingFactor;
          v50 = v14;
          v51 = [v40 key];
          data2 = [v40 data];
          v53 = v17;
          v54 = [recorderCopy record:v51 data:data2 metadata:v17];

          if (!v54)
          {
            v17 = v53;
            v14 = v50;
            federatedBufferDownScalingFactor = v49;
            v38 = selfCopy2;
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
          federatedBufferDownScalingFactor = v49;
          v38 = selfCopy2;
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

            resultCopy = v62;
            p_super = &v63->super;
            resultsKeyString = v60;
            metadataCopy = v61;
            v27 = v64;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }
    }

    if ([resultCopy length] >= 0xE7EF1)
    {
      p_super = +[DESLogging coreChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:resultCopy dediscoMetadata:self recorder:?];
      }

      goto LABEL_46;
    }

    [federatedBufferDownScalingFactor doubleValue];
    v29 = v16 * v28;
    [(DESGaussianAlgorithmParameters *)v14 addPerChunkParametersWith:1 numChunks:v16];
    parameters2 = [(DESGaussianAlgorithmParameters *)v14 parameters];
    [v17 setObject:parameters2 forKeyedSubscript:@"AlgorithmParameters"];

    p_super = [resultCopy mutableCopy];
    if (![(DESDediscoUploader *)self scaleData:p_super withScalingFactor:v29])
    {
      v34 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [DESDediscoUploader donateResult:? dediscoMetadata:? recorder:?];
      }

      goto LABEL_46;
    }

    if (![recorderCopy record:resultsKeyString data:p_super metadata:v17])
    {
LABEL_46:
      v27 = 0;
      goto LABEL_47;
    }

    v31 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [(DESDediscoUploader *)self key];
      resultsKeyString2 = [v32 resultsKeyString];
      *buf = 138412290;
      v76 = resultsKeyString2;
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

- (BOOL)donateMetrics:(id)metrics dediscoMetadata:(id)metadata recorder:(id)recorder
{
  recorderCopy = recorder;
  metadataCopy = metadata;
  metricsCopy = metrics;
  v11 = [(DESDediscoUploader *)self key];
  metricsKeyString = [v11 metricsKeyString];

  LOBYTE(v11) = [recorderCopy record:metricsKeyString data:metricsCopy metadata:metadataCopy];
  return v11;
}

- (BOOL)donateCategoricalMetadata:(id)metadata dediscoMetadata:(id)dediscoMetadata recorder:(id)recorder
{
  recorderCopy = recorder;
  dediscoMetadataCopy = dediscoMetadata;
  metadataCopy = metadata;
  v11 = [(DESDediscoUploader *)self key];
  metadataKeyString = [v11 metadataKeyString];

  LOBYTE(v11) = [recorderCopy record:metadataKeyString data:metadataCopy metadata:dediscoMetadataCopy];
  return v11;
}

- (BOOL)donateFedStatsMetrics:(id)metrics dataKey:(id)key dataTypeContent:(id)content dediscoMetadata:(id)metadata error:(id *)error recorder:(id)recorder
{
  v32[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  keyCopy = key;
  contentCopy = content;
  metadataCopy = metadata;
  recorderCopy = recorder;
  v19 = [metricsCopy valueForKeyPath:keyCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = [(DESDediscoUploader *)self key];
    metadataEncodedMetricsKeyString = [v21 metadataEncodedMetricsKeyString];

    v23 = [metricsCopy valueForKeyPath:keyCopy];
    v24 = [recorderCopy record:metadataEncodedMetricsKeyString data:v23 dataTypeContent:contentCopy metadata:metadataCopy errorOut:error];
  }

  else
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Value of key %@ is not array type, cannot use FedStats Encoding", keyCopy];
    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (error)
    {
      v27 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA470];
      v32[0] = keyCopy;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *error = [v27 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2012 userInfo:v28];
    }

    v24 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)scaleData:(id)data withScalingFactor:(double)factor
{
  dataCopy = data;
  v6 = dataCopy;
  v7 = 0;
  v8 = fabs(factor) == INFINITY;
  if (factor > 2.22507386e-308 && !v8)
  {
    mutableBytes = [dataCopy mutableBytes];
    if ([v6 length] >= 4)
    {
      v10 = 0;
      do
      {
        v11 = *(mutableBytes + 4 * v10) / factor;
        *(mutableBytes + 4 * v10++) = v11;
      }

      while (v10 < [v6 length] >> 2);
    }

    v7 = 1;
  }

  return v7;
}

+ (BOOL)hasAllZeroData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  if ([dataCopy length] >= 4)
  {
    v6 = 0;
    do
    {
      v7 = *(bytes + 4 * v6);
      v5 = v7 == 0;
      if (v7)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [dataCopy length] >> 2);
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