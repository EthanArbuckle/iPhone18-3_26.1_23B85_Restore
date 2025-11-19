@interface _DPSymmetricRAPPORWithOHE
+ (double)binomialPMFForN:(unint64_t)a3 p:(double)a4 x:(unint64_t)a5 logBinomCoef:(double)a6;
+ (double)logBinomialCoefForN:(unint64_t)a3 x:(unint64_t)a4 prevLogBinomCoef:(double)a5;
- (_DPSymmetricRAPPORWithOHE)initWithBatchSize:(unsigned int)a3 localEpsilon:(double)a4 error:(id *)a5;
- (id)approximateDPBudgetForDelta:(double)a3 error:(id *)a4;
- (id)exceedApproximateDPBudget:(id)a3 error:(id *)a4;
- (id)renyiDPBudgetsForAlphas:(id)a3 error:(id *)a4;
@end

@implementation _DPSymmetricRAPPORWithOHE

- (_DPSymmetricRAPPORWithOHE)initWithBatchSize:(unsigned int)a3 localEpsilon:(double)a4 error:(id *)a5
{
  if (![_DPApproximateDP isValidEpsilon:a5 error:?])
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if (a4 > 16.0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Local epsilon %f exceeds the maximum allowed local epsilon %f.", *&a4, 0x4030000000000000];
    v10 = _DPPrivacyBudgetError(1, v9);

    v11 = +[_DPLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    v10 = _DPPrivacyBudgetError(1, @"Batch size must be greater than 0.");
    v11 = +[_DPLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

LABEL_11:

    if (a5)
    {
      v14 = v10;
      *a5 = v10;
    }

    goto LABEL_14;
  }

  v16.receiver = self;
  v16.super_class = _DPSymmetricRAPPORWithOHE;
  v12 = [(_DPSymmetricRAPPORWithOHE *)&v16 init];
  if (v12)
  {
    v12->_batchSize = a3;
    v12->_localEpsilon = a4;
  }

  self = v12;
  v13 = self;
LABEL_15:

  return v13;
}

- (id)exceedApproximateDPBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 delta];
  v7 = [(_DPSymmetricRAPPORWithOHE *)self approximateDPBudgetForDelta:a4 error:?];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "exceed:", v6)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)renyiDPBudgetsForAlphas:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v63;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v63 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v62 + 1) + 8 * i) doubleValue];
          if (![_DPRenyiDP isValidAlpha:a4 error:?])
          {
            v50 = 0;
            v51 = v7;
            goto LABEL_46;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = [(_DPSymmetricRAPPORWithOHE *)self batchSize];
    if (v12 > 0x989680)
    {
      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_DPSymmetricRAPPORWithOHE renyiDPBudgetsForAlphas:v13 error:?];
      }

      v12 = 10000000;
    }

    v61 = v6;
    [(_DPSymmetricRAPPORWithOHE *)self localEpsilon];
    v15 = exp(v14);
    [(_DPSymmetricRAPPORWithOHE *)self localEpsilon];
    v17 = v15 / (exp(v16) + 1.0);
    v18 = [v7 count];
    v60 = [MEMORY[0x277CBEB28] dataWithLength:8 * v18];
    v19 = [v60 bytes];
    v59 = [MEMORY[0x277CBEB28] dataWithLength:8 * v18];
    v20 = [v59 bytes];
    v21 = v20;
    if (v18)
    {
      v22 = v20;
      v23 = v19;
      v24 = v18;
      do
      {
        *v22++ = 0xFFF0000000000000;
        *v23++ = 0xFFF0000000000000;
        --v24;
      }

      while (v24);
    }

    v25 = 0;
    v26 = 1.0 - v17;
    v27 = v12 - 1;
    v28 = v12 + 1;
    v29 = 0.0;
    v30 = 0.0;
    do
    {
      v31 = v30;
      if (v25 <= v27)
      {
        [_DPSymmetricRAPPORWithOHE logBinomialCoefForN:v27 x:v25 prevLogBinomCoef:v29];
        v29 = v32;
        [_DPSymmetricRAPPORWithOHE binomialPMFForN:v27 p:v25 x:1.0 - v17 logBinomCoef:v32];
        v30 = v33;
      }

      else
      {
        v30 = 0.0;
      }

      v34 = v26 * v31 + v17 * v30;
      if (v34 != 0.0)
      {
        v35 = v17 * v31 + v26 * v30;
        if (v35 != 0.0)
        {
          v36 = log(v34);
          v34 = log(v35);
          if (v18)
          {
            v37 = v34;
            for (j = 0; j != v18; ++j)
            {
              v39 = [v7 objectAtIndexedSubscript:j];
              [v39 doubleValue];
              v41 = v40;

              *(v19 + 8 * j) = logaddexp(*(v19 + 8 * j), v37 * v41 + (1.0 - v41) * v36);
              v34 = logaddexp(*(v21 + 8 * j), v36 * v41 + (1.0 - v41) * v37);
              *(v21 + 8 * j) = v34;
            }
          }
        }
      }

      ++v25;
    }

    while (v25 != v28);
    v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{v18, v34}];
    if (v18)
    {
      v43 = 0;
      while (1)
      {
        v44 = [v7 objectAtIndexedSubscript:v43];
        [v44 doubleValue];
        v46 = v45;

        v47 = *(v19 + 8 * v43);
        if (v47 <= *(v21 + 8 * v43))
        {
          v47 = *(v21 + 8 * v43);
        }

        v48 = [[_DPRenyiDP alloc] initWithAlpha:a4 tau:v46 error:v47 / (v46 + -1.0) + v47 / (v46 + -1.0)];
        if (!v48)
        {
          break;
        }

        v49 = v48;
        [v42 addObject:v48];

        if (v18 == ++v43)
        {
          goto LABEL_33;
        }
      }

      v54 = _DPPrivacyBudgetError(2, @"Failed to analyze Renyi-DP tau. The computed tau is not a finite value.");
      v55 = +[_DPLog framework];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      v51 = v60;
      if (a4)
      {
        v56 = v54;
        *a4 = v54;
      }

      v50 = 0;
    }

    else
    {
LABEL_33:
      v50 = v42;
      v51 = v60;
    }

    v6 = v61;
  }

  else
  {
    v51 = _DPPrivacyBudgetError(1, @"Renyi-DP alpha list cannot be empty");
    v52 = +[_DPLog framework];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

    if (a4)
    {
      v53 = v51;
      v50 = 0;
      *a4 = v51;
    }

    else
    {
      v50 = 0;
    }
  }

