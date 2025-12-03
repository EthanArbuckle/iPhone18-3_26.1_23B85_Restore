@interface NUMutableHistogram
- (id)copyWithZone:(_NSZone *)zone;
- (void)increment:(int64_t)increment;
- (void)observeValue:(double)value;
- (void)observeValuesInDataSet:(id)set;
- (void)smoothWithFunction:(int64_t)function windowSize:(int64_t)size sampleMode:(int64_t)mode;
- (void)write:(id)write;
@end

@implementation NUMutableHistogram

- (void)smoothWithFunction:(int64_t)function windowSize:(int64_t)size sampleMode:(int64_t)mode
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [(NUHistogram *)self _samplerForSampleMode:mode];
  v36[0] = v8;
  if (function == 1)
  {
    if ((size & 0x8000000000000001) != 1)
    {
      __assert_rtn("tent", "Histogram.hpp", 298, "size % 2 == 1");
    }

    ptr = self->super._histogram.__ptr_;
    v36[1] = 0;
    std::vector<long>::vector[abi:ne200100](&__p, size);
    v11 = (size >> 1) + 1;
    v12 = __p;
    v13 = vdupq_n_s64(size - 1);
    v14 = __p + 8;
    v15 = -(size >> 1);
    v16 = xmmword_1C03C2740;
    v17 = size + 1;
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
    if (function)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
      }

      v22 = _NUAssertLogger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown window function: %ld", function, v36[0]];
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
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v31 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUMutableHistogram smoothWithFunction:windowSize:sampleMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 226, @"Unknown window function: %ld", v32, v33, v34, v35, function);
    }

    v9 = self->super._histogram.__ptr_;
    NU::Histogram<long,double>::Kernel::box(buf, size);
    NU::Histogram<long,double>::convolve(v9, buf, v36);
  }

  if (*buf)
  {
    operator delete(*buf);
  }
}

- (void)observeValuesInDataSet:(id)set
{
  v37 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v32 = setCopy;
  if (!setCopy)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v25;
        v35 = 2114;
        v36 = v27;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableHistogram observeValuesInDataSet:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 210, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "dataSet != nil");
  }

  _const_data = [setCopy _const_data];
  v6 = *_const_data;
  v7 = *(_const_data + 8) - *_const_data;
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

- (void)observeValue:(double)value
{
  ptr = self->super._histogram.__ptr_;
  v4 = *(ptr + 2);
  v5 = (*(ptr + 3) - v4) >> 3;
  v6 = vcvtmd_s64_f64((value - *ptr) / (ptr[1] - *ptr) * v5);
  v7 = v5 - 1;
  if (v7 >= v6)
  {
    v7 = v6;
  }

  ++*(v4 + 8 * (v7 & ~(v7 >> 63)));
  ++*(ptr + 5);
}

- (void)write:(id)write
{
  v27 = *MEMORY[0x1E69E9840];
  writeCopy = write;
  if (!writeCopy)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  v6 = writeCopy;
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

- (void)increment:(int64_t)increment
{
  v24 = *MEMORY[0x1E69E9840];
  if (increment < 0 || [(NUHistogram *)self binCount]<= increment)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableHistogram increment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 189, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "index >= 0 && index < self.binCount");
  }

  ptr = self->super._histogram.__ptr_;
  ++*(ptr[2] + 8 * increment);
  ++ptr[5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NUHistogram allocWithZone:zone];

  return [(NUHistogram *)v4 initWithHistogram:self];
}

@end