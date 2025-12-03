@interface NUImageUtilities
+ (int64_t)alignedRowBytesForWidth:(int64_t)width bytesPerPixel:(int64_t)pixel;
+ (void)copyBuffer:(id)buffer rect:(id *)rect toBuffer:(id)toBuffer atPoint:(id)point;
+ (void)copyPixelsFromImage:(id)image atPoint:(id)point toBuffer:(id)buffer;
+ (void)copyPixelsFromImage:(id)image rect:(id *)rect destPtr:(void *)ptr destPtrRowBytes:(int64_t)bytes;
+ (void)copyPixelsFromImage:(id)image srcRect:(id *)rect destImage:(id)destImage destOrigin:(id)origin;
+ (void)copyPixelsFromSurfaceImage:(id)image atPoint:(id)point toBuffer:(id)buffer;
+ (void)copyPixelsFromSurfaceImage:(id)image rect:(id *)rect destPtr:(void *)ptr destPtrRowBytes:(int64_t)bytes;
+ (void)copyPixelsToImage:(id)image atPoint:(id)point fromBuffer:(id)buffer inRect:(id *)rect;
+ (void)copyPixelsToImage:(id)image rect:(id *)rect srcPtr:(const void *)ptr srcPtrRowBytes:(int64_t)bytes;
+ (void)copySurfaceImage:(id)image toImage:(id)toImage;
+ (void)copyTexture:(id)texture fromRect:(id *)rect toSurfaceImage:(id)image atPoint:(id)point withDevice:(id)device;
+ (void)fillPixelsInBuffer:(id)buffer rect:(id *)rect srcPixel:(const void *)pixel;
+ (void)fillPixelsInImage:(id)image rect:(id *)rect srcPixel:(const void *)pixel;
+ (void)renderImage:(id)image toSurface:(id)surface atPoint:(id)point withContext:(id)context andColorSpace:(id)space;
@end

@implementation NUImageUtilities

+ (int64_t)alignedRowBytesForWidth:(int64_t)width bytesPerPixel:(int64_t)pixel
{
  v51 = *MEMORY[0x1E69E9840];
  if (width <= 0)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "width > 0"];
      *buf = 138543362;
      v48 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v32;
        v49 = 2114;
        v50 = v34;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities alignedRowBytesForWidth:bytesPerPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 311, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "width > 0");
  }

  v4 = width * pixel;
  if ((width * pixel) >> 64 != (width * pixel) >> 63)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v6 = _NUAssertLogger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"integer overflow detected"];
      *buf = 138543362;
      v48 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
      }

      v8 = _NUAssertLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v11;
        v49 = 2114;
        v50 = v13;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
      }

      v8 = _NUAssertLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v10;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    _NUAssertFailHandler("+[NUImageUtilities alignedRowBytesForWidth:bytesPerPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 317, @"integer overflow detected", v14, v15, v16, v17, v46);
  }

  result = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result < v4)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"integer overflow detected"];
      *buf = 138543362;
      v48 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v39;
        v49 = 2114;
        v50 = v41;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities alignedRowBytesForWidth:bytesPerPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 324, @"integer overflow detected", v42, v43, v44, v45, v46);
  }

  return result;
}

+ (void)renderImage:(id)image toSurface:(id)surface atPoint:(id)point withContext:(id)context andColorSpace:(id)space
{
  var1 = point.var1;
  var0 = point.var0;
  v60 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  surfaceCopy = surface;
  contextCopy = context;
  spaceCopy = space;
  if (!imageCopy)
  {
    v22 = NUAssertLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v59, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v41;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v43;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "image != nil";
    v45 = 286;
LABEL_29:

    _NUAssertFailHandler("+[NUImageUtilities renderImage:toSurface:atPoint:withContext:andColorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v45, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, v44);
  }

  if (!contextCopy)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v59, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v32 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v32)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v46;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v48;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v34;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "context != nil";
    v45 = 287;
    goto LABEL_29;
  }

  if (!surfaceCopy)
  {
    v35 = NUAssertLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v59, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v38 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v38)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v49;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v51;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v40;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "surface != nil";
    v45 = 288;
    goto LABEL_29;
  }

  [imageCopy extent];
  v59.a = v16;
  v59.b = v17;
  v59.c = v18;
  v59.d = v19;
  NU::RectT<long>::RectT(v57, &v59, 0);
  v56 = v58;
  CGAffineTransformMakeTranslation(&v59, (var0 - v57[0]), (var1 - v57[1]));
  v20 = [imageCopy imageByApplyingTransform:&v59];

  imageByClampingToExtent = [v20 imageByClampingToExtent];

  [contextCopy render:imageByClampingToExtent toIOSurface:objc_msgSend(surfaceCopy bounds:"IOSurfaceRef") colorSpace:{objc_msgSend(spaceCopy, "CGColorSpace"), var0, var1, v56, *(&v56 + 1)}];
}

