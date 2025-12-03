@interface NUImageRenderJob
- (BOOL)complete:(id *)complete;
- (BOOL)copyStorage:(id)storage fromRect:(id *)rect toImage:(id)image atPoint:(id)point;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (NUImageRenderJob)initWithImageRequest:(id)request;
- (NUImageRenderJob)initWithRequest:(id)request;
- (NUPurgeableStoragePool)storagePool;
- (id)_HDRColorSpaceForProposedColorSpace:(id)space;
- (id)_HDRPixelFormatForColorSpace:(id)space proposedPixelFormat:(id)format;
- (id)extentPolicy;
- (id)imageAccumulationNodeWithImageSize:(id)size tileSize:(id)tileSize borderSize:(id)borderSize format:(id)format colorSpace:(id)space headroom:(float)headroom;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode;
- (id)prepareNodeWithPipelineState:(id)state error:(id *)error;
- (id)renderBufferOfSize:(id)size format:(id)format;
- (id)scalePolicy;
- (void)abortRender;
- (void)cleanUp;
@end

@implementation NUImageRenderJob

- (void)cleanUp
{
  accessRegionGuard = self->_accessRegionGuard;
  self->_accessRegionGuard = 0;

  renderedImage = self->_renderedImage;
  self->_renderedImage = 0;

  renderBuffer = self->_renderBuffer;
  self->_renderBuffer = 0;
}

- (void)abortRender
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = [(NURenderJob *)self renderer:&v5];
  v3 = v5;
  if (v2)
  {
    [v2 abortCurrentRender];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_242);
    }

    v4 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail to abort render: %{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)copyStorage:(id)storage fromRect:(id *)rect toImage:(id)image atPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  storageCopy = storage;
  imageCopy = image;
  if ([(NURenderJob *)self rendererType]== 1 || [(NURenderJob *)self rendererType]== 2)
  {
    device = [(NURenderJob *)self device];
    v14 = rect->var1;
    v18 = rect->var0;
    v19 = v14;
    v15 = [imageCopy copySurfaceStorage:storageCopy fromRect:&v18 toPoint:var0 device:{var1, device}];
  }

  else
  {
    v16 = rect->var1;
    v18 = rect->var0;
    v19 = v16;
    v15 = [imageCopy copyBufferStorage:storageCopy fromRect:&v18 toPoint:{var0, var1}];
  }

  return v15;
}

