@interface NURenderJobStatisticsHistogram
- (NURenderJobStatisticsHistogram)initWithBins:(unint64_t)bins millisPerBin:(double)bin;
- (id)description;
- (id)getPercentiles:(int64_t *)percentiles numSamples:(int64_t)samples;
- (id)graphHistogram:(int64_t *)histogram label:(id)label;
- (void)addStatisticsToHistogram:(id)histogram;
- (void)dealloc;
@end

@implementation NURenderJobStatisticsHistogram

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:1024];
  v25 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_prepareLatencyHistogram numSamples:self->_prepareLatencyHistogramCount];
  v22 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_prepareDurationHistogram numSamples:self->_prepareDurationHistogramCount];
  v21 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_renderLatencyHistogram numSamples:self->_renderLatencyHistogramCount];
  v4 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_renderDurationHistogram numSamples:self->_renderDurationHistogramCount];
  v5 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_completeLatencyHistogram numSamples:self->_completeLatencyHistogramCount];
  v6 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_completeDurationHistogram numSamples:self->_completeDurationHistogramCount];
  v7 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_totalLatencyHistogram numSamples:self->_totalLatencyHistogramCount];
  v23 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_totalDurationHistogram numSamples:self->_totalDurationHistogramCount];
  v24 = [(NURenderJobStatisticsHistogram *)self getPercentiles:self->_totalHistogram numSamples:self->_totalHistogramCount];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v3 appendFormat:@"<%@, %p\n", v9, self];

  [v3 appendFormat:@"Time Resolution: %.3f millis\n", *&self->_millisPerBin];
  [v3 appendFormat:@"Histogram Bins: %lu\n", self->_binCount];
  [v3 appendFormat:@"Max Representable Time (> are clipped): %.1f millis\n", self->_millisPerBin * self->_binCount];
  [v3 appendFormat:@"Num Samples: %lli\n\n", self->_totalDurationHistogramCount];
  [v3 appendFormat:@"Percentiles:          99.9%%     99%%     90%%     50%%     25%%     1%%\n"];
  v10 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v25);
  [v3 appendFormat:@"Prepare     (wait): %@\n", v10];

  v11 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v22);
  [v3 appendFormat:@"Prepare  (execute): %@\n", v11];

  v12 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v21);
  [v3 appendFormat:@"Render      (wait): %@\n", v12];

  v13 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v4);
  [v3 appendFormat:@"Render   (execute): %@\n", v13];

  v14 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v5);
  [v3 appendFormat:@"Complete    (wait): %@\n", v14];

  v15 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v6);
  [v3 appendFormat:@"Complete (execute): %@\n", v15];

  [v3 appendFormat:@"\n"];
  v16 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v7);
  [v3 appendFormat:@"Total       (wait): %@\n", v16];

  v17 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v23);
  [v3 appendFormat:@"Total    (execute): %@\n", v17];

  v18 = __45__NURenderJobStatisticsHistogram_description__block_invoke(v24);
  [v3 appendFormat:@"Total             : %@\n", v18];

  [v3 appendFormat:@"\n"];
  v19 = [(NURenderJobStatisticsHistogram *)self graphHistogram:self->_totalDurationHistogram label:@"Graph: Total (execute) (y = samples, x = millis):"];
  [v3 appendString:v19];

  [v3 appendFormat:@"\n>"];

  return v3;
}

id __45__NURenderJobStatisticsHistogram_description__block_invoke(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:100];
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndexedSubscript:v3];
      [v4 doubleValue];
      v6 = v5;

      if (v6 >= 0.0)
      {
        v7 = [v1 objectAtIndexedSubscript:v3];
        [v7 doubleValue];
        [v2 appendFormat:@"%6.2f  ", v8];
      }

      else
      {
        [v2 appendString:@"        "];
      }

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  return v2;
}

