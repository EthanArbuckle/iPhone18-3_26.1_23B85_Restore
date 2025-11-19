@interface NUHistogram
- ($F24F406B2B787EFB06265DBA3D28CBD5)range;
- (NUHistogram)init;
- (NUHistogram)initWithBinCount:(int64_t)a3 range:(id)a4;
- (NUHistogram)initWithHistogram:(id)a3;
- (double)mode;
- (double)percentile:(double)a3;
- (double)threshold:(double)a3;
- (id)_samplerForSampleMode:(int64_t)a3;
- (id)debugDescription;
- (id)modalityAnalysisWithLimit:(int64_t)a3 locality:(double)a4 sensitivity:(double)a5 sampleMode:(int64_t)a6;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation NUHistogram

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = [(NUHistogram *)self binCount];
  [(NUHistogram *)self range];
  v7 = v6;
  [(NUHistogram *)self range];
  [v3 appendFormat:@"<%@:%p> count=%ld, range: [%0.3f..%0.3f], sampleCount=%ld\n", v4, self, v5, v7, v8, -[NUHistogram sampleCount](self, "sampleCount")];
  v9 = [(NUHistogram *)self values];
  v10 = [(NUHistogram *)self binCount];
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      [(NUHistogram *)self range];
      v13 = v12;
      [(NUHistogram *)self range];
      v15 = v14;
      [(NUHistogram *)self range];
      [v3 appendFormat:@"\t%4ld\t%0.3f\t%6ld\t%0.5f\n", i, v16 + i / (v10 - 1) * (v13 - v15), v9[i], v9[i] / -[NUHistogram sampleCount](self, "sampleCount")];
    }
  }

  return v3;
}

- (id)modalityAnalysisWithLimit:(int64_t)a3 locality:(double)a4 sensitivity:(double)a5 sampleMode:(int64_t)a6
{
  v57 = *MEMORY[0x1E69E9840];
  if (a3 > 0)
  {
    if (a4 > 0.0 && a4 <= 1.0)
    {
      if (a5 > 0.0 && a5 <= 1.0)
      {
        [(NUHistogram *)self _samplerForSampleMode:a6];
        objc_claimAutoreleasedReturnValue();
        v52[0] = 0;
        v52[1] = v52;
        v52[2] = 0x4812000000;
        v52[3] = __Block_byref_object_copy__105;
        v52[4] = __Block_byref_object_dispose__106;
        v52[5] = &unk_1C03FE0EF;
        memset(&v52[6], 0, 24);
        if (a3 < 0xFFFFFFFFFFFFFFFLL)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<NU::Histogram<long,double>::Sample>>(a3 + 1);
        }

        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v23 = NUAssertLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "0.0 < sensitivity && sensitivity <= 1.0"];
        buf = 138543362;
        *buf_4 = v24;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v26 = NUAssertLogger();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v27)
        {
          v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v45 = [MEMORY[0x1E696AF00] callStackSymbols];
          v46 = [v45 componentsJoinedByString:@"\n"];
          buf = 138543618;
          *buf_4 = v44;
          v55 = 2114;
          v56 = v46;
          _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        buf = 138543362;
        *buf_4 = v29;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("[NUHistogram modalityAnalysisWithLimit:locality:sensitivity:sampleMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 152, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "0.0 < sensitivity && sensitivity <= 1.0");
    }

    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "0.0 < locality && locality <= 1.0"];
      buf = 138543362;
      *buf_4 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = [MEMORY[0x1E696AF00] callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        buf = 138543618;
        *buf_4 = v37;
        v55 = 2114;
        v56 = v39;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      buf = 138543362;
      *buf_4 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogram modalityAnalysisWithLimit:locality:sensitivity:sampleMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 151, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "0.0 < locality && locality <= 1.0");
  }

  v9 = NUAssertLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "limit > 0"];
    buf = 138543362;
    *buf_4 = v10;
    _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
  }

  v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v12 = NUAssertLogger();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v13)
    {
      v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      buf = 138543618;
      *buf_4 = v30;
      v55 = 2114;
      v56 = v32;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
    }
  }

  else if (v13)
  {
    v14 = [MEMORY[0x1E696AF00] callStackSymbols];
    v15 = [v14 componentsJoinedByString:@"\n"];
    buf = 138543362;
    *buf_4 = v15;
    _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
  }

  _NUAssertFailHandler("[NUHistogram modalityAnalysisWithLimit:locality:sensitivity:sampleMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 150, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "limit > 0");
}

- (id)_samplerForSampleMode:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      ptr = self->_histogram.__ptr_;
      v6 = (ptr[3] - ptr[2]) >> 3;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v7 = ___ZNK2NU9HistogramIldE6mirrorEv_block_invoke;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      ptr = self->_histogram.__ptr_;
      v6 = (ptr[3] - ptr[2]) >> 3;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v7 = ___ZNK2NU9HistogramIldE6repeatEv_block_invoke;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v4 = NU::Histogram<long,double>::edgeClamp(self->_histogram.__ptr_);
      goto LABEL_11;
    }

    ptr = self->_histogram.__ptr_;
    v6 = (ptr[3] - ptr[2]) >> 3;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v7 = ___ZNK2NU9HistogramIldE9zeroClampEv_block_invoke;
  }

  v12 = v7;
  v13 = &__block_descriptor_48_e8_q16__0q8l;
  v14 = ptr;
  v15 = v6;
  v4 = MEMORY[0x1C68D98A0](&v10, a2);