- (BOOL)complete:(id *)complete
{
  v64 = *MEMORY[0x1E69E9840];
  if (!complete)
  {
    v22 = NUAssertLogger_12581();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_12581();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2114;
        *&buf[14] = v33;
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

    _NUAssertFailHandler("[NUImageRenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 365, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "error != NULL");
  }

  renderTask = [(NUImageRenderJob *)self renderTask];
  v6 = renderTask;
  if (renderTask)
  {
    v7 = [renderTask waitUntilCompletedAndReturnError:complete];
    if (!v7)
    {
      request = [(NURenderJob *)self request];
      v18 = [request copy];
      *complete = [NUError errorWithCode:1 reason:@"failed to render" object:v18 underlyingError:*complete];

      v11 = 0;
      goto LABEL_20;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_242);
    }

    v8 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_DEBUG))
    {
      v20 = v8;
      [v7 kernelExecutionTime];
      *buf = 134218496;
      *&buf[4] = v21 * 1000.0;
      *&buf[12] = 1024;
      *&buf[14] = [v7 passCount];
      *&buf[18] = 2048;
      *&buf[20] = vcvts_n_f32_s64([v7 pixelsProcessed], 0x14uLL);
      _os_log_debug_impl(&dword_1C0184000, v20, OS_LOG_TYPE_DEBUG, "CIRenderInfo: exec=%0.3fms pass=%d pixels=%0.3fMpix", buf, 0x1Cu);
    }
  }

  renderedRegion = [(NUImageRenderJob *)self renderedRegion];
  targetImage = [(NUImageRenderJob *)self targetImage];
  if (renderedRegion)
  {
    [renderedRegion bounds];
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v11 = 1;
  buf[24] = 1;
  if (targetImage)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __29__NUImageRenderJob_complete___block_invoke;
    v53[3] = &unk_1E810A210;
    v56 = v57;
    v55 = buf;
    v53[4] = self;
    v12 = targetImage;
    v54 = v12;
    [renderedRegion enumerateRects:v53];
    if (*(*&buf[8] + 24) == 1)
    {
      purgeableImageCopy = [v12 purgeableImageCopy];
      renderedImage = self->_renderedImage;
      self->_renderedImage = purgeableImageCopy;

      v15 = self->_renderedImage;
      if (!v15)
      {
        v38 = NUAssertLogger_12581();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't make purgeable image copy"];
          *v59 = 138543362;
          v60 = v39;
          _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v59, 0xCu);
        }

        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = NUAssertLogger_12581();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (v40)
        {
          if (v42)
          {
            v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
            v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *v59 = 138543618;
            v60 = v45;
            v61 = 2114;
            v62 = v47;
            _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v59, 0x16u);
          }
        }

        else if (v42)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *v59 = 138543362;
          v60 = v44;
          _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v59, 0xCu);
        }

        _NUAssertFailHandler("[NUImageRenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 394, @"Couldn't make purgeable image copy", v48, v49, v50, v51, v52);
      }

      regionToRender = [(NUImageRenderJob *)self regionToRender];
      [(NUPurgeableImage *)v15 beginAccessRegion:regionToRender];
    }

    else
    {
      regionToRender = [(NUImageRenderJob *)self renderBuffer];
      *complete = [NUError failureError:@"Failed to copy image" object:regionToRender];
    }

    v11 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);

LABEL_20:
  return v11 & 1;
}

void __29__NUImageRenderJob_complete___block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a1[6] + 8);
  if (*(v2 + 24))
  {
    v5 = *(a2 + 8) - a1[8];
    v6 = *a2 - a1[7];
    v11 = *(a2 + 16);
    v7 = a1[4];
    v8 = [v7 renderBuffer];
    v9 = [v8 storage];
    v10 = a1[5];
    v12[0] = v6;
    v12[1] = v5;
    v13 = v11;
    *(*(a1[6] + 8) + 24) = [v7 copyStorage:v9 fromRect:v12 toImage:v10 atPoint:{*a2, *(a2 + 8)}];
  }

  else
  {
    *(v2 + 24) = 0;
  }
}

