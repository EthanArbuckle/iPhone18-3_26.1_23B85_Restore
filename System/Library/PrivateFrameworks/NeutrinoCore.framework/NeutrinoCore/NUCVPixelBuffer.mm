@interface NUCVPixelBuffer
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NUCVPixelBuffer)init;
- (NUCVPixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (NUColorSpace)colorSpace;
- (NUPixelFormat)format;
- (id)CIImageProcessorDigestObject;
- (void)dealloc;
@end

@implementation NUCVPixelBuffer

- (id)CIImageProcessorDigestObject
{
  v3 = objc_alloc_init(NUDigest);
  [(NUDigest *)v3 addBytes:&self->_buffer length:8];
  stringValue = [(NUDigest *)v3 stringValue];

  return stringValue;
}

- (NUColorSpace)colorSpace
{
  ColorSpace = CVImageBufferGetColorSpace(self->_buffer);
  if (ColorSpace)
  {
    v4 = [[NUColorSpace alloc] initWithCGColorSpace:ColorSpace];
  }

  else
  {
    v5 = CVBufferCopyAttachments(self->_buffer, kCVAttachmentMode_ShouldPropagate);
    v4 = [NUColorSpace colorSpaceFromVideoColorProperties:v5];
  }

  return v4;
}

- (NUPixelFormat)format
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_buffer);

  return [NUPixelFormat pixelFormatForCVPixelFormat:PixelFormatType];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  Width = CVPixelBufferGetWidth(self->_buffer);
  Height = CVPixelBufferGetHeight(self->_buffer);
  v5 = Width;
  result.var1 = Height;
  result.var0 = v5;
  return result;
}

- (void)dealloc
{
  CFRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = NUCVPixelBuffer;
  [(NUCVPixelBuffer *)&v3 dealloc];
}

- (NUCVPixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v27 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v6 = NUAssertLogger_26027();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelBuffer != NULL"];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_26027();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCVPixelBuffer initWithCVPixelBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUCVPixelBuffer.m", 26, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "pixelBuffer != NULL");
  }

  v22.receiver = self;
  v22.super_class = NUCVPixelBuffer;
  v4 = [(NUCVPixelBuffer *)&v22 init];
  v4->_buffer = buffer;
  CFRetain(buffer);
  return v4;
}

- (NUCVPixelBuffer)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26042);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_26042);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_26042);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUCVPixelBuffer init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUCVPixelBuffer.m", 21, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end