LABEL_46:

  v57 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)approximateDPBudgetForDelta:(double)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if ([_DPApproximateDP isValidDelta:"isValidDelta:error:" error:?])
  {
    v7 = +[_DPRenyiDP defaultAlphas];
    v8 = [(_DPSymmetricRAPPORWithOHE *)self renyiDPBudgetsForAlphas:v7 error:a4];

    if ([v8 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v25;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v24 + 1) + 8 * i) approximateDPForDelta:a4 error:{a3, v24}];
            if (!v15)
            {

              v21 = 0;
              goto LABEL_20;
            }

            v16 = v15;
            if (!v12 || ([v15 epsilon], v18 = v17, objc_msgSend(v12, "epsilon"), v18 < v19))
            {
              v20 = v16;

              v12 = v20;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v12 = 0;
      }

      v12 = v12;
      v21 = v12;
LABEL_20:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (double)logBinomialCoefForN:(unint64_t)a3 x:(unint64_t)a4 prevLogBinomCoef:(double)a5
{
  result = 0.0;
  if (a4)
  {
    if (a4 < a3)
    {
      v9 = a5 - log(a4);
      return v9 + log((a3 - a4 + 1));
    }
  }

  return result;
}

+ (double)binomialPMFForN:(unint64_t)a3 p:(double)a4 x:(unint64_t)a5 logBinomCoef:(double)a6
{
  v9 = a6 + a5 * log(a4);
  v10 = v9 + (a3 - a5) * log(1.0 - a4);

  return exp(v10);
}

- (void)renyiDPBudgetsForAlphas:(os_log_t)log error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = 10000000;
  _os_log_debug_impl(&dword_22622D000, log, OS_LOG_TYPE_DEBUG, "Cap batch size at %u to keep computation time of symmetric RAPPOR analysis in reasonable range.", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end