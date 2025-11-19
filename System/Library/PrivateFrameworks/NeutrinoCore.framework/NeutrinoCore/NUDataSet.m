@interface NUDataSet
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDataSet:(id)a3;
- (NUDataSet)init;
- (NUDataSet)initWithDataSet:(id)a3;
- (NUDataSet)initWithValues:(const double *)a3 count:(int64_t)a4;
- (double)coefficientOfVariation;
- (double)confidenceInterval95;
- (double)estimatedCoefficientOfVariation;
- (double)estimatedConfidenceInterval95;
- (double)estimatedStandardError;
- (double)geometricMean;
- (double)max;
- (double)mean;
- (double)median;
- (double)medianAbsoluteDeviation;
- (double)min;
- (double)percentile:(double)a3;
- (double)standardDeviation;
- (double)standardError;
- (double)sum;
- (double)valueAtIndex:(int64_t)a3;
- (double)variance;
- (id).cxx_construct;
- (id)filter:(id)a3;
- (id)map:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)enumerateValues:(id)a3;
@end

@implementation NUDataSet

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

- (id)map:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "mapper != nil"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v20;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet map:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 349, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "mapper != nil");
  }

  v5 = [[NUMutableDataSet alloc] initWithCapacity:[(NUDataSet *)self count]];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __17__NUDataSet_map___block_invoke;
  v25[3] = &unk_1E810AC80;
  v6 = v5;
  v26 = v6;
  v7 = v4;
  v27 = v7;
  [(NUDataSet *)self enumerateValues:v25];
  v8 = v27;
  v9 = v6;

  return v6;
}

uint64_t __17__NUDataSet_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  return [v1 addValue:?];
}

- (id)filter:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "filter != nil"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v20;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet filter:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 334, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "filter != nil");
  }

  v5 = [[NUMutableDataSet alloc] initWithCapacity:[(NUDataSet *)self count]];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __20__NUDataSet_filter___block_invoke;
  v25[3] = &unk_1E810AC80;
  v6 = v4;
  v27 = v6;
  v7 = v5;
  v26 = v7;
  [(NUDataSet *)self enumerateValues:v25];
  v8 = v26;
  v9 = v7;

  return v7;
}

uint64_t __20__NUDataSet_filter___block_invoke(uint64_t a1, double a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addValue:a2];
  }

  return result;
}

- (double)percentile:(double)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0)
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "p >= 0.0"];
      *buf = 138543362;
      v34 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v19;
        v35 = 2114;
        v36 = v21;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet percentile:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 326, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "p >= 0.0");
  }

  if (a3 > 1.0)
  {
    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "p <= 1.0"];
      *buf = 138543362;
      v34 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v26;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet percentile:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 327, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "p <= 1.0");
  }

  p_data = &self->_data;

  return NU::Percentile(p_data, a2, a3);
}

- (double)estimatedCoefficientOfVariation
{
  [(NUDataSet *)self median];
  v4 = v3;
  [(NUDataSet *)self estimatedStandardDeviation];
  return v5 / v4;
}

- (double)estimatedConfidenceInterval95
{
  v3 = [(NUDataSet *)self count];
  if (v3 >= 2)
  {
    v5 = v3 - 1;
    if (v3 - 1 >= 0x1F4)
    {
      v5 = 500;
    }

    v4 = gT95[v5 - 1];
  }

  else
  {
    v4 = NAN;
  }

  [(NUDataSet *)self estimatedStandardError];
  return v4 * v6;
}

- (double)estimatedStandardError
{
  [(NUDataSet *)self estimatedStandardDeviation];
  v4 = v3;
  v5 = [(NUDataSet *)self count];
  if (v5)
  {
    return v4 / sqrt(v5);
  }

  else
  {
    return 0.0;
  }
}

- (double)medianAbsoluteDeviation
{
  if ((*&self->_flags & 0x800) == 0)
  {
    [(NUDataSet *)self median];
    NU::operator+(&self->_data, &v9, -v3);
    v6 = v9;
    v5 = v10;
    if (v9 != v10)
    {
      v7 = v9;
      do
      {
        *v7 = fabs(*v7);
        ++v7;
      }

      while (v7 != v5);
    }

    self->_stats.mad = NU::Percentile(&v9, v4, 0.5);
    if (v6)
    {
      operator delete(v6);
    }
  }

  return self->_stats.mad;
}

