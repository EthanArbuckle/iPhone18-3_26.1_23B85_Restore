@interface NUImageUtilities
+ (int64_t)alignedRowBytesForWidth:(int64_t)a3 bytesPerPixel:(int64_t)a4;
+ (void)copyBuffer:(id)a3 rect:(id *)a4 toBuffer:(id)a5 atPoint:(id)a6;
+ (void)copyPixelsFromImage:(id)a3 atPoint:(id)a4 toBuffer:(id)a5;
+ (void)copyPixelsFromImage:(id)a3 rect:(id *)a4 destPtr:(void *)a5 destPtrRowBytes:(int64_t)a6;
+ (void)copyPixelsFromImage:(id)a3 srcRect:(id *)a4 destImage:(id)a5 destOrigin:(id)a6;
+ (void)copyPixelsFromSurfaceImage:(id)a3 atPoint:(id)a4 toBuffer:(id)a5;
+ (void)copyPixelsFromSurfaceImage:(id)a3 rect:(id *)a4 destPtr:(void *)a5 destPtrRowBytes:(int64_t)a6;
+ (void)copyPixelsToImage:(id)a3 atPoint:(id)a4 fromBuffer:(id)a5 inRect:(id *)a6;
+ (void)copyPixelsToImage:(id)a3 rect:(id *)a4 srcPtr:(const void *)a5 srcPtrRowBytes:(int64_t)a6;
+ (void)copySurfaceImage:(id)a3 toImage:(id)a4;
+ (void)copyTexture:(id)a3 fromRect:(id *)a4 toSurfaceImage:(id)a5 atPoint:(id)a6 withDevice:(id)a7;
+ (void)fillPixelsInBuffer:(id)a3 rect:(id *)a4 srcPixel:(const void *)a5;
+ (void)fillPixelsInImage:(id)a3 rect:(id *)a4 srcPixel:(const void *)a5;
+ (void)renderImage:(id)a3 toSurface:(id)a4 atPoint:(id)a5 withContext:(id)a6 andColorSpace:(id)a7;
@end

@implementation NUImageUtilities

+ (int64_t)alignedRowBytesForWidth:(int64_t)a3 bytesPerPixel:(int64_t)a4
{
  v51 = *MEMORY[0x1E69E9840];
  if (a3 <= 0)
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
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v32;
        v49 = 2114;
        v50 = v34;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities alignedRowBytesForWidth:bytesPerPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 311, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "width > 0");
  }

  v4 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
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
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
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
        v9 = [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = [v9 componentsJoinedByString:@"\n"];
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
        v40 = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v39;
        v49 = 2114;
        v50 = v41;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities alignedRowBytesForWidth:bytesPerPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 324, @"integer overflow detected", v42, v43, v44, v45, v46);
  }

  return result;
}

+ (void)renderImage:(id)a3 toSurface:(id)a4 atPoint:(id)a5 withContext:(id)a6 andColorSpace:(id)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v12)
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
        v42 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v41;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v43;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "image != nil";
    v45 = 286;
LABEL_29:

    _NUAssertFailHandler("+[NUImageUtilities renderImage:toSurface:atPoint:withContext:andColorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v45, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, v44);
  }

  if (!v14)
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
        v47 = [MEMORY[0x1E696AF00] callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v46;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v48;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v34;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "context != nil";
    v45 = 287;
    goto LABEL_29;
  }

  if (!v13)
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
        v50 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        LODWORD(v59.a) = 138543618;
        *(&v59.a + 4) = v49;
        WORD2(v59.b) = 2114;
        *(&v59.b + 6) = v51;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v59, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      LODWORD(v59.a) = 138543362;
      *(&v59.a + 4) = v40;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v59, 0xCu);
    }

    v44 = "surface != nil";
    v45 = 288;
    goto LABEL_29;
  }

  [v12 extent];
  v59.a = v16;
  v59.b = v17;
  v59.c = v18;
  v59.d = v19;
  NU::RectT<long>::RectT(v57, &v59, 0);
  v56 = v58;
  CGAffineTransformMakeTranslation(&v59, (var0 - v57[0]), (var1 - v57[1]));
  v20 = [v12 imageByApplyingTransform:&v59];

  v21 = [v20 imageByClampingToExtent];

  [v14 render:v21 toIOSurface:objc_msgSend(v13 bounds:"IOSurfaceRef") colorSpace:{objc_msgSend(v15, "CGColorSpace"), var0, var1, v56, *(&v56 + 1)}];
}

