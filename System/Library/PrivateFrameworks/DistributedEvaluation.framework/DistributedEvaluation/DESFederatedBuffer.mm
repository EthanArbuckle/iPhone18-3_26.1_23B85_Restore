@interface DESFederatedBuffer
+ (id)computeApproximateStaleness:(double)staleness stalenessScale:(id)scale stalenessBias:(id)bias;
+ (id)computeDownScalingFactor:(id)factor approximateStaleness:(id)staleness;
@end

@implementation DESFederatedBuffer

+ (id)computeApproximateStaleness:(double)staleness stalenessScale:(id)scale stalenessBias:(id)bias
{
  scaleCopy = scale;
  biasCopy = bias;
  v9 = [MEMORY[0x277CBEAA8] now];
  [v9 timeIntervalSince1970];
  v11 = v10 - staleness;

  if (v11 < 0.0)
  {
    v12 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[DESFederatedBuffer computeApproximateStaleness:stalenessScale:stalenessBias:];
    }

LABEL_23:

    v21 = 0;
    goto LABEL_24;
  }

  [scaleCopy doubleValue];
  if (v13 <= 0.0)
  {
    v12 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DESFederatedBuffer computeApproximateStaleness:v12 stalenessScale:? stalenessBias:?];
    }

    goto LABEL_23;
  }

  v14 = v13;
  [biasCopy doubleValue];
  v16 = v11 / v14 + v15;
  v17 = +[DESLogging coreChannel];
  v12 = v17;
  if ((*&v16 <= -1 || ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v16 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[DESFederatedBuffer computeApproximateStaleness:stalenessScale:stalenessBias:];
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    +[DESFederatedBuffer computeApproximateStaleness:stalenessScale:stalenessBias:];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
LABEL_24:

  return v21;
}

+ (id)computeDownScalingFactor:(id)factor approximateStaleness:(id)staleness
{
  factorCopy = factor;
  stalenessCopy = staleness;
  v7 = stalenessCopy;
  if (!factorCopy)
  {
    v11 = 1.0;
LABEL_14:
    v16 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[DESFederatedBuffer computeDownScalingFactor:approximateStaleness:];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    goto LABEL_17;
  }

  [stalenessCopy doubleValue];
  v9 = v8 + 1.0;
  [factorCopy doubleValue];
  v11 = pow(v9, v10);
  if (v11 != INFINITY && v11 >= 1.0)
  {
    goto LABEL_14;
  }

  v14 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[DESFederatedBuffer computeDownScalingFactor:approximateStaleness:];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (void)computeApproximateStaleness:stalenessScale:stalenessBias:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_248FF7000, v1, v2, "Invalid approximate staleness: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)computeApproximateStaleness:stalenessScale:stalenessBias:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1(&dword_248FF7000, v1, v2, "Approximate staleness for Federated Buffer: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)computeApproximateStaleness:stalenessScale:stalenessBias:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_248FF7000, v1, v2, "Invalid time delta for approximate staleness: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)computeDownScalingFactor:approximateStaleness:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_248FF7000, v1, v2, "Invalid down-scaling factor %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)computeDownScalingFactor:approximateStaleness:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1(&dword_248FF7000, v1, v2, "Down-scaling factor for Federated Buffer: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end