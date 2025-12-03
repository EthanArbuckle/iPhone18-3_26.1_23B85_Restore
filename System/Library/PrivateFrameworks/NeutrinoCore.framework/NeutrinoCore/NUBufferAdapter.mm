@interface NUBufferAdapter
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NSString)description;
- (NUBufferAdapter)init;
- (NUBufferAdapter)initWithBuffer:(id)buffer;
- (NUBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes bytes:(const void *)a6;
- (const)bytes;
- (const)bytesAtPoint:(id)point;
- (id)debugQuickLookObject;
- (void)provideBuffer:(id)buffer;
@end

@implementation NUBufferAdapter

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)debugQuickLookObject
{
  rowBytes = [(NUBufferAdapter *)self rowBytes];
  [(NUBufferAdapter *)self size];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:-[NUBufferAdapter bytes](self length:{"bytes"), v4 * rowBytes}];
  v6 = [(NUBufferAdapter *)self size];
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x1E695F658]);
  format = [(NUBufferAdapter *)self format];
  v11 = [v9 initWithBitmapData:v5 bytesPerRow:rowBytes size:objc_msgSend(format format:"CIFormat") colorSpace:{0, v6, v8}];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  format = self->_format;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", self->_size.width, self->_size.height];
  v7 = [v3 stringWithFormat:@"<%@:%p> %@ %@ bpr=%ld bytes=%p", v4, self, format, v6, self->_rowBytes, self->_bytes];

  return v7;
}

- (void)provideBuffer:(id)buffer
{
  v25 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v20 = bufferCopy;
  if (!self->_valid)
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

    _NUAssertFailHandler("[NUBufferAdapter provideBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 589, @"Buffer no longer valid", v15, v16, v17, v18, v19);
  }

  (*(bufferCopy + 2))(bufferCopy, self);
}

- (const)bytesAtPoint:(id)point
{
  v39 = *MEMORY[0x1E69E9840];
  if (!self->_valid)
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

    _NUAssertFailHandler("[NUBufferAdapter bytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 574, @"Buffer no longer valid", v23, v24, v25, v26, v34);
  }

  v3 = vmovn_s64(vcgtq_s64(self->_size, point));
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

    _NUAssertFailHandler("[NUBufferAdapter bytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 576, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "NUPixelPointInRect(point, extent)");
  }

  return self->_bytes + self->_rowBytes * point.var1 + [(NUPixelFormat *)self->_format bytesPerPixel]* point.var0;
}

- (const)bytes
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_valid)
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

    _NUAssertFailHandler("[NUBufferAdapter bytes]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 569, @"Buffer no longer valid", v13, v14, v15, v16, v17);
  }

  return self->_bytes;
}

- (NUBufferAdapter)init
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
  _NUAssertFailHandler("[NUBufferAdapter init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 565, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

- (NUBufferAdapter)initWithSize:(id)size format:(id)format rowBytes:(int64_t)bytes bytes:(const void *)a6
{
  var1 = size.var1;
  var0 = size.var0;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = NUBufferAdapter;
  v12 = [(NUBufferAdapter *)&v15 init];
  v12->_size.width = var0;
  v12->_size.height = var1;
  format = v12->_format;
  v12->_format = formatCopy;

  v12->_rowBytes = bytes;
  v12->_bytes = a6;
  v12->_valid = 1;
  return v12;
}

- (NUBufferAdapter)initWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [bufferCopy size];
  v7 = v6;
  format = [bufferCopy format];
  v9 = -[NUBufferAdapter initWithSize:format:rowBytes:bytes:](self, "initWithSize:format:rowBytes:bytes:", v5, v7, format, [bufferCopy rowBytes], objc_msgSend(bufferCopy, "bytes"));

  return v9;
}

@end