@interface NURedEyeDetectionRequest
- (NURedEyeDetectionRequest)initWithComposition:(id)a3 dataExtractor:(id)a4 options:(id)a5;
- (NURedEyeDetectionRequest)initWithComposition:(id)a3 options:(id)a4;
- (NURedEyeDetectionRequest)initWithMedia:(id)a3 options:(id)a4;
- (NURedEyeDetectionRequest)initWithRequest:(id)a3 dataExtractor:(id)a4 options:(id)a5;
- (NURedEyeDetectionRequest)initWithRequest:(id)a3 options:(id)a4;
- (id)newRenderJob;
@end

@implementation NURedEyeDetectionRequest

- (id)newRenderJob
{
  v3 = [NURedEyeDetectionJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (NURedEyeDetectionRequest)initWithMedia:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = NURedEyeDetectionRequest;
  return [(NUImageDataRequest *)&v5 initWithMedia:a3 dataExtractor:@"CIAutoRedEye" options:a4];
}

- (NURedEyeDetectionRequest)initWithComposition:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = NURedEyeDetectionRequest;
  return [(NUImageDataRequest *)&v5 initWithComposition:a3 dataExtractor:@"CIAutoRedEye" options:a4];
}

- (NURedEyeDetectionRequest)initWithRequest:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = NURedEyeDetectionRequest;
  return [(NUImageDataRequest *)&v5 initWithRequest:a3 dataExtractor:@"CIAutoRedEye" options:a4];
}

- (NURedEyeDetectionRequest)initWithRequest:(id)a3 dataExtractor:(id)a4 options:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
    *buf = 138543362;
    v38 = v17;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v18 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v18 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
      }

      goto LABEL_8;
    }

    if (v18 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      v22 = [v20 callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    v29 = [v26 callStackSymbols];
    v30 = [v29 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v38 = specific;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURedEyeDetectionRequest initWithRequest:dataExtractor:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURedEyeDetectionRequest.m", 25, @"Initializer not available: [%@ %@], use designated initializer instead.", v33, v34, v35, v36, v32);
}

- (NURedEyeDetectionRequest)initWithComposition:(id)a3 dataExtractor:(id)a4 options:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
    *buf = 138543362;
    v38 = v17;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v18 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v18 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
      }

      goto LABEL_8;
    }

    if (v18 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_3824);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      v22 = [v20 callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    v29 = [v26 callStackSymbols];
    v30 = [v29 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v38 = specific;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURedEyeDetectionRequest initWithComposition:dataExtractor:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURedEyeDetectionRequest.m", 20, @"Initializer not available: [%@ %@], use designated initializer instead.", v33, v34, v35, v36, v32);
}

@end