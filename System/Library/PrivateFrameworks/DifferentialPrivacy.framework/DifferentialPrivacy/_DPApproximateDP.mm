@interface _DPApproximateDP
+ (BOOL)isValidDelta:(double)delta error:(id *)error;
+ (BOOL)isValidEpsilon:(double)epsilon error:(id *)error;
- (BOOL)exceed:(id)exceed;
- (_DPApproximateDP)initWithEpsilon:(double)epsilon delta:(double)delta error:(id *)error;
- (id)description;
@end

@implementation _DPApproximateDP

- (_DPApproximateDP)initWithEpsilon:(double)epsilon delta:(double)delta error:(id *)error
{
  if ([_DPApproximateDP isValidEpsilon:"isValidEpsilon:error:" error:?]&& [_DPApproximateDP isValidDelta:error error:delta])
  {
    v12.receiver = self;
    v12.super_class = _DPApproximateDP;
    v9 = [(_DPApproximateDP *)&v12 init];
    if (v9)
    {
      v9->_epsilon = epsilon;
      v9->_delta = delta;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)exceed:(id)exceed
{
  exceedCopy = exceed;
  [(_DPApproximateDP *)self epsilon];
  v6 = v5;
  [exceedCopy epsilon];
  if (v6 - v7 <= 0.00000001)
  {
    [(_DPApproximateDP *)self delta];
    v10 = v9;
    [exceedCopy delta];
    v8 = v10 - v11 > 1.0e-20;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)isValidEpsilon:(double)epsilon error:(id *)error
{
  v5 = (*&epsilon & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v6 = epsilon < 0.0 && ((*&epsilon & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (epsilon >= 0.0)
  {
    v5 = 0;
  }

  v7 = (*&epsilon & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v5;
  if ((v7 | v6) != 1)
  {
    return 1;
  }

  v8 = _DPPrivacyBudgetError(1, @"Approximate-DP epsilon must be finite, not NAN, and at least 0.0.");
  v9 = +[_DPLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v8 error:v9];
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return 0;
}

+ (BOOL)isValidDelta:(double)delta error:(id *)error
{
  v4 = delta <= 1.0 && delta >= 0.0;
  if (!v4)
  {
    v6 = _DPPrivacyBudgetError(1, @"Approximate-DP delta must be not NAN, at least 0.0, and at most 1.0.");
    v7 = +[_DPLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v6 error:v7];
    }

    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(_DPApproximateDP *)self epsilon];
  v5 = v4;
  [(_DPApproximateDP *)self delta];
  return [v3 stringWithFormat:@"(%f, %f)-ADP", v5, v6];
}

@end