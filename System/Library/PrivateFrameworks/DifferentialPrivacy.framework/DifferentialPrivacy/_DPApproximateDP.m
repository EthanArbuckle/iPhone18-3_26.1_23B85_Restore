@interface _DPApproximateDP
+ (BOOL)isValidDelta:(double)a3 error:(id *)a4;
+ (BOOL)isValidEpsilon:(double)a3 error:(id *)a4;
- (BOOL)exceed:(id)a3;
- (_DPApproximateDP)initWithEpsilon:(double)a3 delta:(double)a4 error:(id *)a5;
- (id)description;
@end

@implementation _DPApproximateDP

- (_DPApproximateDP)initWithEpsilon:(double)a3 delta:(double)a4 error:(id *)a5
{
  if ([_DPApproximateDP isValidEpsilon:"isValidEpsilon:error:" error:?]&& [_DPApproximateDP isValidDelta:a5 error:a4])
  {
    v12.receiver = self;
    v12.super_class = _DPApproximateDP;
    v9 = [(_DPApproximateDP *)&v12 init];
    if (v9)
    {
      v9->_epsilon = a3;
      v9->_delta = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)exceed:(id)a3
{
  v4 = a3;
  [(_DPApproximateDP *)self epsilon];
  v6 = v5;
  [v4 epsilon];
  if (v6 - v7 <= 0.00000001)
  {
    [(_DPApproximateDP *)self delta];
    v10 = v9;
    [v4 delta];
    v8 = v10 - v11 > 1.0e-20;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)isValidEpsilon:(double)a3 error:(id *)a4
{
  v5 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v6 = a3 < 0.0 && ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v5 = 0;
  }

  v7 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v5;
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

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return 0;
}

+ (BOOL)isValidDelta:(double)a3 error:(id *)a4
{
  v4 = a3 <= 1.0 && a3 >= 0.0;
  if (!v4)
  {
    v6 = _DPPrivacyBudgetError(1, @"Approximate-DP delta must be not NAN, at least 0.0, and at most 1.0.");
    v7 = +[_DPLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v6 error:v7];
    }

    if (a4)
    {
      v8 = v6;
      *a4 = v6;
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