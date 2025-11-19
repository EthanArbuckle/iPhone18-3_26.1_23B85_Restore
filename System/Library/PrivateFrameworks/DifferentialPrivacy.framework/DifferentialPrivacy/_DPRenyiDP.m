@interface _DPRenyiDP
+ (BOOL)isValidAlpha:(double)a3 error:(id *)a4;
+ (id)defaultAlphas;
- (_DPRenyiDP)initWithAlpha:(double)a3 tau:(double)a4 error:(id *)a5;
- (id)approximateDPForDelta:(double)a3 error:(id *)a4;
@end

@implementation _DPRenyiDP

- (_DPRenyiDP)initWithAlpha:(double)a3 tau:(double)a4 error:(id *)a5
{
  if (![_DPRenyiDP isValidAlpha:"isValidAlpha:error:" error:?])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_12;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = _DPPrivacyBudgetError(1, @"Renyi-DP tau must be finite, and not NAN.");
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

    if (a5)
    {
      v11 = v9;
      *a5 = v9;
    }

    goto LABEL_8;
  }

  v15.receiver = self;
  v15.super_class = _DPRenyiDP;
  v13 = [(_DPRenyiDP *)&v15 init];
  if (v13)
  {
    v13->_alpha = a3;
    v13->_tau = a4;
  }

  self = v13;
  v12 = self;
LABEL_12:

  return v12;
}

- (id)approximateDPForDelta:(double)a3 error:(id *)a4
{
  if ([_DPApproximateDP isValidDelta:"isValidDelta:error:" error:?])
  {
    if (a3 == 0.0)
    {
      v7 = _DPPrivacyBudgetError(1, @"Approximate-DP delta cannot be 0 when converting Renyi-DP to approximate-DP.");
      v8 = +[_DPLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      if (a4)
      {
        v9 = v7;
        v10 = 0;
        *a4 = v7;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      [(_DPRenyiDP *)self tau];
      v12 = v11;
      v13 = log(1.0 / a3);
      [(_DPRenyiDP *)self alpha];
      v15 = v14 + -1.0;
      [(_DPRenyiDP *)self alpha];
      v17 = v13 + v15 * log(-1.0 / v16 + 1.0);
      [(_DPRenyiDP *)self alpha];
      v19 = v17 - log(v18);
      [(_DPRenyiDP *)self alpha];
      v21 = [[_DPApproximateDP alloc] initWithEpsilon:a4 delta:(v12 + v19 / (v20 + -1.0)) error:a3];
      v7 = v21;
      if (v21)
      {
        v7 = v21;
        v10 = v7;
      }

      else
      {
        v22 = _DPPrivacyBudgetError(3, @"Failed to convert Renyi-DP to approximate-DP. The converted epsilon is not a valid value.");
        v23 = +[_DPLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
        }

        if (a4)
        {
          v24 = v22;
          *a4 = v22;
        }

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isValidAlpha:(double)a3 error:(id *)a4
{
  v5 = fabs(a3) == INFINITY;
  if (a3 > 1.0 && !v5)
  {
    return 1;
  }

  v7 = _DPPrivacyBudgetError(1, @"Renyi-DP alpha must be finite, not NAN, and greater than 1.0.");
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
  }

  if (a4)
  {
    v9 = v7;
    *a4 = v7;
  }

  return 0;
}

+ (id)defaultAlphas
{
  if (defaultAlphas_onceToken != -1)
  {
    +[_DPRenyiDP defaultAlphas];
  }

  v3 = kDefaultAlphas;

  return v3;
}

@end