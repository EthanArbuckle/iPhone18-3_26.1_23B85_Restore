@interface NUMutableBufferAdapter
- (NUMutableBufferAdapter)initWithMutableBuffer:(id)buffer;
- (NUMutableBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes bytes:(const void *)a6;
- (NUMutableBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes mutableBytes:(void *)mutableBytes;
- (id)newRenderDestination;
- (void)mutableBytes;
- (void)mutableBytesAtPoint:(id)point;
- (void)provideMutableBuffer:(id)buffer;
@end

@implementation NUMutableBufferAdapter

- (void)provideMutableBuffer:(id)buffer
{
  v25 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v20 = bufferCopy;
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter provideMutableBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 655, @"Buffer no longer valid", v15, v16, v17, v18, v19);
  }

  (*(bufferCopy + 2))(bufferCopy, self);
}

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  mutableBytes = [(NUMutableBufferAdapter *)self mutableBytes];
  v5 = [(NUBufferAdapter *)self size];
  [(NUBufferAdapter *)self size];
  v7 = v6;
  rowBytes = [(NUBufferAdapter *)self rowBytes];
  format = [(NUBufferAdapter *)self format];
  v10 = [v3 initWithBitmapData:mutableBytes width:v5 height:v7 bytesPerRow:rowBytes format:{objc_msgSend(format, "CIFormat")}];

  [v10 setLabel:@"NUMutableBufferAdapter-new"];
  return v10;
}

- (void)mutableBytesAtPoint:(id)point
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 637, @"Buffer no longer valid", v23, v24, v25, v26, v34);
  }

  v3 = vmovn_s64(vcgtq_s64(self->super._size, point));
  v4 = vuzp1_s16(v3, v3);
  v4.i32[1] = vuzp1_s16(v4, vmovn_s64(vcgezq_s64(*&point))).i32[1];
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
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 639, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "NUPixelPointInRect(point, extent)");
  }

  return self->_mutableBytes + self->super._rowBytes * point.var1 + [(NUPixelFormat *)self->super._format bytesPerPixel]* point.var0;
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableBufferAdapter mutableBytes]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 632, @"Buffer no longer valid", v13, v14, v15, v16, v17);
  }

  return self->_mutableBytes;
}

- (NUMutableBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes bytes:(const void *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  formatCopy = format;
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
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (NUMutableBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes mutableBytes:(void *)mutableBytes
{
  v8.receiver = self;
  v8.super_class = NUMutableBufferAdapter;
  result = [(NUBufferAdapter *)&v8 initWithSize:size.var0 format:size.var1 rowBytes:format bytes:bytes];
  result->_mutableBytes = mutableBytes;
  return result;
}

- (NUMutableBufferAdapter)initWithMutableBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [bufferCopy size];
  v7 = v6;
  format = [bufferCopy format];
  v9 = -[NUMutableBufferAdapter initWithSize:format:rowBytes:mutableBytes:](self, "initWithSize:format:rowBytes:mutableBytes:", v5, v7, format, [bufferCopy rowBytes], objc_msgSend(bufferCopy, "mutableBytes"));

  return v9;
}

@end