- (BOOL)render:(id *)render
{
  v82 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v61 = NUAssertLogger_12581();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v62;
      _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v64 = NUAssertLogger_12581();
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v65)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        callStackSymbols = [v69 callStackSymbols];
        v72 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v68;
        *&buf[12] = 2114;
        *&buf[14] = v72;
        _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v65)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v67 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v67;
      _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 297, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "error != NULL");
  }

  pixelFormat = [(NUImageRenderJob *)self pixelFormat];
  colorSpace = [(NUImageRenderJob *)self colorSpace];
  regionToRender = [(NUImageRenderJob *)self regionToRender];
  targetImage = [(NUImageRenderJob *)self targetImage];
  if (targetImage)
  {
    v8 = [[NUPurgeableImageAccessGuard alloc] initWithRegion:regionToRender image:targetImage];
    accessRegionGuard = self->_accessRegionGuard;
    self->_accessRegionGuard = v8;

    validRegion = [targetImage validRegion];
    v11 = [regionToRender regionByRemovingRegion:validRegion];

    regionToRender = v11;
  }

  if ([regionToRender isEmpty])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_242);
    }

    v12 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_debug_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEBUG, "job %p region to render is empty", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    memset(buf, 0, 32);
    if (regionToRender)
    {
      [regionToRender bounds];
      v15 = *&buf[24];
      v14 = *&buf[16];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v78 = colorSpace;
    v79 = pixelFormat;
    v13 = [(NUImageRenderJob *)self renderBufferOfSize:v14 format:v15, pixelFormat];
    v16 = +[NUGlobalSettings debugRenderBlue];
    v77 = targetImage;
    if (v16)
    {
      request = [(NURenderJob *)self request];
      name = [request name];
      v19 = +[NUGlobalSettings debugRenderBlue];
      v20 = [name containsString:v19];

      if (v20)
      {
        v16 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
      }

      else
      {
        v16 = 0;
      }
    }

    v21 = +[NUGlobalSettings debugRenderPurple];
    if (v21)
    {
      v22 = v21;
      request2 = [(NURenderJob *)self request];
      name2 = [request2 name];
      v25 = +[NUGlobalSettings debugRenderPurple];
      v26 = [name2 containsString:v25];

      if (v26)
      {
        v27 = [MEMORY[0x1E695F610] colorWithRed:0.8 green:0.0 blue:0.8 alpha:0.5];

        v16 = v27;
      }
    }

    v28 = +[NUGlobalSettings debugRenderYellow];
    if (v28)
    {
      v29 = v28;
      request3 = [(NURenderJob *)self request];
      name3 = [request3 name];
      v32 = +[NUGlobalSettings debugRenderYellow];
      v33 = [name3 containsString:v32];

      if (v33)
      {
        v34 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.5];

        v16 = v34;
      }
    }

    colorSpace = v78;
    if (v16)
    {
      v35 = [objc_alloc(MEMORY[0x1E695F658]) initWithColor:v16];
      outputImage = [(NURenderJob *)self outputImage];
      v37 = [v35 imageByCompositingOverImage:outputImage];

      textImageGeneratorFilter = [MEMORY[0x1E695F648] textImageGeneratorFilter];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", -[NURenderJob jobNumber](self, "jobNumber")];
      [textImageGeneratorFilter setText:v39];

      LODWORD(v40) = 6.0;
      [textImageGeneratorFilter setScaleFactor:v40];
      outputImage2 = [textImageGeneratorFilter outputImage];
      imageByClampingToExtent = [outputImage2 imageByClampingToExtent];

      v43 = [imageByClampingToExtent imageByCroppingToRect:{0.0, 0.0, 350.0, 150.0}];
      v44 = [v43 imageByApplyingFilter:@"CIAffineTile"];
      v45 = v13;
      v46 = v37;
      [v44 imageByCompositingOverImage:v37];
      v48 = v47 = v16;
      [(NURenderJob *)self setOutputImage:v48];

      v16 = v47;
      v13 = v45;
      colorSpace = v78;
      pixelFormat = v79;
    }

    outputImage3 = [(NURenderJob *)self outputImage];
    storage = [v13 storage];
    imageSize = [(NURenderJob *)self imageSize];
    render = [(NURenderJob *)self renderImage:outputImage3 into:storage colorSpace:colorSpace roi:regionToRender imageSize:imageSize error:v52, render];
    [(NUImageRenderJob *)self setRenderTask:render];

    renderTask = [(NUImageRenderJob *)self renderTask];

    if (!renderTask)
    {

      v59 = 0;
      targetImage = v77;
      goto LABEL_28;
    }

    [(NUImageRenderJob *)self contentHeadroom];
    v56 = v55;
    storage2 = [v13 storage];
    LODWORD(v58) = v56;
    [storage2 setContentHeadroom:v58];

    targetImage = v77;
  }

  objc_storeStrong(&self->_renderedRegion, regionToRender);
  objc_storeStrong(&self->_renderBuffer, v13);
  v59 = 1;
LABEL_28:

  return v59;
}

