@interface MLRTrialDediscoTaskResult
+ (id)baseKeyFromFormat:(id)format variables:(id)variables;
- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out;
- (BOOL)submitForTask:(id)task error:(id *)error;
- (BOOL)submitWithTRIClient:(id)client error:(id *)error;
- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)result identifier:(id)identifier;
- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)result namespaceName:(id)name factorName:(id)factorName additionalKeyVariables:(id)variables;
- (id)description;
- (id)variablesFromTrialClient:(id)client;
@end

@implementation MLRTrialDediscoTaskResult

+ (id)baseKeyFromFormat:(id)format variables:(id)variables
{
  v38 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  variablesCopy = variables;
  if (!formatCopy)
  {
    v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"format cannot be nil" userInfo:0];
    objc_exception_throw(v35);
  }

  v7 = variablesCopy;
  string = [MEMORY[0x277CCAB68] string];
  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"{}$"];
  if (![formatCopy length])
  {
LABEL_20:
    v30 = string;
    goto LABEL_33;
  }

  v10 = 0;
  v11 = @"%c";
  while (1)
  {
    v12 = [formatCopy characterAtIndex:v10];
    v13 = v10 + 1;
    if (v12 != 36)
    {
      v14 = v12;
      if (v12 == 92 && v13 < [formatCopy length] && objc_msgSend(formatCopy, "characterAtIndex:", v10 + 1) == 36)
      {
        [string appendString:@"$"];
        v13 = v10 + 2;
      }

      else
      {
        [string appendFormat:v11, v14];
      }

      goto LABEL_19;
    }

    v15 = [formatCopy rangeOfCharacterFromSet:v9 options:0 range:{v10 + 1, objc_msgSend(formatCopy, "length") + ~v10}];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      coreChannel = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v17 = v15;
    v18 = v16;
    if ([formatCopy characterAtIndex:v15] != 123)
    {
      coreChannel = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    v19 = [formatCopy rangeOfCharacterFromSet:v9 options:0 range:{v17 + 1, objc_msgSend(formatCopy, "length") - (v17 + v18)}];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      coreChannel = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v21 = v19;
    v22 = v20;
    if ([formatCopy characterAtIndex:v19] != 125)
    {
      coreChannel = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

LABEL_31:

      goto LABEL_32;
    }

    if (v17 + 1 == v21)
    {
      coreChannel = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
      {
        +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
      }

      goto LABEL_31;
    }

    v23 = [formatCopy substringWithRange:{v17 + 1, v21 + ~v17}];
    coreChannel2 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_debug_impl(&dword_2577CB000, coreChannel2, OS_LOG_TYPE_DEBUG, "Expanding var=%@", buf, 0xCu);
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
    [string appendString:v29];

    v11 = v27;
    v13 = v21 + v22;

LABEL_19:
    v10 = v13;
    if (v13 >= [formatCopy length])
    {
      goto LABEL_20;
    }
  }

  coreChannel3 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(coreChannel3, OS_LOG_TYPE_ERROR))
  {
    +[MLRTrialDediscoTaskResult baseKeyFromFormat:variables:];
  }

LABEL_32:
  v30 = 0;
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)result namespaceName:(id)name factorName:(id)factorName additionalKeyVariables:(id)variables
{
  resultCopy = result;
  nameCopy = name;
  factorNameCopy = factorName;
  variablesCopy = variables;
  if (!resultCopy)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"JSONResult cannot be nil";
    goto LABEL_10;
  }

  if (!nameCopy)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"namespaceName cannot be nil";
    goto LABEL_10;
  }

  if (!factorNameCopy)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    v26 = @"factorName cannot be nil";
LABEL_10:
    v27 = [v24 exceptionWithName:v25 reason:v26 userInfo:0];
    objc_exception_throw(v27);
  }

  v14 = variablesCopy;
  v28.receiver = self;
  v28.super_class = MLRTrialDediscoTaskResult;
  v15 = [(MLRTrialTaskResult *)&v28 initWithJSONResult:resultCopy];
  if (v15)
  {
    v16 = [nameCopy copy];
    namespaceName = v15->_namespaceName;
    v15->_namespaceName = v16;

    v18 = [factorNameCopy copy];
    recipeFactorName = v15->_recipeFactorName;
    v15->_recipeFactorName = v18;

    v20 = [v14 copy];
    additionalKeyVariables = v15->_additionalKeyVariables;
    v15->_additionalKeyVariables = v20;

    v22 = v15;
  }

  return v15;
}