+ (void)copyTexture:(id)texture fromRect:(id *)rect toSurfaceImage:(id)image atPoint:(id)point withDevice:(id)device
{
  var1 = point.var1;
  var0 = point.var0;
  v81 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  imageCopy = image;
  deviceCopy = device;
  v15 = deviceCopy;
  if (!imageCopy)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "image != nil";
    v53 = 261;
LABEL_38:

    _NUAssertFailHandler("+[NUImageUtilities copyTexture:fromRect:toSurfaceImage:atPoint:withDevice:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v53, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, v52);
  }

  if (!deviceCopy)
  {
    v31 = NUAssertLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v34 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v34)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v56 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "device != nil";
    v53 = 262;
    goto LABEL_38;
  }

  if (!textureCopy)
  {
    v37 = NUAssertLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcTexture != nil"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v40 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v40)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "srcTexture != nil";
    v53 = 263;
    goto LABEL_38;
  }

  device = [textureCopy device];
  metalDevice = [v15 metalDevice];

  if (device != metalDevice)
  {
    v43 = NUAssertLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcTexture.device == device.metalDevice"];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v46 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v46)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v62 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "srcTexture.device == device.metalDevice";
    v53 = 264;
    goto LABEL_38;
  }

  v18 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = v18;
  v79 = rect->var1;
  v77[0] = var0;
  v77[1] = var1;
  v78 = v79;
  v19 = [[NURegion alloc] initWithRect:v77];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __75__NUImageUtilities_copyTexture_fromRect_toSurfaceImage_atPoint_withDevice___block_invoke;
  v67[3] = &unk_1E810A3D8;
  v20 = imageCopy;
  v68 = v20;
  v69 = v19;
  v21 = v15;
  v70 = v21;
  v72 = var0;
  v73 = var1;
  v74 = v79;
  v75 = *buf;
  v76 = *&buf[16];
  v22 = textureCopy;
  v71 = v22;
  v23 = v19;
  [v21 executeMetal:v67];
}

void __75__NUImageUtilities_copyTexture_fromRect_toSurfaceImage_atPoint_withDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__NUImageUtilities_copyTexture_fromRect_toSurfaceImage_atPoint_withDevice___block_invoke_2;
  v10[3] = &unk_1E810A3B0;
  v7 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = v7;
  v8 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v8;
  v11 = *(a1 + 56);
  v12 = v3;
  v9 = v3;
  [v4 writeTextureRegion:v5 device:v6 withBlock:v10];
}

void __75__NUImageUtilities_copyTexture_fromRect_toSurfaceImage_atPoint_withDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0uLL;
  v15 = 0u;
  v16 = 0u;
  v6 = 0uLL;
  if (v3)
  {
    [v3 frameRect];
    v6 = v15;
    v5 = v16;
  }

  v7 = *(a1 + 64);
  v12 = *(a1 + 48);
  *v13 = v7;
  v18 = v6;
  v19 = v5;
  NU::RectT<long>::Intersection(v17, v12.i64, &v18);
  v8 = v15;
  v9 = *(a1 + 32);
  v11 = v17[0];
  v12 = vaddq_s64(vsubq_s64(v17[0], *(a1 + 48)), *(a1 + 80));
  *v13 = 0;
  *&v13[8] = v17[1];
  v14 = 1;
  v10 = [v4 texture];
  *&v18 = v11.i64[0] - v8;
  *(&v18 + 1) = v11.i64[1] - *(&v8 + 1);
  *&v19 = 0;
  [NUCopyKernel copyFromTexture:v9 region:&v12 toTexture:v10 atPoint:&v18 withCommandBuffer:*(a1 + 40)];
}

+ (void)copySurfaceImage:(id)image toImage:(id)toImage
{
  v40 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  toImageCopy = toImage;
  v8 = [imageCopy size];
  v10 = v9;
  if (v8 != [toImageCopy size] || v10 != v11)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeEqualToSize(surfaceImage.size, image.size)"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities copySurfaceImage:toImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 250, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "NUPixelSizeEqualToSize(surfaceImage.size, image.size)");
  }

  v12 = [toImageCopy size];
  v14 = v13;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v12;
  v39 = v13;
  v15 = [NURegion regionWithRect:buf];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __45__NUImageUtilities_copySurfaceImage_toImage___block_invoke;
  v31[3] = &unk_1E810A388;
  selfCopy = self;
  v16 = toImageCopy;
  v32 = v16;
  v34 = 0;
  v35 = 0;
  v36 = v12;
  v37 = v14;
  [imageCopy readBufferRegion:v15 withBlock:v31];
}

void __45__NUImageUtilities_copySurfaceImage_toImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    [v3 frameRect];
    v7 = *(&v12 + 1);
    v8 = v12;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  v9 = [v4 buffer];
  v10 = *(a1 + 64);
  v11[0] = *(a1 + 48);
  v11[1] = v10;
  [v5 copyPixelsToImage:v6 atPoint:v8 fromBuffer:v7 inRect:{v9, v11}];
}

