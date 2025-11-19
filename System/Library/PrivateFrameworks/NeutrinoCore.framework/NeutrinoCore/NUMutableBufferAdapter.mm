@interface NUMutableBufferAdapter
- (NUMutableBufferAdapter)initWithMutableBuffer:(id)a3;
- (NUMutableBufferAdapter)initWithSize:(id)a3 format:(id)a4 rowBytes:(int64_t)a5 bytes:(const void *)a6;
- (NUMutableBufferAdapter)initWithSize:(id)a3 format:(id)a4 rowBytes:(int64_t)a5 mutableBytes:(void *)a6;
- (id)newRenderDestination;
- (void)mutableBytes;
- (void)mutableBytesAtPoint:(id)a3;
- (void)provideMutableBuffer:(id)a3;
@end

@implementation NUMutableBufferAdapter

- (void)provideMutableBuffer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = v4;
  if (!self->super._valid)
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer no longer valid"];
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter provideMutableBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 655, @"Buffer no longer valid", v15, v16, v17, v18, v19);
  }

  (*(v4 + 2))(v4, self);
}

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  v4 = [(NUMutableBufferAdapter *)self mutableBytes];
  v5 = [(NUBufferAdapter *)self size];
  [(NUBufferAdapter *)self size];
  v7 = v6;
  v8 = [(NUBufferAdapter *)self rowBytes];
  v9 = [(NUBufferAdapter *)self format];
  v10 = [v3 initWithBitmapData:v4 width:v5 height:v7 bytesPerRow:v8 format:{objc_msgSend(v9, "CIFormat")}];

  [v10 setLabel:@"NUMutableBufferAdapter-new"];
  return v10;
}

- (void)mutableBytesAtPoint:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (!self->super._valid)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer no longer valid"];
      *buf = 138543362;
      v36 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 637, @"Buffer no longer valid", v23, v24, v25, v26, v34);
  }

  v3 = vmovn_s64(vcgtq_s64(self->super._size, a3));
  v4 = vuzp1_s16(v3, v3);
  v4.i32[1] = vuzp1_s16(v4, vmovn_s64(vcgezq_s64(*&a3))).i32[1];
  if ((vminv_u16(v4) & 1) == 0)
  {
    v13 = NUAssertLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelPointInRect(point, extent)"];
      *buf = 138543362;
      v36 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 639, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "NUPixelPointInRect(point, extent)");
  }

  return self->_mutableBytes + self->super._rowBytes * a3.var1 + [(NUPixelFormat *)self->super._format bytesPerPixel]* a3.var0;
}

- (void)mutableBytes
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->super._valid)
  {
    v3 = NUAssertLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer no longer valid"];
      *buf = 138543362;
      v19 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytes]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 632, @"Buffer no longer valid", v13, v14, v15, v16, v17);
  }

  return self->_mutableBytes;
}

- (NUMutableBufferAdapter)initWithSize:(id)a3 format:(id)a4 rowBytes:(int64_t)a5 bytes:(const void *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v13 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
    *buf = 138543362;
    v27 = v13;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v14 = _NUAssertLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v19;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v14 = _NUAssertLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUMutableBufferAdapter initWithSize:format:rowBytes:bytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 628, @"Initializer not available: [%@ %@], use designated initializer instead.", v22, v23, v24, v25, v21);
}

- (NUMutableBufferAdapter)initWithSize:(id)a3 format:(id)a4 rowBytes:(int64_t)a5 mutableBytes:(void *)a6
{
  v8.receiver = self;
  v8.super_class = NUMutableBufferAdapter;
  result = [(NUBufferAdapter *)&v8 initWithSize:a3.var0 format:a3.var1 rowBytes:a4 bytes:a5];
  result->_mutableBytes = a6;
  return result;
}

- (NUMutableBufferAdapter)initWithMutableBuffer:(id)a3
{
  v4 = a3;
  v5 = [v4 size];
  v7 = v6;
  v8 = [v4 format];
  v9 = -[NUMutableBufferAdapter initWithSize:format:rowBytes:mutableBytes:](self, "initWithSize:format:rowBytes:mutableBytes:", v5, v7, v8, [v4 rowBytes], objc_msgSend(v4, "mutableBytes"));

  return v9;
}

@end