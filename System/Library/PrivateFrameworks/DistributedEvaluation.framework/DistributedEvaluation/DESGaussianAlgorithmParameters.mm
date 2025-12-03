@interface DESGaussianAlgorithmParameters
- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)in withOverallClippingBound:(double)bound;
- (DESGaussianAlgorithmParameters)initWith:(id)with epsilon:(double)epsilon delta:(double)delta clippingBound:(double)bound momentsAccountantParameters:(id)parameters;
- (DESGaussianAlgorithmParameters)initWith:(id)with recipe:(id)recipe;
- (NSDictionary)parameters;
- (void)addPerChunkParametersWith:(double)with numChunks:(unint64_t)chunks;
@end

@implementation DESGaussianAlgorithmParameters

- (DESGaussianAlgorithmParameters)initWith:(id)with recipe:(id)recipe
{
  withCopy = with;
  recipeCopy = recipe;
  recipeUserInfo = [recipeCopy recipeUserInfo];
  v9 = [recipeUserInfo objectForKeyedSubscript:@"maxNorm"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
    }

    goto LABEL_22;
  }

  recipeUserInfo2 = [recipeCopy recipeUserInfo];
  v12 = [recipeUserInfo2 objectForKeyedSubscript:@"maxNorm"];
  [v12 doubleValue];
  v14 = v13;

  recipeUserInfo3 = [recipeCopy recipeUserInfo];
  v16 = [recipeUserInfo3 objectForKeyedSubscript:@"DifferentialPrivacyParameters"];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  recipeUserInfo4 = [recipeCopy recipeUserInfo];
  v19 = recipeUserInfo4;
  if (v17)
  {
    v20 = @"DifferentialPrivacyParameters";
  }

  else
  {
    v22 = [recipeUserInfo4 objectForKeyedSubscript:@"LocalDifferentialPrivacyParameters"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v21 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
      }

      goto LABEL_22;
    }

    recipeUserInfo4 = [recipeCopy recipeUserInfo];
    v19 = recipeUserInfo4;
    v20 = @"LocalDifferentialPrivacyParameters";
  }

  v21 = [recipeUserInfo4 objectForKeyedSubscript:v20];

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
                [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
              }

              selfCopy = 0;
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

          self = [(DESGaussianAlgorithmParameters *)self initWith:withCopy epsilon:v30 delta:v35 clippingBound:v38 momentsAccountantParameters:v14];
          selfCopy = self;
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
        [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
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
    [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
  }

LABEL_19:

LABEL_22:
  selfCopy = 0;
LABEL_23:

  return selfCopy;
}

- (DESGaussianAlgorithmParameters)initWith:(id)with epsilon:(double)epsilon delta:(double)delta clippingBound:(double)bound momentsAccountantParameters:(id)parameters
{
  withCopy = with;
  v66[6] = *MEMORY[0x277D85DE8];
  withCopy2 = with;
  parametersCopy = parameters;
  v62.receiver = self;
  v62.super_class = DESGaussianAlgorithmParameters;
  v15 = [(DESGaussianAlgorithmParameters *)&v62 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v15->_epsilon = epsilon;
  v15->_delta = delta;
  v15->_clippingBound = bound;
  momentsAccountantParameters = v15->_momentsAccountantParameters;
  v15->_momentsAccountantParameters = 0;

  if (!parametersCopy)
  {
    calculateSigmaFromEpsilonAndDeltaForUnitL2Norm(epsilon, delta);
    v16->_sigma = sigma;
LABEL_20:
    if ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    objc_storeStrong(&v16->_key, withCopy);
    v64[0] = @"GaussianFromSigma";
    v63[0] = @"Mechanism";
    v63[1] = @"OverallEpsilon";
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:epsilon];
    v64[1] = v37;
    v63[2] = @"OverallDelta";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:delta];
    v64[2] = v38;
    v63[3] = @"OverallClippingBound";
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:bound];
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

  v55 = withCopy;
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
    v57 = withCopy2;
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
        v25 = [parametersCopy objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = v25;
          v27 = [parametersCopy objectForKeyedSubscript:v24];
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
        withCopy2 = v57;
        goto LABEL_18;
      }

      v18 = v22;
      v20 = [v22 countByEnumeratingWithState:&v58 objects:v65 count:16];
      v16 = v56;
      withCopy2 = v57;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v29 = [parametersCopy dictionaryWithValuesForKeys:v18];
  v30 = v16->_momentsAccountantParameters;
  v16->_momentsAccountantParameters = v29;

  v31 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"RenyiOrder"];
  intValue = [v31 intValue];

  if ((intValue - 33) > 0xFFFFFFE0)
  {
    v45 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"NumIterations"];
    longLongValue = [v45 longLongValue];

    if (longLongValue <= 0)
    {
      v33 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
      }

      goto LABEL_18;
    }

    v47 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"MaxCohortSize"];
    longLongValue2 = [v47 longLongValue];

    v49 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"CurrentCohortSize"];
    longLongValue3 = [v49 longLongValue];

    v51 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"PopulationSize"];
    longLongValue4 = [v51 longLongValue];

    if (longLongValue2 < 1 || longLongValue3 < 1 || longLongValue4 < 1 || longLongValue3 > longLongValue2 || longLongValue2 > longLongValue4)
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
    withCopy = v55;
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

- (void)addPerChunkParametersWith:(double)with numChunks:(unint64_t)chunks
{
  [(DESGaussianAlgorithmParameters *)self sigma];
  if (chunks != 1)
  {
    v7 = v7 * self->_clippingBound / with;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)self->_parameters setObject:v8 forKeyedSubscript:@"SigmaAfterNormalizing"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:with];
  [(NSMutableDictionary *)self->_parameters setObject:v9 forKeyedSubscript:@"ClippingBound"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:chunks];
  [(NSMutableDictionary *)self->_parameters setObject:v10 forKeyedSubscript:@"NumChunks"];
}

- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)in withOverallClippingBound:(double)bound
{
  v39 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v7 = [inCopy count];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = inCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = bound / sqrt(v7);
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
        clippingBound = [v16 clippingBound];
        v18 = clippingBound;
        if (clippingBound && ([clippingBound doubleValue], v19 != 0.0))
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

  if (almostEqualDBLWithAccuracy(v22, bound, 0.0001))
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
    boundCopy = bound;
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