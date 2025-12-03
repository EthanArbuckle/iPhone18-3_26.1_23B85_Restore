@interface _DPRenyiDP
+ (BOOL)isValidAlpha:(double)alpha error:(id *)error;
+ (id)defaultAlphas;
- (_DPRenyiDP)initWithAlpha:(double)alpha tau:(double)tau error:(id *)error;
- (id)approximateDPForDelta:(double)delta error:(id *)error;
@end

@implementation _DPRenyiDP

- (_DPRenyiDP)initWithAlpha:(double)alpha tau:(double)tau error:(id *)error
{
  if (![_DPRenyiDP isValidAlpha:"isValidAlpha:error:" error:?])
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_12;
  }

  if ((*&tau & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = _DPPrivacyBudgetError(1, @"Renyi-DP tau must be finite, and not NAN.");
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }

    goto LABEL_8;
  }

  v15.receiver = self;
  v15.super_class = _DPRenyiDP;
  v13 = [(_DPRenyiDP *)&v15 init];
  if (v13)
  {
    v13->_alpha = alpha;
    v13->_tau = tau;
  }

  self = v13;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (id)approximateDPForDelta:(double)delta error:(id *)error
{
  if ([_DPApproximateDP isValidDelta:"isValidDelta:error:" error:?])
  {
    if (delta == 0.0)
    {
      v7 = _DPPrivacyBudgetError(1, @"Approximate-DP delta cannot be 0 when converting Renyi-DP to approximate-DP.");
      v8 = +[_DPLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      if (error)
      {
        v9 = v7;
        v10 = 0;
        *error = v7;
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
      v13 = log(1.0 / delta);
      [(_DPRenyiDP *)self alpha];
      v15 = v14 + -1.0;
      [(_DPRenyiDP *)self alpha];
      v17 = v13 + v15 * log(-1.0 / v16 + 1.0);
      [(_DPRenyiDP *)self alpha];
      v19 = v17 - log(v18);
      [(_DPRenyiDP *)self alpha];
      v21 = [[_DPApproximateDP alloc] initWithEpsilon:error delta:(v12 + v19 / (v20 + -1.0)) error:delta];
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

        if (error)
        {
          v24 = v22;
          *error = v22;
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

+ (BOOL)isValidAlpha:(double)alpha error:(id *)error
{
  v5 = fabs(alpha) == INFINITY;
  if (alpha > 1.0 && !v5)
  {
    return 1;
  }

  v7 = _DPPrivacyBudgetError(1, @"Renyi-DP alpha must be finite, not NAN, and greater than 1.0.");
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
  }

  if (error)
  {
    v9 = v7;
    *error = v7;
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