- (id)getPercentiles:(int64_t *)percentiles numSamples:(int64_t)samples
{
  v35[6] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v5 = (samplesCopy * 0.999);
  v6 = (samplesCopy * 0.99);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (samplesCopy * 0.9);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = (samplesCopy * 0.5);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = (samplesCopy * 0.25);
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v10 = 0.01;
  v11 = (samplesCopy * 0.01);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  binCount = self->_binCount;
  if (binCount)
  {
    v13 = 0;
    v10 = -1.0;
    v14 = 1;
    v15 = -1.0;
    v16 = -1.0;
    v17 = -1.0;
    v18 = -1.0;
    v19 = -1.0;
    v20 = -1.0;
    do
    {
      v21 = *percentiles++;
      v13 += v21;
      if (v13 > v11 && v15 == -1.0)
      {
        v15 = self->_millisPerBin * v14;
      }

      if (v13 > v9 && v16 == -1.0)
      {
        v16 = self->_millisPerBin * v14;
      }

      if (v13 > v8 && v17 == -1.0)
      {
        v17 = self->_millisPerBin * v14;
      }

      if (v13 > v7 && v18 == -1.0)
      {
        v18 = self->_millisPerBin * v14;
      }

      if (v13 > v6 && v19 == -1.0)
      {
        v19 = self->_millisPerBin * v14;
      }

      if (v13 > v5 && v20 == -1.0)
      {
        v20 = self->_millisPerBin * v14;
      }

      ++v14;
      --binCount;
    }

    while (binCount);
  }

  else
  {
    v20 = -1.0;
    v19 = -1.0;
    v18 = -1.0;
    v17 = -1.0;
    v16 = -1.0;
    v15 = -1.0;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:{percentiles, v20, v10}];
  v35[0] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v35[1] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v35[2] = v29;
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v35[3] = v30;
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v35[4] = v31;
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v35[5] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:6];

  return v33;
}

- (id)graphHistogram:(int64_t *)histogram label:(id)label
{
  v79 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  binCount = self->_binCount;
  v8 = log2(binCount);
  if (ceil(v8) != floor(v8))
  {
    v41 = NUAssertLogger_24345();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binCount is not power of 2"];
      *buf = 138543362;
      v76 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_24345();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols = [v56 callStackSymbols];
        v59 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v55;
        v77 = 2114;
        v78 = v59;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJobStatisticsHistogram graphHistogram:label:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 2212, @"binCount is not power of 2", v60, v61, v62, v63, v73);
  }

  if (binCount <= 0x3F)
  {
    v48 = NUAssertLogger_24345();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binCount should be >= 64"];
      *buf = 138543362;
      v76 = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v51 = NUAssertLogger_24345();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v52)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols3 = [v65 callStackSymbols];
        v68 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v64;
        v77 = 2114;
        v78 = v68;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJobStatisticsHistogram graphHistogram:label:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 2213, @"binCount should be >= 64", v69, v70, v71, v72, v73);
  }

  v9 = malloc_type_calloc(0x40uLL, 8uLL, 0x100004000313F17uLL);
  v10 = v9;
  v11 = self->_binCount;
  v12 = v11 >> 6;
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      *&v9[8 * (i / v12)] += histogram[i];
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2048];
  [v14 appendFormat:@"%@\n", labelCopy];
  v15 = 0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v18 = 0uLL;
  do
  {
    v19 = *&v10[v15];
    v18 = vbslq_s8(vcgtq_s64(v19, v18), v19, v18);
    v17 = vbslq_s8(vcgtq_s64(v17, v19), v19, v17);
    v15 += 16;
  }

  while (v15 != 512);
  v74 = labelCopy;
  v20 = vextq_s8(v17, v17, 8uLL).u64[0];
  v21 = vbsl_s8(vcgtd_s64(v20, v17.i64[0]), *v17.i8, v20);
  v22 = vextq_s8(v18, v18, 8uLL).u64[0];
  v23 = (*&vbsl_s8(vcgtd_s64(v18.i64[0], v22), *v18.i8, v22) - v21) / 20.0;
  v24 = v21;
  v25 = 20;
  v26 = v21 + v23 * 0.0;
  do
  {
    v27 = v25;
    if (v25)
    {
      v28 = v24 + v23 * v25;
      [v14 appendFormat:@"%5.0f |", *&v28, v74];
    }

    else
    {
      [v14 appendFormat:@"  > 0 |"];
      v28 = v26;
    }

    for (j = 0; j != 512; j += 8)
    {
      v30 = *&v10[j];
      if (v28 > v30 || v30 <= 0)
      {
        v32 = @" ";
      }

      else
      {
        v32 = @".";
      }

      [v14 appendString:v32];
    }

    [v14 appendString:@"\n"];
    v25 = v27 - 1;
  }

  while (v27);
  v33 = 73;
  do
  {
    [v14 appendString:@"-"];
    --v33;
  }

  while (v33);
  [v14 appendString:@"\n     "];
  v34 = 0;
  v35 = v12;
  do
  {
    if (-1431655765 * v34 > 0x55555555 || (v36 = (self->_millisPerBin * v34 * v35), v36 <= 99))
    {
      [v14 appendString:@" "];
    }

    else
    {
      [v14 appendFormat:@"%i", (656 * (v36 % 0x3E8u)) >> 16];
    }

    ++v34;
  }

  while (v34 != 69);
  [v14 appendString:@"\n      "];
  for (k = 0; k != 69; ++k)
  {
    if (-1431655765 * k > 0x55555555 || (v38 = (self->_millisPerBin * k * v35), v38 <= 9))
    {
      [v14 appendString:@" "];
    }

    else
    {
      [v14 appendFormat:@"%i", (103 * (v38 % 0x64u)) >> 10];
    }
  }

  [v14 appendString:@"\n      "];
  for (m = 0; m != 69; ++m)
  {
    if (-1431655765 * m < 0x55555556)
    {
      [v14 appendFormat:@"%i", ((self->_millisPerBin * m * v35) % 10)];
    }

    else
    {
      [v14 appendString:@" "];
    }
  }

  free(v10);

  return v14;
}

