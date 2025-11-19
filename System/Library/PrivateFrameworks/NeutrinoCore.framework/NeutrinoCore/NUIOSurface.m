@interface NUIOSurface
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)makeNonPurgeable;
- (BOOL)read:(id)a3;
- (BOOL)write:(id)a3;
- (CGColorSpace)colorSpace;
- (NSString)name;
- (NUIOSurface)init;
- (NUIOSurface)initWithIOSurface:(__IOSurface *)a3;
- (NUIOSurface)initWithSize:(id)a3 format:(id)a4;
- (__CVBuffer)pixelBuffer;
- (float)contentHeadroom;
- (id)_newTextureForDevice:(id)a3;
- (id)_purgeStateDescription;
- (id)description;
- (id)newRenderDestination;
- (id)textureForDevice:(id)a3;
- (int)_fetchPurgeState:(unsigned int *)a3;
- (unsigned)_purgeLevelToOSValue:(int64_t)a3;
- (void)_allocateSurface;
- (void)dealloc;
- (void)debugDump:(id)a3;
- (void)invalidatePixelBuffer;
- (void)makePurgeable:(int64_t)a3;
- (void)setColorSpace:(CGColorSpace *)a3;
- (void)setContentHeadroom:(float)a3;
- (void)setName:(id)a3;
@end

@implementation NUIOSurface

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (void)debugDump:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696DFC0]];
  v6 = CGImageCreateFromIOSurface();
  if (v6)
  {
    v7 = v6;
    v8 = +[NUGlobalSettings tempDir];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    v10 = [v4 stringByAppendingPathExtension:@"tiff"];
    v11 = [v8 stringByAppendingPathComponent:v10];

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    v13 = [*MEMORY[0x1E6983008] identifier];
    v14 = CGImageDestinationCreateWithURL(v12, v13, 1uLL, 0);

    CGImageDestinationAddImage(v14, v7, 0);
    if (CGImageDestinationFinalize(v14))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_158);
      }

      v15 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v11;
      v16 = "Dumped IOSurface: %@ to: %@";
      v17 = v15;
      v18 = 22;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_158);
      }

      v20 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = 138412290;
      v22 = self;
      v16 = "Failed to dump IOSurface: %@";
      v17 = v20;
      v18 = 12;
    }

    _os_log_impl(&dword_1C0184000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
LABEL_16:
    CFRelease(v14);
    CFRelease(v7);

    goto LABEL_17;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_158);
  }

  v19 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = self;
    _os_log_impl(&dword_1C0184000, v19, OS_LOG_TYPE_DEFAULT, "Failed to create CGImage from IOSurface: %@", &v21, 0xCu);
  }

LABEL_17:
}

- (void)invalidatePixelBuffer
{
  obj = self;
  objc_sync_enter(obj);
  CVPixelBufferRelease(obj->_pixelBuffer);
  obj->_pixelBuffer = 0;
  objc_sync_exit(obj);
}

- (__CVBuffer)pixelBuffer
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  pixelBufferOut = v2->_pixelBuffer;
  v3 = pixelBufferOut;
  objc_sync_exit(v2);

  if (!pixelBufferOut)
  {
    if (CVPixelBufferCreateWithIOSurface(0, v2->_IOSurfaceRef, 0, &pixelBufferOut))
    {
      v6 = NUAssertLogger_14382();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer from IOSUrface"];
        *buf = 138543362;
        v26 = v7;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v9 = NUAssertLogger_14382();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v10)
        {
          v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v14 = MEMORY[0x1E696AF00];
          v15 = v13;
          v16 = [v14 callStackSymbols];
          v17 = [v16 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = v13;
          v27 = 2114;
          v28 = v17;
          v18 = v17;
          _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v10)
      {
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v26 = v12;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUIOSurface pixelBuffer]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 383, @"Failed to create pixel buffer from IOSUrface", v19, v20, v21, v22, v23);
    }

    v4 = v2;
    objc_sync_enter(v4);
    CVPixelBufferRelease(v2->_pixelBuffer);
    v2->_pixelBuffer = pixelBufferOut;
    objc_sync_exit(v4);

    return pixelBufferOut;
  }

  return v3;
}