+ (void)copyTexture:(id)a3 fromRect:(id *)a4 toSurfaceImage:(id)a5 atPoint:(id)a6 withDevice:(id)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v81 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  if (!v13)
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
        v50 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "image != nil";
    v53 = 261;
LABEL_38:

    _NUAssertFailHandler("+[NUImageUtilities copyTexture:fromRect:toSurfaceImage:atPoint:withDevice:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v53, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, v52);
  }

  if (!v14)
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
        v55 = [MEMORY[0x1E696AF00] callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "device != nil";
    v53 = 262;
    goto LABEL_38;
  }

  if (!v12)
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
        v58 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "srcTexture != nil";
    v53 = 263;
    goto LABEL_38;
  }

  v16 = [v12 device];
  v17 = [v15 metalDevice];

  if (v16 != v17)
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
        v61 = [MEMORY[0x1E696AF00] callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = "srcTexture.device == device.metalDevice";
    v53 = 264;
    goto LABEL_38;
  }

  v18 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = v18;
  v79 = a4->var1;
  v77[0] = var0;
  v77[1] = var1;
  v78 = v79;
  v19 = [[NURegion alloc] initWithRect:v77];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __75__NUImageUtilities_copyTexture_fromRect_toSurfaceImage_atPoint_withDevice___block_invoke;
  v67[3] = &unk_1E810A3D8;
  v20 = v13;
  v68 = v20;
  v69 = v19;
  v21 = v15;
  v70 = v21;
  v72 = var0;
  v73 = var1;
  v74 = v79;
  v75 = *buf;
  v76 = *&buf[16];
  v22 = v12;
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

+ (void)copySurfaceImage:(id)a3 toImage:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 size];
  v10 = v9;
  if (v8 != [v7 size] || v10 != v11)
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
        v25 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities copySurfaceImage:toImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 250, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "NUPixelSizeEqualToSize(surfaceImage.size, image.size)");
  }

  v12 = [v7 size];
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
  v33 = a1;
  v16 = v7;
  v32 = v16;
  v34 = 0;
  v35 = 0;
  v36 = v12;
  v37 = v14;
  [v6 readBufferRegion:v15 withBlock:v31];
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

+ (void)copyPixelsFromImage:(id)a3 srcRect:(id *)a4 destImage:(id)a5 destOrigin:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = a3;
  v12 = a5;
  v13 = a4->var0.var0;
  v14 = a4->var0.var1;
  v35 = a4->var1;
  v15 = [v12 layout];
  v16 = [v15 imageSize];
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
  v25 = v16;
  v26 = v18;
  v27 = var0;
  v28 = var1;
  v29 = v35;
  v30 = var0 - v13;
  v31 = var1 - v14;
  v32 = a1;
  v20 = v11;
  v22 = v20;
  [v12 writeBufferRegion:v19 withBlock:v21];
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

+ (void)fillPixelsInBuffer:(id)a3 rect:(id *)a4 srcPixel:(const void *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v48 = a3;
  if (!v48)
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
        v34 = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "buffer != nil";
    v37 = 211;
LABEL_37:

    _NUAssertFailHandler("+[NUImageUtilities fillPixelsInBuffer:rect:srcPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v37, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, v36);
  }

  if (a4->var1.var0)
  {
    v7 = a4->var1.var1 == 0;
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
        v39 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "!NUPixelRectIsEmpty(rect)";
    v37 = 212;
    goto LABEL_37;
  }

  if (!a5)
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
        v42 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
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
  *&v51 = [v48 size];
  *(&v51 + 1) = v8;
  var0 = a4->var0;
  var1 = a4->var1;
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
    v11 = [v48 mutableBytes];
    v12 = [v48 rowBytes];
    v13 = [v48 format];
    nu::fill_rect<NUPixelRect>(v50, v11, v12, v49, a5, [v13 bytesPerPixel]);
  }
}