- (MLRTrialDediscoTaskResult)initWithJSONResult:(id)result identifier:(id)identifier
{
  resultCopy = result;
  if ([identifier isEqualToString:@"DediscoUploadPrototype"])
  {
    v7 = [[MLRTrialDediscoTaskResult alloc] initWithJSONResult:resultCopy namespaceName:@"PPM_DIRECT_UPLOAD" factorName:@"DediscoUploadPrototype" additionalKeyVariables:0];
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
  jSONResult = [(MLRTrialTaskResult *)self JSONResult];
  v9 = [v3 stringWithFormat:@"%@\n(%@, %@\n\t%@)\n", v5, namespaceName, recipeFactorName, jSONResult];

  return v9;
}

- (id)variablesFromTrialClient:(id)client
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [client experimentIdentifiersWithNamespaceName:self->_namespaceName];
  v4 = v3;
  if (v3)
  {
    v11[0] = @"experimentId";
    experimentId = [v3 experimentId];
    v12[0] = experimentId;
    v11[1] = @"deploymentId";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    v12[1] = v6;
    v11[2] = @"treatmentId";
    treatmentId = [v4 treatmentId];
    v12[2] = treatmentId;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out
{
  metadataCopy = metadata;
  schemaCopy = schema;
  dataCopy = data;
  recordCopy = record;
  v15 = [schemaCopy objectForKeyedSubscript:@"type"];
  v16 = [v15 isEqual:@"decimal"];

  v17 = 0x277D05608;
  if (!v16)
  {
    v17 = 0x277D055F8;
  }

  v18 = *v17;
  v19 = objc_opt_new();
  v20 = [v19 record:recordCopy data:dataCopy encodingSchema:schemaCopy metadata:metadataCopy errorOut:out];

  return v20;
}

- (BOOL)submitWithTRIClient:(id)client error:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (!objc_opt_class())
  {
    v53 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Trial Framework is not loaded" userInfo:0];
    objc_exception_throw(v53);
  }

  if (!clientCopy)
  {
    v54 = MEMORY[0x277CBEAD8];
    v55 = *MEMORY[0x277CBE660];
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Trial client must not be nil"];
    v57 = [v54 exceptionWithName:v55 reason:v56 userInfo:0];
    v58 = v57;

    objc_exception_throw(v57);
  }

  [clientCopy refresh];
  v7 = [clientCopy levelForFactor:self->_recipeFactorName withNamespaceName:self->_namespaceName];
  fileValue = [v7 fileValue];
  hasPath = [fileValue hasPath];

  if (hasPath)
  {
    v10 = MEMORY[0x277CBEBC0];
    fileValue2 = [v7 fileValue];
    path = [fileValue2 path];
    v13 = [v10 fileURLWithPath:path isDirectory:0];

    v62 = 0;
    v14 = [[MLRTrialDediscoRecipe alloc] initWithAssetURL:v13 configOverride:0 error:&v62];
    v15 = v62;
    if (v14)
    {
      errorCopy = error;
      v16 = [(MLRTrialDediscoTaskResult *)self variablesFromTrialClient:clientCopy];
      additionalKeyVariables = [(MLRTrialDediscoTaskResult *)self additionalKeyVariables];

      if (additionalKeyVariables)
      {
        v18 = [v16 mutableCopy];
        additionalKeyVariables2 = [(MLRTrialDediscoTaskResult *)self additionalKeyVariables];
        [v18 addEntriesFromDictionary:additionalKeyVariables2];

        v16 = v18;
      }

      v20 = objc_opt_class();
      baseKeyFormat = [(MLRTrialDediscoRecipe *)v14 baseKeyFormat];
      [v20 baseKeyFromFormat:baseKeyFormat variables:v16];
      v23 = v22 = v16;

      v24 = v23;
      v59 = v22;
      v60 = v13;
      if (v23)
      {
        coreChannel = [MEMORY[0x277D05600] coreChannel];
        if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_DEBUG))
        {
          jSONResult = [(MLRTrialTaskResult *)self JSONResult];
          encodingSchema = [(MLRTrialDediscoRecipe *)v14 encodingSchema];
          *buf = 138412802;
          v65 = jSONResult;
          v66 = 2112;
          v67 = v24;
          v68 = 2112;
          v69 = encodingSchema;
          _os_log_debug_impl(&dword_2577CB000, coreChannel, OS_LOG_TYPE_DEBUG, "Recording data=%@, key=%@, encodingSchema=%@", buf, 0x20u);
        }

        jSONResult2 = [(MLRTrialTaskResult *)self JSONResult];
        v63 = jSONResult2;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
        encodingSchema2 = [(MLRTrialDediscoRecipe *)v14 encodingSchema];
        mlrDediscoMetadata = [(MLRTrialDediscoRecipe *)v14 mlrDediscoMetadata];
        v30 = [(MLRTrialDediscoTaskResult *)self record:v24 data:v27 encodingSchema:encodingSchema2 metadata:mlrDediscoMetadata errorOut:errorCopy];
      }

      else
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277D05640];
        v70 = *MEMORY[0x277CCA450];
        v42 = MEMORY[0x277CCACA8];
        baseKeyFormat2 = [(MLRTrialDediscoRecipe *)v14 baseKeyFormat];
        v44 = [v42 stringWithFormat:@"Fail to compute baseKey with format string=%@, variables=%@", baseKeyFormat2, v22];
        v71 = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v46 = [v40 errorWithDomain:v41 code:5007 userInfo:v45];

        coreChannel2 = [MEMORY[0x277D05600] coreChannel];
        if (os_log_type_enabled(coreChannel2, OS_LOG_TYPE_ERROR))
        {
          [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
        }

        if (errorCopy)
        {
          v48 = v46;
          v30 = 0;
          *errorCopy = v46;
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
      coreChannel3 = [MEMORY[0x277D05600] coreChannel];
      if (os_log_type_enabled(coreChannel3, OS_LOG_TYPE_ERROR))
      {
        [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
      }

      if (error)
      {
        v39 = v15;
        v30 = 0;
        *error = v15;
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

    coreChannel4 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel4, OS_LOG_TYPE_ERROR))
    {
      [MLRTrialDediscoTaskResult submitWithTRIClient:error:];
    }

    if (error)
    {
      v37 = v15;
      v30 = 0;
      *error = v15;
    }

    else
    {
      v30 = 0;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)submitForTask:(id)task error:(id *)error
{
  triClient = [task triClient];
  LOBYTE(error) = [(MLRTrialDediscoTaskResult *)self submitWithTRIClient:triClient error:error];

  return error;
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