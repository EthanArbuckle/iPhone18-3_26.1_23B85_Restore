@interface NUMutableBufferTileAdapter
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect;
- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect;
- (NUMutableBufferTileAdapter)init;
- (NUMutableBufferTileAdapter)initWithFrameRect:(id *)rect contentRect:(id *)contentRect buffer:(id)buffer;
@end

@implementation NUMutableBufferTileAdapter

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect
{
  v3 = *&self[1].var1.var1;
  retstr->var0 = *&self[1].var0.var1;
  retstr->var1 = v3;
  return self;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect
{
  v3 = *&self->var1.var1;
  retstr->var0 = *&self->var0.var1;
  retstr->var1 = v3;
  return self;
}

- (NUMutableBufferTileAdapter)init
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
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
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUMutableBufferTileAdapter init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 382, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

- (NUMutableBufferTileAdapter)initWithFrameRect:(id *)rect contentRect:(id *)contentRect buffer:(id)buffer
{
  bufferCopy = buffer;
  v14.receiver = self;
  v14.super_class = NUMutableBufferTileAdapter;
  v9 = [(NUMutableBufferTileAdapter *)&v14 init];
  var0 = rect->var0;
  *(v9 + 24) = rect->var1;
  *(v9 + 8) = var0;
  var1 = contentRect->var1;
  *(v9 + 40) = contentRect->var0;
  *(v9 + 56) = var1;
  v12 = *(v9 + 9);
  *(v9 + 9) = bufferCopy;

  return v9;
}

@end