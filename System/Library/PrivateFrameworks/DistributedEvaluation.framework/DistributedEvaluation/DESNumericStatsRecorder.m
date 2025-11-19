@interface DESNumericStatsRecorder
+ (id)constructErrorWith:(id)a3;
- (BOOL)donateData:(id)a3 toKey:(id)a4 withMetadata:(id)a5 recorder:(id)a6;
- (BOOL)record:(id)a3 data:(id)a4 dataTypeContent:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
@end

@implementation DESNumericStatsRecorder

- (BOOL)record:(id)a3 data:(id)a4 dataTypeContent:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v12 count] && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
  {
    v17 = objc_alloc_init(DESDecimalEncoder);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v12;
    v38 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v38)
    {
      v34 = v12;
      v37 = *v43;
      v35 = v14;
      v36 = v17;
      v40 = a7;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * v18);
        v20 = [(DESDecimalEncoder *)v17 encodeDecimalData:v19 forKey:v11 withSchemas:v13 errorOut:a7];
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
          v47 = v11;
          v48 = 2112;
          v49 = v30;
          _os_log_debug_impl(&dword_248FF7000, v22, OS_LOG_TYPE_DEBUG, "key=%@, encoded data length %@ successfully", buf, 0x16u);
        }

        v23 = objc_alloc_init(DESNumericMetadataEncoder);
        v24 = -[DESNumericMetadataEncoder encodeNumberVector:toLength:](v23, "encodeNumberVector:toLength:", v20, [v20 count]);
        v25 = objc_alloc_init(DESDPFloatValueRecorder);
        v26 = [(DESNumericStatsRecorder *)self donateData:v24 toKey:v11 withMetadata:v14 recorder:v25];
        if (v26)
        {
          v27 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v47 = v11;
            _os_log_debug_impl(&dword_248FF7000, v27, OS_LOG_TYPE_DEBUG, "key=%@, successfully recorded data", buf, 0xCu);
          }
        }

        else
        {
          v28 = v13;
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, failed to record data", v11];
          v29 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v27;
            _os_log_error_impl(&dword_248FF7000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          if (v40)
          {
            *v40 = [objc_opt_class() constructErrorWith:v27];
          }

          v13 = v28;
          v14 = v35;
        }

        if (!v26)
        {
          v31 = 0;
          v12 = v34;
          v17 = v36;
          goto LABEL_28;
        }

        ++v18;
        v17 = v36;
        a7 = v40;
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
        [DESNumericStatsRecorder record:v19 data:v11 dataTypeContent:v22 metadata:? errorOut:?];
      }

      v31 = 0;
LABEL_33:
      v12 = v34;
      goto LABEL_28;
    }

    v31 = 1;
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, data to be encoded is malformed, should be a non-empty array of dictionaries", v11];
    if (a7)
    {
      *a7 = [objc_opt_class() constructErrorWith:v17];
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

- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 objectForKeyedSubscript:@"dataContentTypes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [v14 objectForKeyedSubscript:@"dataTypeContent"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE660];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, '%@' or '%@' has wrong type, value=%@", v12, @"dataContentTypes", @"dataTypeContent", v17];
      v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
      v24 = v23;

      objc_exception_throw(v23);
    }

    v16 = v17;
  }

  v18 = [(DESNumericStatsRecorder *)self record:v12 data:v13 dataTypeContent:v16 metadata:v15 errorOut:a7];

  return v18;
}

+ (id)constructErrorWith:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2013 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)donateData:(id)a3 toKey:(id)a4 withMetadata:(id)a5 recorder:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length] > 0xE7EF0)
  {
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v10;
      v39 = 2048;
      v40 = [v9 length];
      v41 = 1024;
      v42 = 950000;
      _os_log_error_impl(&dword_248FF7000, v13, OS_LOG_TYPE_ERROR, "key=%@, data length %lu bytes is larger than limit %u", buf, 0x1Cu);
    }

LABEL_16:
    v32 = 0;
    goto LABEL_17;
  }

  v14 = [v11 objectForKeyedSubscript:@"epsilon"];
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

  v15 = [v11 objectForKeyedSubscript:@"delta"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = [v11 objectForKeyedSubscript:@"MomentsAccountantParameters"];

  if (v13)
  {
    v17 = [v11 objectForKeyedSubscript:@"MomentsAccountantParameters"];
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

    v13 = [v11 objectForKeyedSubscript:@"MomentsAccountantParameters"];
  }

  v19 = [v11 objectForKeyedSubscript:@"epsilon"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v11 objectForKeyedSubscript:@"delta"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [[DESGaussianAlgorithmParameters alloc] initWith:v10 epsilon:v13 delta:v21 clippingBound:v24 momentsAccountantParameters:1.0];
  v26 = v25;
  if (v25)
  {
    [(DESGaussianAlgorithmParameters *)v25 addPerChunkParametersWith:1 numChunks:1.0];
    v27 = MEMORY[0x277CBEB38];
    v28 = [(DESGaussianAlgorithmParameters *)v26 parameters:*MEMORY[0x277D05410]];
    v36[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:2];
    v30 = [v27 dictionaryWithDictionary:v29];

    v31 = [v11 objectForKeyedSubscript:@"DediscoTaskConfig"];
    if (v31)
    {
      [v30 setObject:v31 forKeyedSubscript:@"DediscoTaskConfig"];
    }

    v32 = [v12 record:v10 data:v9 metadata:v30];
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