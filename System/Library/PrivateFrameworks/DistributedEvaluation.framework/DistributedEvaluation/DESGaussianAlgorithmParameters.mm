@interface DESGaussianAlgorithmParameters
- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)a3 withOverallClippingBound:(double)a4;
- (DESGaussianAlgorithmParameters)initWith:(id)a3 epsilon:(double)a4 delta:(double)a5 clippingBound:(double)a6 momentsAccountantParameters:(id)a7;
- (DESGaussianAlgorithmParameters)initWith:(id)a3 recipe:(id)a4;
- (NSDictionary)parameters;
- (void)addPerChunkParametersWith:(double)a3 numChunks:(unint64_t)a4;
@end

@implementation DESGaussianAlgorithmParameters

- (DESGaussianAlgorithmParameters)initWith:(id)a3 recipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 recipeUserInfo];
  v9 = [v8 objectForKeyedSubscript:@"maxNorm"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DESGaussianAlgorithmParameters initWith:v7 recipe:?];
    }

    goto LABEL_22;
  }

  v11 = [v7 recipeUserInfo];
  v12 = [v11 objectForKeyedSubscript:@"maxNorm"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v7 recipeUserInfo];
  v16 = [v15 objectForKeyedSubscript:@"DifferentialPrivacyParameters"];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  v18 = [v7 recipeUserInfo];
  v19 = v18;
  if (v17)
  {
    v20 = @"DifferentialPrivacyParameters";
  }

  else
  {
    v22 = [v18 objectForKeyedSubscript:@"LocalDifferentialPrivacyParameters"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v21 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:v7 recipe:?];
      }

      goto LABEL_22;
    }

    v18 = [v7 recipeUserInfo];
    v19 = v18;
    v20 = @"LocalDifferentialPrivacyParameters";
  }

  v21 = [v18 objectForKeyedSubscript:v20];

  v24 = [v21 objectForKeyedSubscript:@"mechanism"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v21 objectForKeyedSubscript:@"mechanism"];
    v26 = [v25 isEqualToString:@"gaussian"];

    if (v26)
    {
      v27 = [v21 objectForKeyedSubscript:@"epsilon"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v21 objectForKeyedSubscript:@"delta"];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          v30 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];

          if (v30)
          {
            v31 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];
            objc_opt_class();
            v32 = objc_opt_isKindOfClass();

            if ((v32 & 1) == 0)
            {
              v30 = +[DESLogging coreChannel];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [DESGaussianAlgorithmParameters initWith:v7 recipe:?];
              }

              v39 = 0;
              goto LABEL_30;
            }

            v30 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];
          }

          v33 = [v21 objectForKeyedSubscript:@"epsilon"];
          [v33 doubleValue];
          v35 = v34;

          v36 = [v21 objectForKeyedSubscript:@"delta"];
          [v36 doubleValue];
          v38 = v37;

          self = [(DESGaussianAlgorithmParameters *)self initWith:v6 epsilon:v30 delta:v35 clippingBound:v38 momentsAccountantParameters:v14];
          v39 = self;
LABEL_30:

          goto LABEL_23;
        }
      }

      else
      {
      }

      v40 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:v7 recipe:?];
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v40 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [DESGaussianAlgorithmParameters initWith:v7 recipe:?];
  }

LABEL_19:

LABEL_22:
  v39 = 0;
LABEL_23:

  return v39;
}