- (id)_newTextureForDevice:(id)a3
{
  v4 = MEMORY[0x1E69741C0];
  format = self->_format;
  v6 = a3;
  v7 = [v4 texture2DDescriptorWithPixelFormat:-[NUPixelFormat metalFormat](format width:"metalFormat") height:self->_size.width mipmapped:self->_size.height, 0];
  [v7 setUsage:3];
  v8 = [v6 newTextureWithDescriptor:v7 iosurface:-[NUIOSurface IOSurfaceRef](self plane:{"IOSurfaceRef"), 0}];

  return v8;
}

- (id)textureForDevice:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v16 = NUAssertLogger_14382();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_14382();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface textureForDevice:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 348, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "device != nil");
  }

  v5 = v4;
  v6 = self;
  objc_sync_enter(v6);
  textures = v6->_textures;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "registryID")}];
  v9 = [(NSMutableDictionary *)textures objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  if (!v9)
  {
    v9 = [(NUIOSurface *)v6 _newTextureForDevice:v5];
    v10 = v6;
    objc_sync_enter(v10);
    v11 = v6->_textures;
    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = v6->_textures;
      v6->_textures = v12;

      v11 = v6->_textures;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "registryID")}];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v14];

    objc_sync_exit(v10);
  }

  return v9;
}

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  v4 = [(NUIOSurface *)self IOSurface];
  v5 = [v3 initWithIOSurface:v4];

  [v5 setLabel:@"NUIOSurface-new"];
  return v5;
}

- (BOOL)write:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v54 = NUAssertLogger_14382();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v71 = v55;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v57 = NUAssertLogger_14382();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v58)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        v64 = [v62 callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v61;
        v72 = 2114;
        v73 = v65;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface write:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 312, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "block != nil");
  }

  v5 = v4;
  v6 = 0;
  if (IOSurfaceLock(self->_IOSurfaceRef, 0, 0))
  {
    goto LABEL_34;
  }

  BaseAddress = IOSurfaceGetBaseAddress(self->_IOSurfaceRef);
  v6 = BaseAddress != 0;
  if (BaseAddress)
  {
    v8 = [[NUMutableBufferAdapter alloc] initWithSize:self->_size.width format:self->_size.height rowBytes:self->_format mutableBytes:IOSurfaceGetBytesPerRow(self->_IOSurfaceRef), BaseAddress];
    (v5)[2](v5, v8);
    [(NUBufferAdapter *)v8 invalidate];

    goto LABEL_19;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
  }

  v9 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = [v10 stringWithFormat:@"Invalid surface data: %@", self];
    *buf = 138543362;
    v71 = v12;
    _os_log_impl(&dword_1C0184000, v11, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }

      goto LABEL_12;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
    }

LABEL_16:
    v25 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v50 = MEMORY[0x1E696AF00];
      v51 = v25;
      v52 = [v50 callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v53;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    goto LABEL_16;
  }