+ (void)copyPixelsFromImage:(id)image srcRect:(id *)rect destImage:(id)destImage destOrigin:(id)origin
{
  var1 = origin.var1;
  var0 = origin.var0;
  imageCopy = image;
  destImageCopy = destImage;
  v13 = rect->var0.var0;
  v14 = rect->var0.var1;
  v35 = rect->var1;
  layout = [destImageCopy layout];
  imageSize = [layout imageSize];
  v18 = v17;

  v33[0] = var0;
  v33[1] = var1;
  v34 = v35;
  v19 = [NURegion regionWithRect:v33];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__NUImageUtilities_copyPixelsFromImage_srcRect_destImage_destOrigin___block_invoke;
  v21[3] = &unk_1E810A360;
  v23 = 0;
  v24 = 0;
  v25 = imageSize;
  v26 = v18;
  v27 = var0;
  v28 = var1;
  v29 = v35;
  v30 = var0 - v13;
  v31 = var1 - v14;
  selfCopy = self;
  v20 = imageCopy;
  v22 = v20;
  [destImageCopy writeBufferRegion:v19 withBlock:v21];
}

void __69__NUImageUtilities_copyPixelsFromImage_srcRect_destImage_destOrigin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v17 = *(a1 + 56);
  v19 = *(a1 + 40);
  if (v3)
  {
    [v3 frameRect];
    v6 = v21;
    v5 = v22;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  v27 = v6;
  v28 = v5;
  v25 = v7;
  v26 = v8;
  NU::RectT<long>::Intersection(&v23, v27.i64, v25.i64);
  v27 = v19;
  v28 = v17;
  v25 = v23;
  v26 = v24;
  NU::RectT<long>::Intersection(&v23, v27.i64, v25.i64);
  if (v24 && *(&v24 + 1))
  {
    v18 = v24;
    v20 = v23;
    v9 = [v4 mutableBuffer];
    v10 = [v9 format];
    v11 = [v10 bytesPerPixel];

    if (v4)
    {
      [v4 frameRect];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v12 = [v9 rowBytes];
    v13 = [v9 mutableBytes];
    v14 = v27;
    v15 = *(a1 + 120);
    v16 = *(a1 + 32);
    v27 = vsubq_s64(v20, *(a1 + 104));
    v28 = v18;
    [v15 copyPixelsFromImage:v16 rect:&v27 destPtr:v13 + (v20.i64[1] - v14.i64[1]) * v12 + (v20.i64[0] - v14.i64[0]) * v11 destPtrRowBytes:{objc_msgSend(v9, "rowBytes")}];
  }
}

+ (void)fillPixelsInBuffer:(id)buffer rect:(id *)rect srcPixel:(const void *)pixel
{
  v56 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    v14 = NUAssertLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "buffer != nil";
    v37 = 211;
LABEL_37:

    _NUAssertFailHandler("+[NUImageUtilities fillPixelsInBuffer:rect:srcPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v37, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, v36);
  }

  if (rect->var1.var0)
  {
    v7 = rect->var1.var1 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = NUAssertLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelRectIsEmpty(rect)"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v24 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v24)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "!NUPixelRectIsEmpty(rect)";
    v37 = 212;
    goto LABEL_37;
  }

  if (!pixel)
  {
    v27 = NUAssertLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcPixel != nil"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v30 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v30)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "srcPixel != nil";
    v37 = 213;
    goto LABEL_37;
  }

  v50[0] = 0;
  v50[1] = 0;
  *&v51 = [bufferCopy size];
  *(&v51 + 1) = v8;
  var0 = rect->var0;
  var1 = rect->var1;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v51;
  v54[0] = var0;
  v54[1] = var1;
  NU::RectT<long>::Intersection(&v52, buf, v54);
  v49[0] = v52;
  v49[1] = v53;
  if (v53 && *(&v53 + 1))
  {
    mutableBytes = [bufferCopy mutableBytes];
    rowBytes = [bufferCopy rowBytes];
    format = [bufferCopy format];
    nu::fill_rect<NUPixelRect>(v50, mutableBytes, rowBytes, v49, pixel, [format bytesPerPixel]);
  }
}

+ (void)fillPixelsInImage:(id)image rect:(id *)rect srcPixel:(const void *)pixel
{
  v56 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v8 = imageCopy;
  if (!imageCopy)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "image != nil";
    v40 = 193;
LABEL_32:

    _NUAssertFailHandler("+[NUImageUtilities fillPixelsInImage:rect:srcPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v40, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, v39);
  }

  if (rect->var1.var0)
  {
    v9 = rect->var1.var1 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelRectIsEmpty(rect)"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
    v27 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v27)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "!NUPixelRectIsEmpty(rect)";
    v40 = 194;
    goto LABEL_32;
  }

  if (!pixel)
  {
    v30 = NUAssertLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcPixel != nil"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
    v33 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v33)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "srcPixel != nil";
    v40 = 195;
    goto LABEL_32;
  }

  layout = [imageCopy layout];
  imageSize = [layout imageSize];
  v13 = v12;

  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  v15 = [NURegion regionWithRect:buf];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __52__NUImageUtilities_fillPixelsInImage_rect_srcPixel___block_invoke;
  v51[3] = &__block_descriptor_104_e35_v24__0___NUMutableBufferTile__8_B16l;
  v51[4] = 0;
  v51[5] = 0;
  v51[6] = imageSize;
  v51[7] = v13;
  v16 = rect->var1;
  var0 = rect->var0;
  v53 = v16;
  pixelCopy = pixel;
  [v8 writeBufferRegion:v15 withBlock:v51];
}

