@interface MLRTrialDediscoTaskResult
+ (id)baseKeyFromFormat:(id)a3 variables:(id)a4;
- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
- (BOOL)submitForTask:(id)a3 error:(id *)a4;
- (BOOL)submitWithTRIClient:(id)a3 error:(id *)a4;
- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)a3 identifier:(id)a4;
- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)a3 namespaceName:(id)a4 factorName:(id)a5 additionalKeyVariables:(id)a6;
- (id)description;
- (id)variablesFromTrialClient:(id)a3;
@end

@implementation MLRTrialDediscoTaskResult

+ (id)baseKeyFromFormat:(id)a3 variables:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"format cannot be nil" userInfo:0];
    objc_exception_throw(v35);
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"{}$"];
  if (![v5 length])
  {
LABEL_20:
    v30 = v8;
    goto LABEL_33;
  }

  v10 = 0;
  v11 = @"%c";
  while (1)
  {
    v12 = [v5 characterAtIndex:v10];
    v13 = v10 + 1;
    if (v12 != 36)
    {
      v14 = v12;
      if (v12 == 92 && v13 < [v5 length] && objc_msgSend(v5, "characterAtIndex:", v10 + 1) == 36)
      {
        [v8 appendString:@"$"];
        v13 = v10 + 2;
      }

      else
      {
        [v8 appendFormat:v11, v14];
      }

      goto LABEL_19;
    }

    v15 = [v5 rangeOfCharacterFromSet:v9 options:0 range:{v10 + 1, objc_msgSend(v5, "length") + ~v10}];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v17 = v15;
    v18 = v16;
    if ([v5 characterAtIndex:v15] != 123)
    {
      v31 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    v19 = [v5 rangeOfCharacterFromSet:v9 options:0 range:{v17 + 1, objc_msgSend(v5, "length") - (v17 + v18)}];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v21 = v19;
    v22 = v20;
    if ([v5 characterAtIndex:v19] != 125)
    {
      v31 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

LABEL_31:

      goto LABEL_32;
    }

    if (v17 + 1 == v21)
    {
      v31 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v23 = [v5 substringWithRange:{v17 + 1, v21 + ~v17}];
    v24 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_debug_impl(&dword_2577CB000, v24, OS_LOG_TYPE_DEBUG, "Expanding var=%@", buf, 0xCu);
    }

    v25 = [v7 objectForKeyedSubscript:v23];

    if (!v25)
    {
      break;
    }

    v26 = MEMORY[0x277CCACA8];
    [v7 objectForKeyedSubscript:v23];
    v28 = v27 = v11;
    v29 = [v26 stringWithFormat:@"%@", v28];
    [v8 appendString:v29];

    v11 = v27;
    v13 = v21 + v22;

LABEL_19:
    v10 = v13;
    if (v13 >= [v5 length])
    {
      goto LABEL_20;
    }
  }

  v34 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
  }

LABEL_32:
  v30 = 0;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)a3 namespaceName:(id)a4 factorName:(id)a5 additionalKeyVariables:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"JSONResult cannot be nil";
    goto LABEL_10;
  }

  if (!v11)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"namespaceName cannot be nil";
    goto LABEL_10;
  }

  if (!v12)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"factorName cannot be nil";
LABEL_10:
    v27 = [v24 exceptionWithName:v25 reason:v26 userInfo:0];
    objc_exception_throw(v27);
  }

  v14 = v13;
  v28.receiver = self;
  v28.super_class = MLRTrialDediscoTaskResult;
  v15 = [(MLRTrialTaskResult *)&v28 initWithJSONResult:v10];
  if (v15)
  {
    v16 = [v11 copy];
    namespaceName = v15->_namespaceName;
    v15->_namespaceName = v16;

    v18 = [v12 copy];
    recipeFactorName = v15->_recipeFactorName;
    v15->_recipeFactorName = v18;

    v20 = [v14 copy];
    additionalKeyVariables = v15->_additionalKeyVariables;
    v15->_additionalKeyVariables = v20;

    v22 = v15;
  }

  return v15;
}

- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)a3 identifier:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"DediscoUploadPrototype"])
  {
    v7 = [[MLRTrialDediscoTaskResult alloc] initWithJSONResult:v6 namespaceName:@"PPM_DIRECT_UPLOAD" factorName:@"DediscoUploadPrototype" additionalKeyVariables:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  namespaceName = self->_namespaceName;
  recipeFactorName = self->_recipeFactorName;
  v8 = [(MLRTrialTaskResult *)self JSONResult];
  v9 = [v3 stringWithFormat:@"%@\n(%@, %@\n\t%@)\n", v5, namespaceName, recipeFactorName, v8];

  return v9;
}

- (id)variablesFromTrialClient:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [a3 experimentIdentifiersWithNamespaceName:self->_namespaceName];
  v4 = v3;
  if (v3)
  {
    v11[0] = @"experimentId";
    v5 = [v3 experimentId];
    v12[0] = v5;
    v11[1] = @"deploymentId";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    v12[1] = v6;
    v11[2] = @"treatmentId";
    v7 = [v4 treatmentId];
    v12[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v12 objectForKeyedSubscript:@"type"];
  v16 = [v15 isEqual:@"decimal"];

  v17 = 0x277D05608;
  if (!v16)
  {
    v17 = 0x277D055F8;
  }

  v18 = *v17;
  v19 = objc_opt_new();
  v20 = [v19 record:v14 data:v13 encodingSchema:v12 metadata:v11 errorOut:a7];

  return v20;
}

- (BOOL)submitWithTRIClient:(id)a3 error:(id *)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!objc_opt_class())
  {
    v53 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Trial Framework is not loaded" userInfo:0];
    objc_exception_throw(v53);
  }

  if (!v6)
  {
    v54 = MEMORY[0x277CBEAD8];
    v55 = *MEMORY[0x277CBE660];
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Trial client must not be nil"];
    v57 = [v54 exceptionWithName:v55 reason:v56 userInfo:0];
    v58 = v57;

    objc_exception_throw(v57);
  }

  [v6 refresh];
  v7 = [v6 levelForFactor:self->_recipeFactorName withNamespaceName:self->_namespaceName];
  v8 = [v7 fileValue];
  v9 = [v8 hasPath];

  if (v9)
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = [v7 fileValue];
    v12 = [v11 path];
    v13 = [v10 fileURLWithPath:v12 isDirectory:0];

    v62 = 0;
    v14 = [[MLRTrialDediscoRecipe alloc] initWithAssetURL:v13 configOverride:0 error:&v62];
    v15 = v62;
    if (v14)
    {
      v61 = a4;
      v16 = [(MLRTrialDediscoTaskResult *)self variablesFromTrialClient:v6];
      v17 = [(MLRTrialDediscoTaskResult *)self additionalKeyVariables];

      if (v17)
      {
        v18 = [v16 mutableCopy];
        v19 = [(MLRTrialDediscoTaskResult *)self additionalKeyVariables];
        [v18 addEntriesFromDictionary:v19];

        v16 = v18;
      }

      v20 = objc_opt_class();
      v21 = [(MLRTrialDediscoRecipe *)v14 baseKeyFormat];
      [v20 baseKeyFromFormat:v21 variables:v16];
      v23 = v22 = v16;

      v24 = v23;
      v59 = v22;
      v60 = v13;
      if (v23)
      {
        v25 = [MEMORY[0x277D05600] coreChannel];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v51 = [(MLRTrialTaskResult *)self JSONResult];
          v52 = [(MLRTrialDediscoRecipe *)v14 encodingSchema];
          *buf = 138412802;
          v65 = v51;
          v66 = 2112;
          v67 = v24;
          v68 = 2112;
          v69 = v52;
          _os_log_debug_impl(&dword_2577CB000, v25, OS_LOG_TYPE_DEBUG, "Recording data=%@, key=%@, encodingSchema=%@", buf, 0x20u);
        }

        v26 = [(MLRTrialTaskResult *)self JSONResult];
        v63 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
        v28 = [(MLRTrialDediscoRecipe *)v14 encodingSchema];
        v29 = [(MLRTrialDediscoRecipe *)v14 mlrDediscoMetadata];
        v30 = [(MLRTrialDediscoTaskResult *)self record:v24 data:v27 encodingSchema:v28 metadata:v29 errorOut:v61];
      }

      else
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277D05640];
        v70 = *MEMORY[0x277CCA450];
        v42 = MEMORY[0x277CCACA8];
        v43 = [(MLRTrialDediscoRecipe *)v14 baseKeyFormat];
        v44 = [v42 stringWithFormat:@"Fail to compute baseKey with format string=%@, variables=%@", v43, v22];
        v71 = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v46 = [v40 errorWithDomain:v41 code:5007 userInfo:v45];

        v47 = [MEMORY[0x277D05600] coreChannel];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
        }

        if (v61)
        {
          v48 = v46;
          v30 = 0;
          *v61 = v46;
        }

        else
        {
          v30 = 0;
        }

        v15 = v46;
      }

      v13 = v60;
    }

    else
    {
      v38 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
      }

      if (a4)
      {
        v39 = v15;
        v30 = 0;
        *a4 = v15;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D05640];
    v72 = *MEMORY[0x277CCA450];
    namespaceName = self->_namespaceName;
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil fileValue for TRILevel=%@, namespace=%@, factor=%@", v7, namespaceName, self->_recipeFactorName];
    v73[0] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v15 = [v31 errorWithDomain:v32 code:5007 userInfo:v35];

    v36 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
    }

    if (a4)
    {
      v37 = v15;
      v30 = 0;
      *a4 = v15;
    }

    else
    {
      v30 = 0;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)submitForTask:(id)a3 error:(id *)a4
{
  v6 = [a3 triClient];
  LOBYTE(a4) = [(MLRTrialDediscoTaskResult *)self submitWithTRIClient:v6 error:a4];

  return a4;
}

+ (void)baseKeyFromFormat:variables:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2577CB000, v0, v1, "Invalid format=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)baseKeyFromFormat:variables:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2577CB000, v0, v1, "Find unsupported variable=%@, variables=%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)baseKeyFromFormat:variables:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2577CB000, v0, v1, "Empty variable=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)baseKeyFromFormat:variables:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2577CB000, v0, v1, "No matching } in format=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)baseKeyFromFormat:variables:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2577CB000, v0, v1, "No starting mark in format=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)submitWithTRIClient:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2577CB000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)submitWithTRIClient:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2577CB000, v0, v1, "Fail to read configuration from URL=%@, error=%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end