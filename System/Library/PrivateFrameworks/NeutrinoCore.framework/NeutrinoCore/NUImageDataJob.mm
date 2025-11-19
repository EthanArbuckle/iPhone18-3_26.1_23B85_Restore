@interface NUImageDataJob
- (BOOL)complete:(id *)a3;
- (BOOL)render:(id *)a3;
- (id)cacheKey;
- (id)extractDataToDictionary:(id)a3 bounds:(id *)a4 dataExtractor:(id)a5 options:(id)a6 colorSpace:(CGColorSpace *)a7 error:(id *)a8;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3;
- (id)requestOptions;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation NUImageDataJob

- (void)cleanUp
{
  v5.receiver = self;
  v5.super_class = NUImageDataJob;
  [(NURenderJob *)&v5 cleanUp];
  data = self->_data;
  self->_data = 0;

  renderBuffer = self->_renderBuffer;
  self->_renderBuffer = 0;
}

- (id)result
{
  v3 = objc_alloc_init(_NUImageDataResult);
  [(_NUImageDataResult *)v3 setData:self->_data];
  v4 = [(NURenderJob *)self outputGeometry];
  [(_NUImageDataResult *)v3 setGeometry:v4];

  return v3;
}

- (id)extractDataToDictionary:(id)a3 bounds:(id *)a4 dataExtractor:(id)a5 options:(id)a6 colorSpace:(CGColorSpace *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = [(NURenderJob *)self renderer:a8];
  if (v17)
  {
    var0 = a4->var0.var0;
    var1 = a4->var0.var1;
    v20 = a4->var1.var0;
    v21 = a4->var1.var1;
    [v14 extent];
    v35.origin.x = v22;
    v35.origin.y = v23;
    v35.size.width = v24;
    v35.size.height = v25;
    v34.origin.x = var0;
    v34.origin.y = var1;
    v34.size.width = v20;
    v34.size.height = v21;
    if (!CGRectEqualToRect(v34, v35))
    {
      memset(&v32, 0, sizeof(v32));
      CGAffineTransformMakeTranslation(&v32, -var0, -var1);
      v26 = [v14 imageByClampingToExtent];

      v27 = [v26 imageByCroppingToRect:{var0, var1, v20, v21}];

      v31 = v32;
      v14 = [v27 imageByApplyingTransform:&v31];
    }

    v28 = [v17 context];
    v29 = [MEMORY[0x1E695F648] extractDataToDictionary:v14 dataExtractor:v15 options:v16 context:v28 colorSpace:a7 error:a8];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)complete:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = NUAssertLogger_11892();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_11892();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageDataJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageDataRequest.m", 206, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v5 = [(CIRenderTask *)self->_renderTask waitUntilCompletedAndReturnError:?];
  if (v5)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_169_11902);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      v17 = v6;
      [v5 kernelExecutionTime];
      *buf = 134218496;
      *&buf[4] = v18 * 1000.0;
      *&buf[12] = 1024;
      *&buf[14] = [v5 passCount];
      *&buf[18] = 2048;
      *&buf[20] = vcvts_n_f32_s64([v5 pixelsProcessed], 0x14uLL);
      _os_log_debug_impl(&dword_1C0184000, v17, OS_LOG_TYPE_DEBUG, "CIRenderInfo: exec=%0.3fms pass=%d pixels=%0.3fMpix", buf, 0x1Cu);
    }

    v7 = [(NURenderJob *)self renderer:a3];
    if (!v7)
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__11904;
    v47 = __Block_byref_object_dispose__11905;
    v48 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__11904;
    v44 = __Block_byref_object_dispose__11905;
    v45 = 0;
    v8 = [(NUImageDataJob *)self imageDataRequest];
    v9 = [(NUStorageImageBuffer *)self->_renderBuffer storage];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __27__NUImageDataJob_complete___block_invoke;
    v36[3] = &unk_1E810A0F8;
    v38 = buf;
    v36[4] = self;
    v10 = v8;
    v37 = v10;
    v39 = &v40;
    v11 = [v9 useAsCIImageWithOptions:0 renderer:v7 block:v36];

    if (v11 == 1)
    {
      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        objc_storeStrong(&self->_data, v12);
        v13 = 1;
LABEL_19:

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_20;
      }

      if (v41[5])
      {
        [NUError errorWithCode:1 reason:@"unable to extractDataToDictionary" object:v10 underlyingError:?];
      }

      else
      {
        [NUError unknownError:@"unable to extractDataToDictionary" object:v10];
      }
      v16 = ;
    }

    else
    {
      v16 = [NUError failureError:@"Failed to use render buffer as CIImage" object:self->_renderBuffer];
    }

    v13 = 0;
    *a3 = v16;
    goto LABEL_19;
  }

  v14 = [(NURenderJob *)self request];
  v15 = [v14 copy];
  *a3 = [NUError errorWithCode:1 reason:@"failed to render" object:v15 underlyingError:*a3];

  v13 = 0;
