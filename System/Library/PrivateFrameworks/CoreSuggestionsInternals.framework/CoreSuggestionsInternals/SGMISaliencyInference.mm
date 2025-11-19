@interface SGMISaliencyInference
+ (id)evaluate:(id)a3 enablePreFiltering:(BOOL)a4 config:(id)a5 error:(id *)a6;
+ (id)read:(id)a3 fromStore:(id)a4;
@end

@implementation SGMISaliencyInference

+ (id)read:(id)a3 fromStore:(id)a4
{
  v5 = a4;
  v6 = [a3 messageId];
  v7 = [v5 saliencyForMessageId:v6];

  return v7;
}

+ (id)evaluate:(id)a3 enablePreFiltering:(BOOL)a4 config:(id)a5 error:(id *)a6
{
  v8 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 mailMessage];
  if ([v10 isSent])
  {
    v11 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 messageId];
      v29 = 138412290;
      v30 = v12;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: Mail %@ is a sent mail", &v29, 0xCu);
    }

    if (!a6)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 1;
LABEL_16:
    *a6 = [v13 errorWithDomain:@"SGMIError" code:v14 userInfo:0];
LABEL_17:
    v20 = [v9 defaultSaliencyOnError];
    goto LABEL_18;
  }

  if (!a5)
  {
    v19 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGMISaliencyInference: Error - config shouldn't be nil when inferencing saliency", &v29, 2u);
    }

    if (!a6)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 2;
    goto LABEL_16;
  }

  v15 = [v9 store];
  v16 = [v15 areSubModelsEmpty];

  if (v16)
  {
    v17 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v10 messageId];
      v29 = 138412290;
      v30 = v18;
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: No submodels for message ID: %@", &v29, 0xCu);
    }

    if (!a6)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 3;
    goto LABEL_16;
  }

  if (v8 && (v24 = [SGMISaliencyModel ruleBasedInferenceFor:v9], v24 != 2))
  {
    v26 = v24;
    v27 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v10 messageId];
      v29 = 138412290;
      v30 = v28;
      _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: rule based inference for message ID: %@", &v29, 0xCu);
    }

    v20 = [v9 defaultSaliencyOnOverrideFor:v26];
  }

  else
  {
    v25 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v29) = 0;
      _os_log_debug_impl(&dword_231E60000, v25, OS_LOG_TYPE_DEBUG, "SGMISaliencyInference: Performing saliency inference for e-mail message.", &v29, 2u);
    }

    v20 = [SGMISaliencyModel saliencyForFeatureVector:v9];
  }

LABEL_18:
  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end