@interface _DPHistogramWithAggregatorDiscreteGaussian
- (_DPHistogramWithAggregatorDiscreteGaussian)initWithSigma:(double)sigma rappor:(id)rappor error:(id *)error;
- (id)exceedApproximateDPBudget:(id)budget error:(id *)error;
- (id)zeroConcentratedDPWithError:(id *)error;
@end

@implementation _DPHistogramWithAggregatorDiscreteGaussian

- (_DPHistogramWithAggregatorDiscreteGaussian)initWithSigma:(double)sigma rappor:(id)rappor error:(id *)error
{
  rapporCopy = rappor;
  v10 = (*&sigma & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v11 = ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (sigma >= 0.0)
  {
    v11 = 0;
    v10 = 0;
  }

  if ((*&sigma & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v12 = (*&sigma & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v10;
  if ((v12 | v11) == 1)
  {
    v13 = _DPPrivacyBudgetError(1, @"Gaussian sigma must be finite, not NAN, and greater than 0.0.");
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v13 error:v14];
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }

    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _DPHistogramWithAggregatorDiscreteGaussian;
    v17 = [(_DPHistogramWithAggregatorDiscreteGaussian *)&v20 init];
    v18 = v17;
    if (v17)
    {
      v17->_sigma = sigma;
      objc_storeStrong(&v17->_rappor, rappor);
      v18->_squaredL2Sensitivity = 2.0;
    }

    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)exceedApproximateDPBudget:(id)budget error:(id *)error
{
  budgetCopy = budget;
  v7 = [(_DPHistogramWithAggregatorDiscreteGaussian *)self zeroConcentratedDPWithError:error];
  if (v7)
  {
    [budgetCopy epsilon];
    v8 = [v7 approximateDPForEpsilon:error error:?];
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "exceed:", budgetCopy)}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)zeroConcentratedDPWithError:(id *)error
{
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self squaredL2Sensitivity];
  v6 = v5;
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self sigma];
  v8 = v6 / v7;
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self sigma];
  v10 = [[_DPZeroConcentratedDP alloc] initWithRho:error error:v8 / v9 * 0.5];

  return v10;
}

@end