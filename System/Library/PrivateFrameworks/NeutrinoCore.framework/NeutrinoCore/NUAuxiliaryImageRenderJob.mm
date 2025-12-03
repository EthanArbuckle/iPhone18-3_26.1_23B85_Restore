@interface NUAuxiliaryImageRenderJob
- (BOOL)complete:(id *)complete;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (id)evaluateOutputGeometry:(id *)geometry;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode;
- (id)result;
- (id)scalePolicy;
- (unsigned)targetPixelFormat;
- (void)cleanUp;
@end

@implementation NUAuxiliaryImageRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUAuxiliaryImageRenderResult);
  auxiliaryImage = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];
  [(_NUAuxiliaryImageRenderResult *)v3 setAuxiliaryImage:auxiliaryImage];

  return v3;
}

- (void)cleanUp
{
  renderTask = self->_renderTask;
  self->_renderTask = 0;

  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = 0;
}

- (BOOL)complete:(id *)complete
{
  v37 = *MEMORY[0x1E69E9840];
  if (!complete)
  {
    v17 = NUAssertLogger_981();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v34 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_981();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 297, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "error != NULL");
  }

  auxiliaryImage = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];

  if (!auxiliaryImage)
  {
    v6 = [(CIRenderTask *)self->_renderTask waitUntilCompletedAndReturnError:complete];

    if (!v6)
    {
      request = [(NURenderJob *)self request];
      v16 = [request copy];
      *complete = [NUError errorWithCode:1 reason:@"failed to render auxiliaryImage" object:v16 underlyingError:*complete];

      v14 = 0;
      goto LABEL_6;
    }

    imageProperties = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v8 = [imageProperties auxiliaryImagePropertiesForType:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

    cVPixelBuffer = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
    auxiliaryImageType = [(NUAuxiliaryImageRenderJob *)self auxiliaryImageType];
    auxiliaryImageTypeCGIdentifier = [v8 auxiliaryImageTypeCGIdentifier];
    v12 = [NUAuxiliaryImageFactory auxiliaryImageWithPixelBuffer:cVPixelBuffer auxiliaryImageType:auxiliaryImageType identifier:auxiliaryImageTypeCGIdentifier originalProperties:v8 error:complete];
    [(NUAuxiliaryImageRenderJob *)self setAuxiliaryImage:v12];
  }

  request = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];
  v14 = request != 0;
LABEL_6:

  return v14;
}

