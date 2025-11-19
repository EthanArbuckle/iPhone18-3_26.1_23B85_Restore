@interface NUProcessorCache
- (CIImage)outputImage;
- (NUProcessorCache)init;
- (NUProcessorCache)initWithImage:(id)a3;
- (void)_render:(id)a3;
@end

@implementation NUProcessorCache

- (void)_render:(id)a3
{
  v4 = a3;
  v5 = [(NUProcessorCache *)self inputImage];
  [v5 extent];
  v29.i64[0] = v6;
  v29.i64[1] = v7;
  *v30 = v8;
  *&v30[8] = v9;
  NU::RectT<long>::RectT(&v40, &v29, 3);
  v26 = v41;
  v28 = v40;

  v10 = [v4 metalCommandBuffer];
  v11 = [v10 device];
  textureCacheQueue = self->_textureCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NUProcessorCache__render___block_invoke;
  block[3] = &unk_1E810AA70;
  v36 = v28;
  v37 = v26;
  block[4] = self;
  v33 = v11;
  v34 = v4;
  v35 = v10;
  v13 = v10;
  v14 = v4;
  v15 = v11;
  dispatch_sync(textureCacheQueue, block);
  [v13 encodeWaitForEvent:self->_textureCachedEvent value:1];
  [v14 region];
  v29.i64[0] = v16;
  v29.i64[1] = v17;
  *v30 = v18;
  *&v30[8] = v19;
  NU::RectT<long>::RectT(&v40, &v29, 3);
  v25 = v40;
  v29 = v40;
  *v30 = v41;
  v40 = v28;
  v41 = v26;
  NU::RectT<long>::Intersection(&v38, v29.i64, v40.i64);
  v20.i64[0] = v38.i64[0];
  v21.i64[0] = v28.i64[0];
  v22 = vaddq_s64(v26, v28);
  v27 = vsubq_s64(v38, v25);
  v20.i64[1] = v22.i64[1];
  v21.i64[1] = vaddq_s64(v38, v39).i64[1];
  cachedTexture = self->_cachedTexture;
  v29 = vsubq_s64(v20, v21);
  *v30 = 0;
  *&v30[8] = v39;
  v31 = 1;
  v24 = [v14 metalTexture];
  v40 = v27;
  v41.i64[0] = 0;
  [NUCopyKernel copyFromTexture:cachedTexture region:&v29 toTexture:v24 atPoint:&v40 withCommandBuffer:v13];
}

void __28__NUProcessorCache__render___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = *(a1 + 40);
    v4 = [v2[2] device];

    if (v3 != v4)
    {
      v5 = NUAssertLogger_18155();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUProcessorCache does not support multiple devices"];
        *buf = 138543362;
        v39 = v6;
        _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v8 = NUAssertLogger_18155();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v9)
        {
          v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v28 = MEMORY[0x1E696AF00];
          v29 = v27;
          v30 = [v28 callStackSymbols];
          v31 = [v30 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v39 = v27;
          v40 = 2114;
          v41 = v31;
          _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v9)
      {
        v10 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v10 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v11;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUProcessorCache _render:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Performance/NUProcessorCache.m", 120, @"NUProcessorCache does not support multiple devices", v32, v33, v34, v35, v36);
    }
  }

  else
  {
    v12 = MEMORY[0x1E69741C0];
    v13 = [v2 pixelFormat];
    v14 = [v12 texture2DDescriptorWithPixelFormat:objc_msgSend(v13 width:"metalFormat") height:*(a1 + 80) mipmapped:*(a1 + 88), 0];

    [v14 setStorageMode:2];
    [v14 setUsage:3];
    v15 = [*(a1 + 40) newTextureWithDescriptor:v14];
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    *(v16 + 16) = v15;

    v18 = [*(a1 + 40) newEvent];
    v19 = *(a1 + 32);
    v20 = *(v19 + 24);
    *(v19 + 24) = v18;

    v21 = [objc_alloc(MEMORY[0x1E695F678]) initWithMTLTexture:*(*(a1 + 32) + 16) commandBuffer:0];
    [v21 setFlipped:1];
    [v21 setColorSpace:0];
    [v21 setAlphaMode:0];
    v22 = [*(a1 + 48) metalContext];
    v23 = [*(a1 + 32) inputImage];
    v37 = 0;
    v24 = [v22 startTaskToRender:v23 toDestination:v21 error:&v37];
    v25 = v37;

    if (!v24)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_102);
      }

      v26 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v25;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "NUProcessorCache: failed to render: %@", buf, 0xCu);
      }
    }

    [*(a1 + 56) encodeSignalEvent:*(*(a1 + 32) + 24) value:1];
  }
}

- (CIImage)outputImage
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = [(NUProcessorCache *)self inputImage];
  v4 = [(NUProcessorCache *)self pixelFormat];
  v5 = [v4 CIFormat];

  v6 = *MEMORY[0x1E695F9D0];
  v29[0] = *MEMORY[0x1E695F9D8];
  v29[1] = v6;
  v30[0] = MEMORY[0x1E695E110];
  v30[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v8 = [MEMORY[0x1E695F658] emptyImage];
  v9 = [v3 depthData];

  if (v9)
  {
    v10 = MEMORY[0x1E695F658];
    v11 = [v3 depthData];
    v12 = [v10 imageWithDepthData:v11];

    v8 = v12;
  }

  [v3 extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(NUProcessorCache *)self label];
  v22 = [v3 digest];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __31__NUProcessorCache_outputImage__block_invoke_2;
  v28[3] = &unk_1E810AA48;
  v28[4] = self;
  v23 = [v8 imageWithExtent:v21 processorDescription:v22 argumentDigest:0 inputFormat:v5 outputFormat:v7 options:&__block_literal_global_18174 roiCallback:v14 processor:v16, v18, v20, v28];

  v24 = [(NUProcessorCache *)self pixelFormat];
  v25 = [v24 numberOfComponents];

  if (v25 == 1)
  {
    v26 = [v23 _imageByApplyingColorMatrixRed:COERCE_DOUBLE(1065353216) green:COERCE_DOUBLE(1065353216) blue:COERCE_DOUBLE(1065353216) bias:0.0];

    v23 = v26;
  }

  return v23;
}

- (NUProcessorCache)initWithImage:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v19 = NUAssertLogger_18155();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v37 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18155();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUProcessorCache initWithImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Performance/NUProcessorCache.m", 43, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "image != nil");
  }

  v5 = v4;
  v35.receiver = self;
  v35.super_class = NUProcessorCache;
  v6 = [(NUProcessorCache *)&v35 init];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  label = v6->_label;
  v6->_label = v8;

  inputImage = v6->_inputImage;
  v6->_inputImage = v5;
  v11 = v5;

  v12 = +[NUPixelFormat RGBAh];
  pixelFormat = v6->_pixelFormat;
  v6->_pixelFormat = v12;

  v14 = +[NUColorSpace workingColorSpace];
  colorSpace = v6->_colorSpace;
  v6->_colorSpace = v14;

  v16 = dispatch_queue_create("NUProcessorCache", 0);
  textureCacheQueue = v6->_textureCacheQueue;
  v6->_textureCacheQueue = v16;

  return v6;
}

- (NUProcessorCache)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_100);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_100);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_100);
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
  _NUAssertFailHandler("[NUProcessorCache init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Performance/NUProcessorCache.m", 39, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end