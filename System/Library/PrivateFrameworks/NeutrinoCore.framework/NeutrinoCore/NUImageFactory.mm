@interface NUImageFactory
+ (CGImage)newCGImageFromBufferImage:(id)image;
+ (CGImage)newCGImageFromImageBuffer:(id)buffer;
+ (CGImage)newCGImageFromImageStorage:(id)storage colorSpace:(id)space;
+ (id)_newCIImageFromImage:(id)image;
+ (id)bufferImageWithLayout:(id)layout format:(id)format colorSpace:(id)space;
+ (id)bufferImageWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom;
+ (id)surfaceImageWithLayout:(id)layout format:(id)format colorSpace:(id)space;
+ (id)surfaceImageWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom;
@end

@implementation NUImageFactory

+ (CGImage)newCGImageFromImageBuffer:(id)buffer
{
  v42 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v4 = bufferCopy;
  if (!bufferCopy)
  {
    v23 = NUAssertLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageBuffer != nil"];
      *buf = 138543362;
      v39 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v30;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageFactory newCGImageFromImageBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 424, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "imageBuffer != nil");
  }

  cVPixelBuffer = [bufferCopy CVPixelBuffer];
  if (!CVPixelBufferGetIOSurface(cVPixelBuffer) || (v6 = CGImageCreateFromIOSurface()) == 0)
  {
    imageOut = 0;
    if (VTCreateCGImageFromCVPixelBuffer(cVPixelBuffer, 0, &imageOut))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
      }

      v7 = _NUAssertLogger;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AEC0];
        format = [v4 format];
        v10 = [v8 stringWithFormat:@"newCGImageFromImageBuffer: unsupported format: %@", format];
        *buf = 138543362;
        v39 = v10;
        _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
      }

      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
        }

        v11 = _NUAssertLogger;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v39 = v12;
          v40 = 2114;
          v41 = v14;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
        }

        v11 = _NUAssertLogger;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v22 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v39 = v22;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }
      }

      format2 = [v4 format];
      _NUAssertContinueHandler("+[NUImageFactory newCGImageFromImageBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 437, @"newCGImageFromImageBuffer: unsupported format: %@", v16, v17, v18, v19, format2);

      v6 = 0;
    }

    else
    {
      v6 = imageOut;
    }
  }

  return v6;
}

+ (CGImage)newCGImageFromImageStorage:(id)storage colorSpace:(id)space
{
  storageCopy = storage;
  spaceCopy = space;
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = [storageCopy size];
  v13[3] = v8;
  v9 = [NURegion regionWithRect:v13];
  v10 = [[NUBufferImageAdapter alloc] initWithBufferProvider:storageCopy colorSpace:spaceCopy validRegion:v9];
  v11 = [self newCGImageFromBufferImage:v10];

  return v11;
}

+ (CGImage)newCGImageFromBufferImage:(id)image
{
  v68 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v66 = imageCopy;
  if (!imageCopy)
  {
    v50 = NUAssertLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      callbacks.version = 138543362;
      *(&callbacks.version + 1) = v51;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &callbacks, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v53 = NUAssertLogger();
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v54)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [callStackSymbols componentsJoinedByString:@"\n"];
        callbacks.version = 138543618;
        *(&callbacks.version + 1) = v57;
        WORD2(callbacks.getBytePointer) = 2114;
        *(&callbacks.getBytePointer + 6) = v59;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &callbacks, 0x16u);
      }
    }

    else if (v54)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v56 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      callbacks.version = 138543362;
      *(&callbacks.version + 1) = v56;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &callbacks, 0xCu);
    }

    _NUAssertFailHandler("CGImageRef newCGImageFromImage(__strong id<NUBufferImage>)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 240, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "image != nil");
  }

  v4 = imageCopy;
  immutableImageCopy = [imageCopy immutableImageCopy];

  format = [immutableImageCopy format];
  v7 = [immutableImageCopy size];
  v9 = v8;
  v10 = +[NUPixelFormat R8];
  v11 = [format isEqualToPixelFormat:v10];

  if (v11)
  {
    v12 = 0;
    v13 = 8;
    v14 = 8;
    goto LABEL_18;
  }

  v15 = +[NUPixelFormat RGBAf];
  v16 = [format isEqualToPixelFormat:v15];

  if (v16)
  {
    v12 = 8451;
    v14 = 32;
    v13 = 128;
    goto LABEL_18;
  }

  v17 = +[NUPixelFormat RGBAh];
  v18 = [format isEqualToPixelFormat:v17];

  if (v18)
  {
    v12 = 4355;
    v14 = 16;
    v13 = 64;
    goto LABEL_18;
  }

  v19 = +[NUPixelFormat ARGB8];
  v20 = [format isEqualToPixelFormat:v19];

  if (v20)
  {
    v12 = 4;
  }

  else
  {
    v21 = +[NUPixelFormat BGRA8];
    v22 = [format isEqualToPixelFormat:v21];

    if (v22)
    {
      v12 = 8194;
    }

    else
    {
      v23 = +[NUPixelFormat RGBA8];
      if ([format isEqualToPixelFormat:v23])
      {
      }

      else
      {
        v24 = +[NUPixelFormat sRGBA8];
        v25 = [format isEqualToPixelFormat:v24];

        if ((v25 & 1) == 0)
        {
          v35 = +[NUPixelFormat A2RGB10];
          v36 = [format isEqualToPixelFormat:v35];

          if ((v36 & 1) == 0)
          {
            v37 = NUAssertLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"newCGImageFromImage unsupported format: %@", format];
              callbacks.version = 138543362;
              *(&callbacks.version + 1) = v38;
              _os_log_impl(&dword_1C0184000, v37, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &callbacks, 0xCu);
            }

            v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v40 = NUAssertLogger();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
            if (v39)
            {
              if (v41)
              {
                v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
                v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
                callbacks.version = 138543618;
                *(&callbacks.version + 1) = v42;
                WORD2(callbacks.getBytePointer) = 2114;
                *(&callbacks.getBytePointer + 6) = v44;
                _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &callbacks, 0x16u);
              }
            }

            else if (v41)
            {
              callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
              v65 = [callStackSymbols4 componentsJoinedByString:@"\n"];
              callbacks.version = 138543362;
              *(&callbacks.version + 1) = v65;
              _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &callbacks, 0xCu);
            }

            _NUAssertContinueHandler("CGImageRef newCGImageFromImage(__strong id<NUBufferImage>)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 325, @"newCGImageFromImage unsupported format: %@", v45, v46, v47, v48, format);
            goto LABEL_33;
          }

          v12 = 204806;
          v14 = 10;
          goto LABEL_17;
        }
      }

      v12 = 16385;
    }
  }

  v14 = 8;