- (id)renderBufferOfSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  storagePool = [(NUImageRenderJob *)self storagePool];
  v9 = [storagePool newStorageWithMinimumSize:var0 format:{var1, formatCopy}];
  if (!v9)
  {
    v13 = NUAssertLogger_12581();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage allocated"];
      *v29 = 138543362;
      *&v29[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v29, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_12581();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v29 = 138543618;
        *&v29[4] = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v29, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v29 = 138543362;
      *&v29[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v29, 0xCu);
    }

    _NUAssertFailHandler("[NUImageRenderJob renderBufferOfSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 290, @"No storage allocated", v25, v26, v27, v28, *v29);
  }

  v10 = v9;
  v11 = [[NUStorageImageBuffer alloc] initWithStorage:v9 fromPool:storagePool];

  return v11;
}

- (NUPurgeableStoragePool)storagePool
{
  if ([(NURenderJob *)self rendererType]== 1 || [(NURenderJob *)self rendererType]== 2)
  {
    v3 = +[NUFactory sharedFactory];
    surfaceStoragePool = [v3 surfaceStoragePool];
  }

  else
  {
    v3 = +[NUFactory sharedFactory];
    surfaceStoragePool = [v3 bufferStoragePool];
  }

  v5 = surfaceStoragePool;

  return v5;
}