void __52__NUImageUtilities_fillPixelsInImage_rect_srcPixel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v3)
  {
    [v3 frameRect];
    v6 = v16;
    v5 = v17;
  }

  else
  {
    v5 = 0uLL;
    v16 = 0u;
    v17 = 0u;
    v6 = 0uLL;
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v24 = v6;
  v25 = v5;
  v22 = v7;
  v23 = v8;
  NU::RectT<long>::Intersection(&v20, &v24, &v22);
  v24 = v15;
  v25 = v14;
  v22 = v20;
  v23 = v21;
  NU::RectT<long>::Intersection(&v20, &v24, &v22);
  v18 = v20;
  v19 = v21;
  if (v21 && *(&v21 + 1))
  {
    v9 = [v4 mutableBuffer];
    if (v4)
    {
      [v4 frameRect];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v10 = [v9 mutableBytes];
    v11 = [v9 rowBytes];
    v12 = *(a1 + 96);
    v13 = [v9 format];
    nu::fill_rect<NUPixelRect>(&v24, v10, v11, &v18, v12, [v13 bytesPerPixel]);
  }
}

+ (void)copyPixelsToImage:(id)image atPoint:(id)point fromBuffer:(id)buffer inRect:(id *)rect
{
  var1 = point.var1;
  var0 = point.var0;
  imageCopy = image;
  bufferCopy = buffer;
  [self copyPixelsToImage:imageCopy rect:&v13 srcPtr:objc_msgSend(bufferCopy srcPtrRowBytes:{"bytesAtPoint:", rect->var0.var0, rect->var0.var1, var0, var1, rect->var1.var0, rect->var1.var1), objc_msgSend(bufferCopy, "rowBytes")}];
}

+ (void)copyPixelsToImage:(id)image rect:(id *)rect srcPtr:(const void *)ptr srcPtrRowBytes:(int64_t)bytes
{
  v72 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v10 = imageCopy;
  if (!imageCopy)
  {
    v23 = NUAssertLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "image != nil";
    v52 = 163;
LABEL_44:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsToImage:rect:srcPtr:srcPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v52, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, v51);
  }

  var0 = rect->var1.var0;
  if (var0)
  {
    v12 = rect->var1.var1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v30 = NUAssertLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelRectIsEmpty(rect)"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v33 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v33)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v55 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v55;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "!NUPixelRectIsEmpty(rect)";
    v52 = 164;
    goto LABEL_44;
  }

  if (!ptr)
  {
    v36 = NUAssertLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcPtr != nil"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v39 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v39)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v58;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "srcPtr != nil";
    v52 = 165;
    goto LABEL_44;
  }

  if (bytes >= 0)
  {
    bytesCopy = bytes;
  }

  else
  {
    bytesCopy = -bytes;
  }

  format = [imageCopy format];
  v15 = [format bytesPerPixel] * var0;

  if (v15 > bytesCopy)
  {
    v42 = NUAssertLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "abs((int)srcPtrRowBytes) >= (NUWidth(rect) * [[image format] bytesPerPixel])"];
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v45 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v45)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "abs((int)srcPtrRowBytes) >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v52 = 166;
    goto LABEL_44;
  }

  layout = [v10 layout];
  imageSize = [layout imageSize];
  v19 = v18;

  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  v21 = [NURegion regionWithRect:buf];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __65__NUImageUtilities_copyPixelsToImage_rect_srcPtr_srcPtrRowBytes___block_invoke;
  v66[3] = &__block_descriptor_112_e35_v24__0___NUMutableBufferTile__8_B16l;
  v66[4] = 0;
  v66[5] = 0;
  v66[6] = imageSize;
  v66[7] = v19;
  v22 = rect->var1;
  v67 = rect->var0;
  v68 = v22;
  bytesCopy2 = bytes;
  ptrCopy = ptr;
  [v10 writeBufferRegion:v21 withBlock:v66];
}

