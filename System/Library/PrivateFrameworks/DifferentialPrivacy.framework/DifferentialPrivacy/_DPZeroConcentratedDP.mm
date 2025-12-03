@interface _DPZeroConcentratedDP
- (_DPZeroConcentratedDP)initWithRho:(double)rho error:(id *)error;
- (id)approximateDPForEpsilon:(double)epsilon error:(id *)error;
@end

@implementation _DPZeroConcentratedDP

- (_DPZeroConcentratedDP)initWithRho:(double)rho error:(id *)error
{
  selfCopy = self;
  v7 = (*&rho & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v8 = rho < 0.0 && ((*&rho & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (rho >= 0.0)
  {
    v7 = 0;
  }

  v9 = (*&rho & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v7;
  if ((v9 | v8) == 1)
  {
    v10 = _DPPrivacyBudgetError(1, @"Zero Concentrated-DP rho must be finite, and not NAN, and at least 0.");
    v11 = +[_DPLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v10 error:v11];
    }

    if (error)
    {
      v12 = v10;
      *error = v10;
    }

    v13 = 0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _DPZeroConcentratedDP;
    v14 = [(_DPZeroConcentratedDP *)&v16 init];
    if (v14)
    {
      v14->_rho = rho;
    }

    selfCopy = v14;
    v13 = selfCopy;
  }

  return v13;
}

- (id)approximateDPForEpsilon:(double)epsilon error:(id *)error
{
  if ([_DPApproximateDP isValidEpsilon:"isValidEpsilon:error:" error:?])
  {
    [(_DPZeroConcentratedDP *)self rho];
    v7 = 0.0;
    if (v8 != 0.0)
    {
      [(_DPZeroConcentratedDP *)self rho];
      v10 = (epsilon + 1.0) / (v9 + v9) + 2.0;
      epsilonCopy = epsilon;
      v11 = -epsilon;
      v12 = 1.01;
      v13 = 1000;
      do
      {
        v14 = v12 + (v10 - v12) * 0.5;
        [(_DPZeroConcentratedDP *)self rho];
        v16 = v11 + (v14 * 2.0 + -1.0) * v15;
        v17 = log1p(-1.0 / v14);
        if (v16 + v17 >= 0.0)
        {
          v10 = v12 + (v10 - v12) * 0.5;
        }

        else
        {
          v12 = v12 + (v10 - v12) * 0.5;
        }

        --v13;
      }

      while (v13);
      [(_DPZeroConcentratedDP *)self rho];
      v19 = exp(v14 * v17 + (v14 + -1.0) * (v11 + v14 * v18)) / (v14 + -1.0);
      if (v19 <= 1.0)
      {
        v7 = v19;
      }

      else
      {
        v7 = 1.0;
      }

      epsilon = epsilonCopy;
    }

    v20 = [[_DPApproximateDP alloc] initWithEpsilon:error delta:epsilon error:v7];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end