- (BOOL)prepare:(id *)prepare
{
  v135 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v93 = NUAssertLogger_12581();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v94;
      _os_log_error_impl(&dword_1C0184000, v93, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v96 = NUAssertLogger_12581();
    v97 = os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v97)
      {
        v100 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v101 = MEMORY[0x1E696AF00];
        v102 = v100;
        callStackSymbols = [v101 callStackSymbols];
        v104 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v100;
        *&buf[12] = 2114;
        *&buf[14] = v104;
        _os_log_error_impl(&dword_1C0184000, v96, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v97)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v99 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v99;
      _os_log_error_impl(&dword_1C0184000, v96, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 188, @"Invalid parameter not satisfying: %s", v105, v106, v107, v108, "error != NULL");
  }

  v131.receiver = self;
  v131.super_class = NUImageRenderJob;
  if (![(NURenderJob *)&v131 prepare:?])
  {
    return 0;
  }

  outputImage = [(NURenderJob *)self outputImage];

  if (outputImage)
  {
    imageRequest = [(NUImageRenderJob *)self imageRequest];
    regionPolicy = [imageRequest regionPolicy];

    outputGeometry = [(NURenderJob *)self outputGeometry];
    v9 = [regionPolicy regionForGeometry:outputGeometry];
    regionToRender = self->_regionToRender;
    self->_regionToRender = v9;

    if (!self->_regionToRender)
    {
      v109 = NUAssertLogger_12581();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No region to render"];
        *buf = 138543362;
        *&buf[4] = v110;
        _os_log_error_impl(&dword_1C0184000, v109, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v111 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v112 = NUAssertLogger_12581();
      v113 = os_log_type_enabled(v112, OS_LOG_TYPE_ERROR);
      if (v111)
      {
        if (v113)
        {
          v116 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v117 = MEMORY[0x1E696AF00];
          v118 = v116;
          callStackSymbols3 = [v117 callStackSymbols];
          v120 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v116;
          *&buf[12] = 2114;
          *&buf[14] = v120;
          _os_log_error_impl(&dword_1C0184000, v112, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v113)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v115 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v115;
        _os_log_error_impl(&dword_1C0184000, v112, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUImageRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 199, @"No region to render", v121, v122, v123, v124, v125);
    }

    v129 = 0u;
    v130 = 0u;
    outputGeometry2 = [(NURenderJob *)self outputGeometry];
    v12 = outputGeometry2;
    if (outputGeometry2)
    {
      [outputGeometry2 physicalScaledExtent];
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v14 = self->_regionToRender;
    if (v14)
    {
      [(NURegion *)v14 bounds];
      v16 = v127;
      v15 = v128;
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
    }

    *buf = v129;
    *&buf[16] = v130;
    v132 = v16;
    v133 = v15;
    NU::RectT<long>::add(v132.i64, buf);
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v129, v132), vceqq_s64(v130, v133)))))
    {
LABEL_28:
      imageRequest2 = [(NUImageRenderJob *)self imageRequest];
      colorSpace = [imageRequest2 colorSpace];

      imageRequest3 = [(NUImageRenderJob *)self imageRequest];
      pixelFormat = [imageRequest3 pixelFormat];

      imageRequest4 = [(NUImageRenderJob *)self imageRequest];
      [imageRequest4 maxEDRHeadroom];
      v40 = v39;

      imageRequest5 = [(NUImageRenderJob *)self imageRequest];
      [imageRequest5 currentEDRHeadroom];
      v43 = v42;

      imageRequest6 = [(NUImageRenderJob *)self imageRequest];
      auxiliaryImageType = [imageRequest6 auxiliaryImageType];

      v46 = 0.0;
      if (auxiliaryImageType != 1 || !+[NUGlobalSettings enableHDRSupport](NUGlobalSettings, "enableHDRSupport") || (v47 = v40, v48 = v47, +[NUGlobalSettings thresholdDisplayHeadroom], v49 >= v48))
      {
        v126 = pixelFormat;
        v56 = regionPolicy;
        goto LABEL_35;
      }

      prepareNode = [(NURenderJob *)self prepareNode];
      v52 = [prepareNode imageProperties:prepare];

      if ([v52 isHDR])
      {
        v53 = [(NUImageRenderJob *)self _HDRColorSpaceForProposedColorSpace:colorSpace];

        v54 = [(NUImageRenderJob *)self _HDRPixelFormatForColorSpace:v53 proposedPixelFormat:pixelFormat];

        [v52 contentHeadroom];
      }

      else
      {
        if (!+[NUGlobalSettings renderMeteorPlusAsHDR])
        {
          goto LABEL_55;
        }

        if (![v52 hasGainMap])
        {
          goto LABEL_55;
        }

        [v52 gainMapHeadroom];
        if (v87 <= 1.0)
        {
          goto LABEL_55;
        }

        v53 = [(NUImageRenderJob *)self _HDRColorSpaceForProposedColorSpace:colorSpace];

        v54 = [(NUImageRenderJob *)self _HDRPixelFormatForColorSpace:v53 proposedPixelFormat:pixelFormat];

        [v52 gainMapHeadroom];
        v55 = v88;
      }

      v50 = v43;
      v46 = fminf(v55, v50);
      pixelFormat = v54;
      colorSpace = v53;
LABEL_55:
      v126 = pixelFormat;
      v56 = regionPolicy;

LABEL_35:
      imageRequest7 = [(NUImageRenderJob *)self imageRequest];
      tileSize = [imageRequest7 tileSize];
      v60 = v59;

      imageRequest8 = [(NUImageRenderJob *)self imageRequest];
      borderSize = [imageRequest8 borderSize];
      v64 = v63;

      imageRequest9 = [(NUImageRenderJob *)self imageRequest];
      targetImage = [imageRequest9 targetImage];

      if (targetImage)
      {
        colorSpace2 = [targetImage colorSpace];
        v68 = [colorSpace2 isEqual:colorSpace];

        if ((v68 & 1) == 0)
        {
          [NUError mismatchError:@"Incompatible target image color space" object:targetImage];
          *prepare = v13 = 0;
          v70 = v126;
          goto LABEL_49;
        }

        format = [targetImage format];
        v70 = v126;
        v71 = [format isEqual:v126];

        if (v71)
        {
          v72 = [targetImage size];
          v74 = v73;
          if (v72 == [(NURenderJob *)self imageSize]&& v74 == v75)
          {
            v76 = targetImage;
            targetImage = self->_targetImage;
            self->_targetImage = v76;
LABEL_44:

            [(NUImageRenderJob *)self setColorSpace:colorSpace];
            [(NUImageRenderJob *)self setPixelFormat:v70];
            *&v84 = v46;
            [(NUImageRenderJob *)self setContentHeadroom:v84];
            v13 = 1;
LABEL_49:

            return v13;
          }

          v85 = @"Incompatible target image size";
        }

        else
        {
          v85 = @"Incompatible target image format";
        }

        [NUError mismatchError:v85 object:targetImage];
        *prepare = v13 = 0;
        goto LABEL_49;
      }

      imageSize = [(NURenderJob *)self imageSize];
      *&v79 = v46;
      targetImage = [(NUImageRenderJob *)self imageAccumulationNodeWithImageSize:imageSize tileSize:v80 borderSize:tileSize format:v60 colorSpace:borderSize headroom:v64, v79, v126, colorSpace];
      if (targetImage)
      {
        v81 = [NURenderNode nodeFromCache:targetImage];
        [(NURenderJob *)self setRenderNode:v81];
        image = [v81 image];
        v83 = self->_targetImage;
        self->_targetImage = image;
      }

      v70 = v126;
      goto LABEL_44;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
    }

    v17 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = v17;
      v20 = [v18 stringWithFormat:@"Render region extends beyond valid extent"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_1C0184000, v19, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v21 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v21 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
        }

        goto LABEL_21;
      }

      if (v21 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_21:
      v22 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = v22;
        callStackSymbols5 = [v28 callStackSymbols];
        v32 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_27:
      _NUAssertContinueHandler("[NUImageRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 201, @"Render region extends beyond valid extent", v23, v24, v25, v26, v125);
      goto LABEL_28;
    }

    v33 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v89 = MEMORY[0x1E696AF00];
      v90 = v33;
      callStackSymbols6 = [v89 callStackSymbols];
      v92 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v92;
      _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_27;
  }

  return 1;
}

