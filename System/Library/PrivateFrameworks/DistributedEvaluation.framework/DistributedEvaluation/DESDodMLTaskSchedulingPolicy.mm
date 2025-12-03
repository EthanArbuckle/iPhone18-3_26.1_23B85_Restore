@interface DESDodMLTaskSchedulingPolicy
- (DESDodMLTaskSchedulingPolicy)initWithAssetURL:(id)l error:(id *)error;
- (DESDodMLTaskSchedulingPolicy)initWithPolicyDict:(id)dict;
- (id)_policyForRecipeID:(id)d error:(id *)error;
- (id)predicateForRecipeID:(id)d error:(id *)error;
- (id)samplingRateForRecipeID:(id)d error:(id *)error;
@end

@implementation DESDodMLTaskSchedulingPolicy

- (DESDodMLTaskSchedulingPolicy)initWithAssetURL:(id)l error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v21 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:&v21];
    v8 = v21;
    if (v7)
    {
      v20 = v8;
      lCopy2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v20];
      v10 = v20;

      if (lCopy2)
      {
        self = [(DESDodMLTaskSchedulingPolicy *)self initWithPolicyDict:lCopy2];
        v8 = v10;
        selfCopy = self;
      }

      else
      {
        if (error)
        {
          v15 = MEMORY[0x277CCA9B8];
          v22[0] = *MEMORY[0x277CCA450];
          lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode JSON object from URL = (%@)", lCopy];
          v22[1] = *MEMORY[0x277CCA7E8];
          v23[0] = lCopy;
          v23[1] = v10;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
          *error = [v15 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5005 userInfo:v17];
        }

        selfCopy = 0;
        v8 = v10;
      }
    }

    else
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_13;
      }

      v13 = MEMORY[0x277CCA9B8];
      v24[0] = *MEMORY[0x277CCA450];
      lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read URL = (%@)", lCopy];
      v24[1] = *MEMORY[0x277CCA7E8];
      v25[0] = lCopy2;
      v25[1] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *error = [v13 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5005 userInfo:v14];

      selfCopy = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_15;
  }

  v12 = MEMORY[0x277CCA9B8];
  v26 = *MEMORY[0x277CCA450];
  v27[0] = @"Nil policy URL";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v12 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5002 userInfo:v8];
  *error = selfCopy = 0;