- (double)coefficientOfVariation
{
  if ((*&self->_flags & 0x400) != 0)
  {
    return self->_stats.cv;
  }

  [(NUDataSet *)self mean];
  v4 = v3;
  [(NUDataSet *)self standardDeviation];
  result = v5 / v4;
  self->_stats.cv = result;
  *&self->_flags |= 0x400u;
  return result;
}

- (double)confidenceInterval95
{
  if ((*&self->_flags & 0x200) != 0)
  {
    return self->_stats.ci95;
  }

  v3 = [(NUDataSet *)self count];
  if (v3 >= 2)
  {
    v6 = v3 - 1;
    if (v3 - 1 >= 0x1F4)
    {
      v6 = 500;
    }

    v4 = gT95[v6 - 1];
  }

  else
  {
    v4 = NAN;
  }

  [(NUDataSet *)self standardError];
  result = v4 * v7;
  self->_stats.ci95 = result;
  *&self->_flags |= 0x200u;
  return result;
}

- (double)standardError
{
  if ((*&self->_flags & 0x100) != 0)
  {
    return self->_stats.stderr;
  }

  [(NUDataSet *)self standardDeviation];
  v4 = v3;
  v5 = [(NUDataSet *)self count];
  if (v5)
  {
    result = v4 / sqrt(v5);
  }

  else
  {
    result = 0.0;
  }

  self->_stats.stderr = result;
  *&self->_flags |= 0x100u;
  return result;
}

- (double)standardDeviation
{
  if ((*&self->_flags & 0x80) != 0)
  {
    return self->_stats.stddev;
  }

  [(NUDataSet *)self variance];
  result = sqrt(v3);
  self->_stats.stddev = result;
  *&self->_flags |= 0x80u;
  return result;
}

- (double)variance
{
  if ((*&self->_flags & 0x40) != 0)
  {
    return self->_stats.variance;
  }

  [(NUDataSet *)self mean];
  result = NU::Variance(&self->_data, v3, v4);
  self->_stats.variance = result;
  *&self->_flags |= 0x40u;
  return result;
}

- (double)max
{
  if ((*&self->_flags & 4) != 0)
  {
    return self->_stats.max;
  }

  result = NU::Max(&self->_data._values.__begin_, a2);
  self->_stats.max = result;
  *&self->_flags |= 4u;
  return result;
}

- (double)min
{
  if ((*&self->_flags & 2) != 0)
  {
    return self->_stats.min;
  }

  result = NU::Min(&self->_data._values.__begin_, a2);
  self->_stats.min = result;
  *&self->_flags |= 2u;
  return result;
}

- (double)median
{
  if ((*&self->_flags & 0x20) != 0)
  {
    return self->_stats.median;
  }

  result = NU::Percentile(&self->_data, a2, 0.5);
  self->_stats.median = result;
  *&self->_flags |= 0x20u;
  return result;
}

- (double)geometricMean
{
  if ((*&self->_flags & 0x10) != 0)
  {
    return self->_stats.geomean;
  }

  result = NU::GeometricMean(&self->_data, a2);
  self->_stats.geomean = result;
  *&self->_flags |= 0x10u;
  return result;
}

- (double)mean
{
  if ((*&self->_flags & 8) != 0)
  {
    return self->_stats.mean;
  }

  v3 = NU::Sum(&self->_data._values.__begin_, a2);
  v4 = self->_data._values.__end_ - self->_data._values.__begin_;
  if (v4)
  {
    result = v3 / (v4 >> 3);
  }

  else
  {
    result = 0.0;
  }

  self->_stats.mean = result;
  *&self->_flags |= 8u;
  return result;
}

- (double)sum
{
  if (*&self->_flags)
  {
    return self->_stats.sum;
  }

  result = NU::Sum(&self->_data._values.__begin_, a2);
  self->_stats.sum = result;
  *&self->_flags |= 1u;
  return result;
}

- (BOOL)isEqualToDataSet:(id)a3
{
  v4 = a3;
  if (v4 && (begin = self->_data._values.__begin_, end = self->_data._values.__end_, v7 = v4[14], end - begin == v4[15] - v7))
  {
    if (begin == end)
    {
      v10 = 1;
    }

    else
    {
      v8 = begin + 1;
      do
      {
        v9 = *v7++;
        v10 = *(v8 - 1) == v9;
        v11 = *(v8 - 1) != v9 || v8 == end;
        ++v8;
      }

      while (!v11);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUDataSet *)self isEqualToDataSet:v4];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NUDataSet;
  return [(NUDataSet *)&v3 hash];
}

