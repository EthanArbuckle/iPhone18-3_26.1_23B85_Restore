@interface _DPHistogramWithAggregatorDiscreteGaussian
- (_DPHistogramWithAggregatorDiscreteGaussian)initWithSigma:(double)a3 rappor:(id)a4 error:(id *)a5;
- (id)exceedApproximateDPBudget:(id)a3 error:(id *)a4;
- (id)zeroConcentratedDPWithError:(id *)a3;
@end

@implementation _DPHistogramWithAggregatorDiscreteGaussian

- (_DPHistogramWithAggregatorDiscreteGaussian)initWithSigma:(double)a3 rappor:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v11 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v11 = 0;
    v10 = 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v12 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v10;
  if ((v12 | v11) == 1)
  {
    v13 = _DPPrivacyBudgetError(1, @"Gaussian sigma must be finite, not NAN, and greater than 0.0.");
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v13 error:v14];
    }

    if (a5)
    {
      v15 = v13;
      *a5 = v13;
    }

    v16 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _DPHistogramWithAggregatorDiscreteGaussian;
    v17 = [(_DPHistogramWithAggregatorDiscreteGaussian *)&v20 init];
    v18 = v17;
    if (v17)
    {
      v17->_sigma = a3;
      objc_storeStrong(&v17->_rappor, a4);
      v18->_squaredL2Sensitivity = 2.0;
    }

    self = v18;
    v16 = self;
  }

  return v16;
}

- (id)exceedApproximateDPBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_DPHistogramWithAggregatorDiscreteGaussian *)self zeroConcentratedDPWithError:a4];
  if (v7)
  {
    [v6 epsilon];
    v8 = [v7 approximateDPForEpsilon:a4 error:?];
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "exceed:", v6)}];
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

- (id)zeroConcentratedDPWithError:(id *)a3
{
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self squaredL2Sensitivity];
  v6 = v5;
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self sigma];
  v8 = v6 / v7;
  [(_DPHistogramWithAggregatorDiscreteGaussian *)self sigma];
  v10 = [[_DPZeroConcentratedDP alloc] initWithRho:a3 error:v8 / v9 * 0.5];

  return v10;
}

@end