- (id)prepareNodeWithPipelineState:(id)state error:(id *)error
{
  stateCopy = state;
  v28.receiver = self;
  v28.super_class = NUImageRenderJob;
  v7 = [(NURenderJob *)&v28 prepareNodeWithPipelineState:stateCopy error:error];
  if (v7 && [stateCopy auxiliaryImageType] == 1)
  {
    v8 = [v7 imageProperties:error];
    if (v8)
    {
      v9 = v8;
      imageRequest = [(NUImageRenderJob *)self imageRequest];
      [imageRequest maxEDRHeadroom];
      v12 = v11;

      imageRequest2 = [(NUImageRenderJob *)self imageRequest];
      [imageRequest2 currentEDRHeadroom];
      v15 = v14;

      if (+[NUGlobalSettings enableHDRSupport])
      {
        +[NUGlobalSettings thresholdDisplayHeadroom];
        v17 = v12 > v16;
      }

      else
      {
        v17 = 0;
      }

      if ([v9 isHDR])
      {
        v18 = [NUHDRToneMapNode alloc];
        [v9 contentHeadroom];
        v20 = v19;
        v21 = 1.0;
        if (v17)
        {
          v21 = v15;
        }

        v22 = v18;
        v23 = v7;
      }

      else
      {
        if (![v9 hasGainMap])
        {
          goto LABEL_17;
        }

        [v9 gainMapHeadroom];
        if (v25 <= 1.0 || !v17 || !+[NUGlobalSettings renderMeteorPlusAsHDR])
        {
          goto LABEL_17;
        }

        v26 = [NUHDRGainMapNode alloc];
        [v9 gainMapHeadroom];
        v22 = v26;
        v23 = v7;
        v21 = v15;
      }

      v24 = [v22 initWithInput:v23 contentHeadroom:v20 displayHeadroom:v21];

      v7 = v24;
    }

    else
    {
      v9 = v7;
      v7 = 0;
    }

LABEL_17:
  }

  return v7;
}