LABEL_21:

  return v13;
}

void __27__NUImageDataJob_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 extent];
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  NU::RectT<long>::RectT(v19, &v20, 3);
  v18[0] = v19[0];
  v18[1] = v19[1];
  v9 = [*(a1 + 40) dataExtractor];
  v10 = [*(a1 + 32) requestOptions];
  v11 = [*(a1 + 40) colorSpace];
  v17 = 0;
  v12 = [v3 extractDataToDictionary:v4 bounds:v18 dataExtractor:v9 options:v10 colorSpace:objc_msgSend(v11 error:{"CGColorSpace"), &v17}];

  v13 = v17;
  v14 = v17;
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v12;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
  }
}

- (BOOL)render:(id *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [(NUImageDataJob *)self imageDataRequest];
  v6 = [v5 regionPolicy];
  v7 = [(NURenderJob *)self outputGeometry];
  v8 = [v6 regionForGeometry:v7];

  if (v8)
  {
    [v8 bounds];
  }

  v9 = +[NUFactory sharedFactory];
  v10 = [v9 surfaceStoragePool];

  v11 = +[NUPixelFormat RGBAh];
  v12 = [v10 newStorageWithSize:0 format:v11];

  if (!v12)
  {
    v24 = NUAssertLogger_11892();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage allocated"];
      *buf = 138543362;
      v42 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_11892();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageDataJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageDataRequest.m", 195, @"No storage allocated", v36, v37, v38, v39, v40);
  }

  v13 = [[NUStorageImageBuffer alloc] initWithStorage:v12 fromPool:v10];
  renderBuffer = self->_renderBuffer;
  self->_renderBuffer = v13;

  v15 = [(NURenderJob *)self outputImage];
  v16 = [(NUStorageImageBuffer *)self->_renderBuffer storage];
  v17 = +[NUColorSpace workingColorSpace];
  v18 = [(NURenderJob *)self imageSize];
  v20 = [(NURenderJob *)self renderImage:v15 into:v16 colorSpace:v17 roi:v8 imageSize:v18 error:v19, a3];
  renderTask = self->_renderTask;
  self->_renderTask = v20;

  v22 = self->_renderTask != 0;
  return v22;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NUImageDataJob;
  v4 = [(NURenderJob *)&v7 newRenderPipelineStateForEvaluationMode:a3];
  v5 = [(NURenderJob *)self request];
  [v4 setEnableTransparency:{objc_msgSend(v5, "wantsAlpha")}];

  return v4;
}

- (id)requestOptions
{
  v2 = [(NUImageDataJob *)self imageDataRequest];
  v3 = [v2 options];

  return v3;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  v4 = [(NURenderJob *)self renderNode];
  [v4 nu_updateDigest:v3];

  v5 = [(NUImageDataJob *)self imageDataRequest];
  v6 = [v5 dataExtractor];
  [v6 nu_updateDigest:v3];

  v7 = [v5 options];
  [v7 nu_updateDigest:v3];

  v8 = [v5 colorSpace];
  [v8 nu_updateDigest:v3];

  v9 = [v5 regionPolicy];
  v10 = [(NURenderJob *)self outputGeometry];
  v11 = [v9 regionForGeometry:v10];

  v14 = 0u;
  v15 = 0u;
  if (v11)
  {
    [v11 bounds];
  }

  [(NUDigest *)v3 addBytes:&v14 length:32];
  [(NUDigest *)v3 finalize];
  v12 = [(NUDigest *)v3 stringValue];

  return v12;
}

- (id)scalePolicy
{
  v2 = [(NUImageDataJob *)self imageDataRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

@end