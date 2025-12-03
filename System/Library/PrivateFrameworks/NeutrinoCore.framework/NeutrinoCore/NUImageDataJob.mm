@interface NUImageDataJob
- (BOOL)complete:(id *)complete;
- (BOOL)render:(id *)render;
- (id)cacheKey;
- (id)extractDataToDictionary:(id)dictionary bounds:(id *)bounds dataExtractor:(id)extractor options:(id)options colorSpace:(CGColorSpace *)space error:(id *)error;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode;
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
  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUImageDataResult *)v3 setGeometry:outputGeometry];

  return v3;
}

- (id)extractDataToDictionary:(id)dictionary bounds:(id *)bounds dataExtractor:(id)extractor options:(id)options colorSpace:(CGColorSpace *)space error:(id *)error
{
  dictionaryCopy = dictionary;
  extractorCopy = extractor;
  optionsCopy = options;
  v17 = [(NURenderJob *)self renderer:error];
  if (v17)
  {
    var0 = bounds->var0.var0;
    var1 = bounds->var0.var1;
    v20 = bounds->var1.var0;
    v21 = bounds->var1.var1;
    [dictionaryCopy extent];
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
      imageByClampingToExtent = [dictionaryCopy imageByClampingToExtent];

      v27 = [imageByClampingToExtent imageByCroppingToRect:{var0, var1, v20, v21}];

      v31 = v32;
      dictionaryCopy = [v27 imageByApplyingTransform:&v31];
    }

    context = [v17 context];
    v29 = [MEMORY[0x1E695F648] extractDataToDictionary:dictionaryCopy dataExtractor:extractorCopy options:optionsCopy context:context colorSpace:space error:error];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)complete:(id *)complete
{
  v49 = *MEMORY[0x1E69E9840];
  if (!complete)
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
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

    v7 = [(NURenderJob *)self renderer:complete];
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
    imageDataRequest = [(NUImageDataJob *)self imageDataRequest];
    storage = [(NUStorageImageBuffer *)self->_renderBuffer storage];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __27__NUImageDataJob_complete___block_invoke;
    v36[3] = &unk_1E810A0F8;
    v38 = buf;
    v36[4] = self;
    v10 = imageDataRequest;
    v37 = v10;
    v39 = &v40;
    v11 = [storage useAsCIImageWithOptions:0 renderer:v7 block:v36];

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
    *complete = v16;
    goto LABEL_19;
  }

  request = [(NURenderJob *)self request];
  v15 = [request copy];
  *complete = [NUError errorWithCode:1 reason:@"failed to render" object:v15 underlyingError:*complete];

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

- (BOOL)render:(id *)render
{
  v45 = *MEMORY[0x1E69E9840];
  imageDataRequest = [(NUImageDataJob *)self imageDataRequest];
  regionPolicy = [imageDataRequest regionPolicy];
  outputGeometry = [(NURenderJob *)self outputGeometry];
  v8 = [regionPolicy regionForGeometry:outputGeometry];

  if (v8)
  {
    [v8 bounds];
  }

  v9 = +[NUFactory sharedFactory];
  surfaceStoragePool = [v9 surfaceStoragePool];

  v11 = +[NUPixelFormat RGBAh];
  v12 = [surfaceStoragePool newStorageWithSize:0 format:v11];

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
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageDataJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageDataRequest.m", 195, @"No storage allocated", v36, v37, v38, v39, v40);
  }

  v13 = [[NUStorageImageBuffer alloc] initWithStorage:v12 fromPool:surfaceStoragePool];
  renderBuffer = self->_renderBuffer;
  self->_renderBuffer = v13;

  outputImage = [(NURenderJob *)self outputImage];
  storage = [(NUStorageImageBuffer *)self->_renderBuffer storage];
  v17 = +[NUColorSpace workingColorSpace];
  imageSize = [(NURenderJob *)self imageSize];
  render = [(NURenderJob *)self renderImage:outputImage into:storage colorSpace:v17 roi:v8 imageSize:imageSize error:v19, render];
  renderTask = self->_renderTask;
  self->_renderTask = render;

  v22 = self->_renderTask != 0;
  return v22;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = NUImageDataJob;
  v4 = [(NURenderJob *)&v7 newRenderPipelineStateForEvaluationMode:mode];
  request = [(NURenderJob *)self request];
  [v4 setEnableTransparency:{objc_msgSend(request, "wantsAlpha")}];

  return v4;
}

- (id)requestOptions
{
  imageDataRequest = [(NUImageDataJob *)self imageDataRequest];
  options = [imageDataRequest options];

  return options;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  renderNode = [(NURenderJob *)self renderNode];
  [renderNode nu_updateDigest:v3];

  imageDataRequest = [(NUImageDataJob *)self imageDataRequest];
  dataExtractor = [imageDataRequest dataExtractor];
  [dataExtractor nu_updateDigest:v3];

  options = [imageDataRequest options];
  [options nu_updateDigest:v3];

  colorSpace = [imageDataRequest colorSpace];
  [colorSpace nu_updateDigest:v3];

  regionPolicy = [imageDataRequest regionPolicy];
  outputGeometry = [(NURenderJob *)self outputGeometry];
  v11 = [regionPolicy regionForGeometry:outputGeometry];

  v14 = 0u;
  v15 = 0u;
  if (v11)
  {
    [v11 bounds];
  }

  [(NUDigest *)v3 addBytes:&v14 length:32];
  [(NUDigest *)v3 finalize];
  stringValue = [(NUDigest *)v3 stringValue];

  return stringValue;
}

- (id)scalePolicy
{
  imageDataRequest = [(NUImageDataJob *)self imageDataRequest];
  scalePolicy = [imageDataRequest scalePolicy];

  return scalePolicy;
}

@end