+ (void)fillPixelsInImage:(id)a3 rect:(id *)a4 srcPixel:(const void *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
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
        v37 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "image != nil";
    v40 = 193;
LABEL_32:

    _NUAssertFailHandler("+[NUImageUtilities fillPixelsInImage:rect:srcPixel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v40, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, v39);
  }

  if (a4->var1.var0)
  {
    v9 = a4->var1.var1 == 0;
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
        v42 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "!NUPixelRectIsEmpty(rect)";
    v40 = 194;
    goto LABEL_32;
  }

  if (!a5)
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
        v45 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = "srcPixel != nil";
    v40 = 195;
    goto LABEL_32;
  }

  v10 = [v7 layout];
  v11 = [v10 imageSize];
  v13 = v12;

  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  v15 = [NURegion regionWithRect:buf];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __52__NUImageUtilities_fillPixelsInImage_rect_srcPixel___block_invoke;
  v51[3] = &__block_descriptor_104_e35_v24__0___NUMutableBufferTile__8_B16l;
  v51[4] = 0;
  v51[5] = 0;
  v51[6] = v11;
  v51[7] = v13;
  v16 = a4->var1;
  var0 = a4->var0;
  v53 = v16;
  v54 = a5;
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

+ (void)copyPixelsToImage:(id)a3 atPoint:(id)a4 fromBuffer:(id)a5 inRect:(id *)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  v12 = a5;
  [a1 copyPixelsToImage:v11 rect:&v13 srcPtr:objc_msgSend(v12 srcPtrRowBytes:{"bytesAtPoint:", a6->var0.var0, a6->var0.var1, var0, var1, a6->var1.var0, a6->var1.var1), objc_msgSend(v12, "rowBytes")}];
}

+ (void)copyPixelsToImage:(id)a3 rect:(id *)a4 srcPtr:(const void *)a5 srcPtrRowBytes:(int64_t)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  if (!v9)
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
        v49 = [MEMORY[0x1E696AF00] callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "image != nil";
    v52 = 163;
LABEL_44:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsToImage:rect:srcPtr:srcPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v52, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, v51);
  }

  var0 = a4->var1.var0;
  if (var0)
  {
    v12 = a4->var1.var1 == 0;
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
        v54 = [MEMORY[0x1E696AF00] callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v55;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "!NUPixelRectIsEmpty(rect)";
    v52 = 164;
    goto LABEL_44;
  }

  if (!a5)
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
        v57 = [MEMORY[0x1E696AF00] callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v58;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "srcPtr != nil";
    v52 = 165;
    goto LABEL_44;
  }

  if (a6 >= 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = -a6;
  }

  v14 = [v9 format];
  v15 = [v14 bytesPerPixel] * var0;

  if (v15 > v13)
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
        v60 = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = "abs((int)srcPtrRowBytes) >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v52 = 166;
    goto LABEL_44;
  }

  v16 = [v10 layout];
  v17 = [v16 imageSize];
  v19 = v18;

  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  v21 = [NURegion regionWithRect:buf];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __65__NUImageUtilities_copyPixelsToImage_rect_srcPtr_srcPtrRowBytes___block_invoke;
  v66[3] = &__block_descriptor_112_e35_v24__0___NUMutableBufferTile__8_B16l;
  v66[4] = 0;
  v66[5] = 0;
  v66[6] = v17;
  v66[7] = v19;
  v22 = a4->var1;
  v67 = a4->var0;
  v68 = v22;
  v69 = a6;
  v70 = a5;
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

+ (void)copyPixelsFromSurfaceImage:(id)a3 atPoint:(id)a4 toBuffer:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = a5;
  v11 = [v10 size];
  [a1 copyPixelsFromSurfaceImage:v9 rect:&v13 destPtr:objc_msgSend(v10 destPtrRowBytes:{"mutableBytes", var0, var1, v11, v12), objc_msgSend(v10, "rowBytes")}];
}

