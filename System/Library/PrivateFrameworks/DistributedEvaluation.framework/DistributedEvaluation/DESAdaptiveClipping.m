@interface DESAdaptiveClipping
+ (BOOL)computeClippingIndicator:(id)a3 clippingBound:(float)a4 scale:(float)a5 clippingIndicator:(float *)a6;
@end

@implementation DESAdaptiveClipping

+ (BOOL)computeClippingIndicator:(id)a3 clippingBound:(float)a4 scale:(float)a5 clippingIndicator:(float *)a6
{
  v9 = a3;
  v10 = v9;
  if (!a6)
  {
    v14 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DESAdaptiveClipping computeClippingIndicator:v14 clippingBound:? scale:? clippingIndicator:?];
    }

    goto LABEL_29;
  }

  v11 = (LODWORD(a5) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v12 = ((LODWORD(a5) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (a5 >= 0.0)
  {
    v12 = 0;
    v11 = 0;
  }

  if ((LODWORD(a5) & 0x7FFFFFFF) == 0)
  {
    v11 = 1;
  }

  v13 = (LODWORD(a5) & 0x7FFFFFFF) == 0x7F800000 || v11;
  if ((v13 | v12) == 1)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed scale for clipping indicator, should be a positive floating point number"];
    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v22 = sqrt(a4 * a4 - a5 * a5);
  if (v22 == INFINITY || *&v22 == 0)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed deltaClippingBound for clipping indicator, should be a positive floating point number"];
    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v24 = [v9 bytes];
  v25 = [v10 length];
  v26 = 0.0;
  if (v25 >= 4)
  {
    v27 = 0;
    v28 = 0.0;
    do
    {
      v28 = v28 + (*(v24 + 4 * v27) * *(v24 + 4 * v27));
      ++v27;
    }

    while (v27 < [v10 length] >> 2);
    v26 = v28;
  }

  v29 = sqrtf(v26);
  if ((LODWORD(v29) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    v14 = [v30 stringWithFormat:@"Failed to calculate L2 norm from result: %@", v31];

    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      [(DESAdaptiveClipping *)v14 computeClippingIndicator:v15 clippingBound:v16 scale:v17 clippingIndicator:v18, v19, v20, v21];
    }

LABEL_28:

LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  if (v22 < v29)
  {
    v34 = -a5;
  }

  else
  {
    v34 = a5;
  }

  *a6 = v34;
  v32 = 1;
LABEL_30:

  return v32;
}

+ (void)computeClippingIndicator:(uint64_t)a3 clippingBound:(uint64_t)a4 scale:(uint64_t)a5 clippingIndicator:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248FF7000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end