LABEL_12:
  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = v19;
    v22 = v14;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v71 = v19;
    v72 = 2114;
    v73 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_18:
  _NUAssertContinueHandler("[NUIOSurface write:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 322, @"Invalid surface data: %@", v15, v16, v17, v18, self);
LABEL_19:
  v26 = IOSurfaceUnlock(self->_IOSurfaceRef, 0, 0);
  if (v26)
  {
    v27 = v26;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
    }

    v28 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = v28;
      v31 = [v29 stringWithFormat:@"%@ failed to unlock: %d", self, v27];
      *buf = 138543362;
      v71 = v31;
      _os_log_impl(&dword_1C0184000, v30, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v32 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v32 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
        }

        goto LABEL_27;
      }

      if (v32 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_27:
      v33 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = v33;
        v42 = [v39 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v38;
        v72 = 2114;
        v73 = v43;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_33:
      _NUAssertContinueHandler("[NUIOSurface write:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 332, @"%@ failed to unlock: %d", v34, v35, v36, v37, self);
      goto LABEL_34;
    }

    v44 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v46 = MEMORY[0x1E696AF00];
      v47 = v44;
      v48 = [v46 callStackSymbols];
      v49 = [v48 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v49;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_34:

  return v6;
}

- (BOOL)read:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v54 = NUAssertLogger_14382();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v71 = v55;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v57 = NUAssertLogger_14382();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v58)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        v64 = [v62 callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v61;
        v72 = 2114;
        v73 = v65;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface read:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 284, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "block != nil");
  }

  v5 = v4;
  if (!IOSurfaceLock(self->_IOSurfaceRef, 1u, 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(self->_IOSurfaceRef);
    v6 = BaseAddress != 0;
    if (BaseAddress)
    {
      v8 = [[NUBufferAdapter alloc] initWithSize:self->_size.width format:self->_size.height rowBytes:self->_format bytes:IOSurfaceGetBytesPerRow(self->_IOSurfaceRef), BaseAddress];
      (v5)[2](v5, v8);
      [(NUBufferAdapter *)v8 invalidate];

      goto LABEL_20;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = v9;
      v12 = [v10 stringWithFormat:@"Invalid surface data: %@", self];
      *buf = 138543362;
      v71 = v12;
      _os_log_impl(&dword_1C0184000, v11, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v13 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v13 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
        }

        goto LABEL_13;
      }

      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_13:
      v14 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = v14;
        v23 = [v20 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v19;
        v72 = 2114;
        v73 = v24;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_19:
      _NUAssertContinueHandler("[NUIOSurface read:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 294, @"Invalid surface data: %@", v15, v16, v17, v18, self);
LABEL_20:
      v26 = IOSurfaceUnlock(self->_IOSurfaceRef, 1u, 0);
      if (!v26)
      {
        goto LABEL_35;
      }

      v27 = v26;
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }

      v28 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = v28;
        v31 = [v29 stringWithFormat:@"%@ failed to unlock: %d", self, v27];
        *buf = 138543362;
        v71 = v31;
        _os_log_impl(&dword_1C0184000, v30, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

        v32 = _NULogOnceToken;
        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (v32 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
          }

          goto LABEL_28;
        }

        if (v32 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
        }
      }

      else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
LABEL_28:
        v33 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v39 = MEMORY[0x1E696AF00];
          v40 = v38;
          v41 = v33;
          v42 = [v39 callStackSymbols];
          v43 = [v42 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v71 = v38;
          v72 = 2114;
          v73 = v43;
          _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

LABEL_34:
        _NUAssertContinueHandler("[NUIOSurface read:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 304, @"%@ failed to unlock: %d", v34, v35, v36, v37, self);
        goto LABEL_35;
      }

      v44 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v46 = MEMORY[0x1E696AF00];
        v47 = v44;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v71 = v49;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v25 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v50 = MEMORY[0x1E696AF00];
      v51 = v25;
      v52 = [v50 callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v53;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v6 = 0;
LABEL_35:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  size = self->_size;
  format = self->_format;
  v6 = [(NUIOSurface *)self colorSpace];
  v7 = [(NUIOSurface *)self _purgeStateDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p size:%dx%d format:%@ colorSpace:%@ purgeable:%@>", v4, self, size, format, v6, v7];

  return v8;
}

- (unsigned)_purgeLevelToOSValue:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 33;
  }

  else
  {
    return dword_1C03C2A70[a3 - 1];
  }
}

- (id)_purgeStateDescription
{
  v3 = 0;
  if ([(NUIOSurface *)self _fetchPurgeState:&v3])
  {
    return @"Purgeable (Error)";
  }

  if (v3 > 2)
  {
    return @"Purgeable (Unknown)";
  }

  return off_1E810A450[v3];
}

- (int)_fetchPurgeState:(unsigned int *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = IOSurfaceSetPurgeable(self->_IOSurfaceRef, 3u, a3);
  if (v4)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
    }

    v5 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"%@ failed to read purgeable: %d", self, v4];
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v9 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v9 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
        }

        goto LABEL_9;
      }

      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v10 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = specific;
        v18 = v10;
        v19 = [v16 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = specific;
        v29 = 2114;
        v30 = v20;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUIOSurface _fetchPurgeState:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 218, @"%@ failed to read purgeable: %d", v11, v12, v13, v14, self);
      return v4;
    }

    v21 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v21;
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  return v4;
}

- (BOOL)makeNonPurgeable
{
  v27 = *MEMORY[0x1E69E9840];
  oldState = 0;
  v3 = IOSurfaceSetPurgeable(self->_IOSurfaceRef, 0, &oldState);
  if (v3)
  {
    v5 = v3;
    v6 = NUAssertLogger_14382();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to set non volatile state: %d", self, v5];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_14382();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface makeNonPurgeable]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 197, @"%@ failed to set non volatile state: %d", v18, v19, v20, v21, self);
  }

  return oldState != 2;
}