void __65__NUImageUtilities_copyPixelsToImage_rect_srcPtr_srcPtrRowBytes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v28 = *(a1 + 48);
  v30 = *(a1 + 32);
  if (v3)
  {
    [v3 frameRect];
    v6 = v32;
    v5 = v33;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v38 = v6;
  v39 = v5;
  v36 = v7;
  v37 = v8;
  NU::RectT<long>::Intersection(&v34, &v38, &v36);
  v38 = v30;
  v39 = v28;
  v36 = v34;
  v37 = v35;
  NU::RectT<long>::Intersection(&v34, &v38, &v36);
  v9 = v35;
  if (v35)
  {
    v10 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v29 = v34;
      v11 = [v4 mutableBuffer];
      v31 = v11;
      v12 = [v11 format];
      v13 = [v12 bytesPerPixel];

      v26 = *(a1 + 104);
      v27 = *(a1 + 96);
      v14 = *(a1 + 72);
      v25 = *(a1 + 64);
      if (v4)
      {
        [v4 frameRect];
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v24 = [v11 rowBytes];
      v15 = [v11 mutableBytes];
      v16 = v11;
      v18 = *(&v38 + 1);
      v17 = v38;
      v19 = *(a1 + 96);
      v20 = [v16 rowBytes];
      v21 = (v26 + (*(&v29 + 1) - v14) * v27 + (v29 - v25) * v13);
      v22 = (v15 + (*(&v29 + 1) - v18) * v24 + (v29 - v17) * v13);
      v23 = v9 * v13;
      do
      {
        memcpy(v22, v21, v23);
        v21 += v19;
        v22 += v20;
        --v10;
      }

      while (v10);
    }
  }
}

+ (void)copyPixelsFromSurfaceImage:(id)image atPoint:(id)point toBuffer:(id)buffer
{
  var1 = point.var1;
  var0 = point.var0;
  imageCopy = image;
  bufferCopy = buffer;
  v11 = [bufferCopy size];
  [self copyPixelsFromSurfaceImage:imageCopy rect:&v13 destPtr:objc_msgSend(bufferCopy destPtrRowBytes:{"mutableBytes", var0, var1, v11, v12), objc_msgSend(bufferCopy, "rowBytes")}];
}

+ (void)copyPixelsFromSurfaceImage:(id)image rect:(id *)rect destPtr:(void *)ptr destPtrRowBytes:(int64_t)bytes
{
  v71 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v10 = imageCopy;
  if (!imageCopy)
  {
    v22 = NUAssertLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "image != nil";
    v51 = 132;
LABEL_41:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsFromSurfaceImage:rect:destPtr:destPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v51, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, v50);
  }

  var0 = rect->var1.var0;
  if (var0)
  {
    v12 = rect->var1.var1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelRectIsEmpty(rect)"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v32 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v32)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "!NUPixelRectIsEmpty(rect)";
    v51 = 133;
    goto LABEL_41;
  }

  if (!ptr)
  {
    v35 = NUAssertLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destPtr != nil"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v38 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v38)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v57 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v57;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "destPtr != nil";
    v51 = 134;
    goto LABEL_41;
  }

  format = [imageCopy format];
  v14 = [format bytesPerPixel] * var0;

  if (v14 > bytes)
  {
    v41 = NUAssertLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v44 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v44)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v60 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v51 = 135;
    goto LABEL_41;
  }

  layout = [v10 layout];
  imageSize = [layout imageSize];
  v18 = v17;

  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  v20 = [NURegion regionWithRect:buf];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __76__NUImageUtilities_copyPixelsFromSurfaceImage_rect_destPtr_destPtrRowBytes___block_invoke;
  v65[3] = &__block_descriptor_112_e28_v24__0___NUBufferTile__8_B16l;
  v65[4] = 0;
  v65[5] = 0;
  v65[6] = imageSize;
  v65[7] = v18;
  v21 = rect->var1;
  v66 = rect->var0;
  v67 = v21;
  bytesCopy = bytes;
  ptrCopy = ptr;
  [v10 readBufferRegion:v20 withBlock:v65];
}

void __76__NUImageUtilities_copyPixelsFromSurfaceImage_rect_destPtr_destPtrRowBytes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v29 = *(a1 + 48);
  v31 = *(a1 + 32);
  if (v3)
  {
    [v3 contentRect];
    v6 = v33;
    v5 = v34;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v39 = v6;
  v40 = v5;
  v37 = v7;
  v38 = v8;
  NU::RectT<long>::Intersection(&v35, &v39, &v37);
  v39 = v31;
  v40 = v29;
  v37 = v35;
  v38 = v36;
  NU::RectT<long>::Intersection(&v35, &v39, &v37);
  v9 = v36;
  if (v36)
  {
    v10 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      v30 = v35;
      v28 = v4;
      v11 = [v4 buffer];
      v32 = v11;
      v12 = [v11 format];
      v13 = [v12 bytesPerPixel];

      v27 = v9;
      if (v4)
      {
        [v4 frameRect];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v26 = [v11 rowBytes];
      v25 = [v11 bytes];
      v14 = v11;
      v15 = *(&v39 + 1);
      v16 = v39;
      v18 = *(a1 + 96);
      v17 = *(a1 + 104);
      v20 = *(a1 + 64);
      v19 = *(a1 + 72);
      v21 = [v14 rowBytes];
      v22 = (v17 + (*(&v30 + 1) - v19) * v18 + (v30 - v20) * v13);
      v23 = (v25 + (*(&v30 + 1) - v15) * v26 + (v30 - v16) * v13);
      v24 = *(a1 + 96);
      do
      {
        memcpy(v22, v23, v27 * v13);
        v23 += v21;
        v22 += v24;
        --v10;
      }

      while (v10);

      v4 = v28;
    }
  }
}

