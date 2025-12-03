@interface DESNumericStatsRecorder
+ (id)constructErrorWith:(id)with;
- (BOOL)donateData:(id)data toKey:(id)key withMetadata:(id)metadata recorder:(id)recorder;
- (BOOL)record:(id)record data:(id)data dataTypeContent:(id)content metadata:(id)metadata errorOut:(id *)out;
- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out;
@end

@implementation DESNumericStatsRecorder

- (BOOL)record:(id)record data:(id)data dataTypeContent:(id)content metadata:(id)metadata errorOut:(id *)out
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  contentCopy = content;
  metadataCopy = metadata;
  if ([dataCopy count] && (objc_msgSend(dataCopy, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
  {
    recordCopy2 = objc_alloc_init(DESDecimalEncoder);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = dataCopy;
    v38 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v38)
    {
      v34 = dataCopy;
      v37 = *v43;
      v35 = metadataCopy;
      v36 = recordCopy2;
      outCopy = out;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * v18);
        v20 = [(DESDecimalEncoder *)recordCopy2 encodeDecimalData:v19 forKey:recordCopy withSchemas:contentCopy errorOut:out];
        v21 = +[DESLogging coreChannel];
        v22 = v21;
        if (!v20)
        {
          break;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
          *buf = 138412546;
          v47 = recordCopy;
          v48 = 2112;
          v49 = v30;
          _os_log_debug_impl(&dword_248FF7000, v22, OS_LOG_TYPE_DEBUG, "key=%@, encoded data length %@ successfully", buf, 0x16u);
        }

        v23 = objc_alloc_init(DESNumericMetadataEncoder);
        v24 = -[DESNumericMetadataEncoder encodeNumberVector:toLength:](v23, "encodeNumberVector:toLength:", v20, [v20 count]);
        v25 = objc_alloc_init(DESDPFloatValueRecorder);
        v26 = [(DESNumericStatsRecorder *)self donateData:v24 toKey:recordCopy withMetadata:metadataCopy recorder:v25];
        if (v26)
        {
          recordCopy = +[DESLogging coreChannel];
          if (os_log_type_enabled(recordCopy, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v47 = recordCopy;
            _os_log_debug_impl(&dword_248FF7000, recordCopy, OS_LOG_TYPE_DEBUG, "key=%@, successfully recorded data", buf, 0xCu);
          }
        }

        else
        {
          v28 = contentCopy;
          recordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, failed to record data", recordCopy];
          v29 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = recordCopy;
            _os_log_error_impl(&dword_248FF7000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          if (outCopy)
          {
            *outCopy = [objc_opt_class() constructErrorWith:recordCopy];
          }

          contentCopy = v28;
          metadataCopy = v35;
        }

        if (!v26)
        {
          v31 = 0;
          dataCopy = v34;
          recordCopy2 = v36;
          goto LABEL_28;
        }

        ++v18;
        recordCopy2 = v36;
        out = outCopy;
        if (v38 == v18)
        {
          v31 = 1;
          v38 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v38)
          {
            goto LABEL_5;
          }

          goto LABEL_33;
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [DESNumericStatsRecorder record:v19 data:recordCopy dataTypeContent:v22 metadata:? errorOut:?];
      }

      v31 = 0;
LABEL_33:
      dataCopy = v34;
      goto LABEL_28;
    }

    v31 = 1;
  }

  else
  {
    recordCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, data to be encoded is malformed, should be a non-empty array of dictionaries", recordCopy];
    if (out)
    {
      *out = [objc_opt_class() constructErrorWith:recordCopy2];
    }

    obj = +[DESLogging coreChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [DESNumericStatsRecorder record:data:dataTypeContent:metadata:errorOut:];
    }

    v31 = 0;
  }

LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out
{
  recordCopy = record;
  dataCopy = data;
  schemaCopy = schema;
  metadataCopy = metadata;
  v16 = [schemaCopy objectForKeyedSubscript:@"dataContentTypes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [schemaCopy objectForKeyedSubscript:@"dataTypeContent"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE660];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, '%@' or '%@' has wrong type, value=%@", recordCopy, @"dataContentTypes", @"dataTypeContent", v17];
      v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
      v24 = v23;

      objc_exception_throw(v23);
    }

    v16 = v17;
  }

  v18 = [(DESNumericStatsRecorder *)self record:recordCopy data:dataCopy dataTypeContent:v16 metadata:metadataCopy errorOut:out];

  return v18;
}

+ (id)constructErrorWith:(id)with
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = with;
  v4 = MEMORY[0x277CBEAC0];
  withCopy = with;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2013 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)donateData:(id)data toKey:(id)key withMetadata:(id)metadata recorder:(id)recorder
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  recorderCopy = recorder;
  if ([dataCopy length] > 0xE7EF0)
  {
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = keyCopy;
      v39 = 2048;
      v40 = [dataCopy length];
      v41 = 1024;
      v42 = 950000;
      _os_log_error_impl(&dword_248FF7000, v13, OS_LOG_TYPE_ERROR, "key=%@, data length %lu bytes is larger than limit %u", buf, 0x1Cu);
    }

LABEL_16:
    v32 = 0;
    goto LABEL_17;
  }

  v14 = [metadataCopy objectForKeyedSubscript:@"epsilon"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_14:
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DESNumericStatsRecorder donateData:toKey:withMetadata:recorder:];
    }

    goto LABEL_16;
  }

  v15 = [metadataCopy objectForKeyedSubscript:@"delta"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = [metadataCopy objectForKeyedSubscript:@"MomentsAccountantParameters"];

  if (v13)
  {
    v17 = [metadataCopy objectForKeyedSubscript:@"MomentsAccountantParameters"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      v13 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [DESNumericStatsRecorder donateData:toKey:withMetadata:recorder:];
      }

      goto LABEL_16;
    }

    v13 = [metadataCopy objectForKeyedSubscript:@"MomentsAccountantParameters"];
  }

  v19 = [metadataCopy objectForKeyedSubscript:@"epsilon"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [metadataCopy objectForKeyedSubscript:@"delta"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [[DESGaussianAlgorithmParameters alloc] initWith:keyCopy epsilon:v13 delta:v21 clippingBound:v24 momentsAccountantParameters:1.0];
  v26 = v25;
  if (v25)
  {
    [(DESGaussianAlgorithmParameters *)v25 addPerChunkParametersWith:1 numChunks:1.0];
    v27 = MEMORY[0x277CBEB38];
    v28 = [(DESGaussianAlgorithmParameters *)v26 parameters:*MEMORY[0x277D05410]];
    v36[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:2];
    v30 = [v27 dictionaryWithDictionary:v29];

    v31 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
    if (v31)
    {
      [v30 setObject:v31 forKeyedSubscript:@"DediscoTaskConfig"];
    }

    v32 = [recorderCopy record:keyCopy data:dataCopy metadata:v30];
  }

  else
  {
    v30 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [DESNumericStatsRecorder donateData:toKey:withMetadata:recorder:];
    }

    v32 = 0;
  }

LABEL_17:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)record:(NSObject *)a3 data:dataTypeContent:metadata:errorOut:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  v7 = 138412546;
  v8 = a2;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_248FF7000, a3, OS_LOG_TYPE_ERROR, "key=%@, failed to encode decimals: '%@'", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)record:data:dataTypeContent:metadata:errorOut:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)donateData:toKey:withMetadata:recorder:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)donateData:toKey:withMetadata:recorder:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)donateData:toKey:withMetadata:recorder:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end