- (BOOL)render:(id *)render
{
  v71 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v51 = NUAssertLogger_981();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v54 = NUAssertLogger_981();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v55)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        callStackSymbols = [v59 callStackSymbols];
        v62 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v57 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v57;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 195, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "error != nil");
  }

  renderNode = [(NURenderJob *)self renderNode];
  v6 = [renderNode canPropagateOriginalAuxiliaryData:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

  if (v6)
  {
    request = [(NURenderJob *)self request];
    if ([request skipRenderIfNotRequired])
    {
      [NUError skippedError:@"Original auxiliary data can be propagated object:skipping render", request];
      *render = v8 = 0;
    }

    else
    {
      renderNode2 = [(NURenderJob *)self renderNode];
      v23 = [renderNode2 originalAuxiliaryImageForType:-[NUAuxiliaryImageRenderJob auxiliaryImageType](self error:{"auxiliaryImageType"), render}];

      v8 = v23 != 0;
      if (v23)
      {
        [(NUAuxiliaryImageRenderJob *)self setAuxiliaryImage:v23];
      }
    }

    return v8;
  }

  v9 = [(NURenderJob *)self renderer:render];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  outputGeometry = [(NURenderJob *)self outputGeometry];
  scaledSize = [outputGeometry scaledSize];
  v14 = v13;
  v15 = [NUVideoUtilities newPixelBufferOfSize:scaledSize format:v13, [(NUAuxiliaryImageRenderJob *)self targetPixelFormat]];
  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = v15;

  v17 = self->_pixelBuffer;
  if (!v17)
  {
    request2 = [(NURenderJob *)self request];
    v25 = [request2 copy];
    *render = [NUError failureError:@"failed to allocate buffer for depth" object:v25];

    return 0;
  }

  v18 = 0;
  auxiliaryImageType = self->_auxiliaryImageType;
  v68 = outputGeometry;
  if (auxiliaryImageType <= 0xB)
  {
    if (((1 << auxiliaryImageType) & 0x378) != 0)
    {
      cVPixelBuffer = [(NUCVPixelBuffer *)v17 CVPixelBuffer];
      CVBufferSetAttachment(cVPixelBuffer, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      cVPixelBuffer2 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(cVPixelBuffer2, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
      v18 = 0;
      goto LABEL_29;
    }

    if (((1 << auxiliaryImageType) & 0xC00) != 0)
    {
      v18 = +[NUColorSpace displayP3ColorSpace];
      [v18 applyAttachmentsToCVPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer, "CVPixelBuffer")}];
      goto LABEL_29;
    }

    if (auxiliaryImageType != 7)
    {
      goto LABEL_29;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType([(NUCVPixelBuffer *)v17 CVPixelBuffer]);
    v27 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
    v28 = [(__CFDictionary *)v27 objectForKeyedSubscript:*MEMORY[0x1E69662A8]];
    bOOLValue = [v28 BOOLValue];

    v30 = [(__CFDictionary *)v27 objectForKeyedSubscript:*MEMORY[0x1E69662B8]];
    bOOLValue2 = [v30 BOOLValue];

    if ((bOOLValue & 1) != 0 || bOOLValue2)
    {
      cVPixelBuffer3 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v33 = *MEMORY[0x1E6965CE8];
      CVBufferRemoveAttachment(cVPixelBuffer3, *MEMORY[0x1E6965CE8]);
      cVPixelBuffer4 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(cVPixelBuffer4, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      cVPixelBuffer5 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(cVPixelBuffer5, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
      v18 = 0;
    }

    else
    {
      v18 = +[NUColorSpace linearGrayColorSpace];
      cVPixelBuffer6 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v33 = *MEMORY[0x1E6965CE8];
      CVBufferSetAttachment(cVPixelBuffer6, *MEMORY[0x1E6965CE8], [v18 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    }

    flexRangeProperties = [(NUImageProperties *)self->_imageProperties flexRangeProperties];
    if (flexRangeProperties)
    {
      v38 = flexRangeProperties;
    }

    else
    {
      if (+[NUGlobalSettings forceMeteorPlusLinear])
      {
LABEL_28:

        goto LABEL_29;
      }

      v67 = +[NUColorSpace genericGrayGamma2_2ColorSpace];

      cVPixelBuffer7 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v38 = +[NUColorSpace linearGrayColorSpace];
      CVBufferSetAttachment(cVPixelBuffer7, v33, [v38 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
      v18 = v67;
    }

    goto LABEL_28;
  }

LABEL_29:
  v40 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer, "CVPixelBuffer")}];
  v41 = MEMORY[0x1E696AEC0];
  request3 = [(NURenderJob *)self request];
  name = [request3 name];
  v44 = [v41 stringWithFormat:@"%@-j%lld", name, -[NURenderJob jobNumber](self, "jobNumber")];
  [v40 setLabel:v44];

  [v40 setColorSpace:{objc_msgSend(v18, "CGColorSpace")}];
  outputImage = [(NURenderJob *)self outputImage];
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = scaledSize;
  v70 = v14;
  v46 = [v10 renderImage:outputImage rect:buf toDestination:v40 atPoint:0 error:{0, render}];
  renderTask = self->_renderTask;
  self->_renderTask = v46;

  if (!self->_renderTask)
  {
    request4 = [(NURenderJob *)self request];
    v49 = [request4 copy];
    *render = [NUError errorWithCode:1 reason:@"failed to prepare render auxiliaryImage" object:v49 underlyingError:*render];
  }

  return self->_renderTask != 0;
}

- (unsigned)targetPixelFormat
{
  auxiliaryImageType = [(NUAuxiliaryImageRenderJob *)self auxiliaryImageType];
  if ((auxiliaryImageType - 10) < 2)
  {
    return 1111970369;
  }

  if (auxiliaryImageType == 2)
  {
    return 1751411059;
  }

  pixelFormatType = 1278226488;
  if (auxiliaryImageType == 7)
  {
    imageProperties = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v6 = [imageProperties auxiliaryImagePropertiesForType:7];

    v10 = 0;
    v7 = [v6 auxiliaryImage:&v10];
    v8 = v7;
    if (v7)
    {
      pixelFormatType = [v7 pixelFormatType];
    }
  }

  return pixelFormatType;
}

- (BOOL)prepare:(id *)prepare
{
  v28 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v7 = NUAssertLogger_981();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v25 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_981();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 157, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "error != nil");
  }

  prepareCopy = prepare;
  request = [(NURenderJob *)self request];
  -[NUAuxiliaryImageRenderJob setAuxiliaryImageType:](self, "setAuxiliaryImageType:", [request auxiliaryImageType]);
  v23.receiver = self;
  v23.super_class = NUAuxiliaryImageRenderJob;
  LOBYTE(prepareCopy) = [(NURenderJob *)&v23 prepare:prepareCopy];

  return prepareCopy;
}

- (id)evaluateOutputGeometry:(id *)geometry
{
  v32 = *MEMORY[0x1E69E9840];
  prepareNode = [(NURenderJob *)self prepareNode];

  if (!prepareNode)
  {
    v11 = NUAssertLogger_981();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_981();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob evaluateOutputGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 144, @"Missing prepare node", v23, v24, v25, v26, v27.receiver);
  }

  prepareNode2 = [(NURenderJob *)self prepareNode];
  v7 = [prepareNode2 imageProperties:geometry];
  [(NUAuxiliaryImageRenderJob *)self setImageProperties:v7];

  imageProperties = [(NUAuxiliaryImageRenderJob *)self imageProperties];

  if (imageProperties)
  {
    v27.receiver = self;
    v27.super_class = NUAuxiliaryImageRenderJob;
    v9 = [(NURenderJob *)&v27 evaluateOutputGeometry:geometry];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = NUAuxiliaryImageRenderJob;
  v5 = [(NURenderJob *)&v8 newRenderPipelineStateForEvaluationMode:?];
  v6 = v5;
  if (mode)
  {
    [v5 setAuxiliaryImageType:self->_auxiliaryImageType];
  }

  return v6;
}

- (id)scalePolicy
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(&NUScaleOne + 1);
  v3 = NUScaleOne;
  imageProperties = [(NUAuxiliaryImageRenderJob *)self imageProperties];

  if (!imageProperties)
  {
    v17 = NUAssertLogger_981();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image properties"];
      *v33 = 138543362;
      *&v33[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v33, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_981();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v33 = 138543618;
        *&v33[4] = v24;
        v34 = 2114;
        v35 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v33, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v33 = 138543362;
      *&v33[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v33, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob scalePolicy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 121, @"Missing image properties", v29, v30, v31, v32, *v33);
  }

  imageProperties2 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
  v7 = [imageProperties2 auxiliaryImagePropertiesForType:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

  if (v7)
  {
    imageProperties3 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v9 = [imageProperties3 size];
    v11 = v10;

    v12 = [v7 size];
    v3 = NUScaleToFitSizeInSize(v9, v11, v12, v13);
    v4 = v14;
  }

  v15 = [[NUFixedScalePolicy alloc] initWithScale:v3, v4];

  return v15;
}

@end