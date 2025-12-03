@interface _NUIOSurfaceAsset
- (_NUIOSurfaceAsset)initWithCIImage:(id)image type:(int64_t)type identifier:(id)identifier;
- (_NUIOSurfaceAsset)initWithIOSurface:(id)surface type:(int64_t)type identifier:(id)identifier;
@end

@implementation _NUIOSurfaceAsset

- (_NUIOSurfaceAsset)initWithIOSurface:(id)surface type:(int64_t)type identifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  identifierCopy = identifier;
  if (!surfaceCopy)
  {
    v15 = NUAssertLogger_10839();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != NULL"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_10839();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUIOSurfaceAsset initWithIOSurface:type:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 732, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "surface != NULL");
  }

  v10 = identifierCopy;
  v11 = [MEMORY[0x1E695F658] imageWithIOSurface:surfaceCopy];
  v31.receiver = self;
  v31.super_class = _NUIOSurfaceAsset;
  v12 = [(_NUCIImageAsset *)&v31 initWithCIImage:v11 type:type identifier:v10];
  surface = v12->_surface;
  v12->_surface = surfaceCopy;

  return v12;
}

- (_NUIOSurfaceAsset)initWithCIImage:(id)image type:(int64_t)type identifier:(id)identifier
{
  v39 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
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
      callStackSymbols = [v18 callStackSymbols];
      v21 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v24 callStackSymbols];
    v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[_NUIOSurfaceAsset initWithCIImage:type:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 728, @"Initializer not available: [%@ %@], use designated initializer instead.", v31, v32, v33, v34, v30);
}

@end