- (void)enumerateValues:(id)a3
{
  v6 = a3;
  begin = self->_data._values.__begin_;
  for (i = self->_data._values.__end_; begin != i; ++begin)
  {
    v6[2](*begin);
  }
}

- (double)valueAtIndex:(int64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "index >= 0"];
      *buf = 138543362;
      v35 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v20;
        v36 = 2114;
        v37 = v22;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet valueAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 126, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "index >= 0");
  }

  if ([(NUDataSet *)self count]<= a3)
  {
    v13 = NUAssertLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "index < self.count"];
      *buf = 138543362;
      v35 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v27;
        v36 = 2114;
        v37 = v29;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet valueAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 127, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "index < self.count");
  }

  return self->_data._values.__begin_[a3];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NUMutableDataSet allocWithZone:a3];

  return [(NUDataSet *)v4 initWithDataSet:self];
}

- (NUDataSet)initWithDataSet:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v41 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v32;
        v42 = 2114;
        v43 = v34;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDataSet initWithDataSet:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 92, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "other != nil");
  }

  v39.receiver = self;
  v39.super_class = NUDataSet;
  v5 = [(NUDataSet *)&v39 init];
  v6 = v5;
  if (v5 != v4)
  {
    p_data = &v5->_data;
    begin = v5->_data._values.__begin_;
    v9 = v4->_data._values.__begin_;
    end = v4->_data._values.__end_;
    v11 = end - v9;
    cap = v5->_data._values.__cap_;
    if (cap - begin < (end - v9))
    {
      v13 = v11 >> 3;
      if (begin)
      {
        v5->_data._values.__end_ = begin;
        operator delete(begin);
        cap = 0;
        p_data->_values.__begin_ = 0;
        v6->_data._values.__end_ = 0;
        v6->_data._values.__cap_ = 0;
      }

      if (!(v13 >> 61))
      {
        v14 = cap >> 2;
        if (cap >> 2 <= v13)
        {
          v14 = v11 >> 3;
        }

        if (cap >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        std::vector<double>::__vallocate[abi:ne200100](&v6->_data, v15);
      }

      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v16 = v5->_data._values.__end_;
    v17 = v16 - begin;
    if (v16 - begin >= v11)
    {
      if (end != v9)
      {
        memmove(begin, v9, end - v9);
      }

      v19 = (begin + v11);
    }

    else
    {
      v18 = v9 + v17;
      if (v16 != begin)
      {
        memmove(v5->_data._values.__begin_, v4->_data._values.__begin_, v17);
        v16 = v6->_data._values.__end_;
      }

      if (end != v18)
      {
        memmove(v16, v18, end - v18);
      }

      v19 = (v16 + end - v18);
    }

    v6->_data._values.__end_ = v19;
  }

  v20 = *&v4->_stats.sum;
  *&v6->_stats.max = *&v4->_stats.max;
  *&v6->_stats.sum = v20;
  v21 = *&v4->_stats.geomean;
  v22 = *&v4->_stats.variance;
  v23 = *&v4->_stats.stderr;
  *&v6->_stats.cv = *&v4->_stats.cv;
  *&v6->_stats.stderr = v23;
  *&v6->_stats.variance = v22;
  *&v6->_stats.geomean = v21;
  v6->_flags = v4->_flags;

  return v6;
}

- (NUDataSet)initWithValues:(const double *)a3 count:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v31.receiver = self;
      v31.super_class = NUDataSet;
      [(NUDataSet *)&v31 init];
      if (!(a4 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4);
      }

      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count != 0"];
      buf = 138543362;
      buf_4 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger();
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        buf = 138543618;
        buf_4 = v23;
        buf_12 = 2114;
        buf_14 = v25;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      buf = 138543362;
      buf_4 = v17;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    v21 = "count != 0";
    v22 = 81;
  }

  else
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "values != NULL"];
      buf = 138543362;
      buf_4 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v7 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        buf = 138543618;
        buf_4 = v18;
        buf_12 = 2114;
        buf_14 = v20;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      buf = 138543362;
      buf_4 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    v21 = "values != NULL";
    v22 = 80;
  }

  _NUAssertFailHandler("[NUDataSet initWithValues:count:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", v22, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, v21);
}

- (NUDataSet)init
{
  v3.receiver = self;
  v3.super_class = NUDataSet;
  return [(NUDataSet *)&v3 init];
}

@end