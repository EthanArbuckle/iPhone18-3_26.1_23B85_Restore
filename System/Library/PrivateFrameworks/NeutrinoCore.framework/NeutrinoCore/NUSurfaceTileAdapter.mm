@interface NUSurfaceTileAdapter
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect;
- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect;
- (NUSurfaceTileAdapter)init;
- (NUSurfaceTileAdapter)initWithFrameRect:(id *)a3 contentRect:(id *)a4 surface:(id)a5;
@end

@implementation NUSurfaceTileAdapter

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect
{
  var0 = self[2].var0;
  retstr->var0 = self[1].var1;
  retstr->var1 = var0;
  return self;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect
{
  var0 = self[1].var0;
  retstr->var0 = self->var1;
  retstr->var1 = var0;
  return self;
}

- (NUSurfaceTileAdapter)init
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
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
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
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
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
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
  _NUAssertFailHandler("[NUSurfaceTileAdapter init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 1076, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

- (NUSurfaceTileAdapter)initWithFrameRect:(id *)a3 contentRect:(id *)a4 surface:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (!v8)
  {
    v14 = NUAssertLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSurfaceTileAdapter initWithFrameRect:contentRect:surface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 1066, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "surface != nil");
  }

  v28.receiver = self;
  v28.super_class = NUSurfaceTileAdapter;
  v9 = [(NUSurfaceTileAdapter *)&v28 init];
  var1 = a3->var1;
  v9->_frameRect.origin = a3->var0;
  v9->_frameRect.size = var1;
  v11 = a4->var1;
  v9->_contentRect.origin = a4->var0;
  v9->_contentRect.size = v11;
  surface = v9->_surface;
  v9->_surface = v8;

  return v9;
}

@end