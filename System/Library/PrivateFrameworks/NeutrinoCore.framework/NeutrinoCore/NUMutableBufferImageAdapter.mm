@interface NUMutableBufferImageAdapter
- (BOOL)copyBufferStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5;
- (BOOL)copySurfaceStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5 device:(id)a6;
- (NUMutableBufferImageAdapter)initWithBufferProvider:(id)a3 colorSpace:(id)a4 validRegion:(id)a5;
- (NUMutableBufferImageAdapter)initWithMutableBuffer:(id)a3 colorSpace:(id)a4 validRegion:(id)a5;
- (NUMutableBufferImageAdapter)initWithMutableBufferProvider:(id)a3 colorSpace:(id)a4 validRegion:(id)a5;
- (void)writeBufferRegion:(id)a3 withBlock:(id)a4;
@end

@implementation NUMutableBufferImageAdapter

- (BOOL)copyBufferStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = a3;
  v10 = a4->var1;
  v18[0] = a4->var0;
  v18[1] = v10;
  v11 = [NURegion regionWithRect:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v12 = a4->var1;
  v16 = a4->var0;
  v17 = v12;
  v15[2] = __66__NUMutableBufferImageAdapter_copyBufferStorage_fromRect_toPoint___block_invoke;
  v15[3] = &unk_1E810B5C8;
  v15[4] = self;
  v15[5] = var0;
  v15[6] = var1;
  v13 = [v9 readBufferInRegion:v11 block:v15];

  return v13 == 1;
}

uint64_t __66__NUMutableBufferImageAdapter_copyBufferStorage_fromRect_toPoint___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  return [NUImageUtilities copyPixelsToImage:v2 atPoint:v3 fromBuffer:v4 inRect:a2, v7];
}

- (BOOL)copySurfaceStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5 device:(id)a6
{
  var1 = a4->var1;
  v8[0] = a4->var0;
  v8[1] = var1;
  return [(NUMutableBufferImageAdapter *)self copyBufferStorage:a3 fromRect:v8 toPoint:a5.var0, a5.var1, a6];
}

- (void)writeBufferRegion:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NUBufferImageAdapter *)self size];
  mutableBufferProvider = self->_mutableBufferProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__NUMutableBufferImageAdapter_writeBufferRegion_withBlock___block_invoke;
  v14[3] = &unk_1E810A428;
  v16 = 0;
  v17 = 0;
  v18 = v8;
  v19 = v10;
  v11 = v7;
  v15 = v11;
  [(NUMutableBufferProvider *)mutableBufferProvider provideMutableBuffer:v14];
  v12 = [(NURegion *)self->super._validRegion regionByAddingRegion:v6];
  validRegion = self->super._validRegion;
  self->super._validRegion = v12;
}

void __59__NUMutableBufferImageAdapter_writeBufferRegion_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = [NUMutableBufferTileAdapter alloc];
  v5 = *(a1 + 56);
  v9[0] = *(a1 + 40);
  v9[1] = v5;
  v6 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v6;
  v7 = [(NUMutableBufferTileAdapter *)v4 initWithFrameRect:v9 contentRect:v8 buffer:v3];
  (*(*(a1 + 32) + 16))();
}

- (NUMutableBufferImageAdapter)initWithBufferProvider:(id)a3 colorSpace:(id)a4 validRegion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  a3;
  v8 = a4;
  v9 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v10 = _NUAssertLogger;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v13, v14];
    *buf = 138543362;
    v29 = v15;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v16 = _NUAssertLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v16 = _NUAssertLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUMutableBufferImageAdapter initWithBufferProvider:colorSpace:validRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 503, @"Initializer not available: [%@ %@], use designated initializer instead.", v24, v25, v26, v27, v23);
}

- (NUMutableBufferImageAdapter)initWithMutableBufferProvider:(id)a3 colorSpace:(id)a4 validRegion:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = NUMutableBufferImageAdapter;
  v9 = [(NUBufferImageAdapter *)&v12 initWithBufferProvider:v8 colorSpace:a4 validRegion:a5];
  mutableBufferProvider = v9->_mutableBufferProvider;
  v9->_mutableBufferProvider = v8;

  return v9;
}

- (NUMutableBufferImageAdapter)initWithMutableBuffer:(id)a3 colorSpace:(id)a4 validRegion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v14 = NUAssertLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v29 = v15;
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
        v29 = v21;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferImageAdapter initWithMutableBuffer:colorSpace:validRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 488, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "buffer != nil");
  }

  v11 = [[NUMutableBufferAdapter alloc] initWithMutableBuffer:v8];
  v12 = [(NUMutableBufferImageAdapter *)self initWithMutableBufferProvider:v11 colorSpace:v9 validRegion:v10];

  return v12;
}

@end