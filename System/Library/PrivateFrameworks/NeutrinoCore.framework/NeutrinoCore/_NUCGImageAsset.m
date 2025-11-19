@interface _NUCGImageAsset
- (_NUCGImageAsset)initWithCGImage:(CGImage *)a3 type:(int64_t)a4 identifier:(id)a5;
- (_NUCGImageAsset)initWithCIImage:(id)a3 type:(int64_t)a4 identifier:(id)a5;
- (void)dealloc;
@end

@implementation _NUCGImageAsset

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  v3.receiver = self;
  v3.super_class = _NUCGImageAsset;
  [(_NUCGImageAsset *)&v3 dealloc];
}

- (_NUCGImageAsset)initWithCGImage:(CGImage *)a3 type:(int64_t)a4 identifier:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (!a3)
  {
    v13 = NUAssertLogger_10839();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cgImage != NULL"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_10839();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUCGImageAsset initWithCGImage:type:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 748, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "cgImage != NULL");
  }

  v9 = v8;
  v10 = [MEMORY[0x1E695F658] imageWithCGImage:a3];
  v29.receiver = self;
  v29.super_class = _NUCGImageAsset;
  v11 = [(_NUCIImageAsset *)&v29 initWithCIImage:v10 type:a4 identifier:v9];
  v11->_cgImage = CGImageRetain(a3);

  return v11;
}

- (_NUCGImageAsset)initWithCIImage:(id)a3 type:(int64_t)a4 identifier:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v9 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = [v10 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v13, v14];
    *buf = 138543362;
    v36 = v15;
    _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v16 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v16 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v16 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v17 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AF00];
      v19 = v17;
      v20 = [v18 callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v21;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v22 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = MEMORY[0x1E696AF00];
    v25 = specific;
    v26 = v22;
    v27 = [v24 callStackSymbols];
    v28 = [v27 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v36 = specific;
    v37 = 2114;
    v38 = v28;
    _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUCGImageAsset initWithCIImage:type:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 744, @"Initializer not available: [%@ %@], use designated initializer instead.", v31, v32, v33, v34, v30);
}

@end