- (DESGaussianAlgorithmParameters)initWith:(id)a3 epsilon:(double)a4 delta:(double)a5 clippingBound:(double)a6 momentsAccountantParameters:(id)a7
{
  v11 = a3;
  v66[6] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  v62.receiver = self;
  v62.super_class = DESGaussianAlgorithmParameters;
  v15 = [(DESGaussianAlgorithmParameters *)&v62 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v15->_epsilon = a4;
  v15->_delta = a5;
  v15->_clippingBound = a6;
  momentsAccountantParameters = v15->_momentsAccountantParameters;
  v15->_momentsAccountantParameters = 0;

  if (!v14)
  {
    calculateSigmaFromEpsilonAndDeltaForUnitL2Norm(a4, a5);
    v16->_sigma = sigma;
LABEL_20:
    if ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    objc_storeStrong(&v16->_key, v11);
    v64[0] = @"GaussianFromSigma";
    v63[0] = @"Mechanism";
    v63[1] = @"OverallEpsilon";
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v64[1] = v37;
    v63[2] = @"OverallDelta";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v64[2] = v38;
    v63[3] = @"OverallClippingBound";
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    v64[3] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];

    v41 = [v40 mutableCopy];
    parameters = v16->_parameters;
    v16->_parameters = v41;

    if (v16->_momentsAccountantParameters)
    {
      [(NSMutableDictionary *)v16->_parameters addEntriesFromDictionary:?];
    }

LABEL_25:
    v36 = v16;
    goto LABEL_26;
  }

  v55 = v11;
  v66[0] = @"RenyiOrder";
  v66[1] = @"CohortSigma";
  v66[2] = @"NumIterations";
  v66[3] = @"MaxCohortSize";
  v66[4] = @"CurrentCohortSize";
  v66[5] = @"PopulationSize";
  [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:6];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = v61 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v59;
    v56 = v16;
    v57 = v13;
    while (2)
    {
      v22 = v18;
      for (i = 0; i != v20; ++i)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v22);
        }

        v24 = *(*(&v58 + 1) + 8 * i);
        v25 = [v14 objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = v25;
          v27 = [v14 objectForKeyedSubscript:v24];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }
        }

        v34 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
        }

        v18 = v22;
        v33 = v22;
        v16 = v56;
        v13 = v57;
        goto LABEL_18;
      }

      v18 = v22;
      v20 = [v22 countByEnumeratingWithState:&v58 objects:v65 count:16];
      v16 = v56;
      v13 = v57;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v29 = [v14 dictionaryWithValuesForKeys:v18];
  v30 = v16->_momentsAccountantParameters;
  v16->_momentsAccountantParameters = v29;

  v31 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"RenyiOrder"];
  v32 = [v31 intValue];

  if ((v32 - 33) > 0xFFFFFFE0)
  {
    v45 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"NumIterations"];
    v46 = [v45 longLongValue];

    if (v46 <= 0)
    {
      v33 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
      }

      goto LABEL_18;
    }

    v47 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"MaxCohortSize"];
    v48 = [v47 longLongValue];

    v49 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"CurrentCohortSize"];
    v50 = [v49 longLongValue];

    v51 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"PopulationSize"];
    v52 = [v51 longLongValue];

    if (v48 < 1 || v50 < 1 || v52 < 1 || v50 > v48 || v48 > v52)
    {
      v33 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
      }

      goto LABEL_18;
    }

    v53 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"CohortSigma"];
    [v53 doubleValue];
    v16->_sigma = v54;

    sigma = v16->_sigma;
    v11 = v55;
    goto LABEL_20;
  }

  v33 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
  }

LABEL_18:

LABEL_21:
  v36 = 0;
LABEL_26:

  v43 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)addPerChunkParametersWith:(double)a3 numChunks:(unint64_t)a4
{
  [(DESGaussianAlgorithmParameters *)self sigma];
  if (a4 != 1)
  {
    v7 = v7 * self->_clippingBound / a3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)self->_parameters setObject:v8 forKeyedSubscript:@"SigmaAfterNormalizing"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_parameters setObject:v9 forKeyedSubscript:@"ClippingBound"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  [(NSMutableDictionary *)self->_parameters setObject:v10 forKeyedSubscript:@"NumChunks"];
}

- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)a3 withOverallClippingBound:(double)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 count];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = a4 / sqrt(v7);
    v13 = 0.0;
    v14 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 clippingBound];
        v18 = v17;
        if (v17 && ([v17 doubleValue], v19 != 0.0))
        {
          [v18 doubleValue];
          [v18 doubleValue];
        }

        else
        {
          v14 = 0;
          v20 = v12;
        }

        v13 = v13 + v20 * v20;
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v16 setClippingBound:v21];
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    v22 = sqrt(v13);
  }

  else
  {

    v22 = 0.0;
  }

  if (almostEqualDBLWithAccuracy(v22, a4, 0.0001))
  {
LABEL_16:
    v23 = 1;
    goto LABEL_20;
  }

  v24 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v27 = [(DESGaussianAlgorithmParameters *)self key];
    *buf = 134218498;
    v33 = v22;
    v34 = 2048;
    v35 = a4;
    v36 = 2112;
    v37 = v27;
    _os_log_error_impl(&dword_248FF7000, v24, OS_LOG_TYPE_ERROR, "Per chunk clipping bound root sum squared does not match overall clipping bound: %f vs. %f, for %@", buf, 0x20u);
  }

  v23 = 0;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (NSDictionary)parameters
{
  v2 = [(NSMutableDictionary *)self->_parameters copy];

  return v2;
}

- (void)initWith:(void *)a1 recipe:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWith:(void *)a1 recipe:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWith:(void *)a1 recipe:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWith:(void *)a1 recipe:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWith:(void *)a1 recipe:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWith:epsilon:delta:clippingBound:momentsAccountantParameters:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWith:epsilon:delta:clippingBound:momentsAccountantParameters:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWith:epsilon:delta:clippingBound:momentsAccountantParameters:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWith:epsilon:delta:clippingBound:momentsAccountantParameters:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

@end