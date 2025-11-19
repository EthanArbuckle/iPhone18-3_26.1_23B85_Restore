@interface DESDecimalEncoder
+ (id)constructErrorWith:(id)a3;
- (id)encodeDecimalData:(id)a3 forKey:(id)a4 withSchemas:(id)a5 errorOut:(id *)a6;
@end

@implementation DESDecimalEncoder

- (id)encodeDecimalData:(id)a3 forKey:(id)a4 withSchemas:(id)a5 errorOut:(id *)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 allKeys];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_0];

  v14 = [v13 count];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = sqrtf(v14);
    v64 = *v67;
    v61 = a6;
    v62 = v10;
    v65 = v15;
    obj = v16;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v67 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v66 + 1) + 8 * v20);
      v22 = [v11 objectForKeyedSubscript:v21];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = [v22 objectForKeyedSubscript:@"upperBound"];
      v25 = [v23 objectForKeyedSubscript:@"lowerBound"];
      if (!v24 || ([v24 floatValue], objc_msgSend(v24, "floatValue"), fabsf(v26) == INFINITY))
      {
        v59 = v21;
        v10 = v62;
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, missing or malformed '%@' in encoding schema for data '%@', must be a real or integer number", v62, @"upperBound", v59];
        v44 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

LABEL_23:

LABEL_24:
        v16 = obj;
        if (v61)
        {
          *v61 = [objc_opt_class() constructErrorWith:v43];
        }

LABEL_32:
        v15 = v65;
LABEL_33:

        v42 = 0;
        goto LABEL_34;
      }

      if (!v25 || ([v25 floatValue], objc_msgSend(v25, "floatValue"), fabsf(v27) == INFINITY))
      {
        v60 = v21;
        v10 = v62;
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, missing or malformed '%@' in encoding schema for data '%@', must be a real or integer number", v62, @"lowerBound", v60];
        v44 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      [v25 floatValue];
      v29 = v28;
      [v24 floatValue];
      v31 = *&v30;
      if (v29 >= *&v30)
      {
        v50 = v9;
        v51 = MEMORY[0x277CCACA8];
        v52 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
        *&v53 = v29;
        v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
        v58 = v21;
        v10 = v62;
        v43 = [v51 stringWithFormat:@"key=%@, malformed encoding schema for data '%@', '%@'=%@ must be higher than '%@'=%@", v62, v58, @"upperBound", v52, @"lowerBound", v54];

        v55 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v9 = v50;
        goto LABEL_24;
      }

      v32 = v11;
      v33 = v9;
      v34 = [v9 objectForKeyedSubscript:v21];
      v35 = v34;
      if (!v34 || ([v34 floatValue], objc_msgSend(v35, "floatValue"), fabsf(v36) == INFINITY))
      {
        v56 = v21;
        v10 = v62;
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, malformed data for '%@', must be a valid real number", v62, v56];
        v46 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v16 = obj;
        if (v61)
        {
          *v61 = [objc_opt_class() constructErrorWith:v45];
        }

        v9 = v33;
        v11 = v32;
        goto LABEL_32;
      }

      v37 = MEMORY[0x277CCABB0];
      [v35 floatValue];
      *&v39 = ((((v38 - v29) + (v38 - v29)) / (v31 - v29)) + -1.0) / v19;
      v40 = [v37 numberWithFloat:v39];

      v41 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v71 = v62;
        v72 = 2112;
        v73 = v21;
        v74 = 2112;
        v75 = v40;
        _os_log_debug_impl(&dword_248FF7000, v41, OS_LOG_TYPE_DEBUG, "key=%@, encoded metric '%@' to value '%@'", buf, 0x20u);
      }

      [v65 addObject:v40];
      ++v20;
      v9 = v33;
      v11 = v32;
      if (v18 == v20)
      {
        v16 = obj;
        v18 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
        v10 = v62;
        v15 = v65;
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v57 = v21;
    v10 = v62;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, data element '%@' has no schema", v62, v57];
    v49 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    v15 = v65;
    v16 = obj;
    if (v61)
    {
      *v61 = [objc_opt_class() constructErrorWith:v23];
    }

    goto LABEL_33;
  }

LABEL_18:

  v42 = v15;
LABEL_34:

  v47 = *MEMORY[0x277D85DE8];

  return v42;
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

@end