+ (void)copyPixelsFromSurfaceImage:(id)a3 rect:(id *)a4 destPtr:(void *)a5 destPtrRowBytes:(int64_t)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  if (!v9)
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
        v48 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "image != nil";
    v51 = 132;
LABEL_41:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsFromSurfaceImage:rect:destPtr:destPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v51, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, v50);
  }

  var0 = a4->var1.var0;
  if (var0)
  {
    v12 = a4->var1.var1 == 0;
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
        v53 = [MEMORY[0x1E696AF00] callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "!NUPixelRectIsEmpty(rect)";
    v51 = 133;
    goto LABEL_41;
  }

  if (!a5)
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
        v56 = [MEMORY[0x1E696AF00] callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v57;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "destPtr != nil";
    v51 = 134;
    goto LABEL_41;
  }

  v13 = [v9 format];
  v14 = [v13 bytesPerPixel] * var0;

  if (v14 > a6)
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
        v59 = [MEMORY[0x1E696AF00] callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v51 = 135;
    goto LABEL_41;
  }

  v15 = [v10 layout];
  v16 = [v15 imageSize];
  v18 = v17;

  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  v20 = [NURegion regionWithRect:buf];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __76__NUImageUtilities_copyPixelsFromSurfaceImage_rect_destPtr_destPtrRowBytes___block_invoke;
  v65[3] = &__block_descriptor_112_e28_v24__0___NUBufferTile__8_B16l;
  v65[4] = 0;
  v65[5] = 0;
  v65[6] = v16;
  v65[7] = v18;
  v21 = a4->var1;
  v66 = a4->var0;
  v67 = v21;
  v68 = a6;
  v69 = a5;
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

+ (void)copyPixelsFromImage:(id)a3 atPoint:(id)a4 toBuffer:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = a5;
  v11 = [v10 size];
  [a1 copyPixelsFromImage:v9 rect:&v13 destPtr:objc_msgSend(v10 destPtrRowBytes:{"mutableBytes", var0, var1, v11, v12), objc_msgSend(v10, "rowBytes")}];
}

