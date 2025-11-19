@interface NUHistogramRenderJob
- (BOOL)complete:(id *)a3;
- (BOOL)render:(id *)a3;
- (NUHistogramRenderJob)initWithHistogramRequest:(id)a3;
- (NUHistogramRenderJob)initWithRequest:(id)a3;
- (id)cacheKey;
- (id)result;
- (void)cleanUp;
@end

@implementation NUHistogramRenderJob

- (void)cleanUp
{
  if (self->_renderDestination)
  {
    [(NUPurgeableStoragePool *)self->_storagePool returnStorage:?];
    renderDestination = self->_renderDestination;
    self->_renderDestination = 0;

    storagePool = self->_storagePool;
    self->_storagePool = 0;
  }

  histogram = self->_histogram;
  self->_histogram = 0;
}

- (id)result
{
  v2 = [[_NUHistogramRenderResult alloc] initWithHistogram:self->_histogram];

  return v2;
}

- (BOOL)complete:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v19 = NUAssertLogger_22207();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_22207();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramRenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUHistogramRenderJob.m", 107, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != NULL");
  }

  v5 = [(CIRenderTask *)self->_renderTask waitUntilCompletedAndReturnError:?];

  if (v5)
  {
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = [(NURenderJob *)self imageSize];
    *&buf[24] = v6;
    v7 = [NURegion regionWithRect:buf];
    v8 = [(NUHistogramRenderJob *)self histogramRequest];
    v47 = 0u;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    v9 = [v8 parameters];
    v10 = v9;
    if (v9)
    {
      [v9 colorMatrix];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__22220;
    v44 = __Block_byref_object_dispose__22221;
    v45 = 0;
    renderDestination = self->_renderDestination;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __33__NUHistogramRenderJob_complete___block_invoke;
    v35[3] = &unk_1E810AEB0;
    v36 = *buf;
    v37 = *&buf[16];
    v38 = v47;
    v39 = v48;
    v35[4] = self;
    v35[5] = &v40;
    [(NUPurgeableStorage *)renderDestination readBufferInRegion:v7 block:v35];
    histogram = self->_histogram;
    v13 = histogram != 0;
    if (!histogram)
    {
      v16 = [(NURenderJob *)self request];
      v17 = [v16 copy];
      *a3 = [NUError errorWithCode:1 reason:@"Failed to compute histogram" object:v17 underlyingError:v41[5]];
    }

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v11 = [(NURenderJob *)self request];
    v12 = [v11 copy];
    *a3 = [NUError errorWithCode:1 reason:@"failed to render for histogram" object:v12 underlyingError:*a3];

    return 0;
  }

  return v13;
}

void __33__NUHistogramRenderJob_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NUHistogramCalculator);
  v5 = *(a1 + 64);
  v12[0] = *(a1 + 48);
  v12[1] = v5;
  v6 = *(a1 + 96);
  v12[2] = *(a1 + 80);
  v12[3] = v6;
  [(NUHistogramCalculator *)v4 setColorMatrix:v12];
  v7 = *(*(a1 + 40) + 8);
  obj = 0;
  v8 = [(NUHistogramCalculator *)v4 computeHistogramFromBuffer:v3 error:&obj];

  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1 + 32);
  v10 = *(v9 + 256);
  *(v9 + 256) = v8;
}

- (BOOL)render:(id *)a3
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v26 = NUAssertLogger_22207();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_22207();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUHistogramRenderJob.m", 77, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "error != NULL");
  }

  v5 = [(NUHistogramRenderJob *)self histogramRequest];
  v6 = [v5 histogramCalculationColorSpace];
  if ([v6 isHDR])
  {
    +[NUPixelFormat RGBAh];
  }

  else
  {
    +[NUPixelFormat BGRA8];
  }
  v7 = ;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = [(NURenderJob *)self imageSize];
  v76 = v8;
  v9 = [NURegion regionWithRect:buf];
  v10 = +[NUFactory sharedFactory];
  v11 = [v10 surfaceStoragePool];
  storagePool = self->_storagePool;
  self->_storagePool = v11;

  v13 = self->_storagePool;
  if (!v13)
  {
    v33 = NUAssertLogger_22207();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage pool"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_22207();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUHistogramRenderJob.m", 87, @"No storage pool", v61, v62, v63, v64, v74);
  }

  v14 = [(NURenderJob *)self imageSize];
  v16 = [(NUPurgeableStoragePool *)v13 newStorageWithSize:v14 format:v15, v7];
  renderDestination = self->_renderDestination;
  self->_renderDestination = v16;

  if (!self->_renderDestination)
  {
    v40 = NUAssertLogger_22207();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage allocated"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_22207();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        v68 = [v66 callStackSymbols];
        v69 = [v68 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v69;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUHistogramRenderJob.m", 93, @"No storage allocated", v70, v71, v72, v73, v74);
  }

  v18 = [(NURenderJob *)self outputImage];
  v19 = self->_renderDestination;
  v20 = [(NURenderJob *)self imageSize];
  v22 = [(NURenderJob *)self renderImage:v18 into:v19 colorSpace:v6 roi:v9 imageSize:v20 error:v21, a3];
  renderTask = self->_renderTask;
  self->_renderTask = v22;

  v24 = self->_renderTask != 0;
  return v24;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  v4 = [(NURenderJob *)self renderNode];
  [v4 nu_updateDigest:v3];

  v5 = [(NUHistogramRenderJob *)self histogramRequest];
  v6 = [v5 histogramCalculationColorSpace];
  [v6 nu_updateDigest:v3];

  v7 = [v5 parameters];
  v8 = v7;
  if (v7)
  {
    [v7 colorMatrix];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  [(NUDigest *)v3 addBytes:v11 length:64];
  [(NUDigest *)v3 finalize];
  v9 = [(NUDigest *)v3 stringValue];

  return v9;
}

- (NUHistogramRenderJob)initWithRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22233);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_22233);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_22233);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUHistogramRenderJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUHistogramRenderJob.m", 41, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUHistogramRenderJob)initWithHistogramRequest:(id)a3
{
  v8.receiver = self;
  v8.super_class = NUHistogramRenderJob;
  v3 = a3;
  v4 = [(NURenderJob *)&v8 initWithRequest:v3];
  v5 = [v3 scalePolicy];

  scalePolicy = v4->_scalePolicy;
  v4->_scalePolicy = v5;

  return v4;
}

@end