- (void)makePurgeable:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = IOSurfaceSetPurgeable(self->_IOSurfaceRef, [(NUIOSurface *)self _purgeLevelToOSValue:a3], 0);
  if (v4)
  {
    v5 = v4;
    v6 = NUAssertLogger_14382();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to set volatile state: %d", self, v5];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_14382();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface makePurgeable:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 190, @"%@ failed to set volatile state: %d", v18, v19, v20, v21, self);
  }
}

- (void)setContentHeadroom:(float)a3
{
  if (a3 >= 1.0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    IOSurfaceSetValue(self->_IOSurfaceRef, *MEMORY[0x1E696CEF0], v6);
  }

  else
  {
    IOSurfaceRef = self->_IOSurfaceRef;
    v5 = *MEMORY[0x1E696CEF0];

    IOSurfaceRemoveValue(IOSurfaceRef, v5);
  }
}

- (float)contentHeadroom
{
  v2 = IOSurfaceCopyValue(self->_IOSurfaceRef, *MEMORY[0x1E696CEF0]);
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  if (a3)
  {
    v4 = CGColorSpaceCopyPropertyList(a3);
    if (v4)
    {
      v5 = v4;
      IOSurfaceSetValue(self->_IOSurfaceRef, *MEMORY[0x1E696CEE0], v4);

      CFRelease(v5);
    }
  }

  else
  {
    IOSurfaceRef = self->_IOSurfaceRef;
    v7 = *MEMORY[0x1E696CEE0];

    IOSurfaceRemoveValue(IOSurfaceRef, v7);
  }
}

- (CGColorSpace)colorSpace
{
  result = IOSurfaceCopyValue(self->_IOSurfaceRef, *MEMORY[0x1E696CEE0]);
  if (result)
  {
    v3 = result;
    v4 = CGColorSpaceCreateWithPropertyList(result);
    v5 = CFAutorelease(v4);
    CFRelease(v3);
    return v5;
  }

  return result;
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  IOSurfaceSetValue(self->_IOSurfaceRef, *MEMORY[0x1E696CF98], v4);
}

- (NSString)name
{
  v2 = IOSurfaceCopyValue(self->_IOSurfaceRef, *MEMORY[0x1E696CF98]);
  v3 = [v2 copy];

  return v3;
}

- (void)dealloc
{
  IOSurfaceRef = self->_IOSurfaceRef;
  if (IOSurfaceRef)
  {
    CFRelease(IOSurfaceRef);
  }

  v4.receiver = self;
  v4.super_class = NUIOSurface;
  [(NUIOSurface *)&v4 dealloc];
}