LABEL_17:
  v13 = 32;
LABEL_18:
  v26 = [format alignedRowBytesForWidth:v7];
  layout = [immutableImageCopy layout];
  tileCount = [layout tileCount];

  if (tileCount == 1)
  {
    v29 = &xmmword_1F3F45968;
  }

  else
  {
    v29 = &xmmword_1F3F45990;
  }

  v30 = v29[1];
  *&callbacks.version = *v29;
  *&callbacks.releaseBytePointer = v30;
  callbacks.releaseInfo = *(v29 + 4);
  v31 = immutableImageCopy;
  v32 = CGDataProviderCreateDirect(v31, v26 * v9, &callbacks);
  if (!v32)
  {
LABEL_33:
    v34 = 0;
    goto LABEL_34;
  }

  colorSpace = [v31 colorSpace];
  v34 = CGImageCreate(v7, v9, v14, v13, v26, [colorSpace CGColorSpace], v12, v32, 0, 0, kCGRenderingIntentDefault);

  CGDataProviderRelease(v32);
LABEL_34:

  return v34;
}

+ (id)_newCIImageFromImage:(id)image
{
  v38 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v27;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageFactory _newCIImageFromImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 394, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "image != nil");
  }

  v4 = imageCopy;
  v32 = *MEMORY[0x1E695F9F8];
  null = [MEMORY[0x1E695DFB0] null];
  v33 = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  immutableImageCopy = [v4 immutableImageCopy];

  v8 = [[_NUImageCIProvider alloc] initWithImage:immutableImageCopy];
  v9 = [immutableImageCopy size];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E695F658]);
  format = [immutableImageCopy format];
  cIFormat = [format CIFormat];
  colorSpace = [immutableImageCopy colorSpace];
  v16 = [v12 initWithImageProvider:v8 size:v9 :v11 format:cIFormat colorSpace:objc_msgSend(colorSpace options:{"CGColorSpace"), v6}];

  return v16;
}

+ (id)bufferImageWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom
{
  v47 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  formatCopy = format;
  spaceCopy = space;
  if (!layoutCopy)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "layout != nil"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v31;
        v45 = 2114;
        v46 = v33;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = "layout != nil";
    v35 = 380;
LABEL_22:

    _NUAssertFailHandler("+[NUImageFactory bufferImageWithLayout:format:colorSpace:headroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", v35, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, v34);
  }

  if (!formatCopy)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v44 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v28 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v28)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v36;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v30;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = "format != nil";
    v35 = 381;
    goto LABEL_22;
  }

  v12 = [_NUBufferImage alloc];
  v13 = +[NUFactory sharedFactory];
  bufferFactory = [v13 bufferFactory];
  *&v15 = headroom;
  v16 = [(_NUImage *)v12 initWithLayout:layoutCopy format:formatCopy colorSpace:spaceCopy headroom:bufferFactory tileFactory:v15];

  [(_NUImage *)v16 beginAccess];

  return v16;
}

+ (id)bufferImageWithLayout:(id)layout format:(id)format colorSpace:(id)space
{
  v5 = [self bufferImageWithLayout:layout format:format colorSpace:space headroom:0.0];

  return v5;
}

+ (id)surfaceImageWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom
{
  v47 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  formatCopy = format;
  spaceCopy = space;
  if (!layoutCopy)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "layout != nil"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v31;
        v45 = 2114;
        v46 = v33;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = "layout != nil";
    v35 = 454;
LABEL_22:

    _NUAssertFailHandler("+[NUImageFactory(Private) surfaceImageWithLayout:format:colorSpace:headroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", v35, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, v34);
  }

  if (!formatCopy)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v44 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v28 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v28)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v36;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v30;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = "format != nil";
    v35 = 455;
    goto LABEL_22;
  }

  v12 = [_NUSurfaceImage alloc];
  v13 = +[NUFactory sharedFactory];
  surfaceFactory = [v13 surfaceFactory];
  *&v15 = headroom;
  v16 = [(_NUImage *)v12 initWithLayout:layoutCopy format:formatCopy colorSpace:spaceCopy headroom:surfaceFactory tileFactory:v15];

  [(_NUImage *)v16 beginAccess];

  return v16;
}

+ (id)surfaceImageWithLayout:(id)layout format:(id)format colorSpace:(id)space
{
  v5 = [self surfaceImageWithLayout:layout format:format colorSpace:space headroom:0.0];

  return v5;
}

@end