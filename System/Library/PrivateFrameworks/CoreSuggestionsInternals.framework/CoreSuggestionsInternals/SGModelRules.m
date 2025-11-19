@interface SGModelRules
+ (BOOL)shouldCollectTrainingDataForObjective:(unint64_t)a3 language:(id)a4;
+ (id)_modelsAvailabeForMode:(unint64_t)a3 objective:(unint64_t)a4 language:(id)a5;
+ (void)loadBinaryClassificationModelFromMobileAssetForObjective:(unint64_t)a3 language:(id)a4 withBlock:(id)a5;
@end

@implementation SGModelRules

+ (BOOL)shouldCollectTrainingDataForObjective:(unint64_t)a3 language:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 _modelsAvailabeForMode:0 objective:a3 language:v6];
  v8 = [v7 count];
  if (v8 && [v7 count] >= 2)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 134218498;
      v13 = a3;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "Multiple model names specified to turn on data collection (objective: %lu, language: %@, models: %@.", &v12, 0x20u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

+ (id)_modelsAvailabeForMode:(unint64_t)a3 objective:(unint64_t)a4 language:(id)a5
{
  v7 = MEMORY[0x277D02558];
  v8 = a5;
  v9 = [v7 rules];
  v10 = [v9 objectForKeyedSubscript:@"SGDetectedAttributeDissector"];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (a4 >= 8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *rulesKeyForObjective(SGModelObjective)"];
    [v12 handleFailureInFunction:v13 file:@"SGModels.m" lineNumber:351 description:{@"Unknown SGModelObjective = %lu", a4}];
  }

  else
  {
    a4 = off_27894AEB0[a4];
  }

  if (a3 >= 3)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *rulesKeyForMode(SGModelMode)"];
    [v17 handleFailureInFunction:v18 file:@"SGModels.m" lineNumber:361 description:{@"Unknown SGModelMode = %lu", a3}];

    __break(1u);
  }

  else
  {
    v14 = [v11 objectForKeyedSubscript:off_27894AEF0[a3]];
    v15 = [v14 objectForKeyedSubscript:a4];

    return v15;
  }

  return result;
}

+ (void)loadBinaryClassificationModelFromMobileAssetForObjective:(unint64_t)a3 language:(id)a4 withBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [a1 _modelsAvailabeForMode:1 objective:a3 language:v8];
  if ([v11 count]< 2)
  {
    if ([v11 count]== 1)
    {
      v13 = [v11 firstObject];
      v14 = [SGBinaryClassificationModel modelFromMobileAssetForName:v13 language:v8];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9[2](v9, v14);
      }

      else
      {
        v15 = sgLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v17 = 134218498;
          v18 = a3;
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = v13;
          _os_log_fault_impl(&dword_231E60000, v15, OS_LOG_TYPE_FAULT, "Failed to load model (objective: %lu, langauge: %@, name: %@)", &v17, 0x20u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
LABEL_18:
          abort();
        }
      }
    }

    else
    {
      v13 = sgLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134218242;
        v18 = a3;
        v19 = 2112;
        v20 = v8;
        _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "No prediction model specified for objective %lu, language: %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v17 = 134218498;
      v18 = a3;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_fault_impl(&dword_231E60000, v12, OS_LOG_TYPE_FAULT, "More than one prediction model specified for objective %lu, language: %@, models: %@", &v17, 0x20u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v10);
  v16 = *MEMORY[0x277D85DE8];
}

@end