- (void)_allocateSurface
{
  v77[5] = *MEMORY[0x1E69E9840];
  if ([(NUPixelFormat *)self->_format isYCC])
  {
    v3 = [(NUPixelFormat *)self->_format chromaSubsampling];
    width = self->_size.width;
    v5 = (v3 + width - 1) / v3;
    v7 = (v6 + self->_size.height - 1) / v6;
    v48 = v5;
    v8 = [NUImageUtilities alignedRowBytesForWidth:width bytesPerPixel:[(NUPixelFormat *)self->_format bytesPerLuma]];
    v9 = self->_size.height * v8;
    v45 = v9;
    v10 = [NUImageUtilities alignedRowBytesForWidth:v5 bytesPerPixel:[(NUPixelFormat *)self->_format bytesPerChroma]];
    v53 = v10 * v7;
    v76[0] = *MEMORY[0x1E696D130];
    v59 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.width];
    v77[0] = v59;
    v76[1] = *MEMORY[0x1E696CF58];
    v57 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.height];
    v77[1] = v57;
    v76[2] = *MEMORY[0x1E696CFC0];
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NUPixelFormat CVPixelFormat](self->_format, "CVPixelFormat")}];
    v77[2] = v47;
    v76[3] = *MEMORY[0x1E696D0A8];
    v68 = *MEMORY[0x1E696D0C8];
    v11 = v68;
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.width];
    v74[0] = v55;
    v69 = *MEMORY[0x1E696D090];
    v12 = v69;
    v58 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.height];
    v74[1] = v58;
    v70 = *MEMORY[0x1E696CFE0];
    v13 = v70;
    v56 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUPixelFormat bytesPerLuma](self->_format, "bytesPerLuma")}];
    v74[2] = v56;
    v71 = *MEMORY[0x1E696CFE8];
    v14 = v71;
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v74[3] = v54;
    v72 = *MEMORY[0x1E696D0B8];
    v15 = v72;
    v52 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v73 = *MEMORY[0x1E696D0B0];
    v16 = v73;
    v74[4] = v52;
    v74[5] = &unk_1F3F823C8;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v68 count:6];
    v75[0] = v51;
    v66[0] = v11;
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
    v67[0] = v49;
    v66[1] = v12;
    v50 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v67[1] = v50;
    v66[2] = v13;
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUPixelFormat bytesPerChroma](self->_format, "bytesPerChroma")}];
    v67[2] = v46;
    v66[3] = v14;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v67[3] = v17;
    v66[4] = v15;
    v18 = v47;
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v53];
    v67[4] = v19;
    v66[5] = v16;
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
    v67[5] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:6];
    v75[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
    v77[3] = v22;
    v76[4] = *MEMORY[0x1E696CE30];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v53 + v45];
    v77[4] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:5];

    v25 = v57;
    v26 = v59;

    v27 = v55;
  }

  else
  {
    v64[0] = *MEMORY[0x1E696D130];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.width];
    v65[0] = v26;
    v64[1] = *MEMORY[0x1E696CF58];
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_size.height];
    v65[1] = v25;
    v64[2] = *MEMORY[0x1E696CFC0];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NUPixelFormat CVPixelFormat](self->_format, "CVPixelFormat")}];
    v65[2] = v18;
    v64[3] = *MEMORY[0x1E696CE50];
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUPixelFormat bytesPerPixel](self->_format, "bytesPerPixel")}];
    v65[3] = v27;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:4];
  }

  v28 = IOSurfaceCreate(v24);
  self->_IOSurfaceRef = v28;
  if (!v28)
  {
    v29 = NUAssertLogger_14382();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create IOSurface with properties: %@ and NUPixelFormat:%@", v24, self->_format];
      *buf = 138543362;
      v61 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_14382();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v36;
        v62 = 2114;
        v63 = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface _allocateSurface]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 117, @"Failed to create IOSurface with properties: %@ and NUPixelFormat:%@", v41, v42, v43, v44, v24);
  }
}

- (NUIOSurface)initWithIOSurface:(__IOSurface *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = NUAssertLogger_14382();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != NULL"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_14382();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface initWithIOSurface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 51, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "surface != NULL");
  }

  v25.receiver = self;
  v25.super_class = NUIOSurface;
  v4 = [(NUIOSurface *)&v25 init];
  v5 = CFRetain(a3);
  v4->_IOSurfaceRef = v5;
  v4->_size.width = IOSurfaceGetWidth(v5);
  v4->_size.height = IOSurfaceGetHeight(v4->_IOSurfaceRef);
  v6 = [NUPixelFormat pixelFormatForCVPixelFormat:IOSurfaceGetPixelFormat(v4->_IOSurfaceRef)];
  format = v4->_format;
  v4->_format = v6;

  return v4;
}

- (NUIOSurface)initWithSize:(id)a3 format:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v49 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (var0 < 1 || var1 <= 0)
  {
    v12 = NUAssertLogger_14382();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "size.width > 0 && size.height > 0"];
      *buf = 138543362;
      v46 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_14382();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 36, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "size.width > 0 && size.height > 0");
  }

  v8 = v7;
  if (!v7)
  {
    v19 = NUAssertLogger_14382();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v46 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_14382();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurface initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 37, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "format != nil");
  }

  v44.receiver = self;
  v44.super_class = NUIOSurface;
  v9 = [(NUIOSurface *)&v44 init];
  v9->_size.width = var0;
  v9->_size.height = var1;
  format = v9->_format;
  v9->_format = v8;

  [(NUIOSurface *)v9 _allocateSurface];
  return v9;
}

- (NUIOSurface)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14395);
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUIOSurface init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurface.m", 31, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end