LABEL_11:
  v3 = v4;
LABEL_12:
  v8 = MEMORY[0x1C68D98A0](v3);

  return v8;
}

- (double)mode
{
  ptr = self->_histogram.__ptr_;
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__26562;
  v11 = __Block_byref_object_dispose__26563;
  v12 = &unk_1C03FE0EF;
  v13 = ptr[1];
  v14 = 0;
  NU::Histogram<long,double>::edgeClamp(ptr);
  v6 = v5[4] = &v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZNK2NU9HistogramIldE4modeEv_block_invoke;
  v5[3] = &unk_1E810B270;
  NU::Histogram<long,double>::findAllModes(ptr, &v6, v5);
  v3 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (double)threshold:(double)a3
{
  ptr = self->_histogram.__ptr_;
  v4 = 1.0;
  if (*ptr <= a3)
  {
    v5 = ptr[1];
    v4 = 0.0;
    if (v5 > a3)
    {
      v6 = *(ptr + 2);
      v7 = (*(ptr + 3) - v6) >> 3;
      v8 = vcvtmd_s64_f64((a3 - *ptr) / ((v5 - *ptr) / v7));
      v9 = 0.0;
      v10 = v7 <= v8;
      v11 = v7 - v8;
      if (!v10)
      {
        v12 = 0;
        v13 = (v6 + 8 * v8);
        do
        {
          v14 = *v13++;
          v12 += v14;
          --v11;
        }

        while (v11);
        v9 = v12;
      }

      return v9 / *(ptr + 5);
    }
  }

  return v4;
}

- (double)percentile:(double)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 || a3 > 1.0)
  {
    v15 = NUAssertLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "p >= 0.0 && p <= 1.0"];
      *buf = 138543362;
      v30 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v22;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogram percentile:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 94, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "p >= 0.0 && p <= 1.0");
  }

  ptr = self->_histogram.__ptr_;
  if (a3 <= 0.0)
  {

    return NU::Histogram<long,double>::minimum(ptr);
  }

  else if (a3 >= 1.0)
  {

    return NU::Histogram<long,double>::maximum(ptr);
  }

  else
  {
    v5 = *(ptr + 5);
    if (v5)
    {
      v6 = *(ptr + 2);
      v7 = (*(ptr + 3) - v6) >> 3;
      if (v7 < 1)
      {
        return *ptr;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = v5;
        v11 = llround(v5 * a3);
        while (1)
        {
          v12 = *(v6 + 8 * v9);
          if (v12 + v8 >= v11)
          {
            break;
          }

          ++v9;
          v8 += v12;
          if (v7 == v9)
          {
            return *ptr;
          }
        }

        v14 = (ptr[1] - *ptr) / v7;
        return *ptr + v9 * v14 + -(v8 - a3 * v10) / v12 * v14;
      }
    }

    else
    {
      return *ptr + a3 * (ptr[1] - *ptr);
    }
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)range
{
  ptr = self->_histogram.__ptr_;
  v3 = *ptr;
  v4 = ptr[1];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NUMutableHistogram allocWithZone:a3];

  return [(NUHistogram *)v4 initWithHistogram:self];
}

- (NUHistogram)initWithHistogram:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v19.receiver = self;
    v19.super_class = NUHistogram;
    [(NUHistogram *)&v19 init];
    operator new();
  }

  v4 = NUAssertLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
    *buf = 138543362;
    v21 = v5;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v7 = NUAssertLogger();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v8)
    {
      v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v8)
  {
    v9 = [MEMORY[0x1E696AF00] callStackSymbols];
    v10 = [v9 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v21 = v10;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler("[NUHistogram initWithHistogram:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 51, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "other != nil");
}

- (NUHistogram)initWithBinCount:(int64_t)a3 range:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 <= 0)
  {
    v4 = NUAssertLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count > 0"];
      buf[0] = 138543362;
      *&buf[1] = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        buf[0] = 138543618;
        *&buf[1] = v17;
        v32 = 2114;
        v33 = v19;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      buf[0] = 138543362;
      *&buf[1] = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v20 = "count > 0";
    v21 = 38;
  }

  else
  {
    if (a4.var0 < a4.var1)
    {
      v30.receiver = self;
      v30.super_class = NUHistogram;
      [(NUHistogram *)&v30 init];
      operator new();
    }

    v11 = NUAssertLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "range.min < range.max"];
      buf[0] = 138543362;
      *&buf[1] = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v14 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        buf[0] = 138543618;
        *&buf[1] = v22;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      buf[0] = 138543362;
      *&buf[1] = v16;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v20 = "range.min < range.max";
    v21 = 39;
  }

  _NUAssertFailHandler("[NUHistogram initWithBinCount:range:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", v21, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, v20);
}

- (NUHistogram)init
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v6, v7];
    *buf = 138543362;
    v22 = v8;
    _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_26556);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUHistogram init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogram.mm", 33, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

@end