- (id)_HDRPixelFormatForColorSpace:(id)space proposedPixelFormat:(id)format
{
  v38[2] = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  formatCopy = format;
  if ([spaceCopy isHDR])
  {
    if ([formatCopy bitsPerComponent] < 10 || (-[NURenderJob device](self, "device"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsPixelFormat:", formatCopy), v8, (v9 & 1) == 0))
    {
      v11 = +[NUPixelFormat A2RGB10];
      v38[0] = v11;
      v12 = +[NUPixelFormat RGBAh];
      v38[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__NUImageRenderJob__HDRPixelFormatForColorSpace_proposedPixelFormat___block_invoke;
      v33[3] = &unk_1E810A1E8;
      v33[4] = self;
      v14 = [v13 indexOfObjectPassingTest:v33];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = NUAssertLogger_12581();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find supported HDR pixel format!"];
          *buf = 138543362;
          v35 = v17;
          _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = NUAssertLogger_12581();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v20)
          {
            v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v24 = MEMORY[0x1E696AF00];
            v25 = v23;
            callStackSymbols = [v24 callStackSymbols];
            v27 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v35 = v23;
            v36 = 2114;
            v37 = v27;
            _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v20)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v35 = v22;
          _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUImageRenderJob _HDRPixelFormatForColorSpace:proposedPixelFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 149, @"Could not find supported HDR pixel format!", v28, v29, v30, v31, v32);
      }

      v10 = [v13 objectAtIndexedSubscript:v14];

      goto LABEL_9;
    }
  }

  if ([spaceCopy isExtended] && (objc_msgSend(formatCopy, "supportsExtendedRange") & 1) == 0)
  {
    v10 = +[NUPixelFormat RGBAh];

LABEL_9:
    formatCopy = v10;
  }

  return formatCopy;
}

uint64_t __69__NUImageRenderJob__HDRPixelFormatForColorSpace_proposedPixelFormat___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 device];
  v5 = [v4 supportsPixelFormat:v3];

  return v5;
}

- (id)_HDRColorSpaceForProposedColorSpace:(id)space
{
  spaceCopy = space;
  if (([spaceCopy isHDR] & 1) == 0 && (objc_msgSend(spaceCopy, "isExtended") & 1) == 0)
  {
    if (+[NUGlobalSettings renderEDRAsPQ])
    {
      +[NUColorSpace itur2100PQColorSpace];
    }

    else
    {
      +[NUColorSpace extendedSRGBLinearColorSpace];
    }
    v4 = ;

    spaceCopy = v4;
  }

  return spaceCopy;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = NUImageRenderJob;
  v4 = [(NURenderJob *)&v7 newRenderPipelineStateForEvaluationMode:mode];
  imageRequest = [(NUImageRenderJob *)self imageRequest];
  [v4 setAuxiliaryImageType:{objc_msgSend(imageRequest, "auxiliaryImageType")}];

  return v4;
}

- (id)extentPolicy
{
  imageRequest = [(NUImageRenderJob *)self imageRequest];
  extentPolicy = [imageRequest extentPolicy];

  return extentPolicy;
}

- (id)scalePolicy
{
  imageRequest = [(NUImageRenderJob *)self imageRequest];
  scalePolicy = [imageRequest scalePolicy];

  return scalePolicy;
}

- (id)imageAccumulationNodeWithImageSize:(id)size tileSize:(id)tileSize borderSize:(id)borderSize format:(id)format colorSpace:(id)space headroom:(float)headroom
{
  v39 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  spaceCopy = space;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
  }

  v10 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v11 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v14];
    *buf = 138543362;
    v36 = v15;
    _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v16 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v16 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
      }

      goto LABEL_8;
    }

    if (v16 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v17 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AF00];
      v19 = v17;
      callStackSymbols = [v18 callStackSymbols];
      v21 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v21;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v22 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = MEMORY[0x1E696AF00];
    v25 = specific;
    v26 = v22;
    callStackSymbols2 = [v24 callStackSymbols];
    v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v36 = specific;
    v37 = 2114;
    v38 = v28;
    _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  _NUAssertFailHandler("[NUImageRenderJob imageAccumulationNodeWithImageSize:tileSize:borderSize:format:colorSpace:headroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 92, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v31, v32, v33, v34, v30);
}

- (NUImageRenderJob)initWithRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12610);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUImageRenderJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 87, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUImageRenderJob)initWithImageRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = NUImageRenderJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

@end