+ (void)copyPixelsFromImage:(id)image atPoint:(id)point toBuffer:(id)buffer
{
  var1 = point.var1;
  var0 = point.var0;
  imageCopy = image;
  bufferCopy = buffer;
  v11 = [bufferCopy size];
  [self copyPixelsFromImage:imageCopy rect:&v13 destPtr:objc_msgSend(bufferCopy destPtrRowBytes:{"mutableBytes", var0, var1, v11, v12), objc_msgSend(bufferCopy, "rowBytes")}];
}

+ (void)copyBuffer:(id)buffer rect:(id *)rect toBuffer:(id)toBuffer atPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  v186 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  if (!bufferCopy)
  {
    v65 = NUAssertLogger();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcBuffer != nil"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v66;
      _os_log_error_impl(&dword_1C0184000, v65, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v69)
      {
        v126 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v128 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v126;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v128;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v69)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v71 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v71;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "srcBuffer != nil";
    v130 = 78;
LABEL_121:

    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v130, @"Invalid parameter not satisfying: %s", v158, v159, v160, v161, v129);
  }

  if (rect->var0.var0 < 0)
  {
    v72 = NUAssertLogger();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rect.origin.x >= 0"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v73;
      _os_log_error_impl(&dword_1C0184000, v72, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v75 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v74)
    {
      if (v75)
      {
        v131 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v133 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v131;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v133;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v75)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v77 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v77;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.x >= 0";
    v130 = 79;
    goto LABEL_121;
  }

  v14 = rect->var1.var0;
  v13 = rect->var0.var0;
  if (v14 + v13 > [bufferCopy size])
  {
    v78 = NUAssertLogger();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rect.origin.x + rect.size.width <= srcBuffer.size.width"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v79;
      _os_log_error_impl(&dword_1C0184000, v78, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v80 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v81 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v80)
    {
      if (v81)
      {
        v134 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v136 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v134;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v136;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v81)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v83 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v83;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.x + rect.size.width <= srcBuffer.size.width";
    v130 = 80;
    goto LABEL_121;
  }

  v15 = rect->var0.var1;
  if (v15 < 0)
  {
    v84 = NUAssertLogger();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rect.origin.y >= 0"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v85;
      _os_log_error_impl(&dword_1C0184000, v84, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v86 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v87 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v86)
    {
      if (v87)
      {
        v137 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v139 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v137;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v139;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v87)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v89 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v89;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y >= 0";
    v130 = 81;
    goto LABEL_121;
  }

  v16 = rect->var1.var1;
  [bufferCopy size];
  if (v16 + v15 > v17)
  {
    v90 = NUAssertLogger();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rect.origin.y + rect.size.height <= srcBuffer.size.height"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v91;
      _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v92 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v93 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v92)
    {
      if (v93)
      {
        v140 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols9 = [MEMORY[0x1E696AF00] callStackSymbols];
        v142 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v140;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v142;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v93)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v95 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v95;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y + rect.size.height <= srcBuffer.size.height";
    v130 = 82;
    goto LABEL_121;
  }

  if (!toBufferCopy)
  {
    v96 = NUAssertLogger();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dstBuffer != nil"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v97;
      _os_log_error_impl(&dword_1C0184000, v96, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v98 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v99 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v98)
    {
      if (v99)
      {
        v143 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v145 = [callStackSymbols11 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v143;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v145;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v99)
    {
      callStackSymbols12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v101 = [callStackSymbols12 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v101;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "dstBuffer != nil";
    v130 = 83;
    goto LABEL_121;
  }

  if (var0 < 0)
  {
    v102 = NUAssertLogger();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.x >= 0"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v103;
      _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v104 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v105 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v104)
    {
      if (v105)
      {
        v146 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v148 = [callStackSymbols13 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v146;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v148;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v105)
    {
      callStackSymbols14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v107 = [callStackSymbols14 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v107;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.x >= 0";
    v130 = 84;
    goto LABEL_121;
  }

  v18 = rect->var1.var0;
  if (v18 + var0 > [toBufferCopy size])
  {
    v108 = NUAssertLogger();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.x + rect.size.width <= dstBuffer.size.width"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v109;
      _os_log_error_impl(&dword_1C0184000, v108, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v110 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v111 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v110)
    {
      if (v111)
      {
        v149 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v151 = [callStackSymbols15 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v149;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v151;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v111)
    {
      callStackSymbols16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v113 = [callStackSymbols16 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v113;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.x + rect.size.width <= dstBuffer.size.width";
    v130 = 85;
    goto LABEL_121;
  }

  if (rect->var0.var1 < 0)
  {
    v114 = NUAssertLogger();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rect.origin.y >= 0"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v115;
      _os_log_error_impl(&dword_1C0184000, v114, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v116 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v117 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v116)
    {
      if (v117)
      {
        v152 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v154 = [callStackSymbols17 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v152;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v154;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v117)
    {
      callStackSymbols18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v119 = [callStackSymbols18 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v119;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y >= 0";
    v130 = 86;
    goto LABEL_121;
  }

  v19 = rect->var1.var1;
  [toBufferCopy size];
  if (v19 + var1 > v20)
  {
    v120 = NUAssertLogger();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.y + rect.size.height <= dstBuffer.size.height"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v121;
      _os_log_error_impl(&dword_1C0184000, v120, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v122 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger();
    v123 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v122)
    {
      if (v123)
      {
        v155 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols19 = [MEMORY[0x1E696AF00] callStackSymbols];
        v157 = [callStackSymbols19 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v155;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v157;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v123)
    {
      callStackSymbols20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v125 = [callStackSymbols20 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v125;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.y + rect.size.height <= dstBuffer.size.height";
    v130 = 87;
    goto LABEL_121;
  }

  format = [bufferCopy format];
  format2 = [toBufferCopy format];
  v23 = [format isEqualToPixelFormat:format2];

  if (v23)
  {
    v25 = rect->var1.var0;
    v24 = rect->var1.var1;
    format3 = [bufferCopy format];
    bytesPerPixel = [format3 bytesPerPixel];
    bytes = [bufferCopy bytes];
    rowBytes = [bufferCopy rowBytes];
    mutableBytes = [toBufferCopy mutableBytes];
    rowBytes2 = [toBufferCopy rowBytes];
    if (v25 && v24)
    {
      v32 = rowBytes2;
      v33 = bytesPerPixel * v25;
      do
      {
        memcpy(mutableBytes, bytes, v33);
        bytes += rowBytes;
        mutableBytes += v32;
        --v24;
      }

      while (v24);
    }

    goto LABEL_25;
  }

  src.data = [bufferCopy bytesAtPoint:{rect->var0.var0, rect->var0.var1}];
  v34.i64[0] = 0xFFFFFFFFLL;
  v34.i64[1] = 0xFFFFFFFFLL;
  v35 = vandq_s8(rect->var1, v34);
  *&src.height = vextq_s8(v35, v35, 8uLL);
  src.rowBytes = [bufferCopy rowBytes];
  dest.data = [toBufferCopy mutableBytesAtPoint:{var0, var1}];
  v36.i64[0] = 0xFFFFFFFFLL;
  v36.i64[1] = 0xFFFFFFFFLL;
  v37 = vandq_s8(rect->var1, v36);
  *&dest.height = vextq_s8(v37, v37, 8uLL);
  dest.rowBytes = [toBufferCopy rowBytes];
  format4 = [bufferCopy format];
  v39 = +[NUPixelFormat BGRA8];
  v40 = [format4 isEqualToPixelFormat:v39];
  v41 = v40;
  if (!v40 || ([toBufferCopy format], format = objc_claimAutoreleasedReturnValue(), +[NUPixelFormat RGBA8](NUPixelFormat, "RGBA8"), v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(format, "isEqualToPixelFormat:", v6) & 1) == 0))
  {
    v177 = bufferCopy;
    v178 = toBufferCopy;
    format5 = [bufferCopy format];
    v43 = +[NUPixelFormat RGBA8];
    if ([format5 isEqualToPixelFormat:v43])
    {
      format6 = [v178 format];
      v45 = +[NUPixelFormat BGRA8];
      v46 = [format6 isEqualToPixelFormat:v45];

      if (v41)
      {
      }

      bufferCopy = v177;
      toBufferCopy = v178;
      if (v46)
      {
        goto LABEL_24;
      }
    }

    else
    {

      if (v41)
      {
      }

      bufferCopy = v177;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v47 = _NUAssertLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = MEMORY[0x1E696AEC0];
      format7 = [bufferCopy format];
      format8 = [v178 format];
      v51 = [v48 stringWithFormat:@"Unsupported pixel format conversion from %@ to %@", format7, format8];
      *buf = 138543362;
      v182 = v51;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v53 = _NUAssertLogger;
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      if (v54)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols21 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [callStackSymbols21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v182 = v57;
        v183 = 2114;
        v184 = v59;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v54)
    {
      callStackSymbols22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v56 = [callStackSymbols22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v182 = v56;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    format9 = [bufferCopy format];
    [v178 format];
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 118, @"Unsupported pixel format conversion from %@ to %@", v61, v62, v63, v64, format9);
  }

LABEL_24:
  *permuteMap = 50331906;
  if (vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0))
  {
    v162 = NUAssertLogger();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
    {
      v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to convert image data"];
      *buf = 138543362;
      v182 = v163;
      _os_log_error_impl(&dword_1C0184000, v162, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v164 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v165 = NUAssertLogger();
    v166 = os_log_type_enabled(v165, OS_LOG_TYPE_ERROR);
    if (v164)
    {
      if (v166)
      {
        v169 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v171 = [callStackSymbols23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v182 = v169;
        v183 = 2114;
        v184 = v171;
        _os_log_error_impl(&dword_1C0184000, v165, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v166)
    {
      callStackSymbols24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v168 = [callStackSymbols24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v182 = v168;
      _os_log_error_impl(&dword_1C0184000, v165, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 114, @"Failed to convert image data", v172, v173, v174, v175, v176);
  }

LABEL_25:
}

+ (void)copyPixelsFromImage:(id)image rect:(id *)rect destPtr:(void *)ptr destPtrRowBytes:(int64_t)bytes
{
  v85 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v10 = imageCopy;
  if (!imageCopy)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "image != nil";
    v58 = 37;
LABEL_45:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsFromImage:rect:destPtr:destPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v58, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, v57);
  }

  var0 = rect->var1.var0;
  if (var0)
  {
    v12 = rect->var1.var1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v36 = NUAssertLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelRectIsEmpty(rect)"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v39 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v39)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "!NUPixelRectIsEmpty(rect)";
    v58 = 38;
    goto LABEL_45;
  }

  if (!ptr)
  {
    v42 = NUAssertLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destPtr != nil"];
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v45 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v45)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v64 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v64;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "destPtr != nil";
    v58 = 39;
    goto LABEL_45;
  }

  format = [imageCopy format];
  v14 = [format bytesPerPixel] * var0;

  if (v14 > bytes)
  {
    v48 = NUAssertLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])"];
      *buf = 138543362;
      *&buf[4] = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v51 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v51)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v67 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v53;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v58 = 40;
    goto LABEL_45;
  }

  layout = [v10 layout];
  imageSize = [layout imageSize];
  v18 = v17;

  *&v19 = imageSize;
  *(&v19 + 1) = v18;
  v20 = rect->var0;
  var1 = rect->var1;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v19;
  v83[0] = v20;
  v83[1] = var1;
  NU::RectT<long>::Intersection(v82, buf, v83);
  v72 = v82[1];
  v73 = v82[0];
  validRegion = [v10 validRegion];
  *buf = v73;
  *&buf[16] = v72;
  v23 = [validRegion regionByClippingToRect:buf];
  v24 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = v24;
  v25 = [NURegion regionWithRect:buf];
  v26 = [v23 isEqualToRegion:v25];

  if ((v26 & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    format2 = [v10 format];
    nu::fill_rect<NUPixelRect>(&rect->var0.var0, ptr, bytes, &rect->var0.var0, buf, [format2 bytesPerPixel]);
  }

  if (([v23 isEmpty] & 1) == 0)
  {
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __69__NUImageUtilities_copyPixelsFromImage_rect_destPtr_destPtrRowBytes___block_invoke;
    v74[3] = &unk_1E810A2D8;
    v76 = v73;
    v77 = v72;
    v75 = validRegion;
    v28 = rect->var1;
    v78 = rect->var0;
    v79 = v28;
    bytesCopy = bytes;
    ptrCopy = ptr;
    [v10 readBufferRegion:v23 withBlock:v74];
  }
}

void __69__NUImageUtilities_copyPixelsFromImage_rect_destPtr_destPtrRowBytes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 contentRect];
    v6 = v20;
    v5 = v21;
  }

  else
  {
    v5 = 0uLL;
    v20 = 0u;
    v21 = 0u;
    v6 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v24 = v6;
  v25 = v5;
  v23[0] = v7;
  v23[1] = v8;
  NU::RectT<long>::Intersection(v22, &v24, v23);
  v9 = *(a1 + 32);
  v24 = v22[0];
  v25 = v22[1];
  v10 = [v9 regionByClippingToRect:&v24];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__NUImageUtilities_copyPixelsFromImage_rect_destPtr_destPtrRowBytes___block_invoke_2;
  v14[3] = &unk_1E810A2B0;
  v11 = v4;
  v15 = v11;
  v12 = *(a1 + 88);
  v16 = *(a1 + 72);
  v17 = v12;
  v13 = *(a1 + 112);
  v18 = *(a1 + 104);
  v19 = v13;
  [v10 enumerateRects:v14];
}

void __69__NUImageUtilities_copyPixelsFromImage_rect_destPtr_destPtrRowBytes___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) buffer];
  v5 = [v4 format];
  v6 = [v5 bytesPerPixel];

  v7 = *(a1 + 32);
  v23 = v6;
  if (v7)
  {
    [v7 frameRect];
  }

  else
  {
    v24 = 0u;
  }

  v22 = [v4 rowBytes];
  v21 = [v4 bytes];
  v8 = *a2;
  v9 = a2[1];
  v19 = *(a1 + 80);
  v20 = *(a1 + 72);
  v10 = *(a1 + 48);
  v18 = *(a1 + 40);
  v12 = a2[2];
  v11 = a2[3];
  v13 = [v4 rowBytes];
  if (v12 && v11)
  {
    v14 = v13;
    v15 = (v21 + (v9 - *(&v24 + 1)) * v22 + (v8 - v24) * v6);
    v16 = (v19 + (v9 - v10) * v20 + (v8 - v18) * v6);
    v17 = *(a1 + 72);
    do
    {
      memcpy(v16, v15, v12 * v23);
      v15 += v14;
      v16 += v17;
      --v11;
    }

    while (v11);
  }
}

@end