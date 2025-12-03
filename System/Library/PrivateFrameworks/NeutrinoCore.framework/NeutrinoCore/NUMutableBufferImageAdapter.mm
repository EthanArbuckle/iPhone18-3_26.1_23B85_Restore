@interface NUMutableBufferImageAdapter
- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point;
- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device;
- (NUMutableBufferImageAdapter)initWithBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region;
- (NUMutableBufferImageAdapter)initWithMutableBuffer:(id)buffer colorSpace:(id)space validRegion:(id)region;
- (NUMutableBufferImageAdapter)initWithMutableBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region;
- (void)writeBufferRegion:(id)region withBlock:(id)block;
@end

@implementation NUMutableBufferImageAdapter

- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  storageCopy = storage;
  v10 = rect->var1;
  v18[0] = rect->var0;
  v18[1] = v10;
  v11 = [NURegion regionWithRect:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v12 = rect->var1;
  v16 = rect->var0;
  v17 = v12;
  v15[2] = __66__NUMutableBufferImageAdapter_copyBufferStorage_fromRect_toPoint___block_invoke;
  v15[3] = &unk_1E810B5C8;
  v15[4] = self;
  v15[5] = var0;
  v15[6] = var1;
  v13 = [storageCopy readBufferInRegion:v11 block:v15];

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

- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device
{
  var1 = rect->var1;
  v8[0] = rect->var0;
  v8[1] = var1;
  return [(NUMutableBufferImageAdapter *)self copyBufferStorage:storage fromRect:v8 toPoint:point.var0, point.var1, device];
}

- (void)writeBufferRegion:(id)region withBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
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
  v11 = blockCopy;
  v15 = v11;
  [(NUMutableBufferProvider *)mutableBufferProvider provideMutableBuffer:v14];
  v12 = [(NURegion *)self->super._validRegion regionByAddingRegion:regionCopy];
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

- (NUMutableBufferImageAdapter)initWithBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region
{
  v32 = *MEMORY[0x1E69E9840];
  provider;
  spaceCopy = space;
  regionCopy = region;
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
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (NUMutableBufferImageAdapter)initWithMutableBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = NUMutableBufferImageAdapter;
  v9 = [(NUBufferImageAdapter *)&v12 initWithBufferProvider:providerCopy colorSpace:space validRegion:region];
  mutableBufferProvider = v9->_mutableBufferProvider;
  v9->_mutableBufferProvider = providerCopy;

  return v9;
}

- (NUMutableBufferImageAdapter)initWithMutableBuffer:(id)buffer colorSpace:(id)space validRegion:(id)region
{
  v32 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  spaceCopy = space;
  regionCopy = region;
  if (!bufferCopy)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v21;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferImageAdapter initWithMutableBuffer:colorSpace:validRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 488, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "buffer != nil");
  }

  v11 = [[NUMutableBufferAdapter alloc] initWithMutableBuffer:bufferCopy];
  v12 = [(NUMutableBufferImageAdapter *)self initWithMutableBufferProvider:v11 colorSpace:spaceCopy validRegion:regionCopy];

  return v12;
}

@end