- (void)addStatisticsToHistogram:(id)histogram
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NURenderJobStatisticsHistogram_addStatisticsToHistogram___block_invoke;
  v8[3] = &unk_1E810B120;
  v8[4] = self;
  histogramCopy = histogram;
  v5 = MEMORY[0x1C68D98A0](v8);
  [histogramCopy prepareLatency];
  (v5)[2](v5, self->_prepareLatencyHistogram, &self->_prepareLatencyHistogramCount);
  [histogramCopy prepareDuration];
  (v5)[2](v5, self->_prepareDurationHistogram, &self->_prepareDurationHistogramCount);
  [histogramCopy renderLatency];
  (v5)[2](v5, self->_renderLatencyHistogram, &self->_renderLatencyHistogramCount);
  [histogramCopy renderDuration];
  (v5)[2](v5, self->_renderDurationHistogram, &self->_renderDurationHistogramCount);
  [histogramCopy completeLatency];
  (v5)[2](v5, self->_completeLatencyHistogram, &self->_completeLatencyHistogramCount);
  [histogramCopy completeDuration];
  (v5)[2](v5, self->_completeDurationHistogram, &self->_completeDurationHistogramCount);
  [histogramCopy duration];
  (v5)[2](v5, self->_totalDurationHistogram, &self->_totalDurationHistogramCount);
  [histogramCopy latency];
  (v5)[2](v5, self->_totalLatencyHistogram, &self->_totalLatencyHistogramCount);
  [histogramCopy totalDuration];
  v7 = v6;

  (v5[2])(v5, self->_totalHistogram, &self->_totalHistogramCount, v7);
}

uint64_t __59__NURenderJobStatisticsHistogram_addStatisticsToHistogram___block_invoke(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a4 > 0.0)
  {
    v6 = result;
    v7 = a4 * 1000.0;
    [*(result + 32) millisPerBin];
    v9 = (v7 / v8);
    result = [*(v6 + 32) binCount];
    if (result - 1 <= v9)
    {
      result = [*(v6 + 32) binCount];
      v9 = result - 1;
    }

    ++*(a2 + 8 * v9);
    ++*a3;
  }

  return result;
}

- (void)dealloc
{
  free(self->_prepareLatencyHistogram);
  free(self->_prepareDurationHistogram);
  free(self->_renderLatencyHistogram);
  free(self->_renderDurationHistogram);
  free(self->_completeLatencyHistogram);
  free(self->_completeDurationHistogram);
  free(self->_totalDurationHistogram);
  free(self->_totalLatencyHistogram);
  free(self->_totalHistogram);
  v3.receiver = self;
  v3.super_class = NURenderJobStatisticsHistogram;
  [(NURenderJobStatisticsHistogram *)&v3 dealloc];
}

- (NURenderJobStatisticsHistogram)initWithBins:(unint64_t)bins millisPerBin:(double)bin
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = log2(bins);
  if (ceil(v7) != floor(v7))
  {
    v10 = NUAssertLogger_24345();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binCount must be a power of 2"];
      *buf = 138543362;
      v44 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_24345();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v24;
        v45 = 2114;
        v46 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJobStatisticsHistogram initWithBins:millisPerBin:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 2152, @"binCount must be a power of 2", v29, v30, v31, v32, v42.receiver);
  }

  if (bins <= 0x3F)
  {
    v17 = NUAssertLogger_24345();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binCount should be >= 64"];
      *buf = 138543362;
      v44 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_24345();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v33;
        v45 = 2114;
        v46 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJobStatisticsHistogram initWithBins:millisPerBin:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 2153, @"binCount should be >= 64", v38, v39, v40, v41, v42.receiver);
  }

  v42.receiver = self;
  v42.super_class = NURenderJobStatisticsHistogram;
  v8 = [(NURenderJobStatisticsHistogram *)&v42 init];
  if (v8)
  {
    v8->_prepareLatencyHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_prepareDurationHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_renderLatencyHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_renderDurationHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_completeLatencyHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_completeDurationHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_totalDurationHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_totalLatencyHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_totalHistogram = malloc_type_calloc(bins, 8uLL, 0x100004000313F17uLL);
    v8->_millisPerBin = bin;
    v8->_binCount = bins;
  }

  return v8;
}

@end