LABEL_14:

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (DESDodMLTaskSchedulingPolicy)initWithPolicyDict:(id)dict
{
  v62 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v58.receiver = self;
  v58.super_class = DESDodMLTaskSchedulingPolicy;
  v5 = [(DESDodMLTaskSchedulingPolicy *)&v58 init];
  v6 = v5;
  if (v5)
  {
    v5->_recipeCountLimit = 1;
    *&v5->_timeLimit = xmmword_249019F10;
    if (dictCopy)
    {
      v7 = [dictCopy objectForKeyedSubscript:@"recipes"];
      recipes = v6->_recipes;
      v6->_recipes = v7;

      v9 = [dictCopy objectForKeyedSubscript:@"evaluation_limits"];
      v10 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 objectForKeyedSubscript:@"time_seconds"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 doubleValue];
          v13 = v12;
          v14 = 0x4072C00000000000;
          if (v13 < 300.0)
          {
            [v11 doubleValue];
          }

          *&v6->_timeLimit = v14;
        }

        v15 = [v9 objectForKeyedSubscript:@"recipe_count"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6->_recipeCountLimit = [v15 unsignedIntegerValue];
        }

        v16 = [v9 objectForKeyedSubscript:@"period_in_seconds"];
        if (allowCustomWakeUpPeriod())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              [(DESDodMLTaskSchedulingPolicy *)v16 initWithPolicyDict:v17];
            }

            v6->_period = [v16 unsignedIntegerValue];
          }
        }
      }

      v18 = [dictCopy objectForKeyedSubscript:@"return_routes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (v20)
        {
          v21 = v20;
          v51 = v18;
          v52 = v9;
          v22 = v6;
          v53 = dictCopy;
          v23 = *v55;
          do
          {
            v24 = 0;
            do
            {
              if (*v55 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v54 + 1) + 8 * v24);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v25 isEqualToString:@"parsec"])
                {
                  v26 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v26, OS_LOG_TYPE_INFO, "Enabling Parsec return route", buf, 2u);
                  }

                  v22->_parsecReturnRouteEnabled = 1;
                }

                else if ([v25 isEqualToString:@"origin"])
                {
                  v28 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v28, OS_LOG_TYPE_INFO, "Enabling Origin return route", buf, 2u);
                  }

                  v22->_originReturnRouteEnabled = 1;
                }

                else if ([v25 isEqualToString:@"dedisco"])
                {
                  v29 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v29, OS_LOG_TYPE_INFO, "Enabling Dedisco return route", buf, 2u);
                  }

                  v22->_dediscoReturnRouteEnabled = 1;
                }
              }

              else
              {
                v27 = +[DESLogging coreChannel];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v60 = v25;
                  _os_log_impl(&dword_248FF7000, v27, OS_LOG_TYPE_INFO, "Ignoring invalid return route: %@", buf, 0xCu);
                }
              }

              ++v24;
            }

            while (v21 != v24);
            v30 = [v19 countByEnumeratingWithState:&v54 objects:v61 count:16];
            v21 = v30;
          }

          while (v30);
          v6 = v22;
          v9 = v52;
          dictCopy = v53;
          v18 = v51;
          v10 = 0x277CBE000;
        }
      }

      else
      {
        v19 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v60 = v18;
          _os_log_impl(&dword_248FF7000, v19, OS_LOG_TYPE_INFO, "Ignoring invalid or blank return routes: %@", buf, 0xCu);
        }
      }

      if (!v6->_originReturnRouteEnabled && !v6->_parsecReturnRouteEnabled && !v6->_dediscoReturnRouteEnabled)
      {
        v6->_originReturnRouteEnabled = 1;
      }

      v32 = [dictCopy objectForKeyedSubscript:@"host"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = MEMORY[0x277CBEBC0];
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@", v32];
        v35 = [v33 URLWithString:v34];

        if (v35)
        {
          v36 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v60 = v35;
            _os_log_impl(&dword_248FF7000, v36, OS_LOG_TYPE_INFO, "Setting _postback base URL to %@", buf, 0xCu);
          }

          objc_storeStrong(&v6->_postbackBaseURL, v35);
        }
      }

      else
      {
        v35 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v60 = v32;
          _os_log_impl(&dword_248FF7000, v35, OS_LOG_TYPE_INFO, "Ignoring invalid policy host: %@", buf, 0xCu);
        }
      }

      v37 = [dictCopy objectForKeyedSubscript:@"telemetry"];
      v38 = *(v10 + 2752);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v37 objectForKeyedSubscript:@"href"];
        v40 = [v37 objectForKeyedSubscript:@"sampling_rate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v41 = v18;
          v42 = v9;
          v43 = [MEMORY[0x277CBEBC0] URLWithString:v39];
          objc_storeStrong(&v6->_telemetryURL, v43);
          if (v40 && ([v40 doubleValue], v44 <= 1.0) && (objc_msgSend(v40, "doubleValue"), v45 > 0.0))
          {
            v46 = v40;
            p_super = &v6->_telemetrySamplingRate->super.super;
            v6->_telemetrySamplingRate = v46;
          }

          else
          {
            p_super = +[DESLogging coreChannel];
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              [(DESDodMLTaskSchedulingPolicy *)v37 initWithPolicyDict:?];
            }
          }

          v9 = v42;
          v18 = v41;
        }

        else
        {
          v43 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [(DESDodMLTaskSchedulingPolicy *)v37 initWithPolicyDict:v43];
          }
        }
      }

      else
      {
        v39 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_248FF7000, v39, OS_LOG_TYPE_INFO, "Skipping telemetry because none was specified in the policy", buf, 2u);
        }
      }

      v48 = v6;
    }

    else
    {
      v31 = v5;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_policyForRecipeID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(NSDictionary *)self->_recipes objectForKeyedSubscript:dCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = v7;
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA470];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid policy for recipeID=%@, policy=%@", dCopy, v7];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v8 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v10];

    error = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)samplingRateForRecipeID:(id)d error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(DESDodMLTaskSchedulingPolicy *)self _policyForRecipeID:dCopy error:error];
  v8 = v7;
  if (!v7)
  {
    error = 0;
    goto LABEL_14;
  }

  v9 = [v7 objectForKeyedSubscript:@"sampling_rate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dCopy2 = v9;
    [dCopy2 doubleValue];
    if (v11 <= 1.0 && v11 > 0.0)
    {
      dCopy2 = dCopy2;
      error = dCopy2;
LABEL_12:

      goto LABEL_13;
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sampling rate=%f, recipeID=%@", *&v11, dCopy];
    v19 = dCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *error = [v14 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v15];

LABEL_11:
    error = 0;
    goto LABEL_12;
  }

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sampling rate in policy for recipeID: %@", dCopy];
    v21[0] = dCopy2;
    dCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v12 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:dCopy];
    goto LABEL_11;
  }

LABEL_13:

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)predicateForRecipeID:(id)d error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(DESDodMLTaskSchedulingPolicy *)self _policyForRecipeID:dCopy error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"predicate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      error = v9;
    }

    else if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid predicate in recipeID=%@", dCopy, *MEMORY[0x277CCA470]];
      v16[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v10 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v12];

      error = 0;
    }
  }

  else
  {
    error = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)initWithPolicyDict:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 unsignedIntegerValue];
  _os_log_debug_impl(&dword_248FF7000, a2, OS_LOG_TYPE_DEBUG, "Custom period = %lu in policy.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithPolicyDict:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Ignoring malformed telemetry %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPolicyDict:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Skipping never-valid telemetry %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end