+ (void)copyBuffer:(id)a3 rect:(id *)a4 toBuffer:(id)a5 atPoint:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v186 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  if (!v11)
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
        v127 = [MEMORY[0x1E696AF00] callStackSymbols];
        v128 = [v127 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v126;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v128;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v69)
    {
      v70 = [MEMORY[0x1E696AF00] callStackSymbols];
      v71 = [v70 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v71;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "srcBuffer != nil";
    v130 = 78;
LABEL_121:

    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v130, @"Invalid parameter not satisfying: %s", v158, v159, v160, v161, v129);
  }

  if (a4->var0.var0 < 0)
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
        v132 = [MEMORY[0x1E696AF00] callStackSymbols];
        v133 = [v132 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v131;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v133;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v75)
    {
      v76 = [MEMORY[0x1E696AF00] callStackSymbols];
      v77 = [v76 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v77;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.x >= 0";
    v130 = 79;
    goto LABEL_121;
  }

  v14 = a4->var1.var0;
  v13 = a4->var0.var0;
  if (v14 + v13 > [v11 size])
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
        v135 = [MEMORY[0x1E696AF00] callStackSymbols];
        v136 = [v135 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v134;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v136;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v81)
    {
      v82 = [MEMORY[0x1E696AF00] callStackSymbols];
      v83 = [v82 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v83;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.x + rect.size.width <= srcBuffer.size.width";
    v130 = 80;
    goto LABEL_121;
  }

  v15 = a4->var0.var1;
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
        v138 = [MEMORY[0x1E696AF00] callStackSymbols];
        v139 = [v138 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v137;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v139;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v87)
    {
      v88 = [MEMORY[0x1E696AF00] callStackSymbols];
      v89 = [v88 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v89;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y >= 0";
    v130 = 81;
    goto LABEL_121;
  }

  v16 = a4->var1.var1;
  [v11 size];
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
        v141 = [MEMORY[0x1E696AF00] callStackSymbols];
        v142 = [v141 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v140;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v142;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v93)
    {
      v94 = [MEMORY[0x1E696AF00] callStackSymbols];
      v95 = [v94 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v95;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y + rect.size.height <= srcBuffer.size.height";
    v130 = 82;
    goto LABEL_121;
  }

  if (!v12)
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
        v144 = [MEMORY[0x1E696AF00] callStackSymbols];
        v145 = [v144 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v143;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v145;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v99)
    {
      v100 = [MEMORY[0x1E696AF00] callStackSymbols];
      v101 = [v100 componentsJoinedByString:@"\n"];
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
        v147 = [MEMORY[0x1E696AF00] callStackSymbols];
        v148 = [v147 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v146;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v148;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v105)
    {
      v106 = [MEMORY[0x1E696AF00] callStackSymbols];
      v107 = [v106 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v107;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.x >= 0";
    v130 = 84;
    goto LABEL_121;
  }

  v18 = a4->var1.var0;
  if (v18 + var0 > [v12 size])
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
        v150 = [MEMORY[0x1E696AF00] callStackSymbols];
        v151 = [v150 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v149;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v151;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v111)
    {
      v112 = [MEMORY[0x1E696AF00] callStackSymbols];
      v113 = [v112 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v113;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.x + rect.size.width <= dstBuffer.size.width";
    v130 = 85;
    goto LABEL_121;
  }

  if (a4->var0.var1 < 0)
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
        v153 = [MEMORY[0x1E696AF00] callStackSymbols];
        v154 = [v153 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v152;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v154;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v117)
    {
      v118 = [MEMORY[0x1E696AF00] callStackSymbols];
      v119 = [v118 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v119;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "rect.origin.y >= 0";
    v130 = 86;
    goto LABEL_121;
  }

  v19 = a4->var1.var1;
  [v12 size];
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
        v156 = [MEMORY[0x1E696AF00] callStackSymbols];
        v157 = [v156 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v155;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v157;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v123)
    {
      v124 = [MEMORY[0x1E696AF00] callStackSymbols];
      v125 = [v124 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v125;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    v129 = "point.y + rect.size.height <= dstBuffer.size.height";
    v130 = 87;
    goto LABEL_121;
  }

  v21 = [v11 format];
  v22 = [v12 format];
  v23 = [v21 isEqualToPixelFormat:v22];

  if (v23)
  {
    v25 = a4->var1.var0;
    v24 = a4->var1.var1;
    v26 = [v11 format];
    v27 = [v26 bytesPerPixel];
    v28 = [v11 bytes];
    v29 = [v11 rowBytes];
    v30 = [v12 mutableBytes];
    v31 = [v12 rowBytes];
    if (v25 && v24)
    {
      v32 = v31;
      v33 = v27 * v25;
      do
      {
        memcpy(v30, v28, v33);
        v28 += v29;
        v30 += v32;
        --v24;
      }

      while (v24);
    }

    goto LABEL_25;
  }

  src.data = [v11 bytesAtPoint:{a4->var0.var0, a4->var0.var1}];
  v34.i64[0] = 0xFFFFFFFFLL;
  v34.i64[1] = 0xFFFFFFFFLL;
  v35 = vandq_s8(a4->var1, v34);
  *&src.height = vextq_s8(v35, v35, 8uLL);
  src.rowBytes = [v11 rowBytes];
  dest.data = [v12 mutableBytesAtPoint:{var0, var1}];
  v36.i64[0] = 0xFFFFFFFFLL;
  v36.i64[1] = 0xFFFFFFFFLL;
  v37 = vandq_s8(a4->var1, v36);
  *&dest.height = vextq_s8(v37, v37, 8uLL);
  dest.rowBytes = [v12 rowBytes];
  v38 = [v11 format];
  v39 = +[NUPixelFormat BGRA8];
  v40 = [v38 isEqualToPixelFormat:v39];
  v41 = v40;
  if (!v40 || ([v12 format], v21 = objc_claimAutoreleasedReturnValue(), +[NUPixelFormat RGBA8](NUPixelFormat, "RGBA8"), v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v21, "isEqualToPixelFormat:", v6) & 1) == 0))
  {
    v177 = v11;
    v178 = v12;
    v42 = [v11 format];
    v43 = +[NUPixelFormat RGBA8];
    if ([v42 isEqualToPixelFormat:v43])
    {
      v44 = [v178 format];
      v45 = +[NUPixelFormat BGRA8];
      v46 = [v44 isEqualToPixelFormat:v45];

      if (v41)
      {
      }

      v11 = v177;
      v12 = v178;
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

      v11 = v177;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v47 = _NUAssertLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = MEMORY[0x1E696AEC0];
      v49 = [v11 format];
      v50 = [v178 format];
      v51 = [v48 stringWithFormat:@"Unsupported pixel format conversion from %@ to %@", v49, v50];
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
        v58 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v182 = v57;
        v183 = 2114;
        v184 = v59;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v54)
    {
      v55 = [MEMORY[0x1E696AF00] callStackSymbols];
      v56 = [v55 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v182 = v56;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v60 = [v11 format];
    [v178 format];
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 118, @"Unsupported pixel format conversion from %@ to %@", v61, v62, v63, v64, v60);
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
        v170 = [MEMORY[0x1E696AF00] callStackSymbols];
        v171 = [v170 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v182 = v169;
        v183 = 2114;
        v184 = v171;
        _os_log_error_impl(&dword_1C0184000, v165, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v166)
    {
      v167 = [MEMORY[0x1E696AF00] callStackSymbols];
      v168 = [v167 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v182 = v168;
      _os_log_error_impl(&dword_1C0184000, v165, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUImageUtilities copyBuffer:rect:toBuffer:atPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 114, @"Failed to convert image data", v172, v173, v174, v175, v176);
  }

LABEL_25:
}

+ (void)copyPixelsFromImage:(id)a3 rect:(id *)a4 destPtr:(void *)a5 destPtrRowBytes:(int64_t)a6
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  if (!v9)
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
        v55 = [MEMORY[0x1E696AF00] callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "image != nil";
    v58 = 37;
LABEL_45:

    _NUAssertFailHandler("+[NUImageUtilities copyPixelsFromImage:rect:destPtr:destPtrRowBytes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v58, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, v57);
  }

  var0 = a4->var1.var0;
  if (var0)
  {
    v12 = a4->var1.var1 == 0;
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
        v60 = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "!NUPixelRectIsEmpty(rect)";
    v58 = 38;
    goto LABEL_45;
  }

  if (!a5)
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
        v63 = [MEMORY[0x1E696AF00] callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v64;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "destPtr != nil";
    v58 = 39;
    goto LABEL_45;
  }

  v13 = [v9 format];
  v14 = [v13 bytesPerPixel] * var0;

  if (v14 > a6)
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
        v66 = [MEMORY[0x1E696AF00] callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v53;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = "destPtrRowBytes >= (NUWidth(rect) * [[image format] bytesPerPixel])";
    v58 = 40;
    goto LABEL_45;
  }

  v15 = [v10 layout];
  v16 = [v15 imageSize];
  v18 = v17;

  *&v19 = v16;
  *(&v19 + 1) = v18;
  v20 = a4->var0;
  var1 = a4->var1;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v19;
  v83[0] = v20;
  v83[1] = var1;
  NU::RectT<long>::Intersection(v82, buf, v83);
  v72 = v82[1];
  v73 = v82[0];
  v22 = [v10 validRegion];
  *buf = v73;
  *&buf[16] = v72;
  v23 = [v22 regionByClippingToRect:buf];
  v24 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = v24;
  v25 = [NURegion regionWithRect:buf];
  v26 = [v23 isEqualToRegion:v25];

  if ((v26 & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    v27 = [v10 format];
    nu::fill_rect<NUPixelRect>(&a4->var0.var0, a5, a6, &a4->var0.var0, buf, [v27 bytesPerPixel]);
  }

  if (([v23 isEmpty] & 1) == 0)
  {
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __69__NUImageUtilities_copyPixelsFromImage_rect_destPtr_destPtrRowBytes___block_invoke;
    v74[3] = &unk_1E810A2D8;
    v76 = v73;
    v77 = v72;
    v75 = v22;
    v28 = a4->var1;
    v78 = a4->var0;
    v79 = v28;
    v80 = a6;
    v81 = a5;
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