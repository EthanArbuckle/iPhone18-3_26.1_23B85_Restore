@interface NUMutableHistogram
- (id)copyWithZone:(_NSZone *)a3;
- (void)increment:(int64_t)a3;
- (void)observeValue:(double)a3;
- (void)observeValuesInDataSet:(id)a3;
- (void)smoothWithFunction:(int64_t)a3 windowSize:(int64_t)a4 sampleMode:(int64_t)a5;
- (void)write:(id)a3;
@end

@implementation NUMutableHistogram

- (void)smoothWithFunction:(int64_t)a3 windowSize:(int64_t)a4 sampleMode:(int64_t)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [(NUHistogram *)self _samplerForSampleMode:a5];
  v36[0] = v8;
  if (a3 == 1)
  {
    if ((a4 & 0x8000000000000001) != 1)
    {
      __assert_rtn("tent", "Histogram.hpp", 298, "size % 2 == 1");
    }

    ptr = self->super._histogram.__ptr_;
    v36[1] = 0;
    std::vector<long>::vector[abi:ne200100](&__p, a4);
    v11 = (a4 >> 1) + 1;
    v12 = __p;
    v13 = vdupq_n_s64(a4 - 1);
    v14 = __p + 8;
    v15 = -(a4 >> 1);
    v16 = xmmword_1C03C2740;
    v17 = a4 + 1;
    v18 = vdupq_n_s64(2uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v13, v16));
      v20.i64[0] = v15;
      v20.i64[1] = v15 + 1;
      v21 = vabsq_s64(v20);
      if (v19.i8[0])
      {
        *(v14 - 1) = v11 - v21.i64[0];
      }

      if (v19.i8[4])
      {
        *v14 = v11 - v21.i64[1];
      }

      v16 = vaddq_s64(v16, v18);
      v14 += 2;
      v15 += 2;
      v17 -= 2;
    }

    while (v17);
    memset(buf, 0, sizeof(buf));
    std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(buf, v12, v38, (v38 - v12) >> 3);
    v40 = v11 * v11;
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    NU::Histogram<long,double>::convolve(ptr, buf, v36);
  }

  else
  {
    if (a3)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
      }

      v22 = _NUAssertLogger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown window function: %ld", a3, v36[0]];
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
      }

      v25 = _NUAssertLogger;
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v30 = [MEMORY[0x1E696AF00] callStackSymbols];
          v31 = [v30 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUMutableHistogram smoothWithFunction:windowSize:sampleMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 226, @"Unknown window function: %ld", v32, v33, v34, v35, a3);
    }

    v9 = self->super._histogram.__ptr_;
    NU::Histogram<long,double>::Kernel::box(buf, a4);
    NU::Histogram<long,double>::convolve(v9, buf, v36);
  }

  if (*buf)
  {
    operator delete(*buf);
  }
}

- (void)observeValuesInDataSet:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = v4;
  if (!v4)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dataSet != nil"];
      *buf = 138543362;
      v34 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v25;
        v35 = 2114;
        v36 = v27;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableHistogram observeValuesInDataSet:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 210, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "dataSet != nil");
  }

  v5 = [v4 _const_data];
  v6 = *v5;
  v7 = *(v5 + 8) - *v5;
  if (v7)
  {
    v8 = v7 >> 3;
    ptr = self->super._histogram.__ptr_;
    v10 = *ptr;
    v11 = ptr[1] - *ptr;
    v12 = *(ptr + 2);
    v13 = (*(ptr + 3) - v12) >> 3;
    v14 = v13;
    v15 = v13 - 1;
    do
    {
      v16 = *v6++;
      v17 = vcvtmd_s64_f64((v16 - v10) / v11 * v14);
      if (v15 < v17)
      {
        v17 = v15;
      }

      ++*(v12 + 8 * (v17 & ~(v17 >> 63)));
      ++*(ptr + 5);
      --v8;
    }

    while (v8);
  }
}

- (void)observeValue:(double)a3
{
  ptr = self->super._histogram.__ptr_;
  v4 = *(ptr + 2);
  v5 = (*(ptr + 3) - v4) >> 3;
  v6 = vcvtmd_s64_f64((a3 - *ptr) / (ptr[1] - *ptr) * v5);
  v7 = v5 - 1;
  if (v7 >= v6)
  {
    v7 = v6;
  }

  ++*(v4 + 8 * (v7 & ~(v7 >> 63)));
  ++*(ptr + 5);
}

- (void)write:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableHistogram write:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 196, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "block != nil");
  }

  ptr = self->super._histogram.__ptr_;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __28__NUMutableHistogram_write___block_invoke;
  v21[3] = &unk_1E810B248;
  v6 = v4;
  v21[4] = self;
  v22 = v6;
  ptr[5] += __28__NUMutableHistogram_write___block_invoke(v21, ptr[2]);
}

uint64_t __28__NUMutableHistogram_write___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) binCount];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

- (void)increment:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 < 0 || [(NUHistogram *)self binCount]<= a3)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "index >= 0 && index < self.binCount"];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableHistogram increment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 189, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "index >= 0 && index < self.binCount");
  }

  ptr = self->super._histogram.__ptr_;
  ++*(ptr[2] + 8 * a3);
  ++ptr[5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUHistogram allocWithZone:a3];

  return [(NUHistogram *)v4 initWithHistogram:self];
}

@end