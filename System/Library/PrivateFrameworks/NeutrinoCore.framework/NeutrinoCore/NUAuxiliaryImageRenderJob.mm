@interface NUAuxiliaryImageRenderJob
- (BOOL)complete:(id *)a3;
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (id)evaluateOutputGeometry:(id *)a3;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3;
- (id)result;
- (id)scalePolicy;
- (unsigned)targetPixelFormat;
- (void)cleanUp;
@end

@implementation NUAuxiliaryImageRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUAuxiliaryImageRenderResult);
  v4 = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];
  [(_NUAuxiliaryImageRenderResult *)v3 setAuxiliaryImage:v4];

  return v3;
}

- (void)cleanUp
{
  renderTask = self->_renderTask;
  self->_renderTask = 0;

  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = 0;
}

- (BOOL)complete:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 297, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "error != NULL");
  }

  v5 = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];

  if (!v5)
  {
    v6 = [(CIRenderTask *)self->_renderTask waitUntilCompletedAndReturnError:a3];

    if (!v6)
    {
      v13 = [(NURenderJob *)self request];
      v16 = [v13 copy];
      *a3 = [NUError errorWithCode:1 reason:@"failed to render auxiliaryImage" object:v16 underlyingError:*a3];

      v14 = 0;
      goto LABEL_6;
    }

    v7 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v8 = [v7 auxiliaryImagePropertiesForType:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

    v9 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
    v10 = [(NUAuxiliaryImageRenderJob *)self auxiliaryImageType];
    v11 = [v8 auxiliaryImageTypeCGIdentifier];
    v12 = [NUAuxiliaryImageFactory auxiliaryImageWithPixelBuffer:v9 auxiliaryImageType:v10 identifier:v11 originalProperties:v8 error:a3];
    [(NUAuxiliaryImageRenderJob *)self setAuxiliaryImage:v12];
  }

  v13 = [(NUAuxiliaryImageRenderJob *)self auxiliaryImage];
  v14 = v13 != 0;
LABEL_6:

  return v14;
}

- (BOOL)render:(id *)a3
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
      v56 = [MEMORY[0x1E696AF00] callStackSymbols];
      v57 = [v56 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v57;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 195, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "error != nil");
  }

  v5 = [(NURenderJob *)self renderNode];
  v6 = [v5 canPropagateOriginalAuxiliaryData:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

  if (v6)
  {
    v7 = [(NURenderJob *)self request];
    if ([v7 skipRenderIfNotRequired])
    {
      [NUError skippedError:@"Original auxiliary data can be propagated object:skipping render", v7];
      *a3 = v8 = 0;
    }

    else
    {
      v22 = [(NURenderJob *)self renderNode];
      v23 = [v22 originalAuxiliaryImageForType:-[NUAuxiliaryImageRenderJob auxiliaryImageType](self error:{"auxiliaryImageType"), a3}];

      v8 = v23 != 0;
      if (v23)
      {
        [(NUAuxiliaryImageRenderJob *)self setAuxiliaryImage:v23];
      }
    }

    return v8;
  }

  v9 = [(NURenderJob *)self renderer:a3];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(NURenderJob *)self outputGeometry];
  v12 = [v11 scaledSize];
  v14 = v13;
  v15 = [NUVideoUtilities newPixelBufferOfSize:v12 format:v13, [(NUAuxiliaryImageRenderJob *)self targetPixelFormat]];
  pixelBuffer = self->_pixelBuffer;
  self->_pixelBuffer = v15;

  v17 = self->_pixelBuffer;
  if (!v17)
  {
    v24 = [(NURenderJob *)self request];
    v25 = [v24 copy];
    *a3 = [NUError failureError:@"failed to allocate buffer for depth" object:v25];

    return 0;
  }

  v18 = 0;
  auxiliaryImageType = self->_auxiliaryImageType;
  v68 = v11;
  if (auxiliaryImageType <= 0xB)
  {
    if (((1 << auxiliaryImageType) & 0x378) != 0)
    {
      v20 = [(NUCVPixelBuffer *)v17 CVPixelBuffer];
      CVBufferSetAttachment(v20, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      v21 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(v21, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
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
    v29 = [v28 BOOLValue];

    v30 = [(__CFDictionary *)v27 objectForKeyedSubscript:*MEMORY[0x1E69662B8]];
    v31 = [v30 BOOLValue];

    if ((v29 & 1) != 0 || v31)
    {
      v34 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v33 = *MEMORY[0x1E6965CE8];
      CVBufferRemoveAttachment(v34, *MEMORY[0x1E6965CE8]);
      v35 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(v35, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      v36 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      CVBufferSetAttachment(v36, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
      v18 = 0;
    }

    else
    {
      v18 = +[NUColorSpace linearGrayColorSpace];
      v32 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v33 = *MEMORY[0x1E6965CE8];
      CVBufferSetAttachment(v32, *MEMORY[0x1E6965CE8], [v18 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    }

    v37 = [(NUImageProperties *)self->_imageProperties flexRangeProperties];
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      if (+[NUGlobalSettings forceMeteorPlusLinear])
      {
LABEL_28:

        goto LABEL_29;
      }

      v67 = +[NUColorSpace genericGrayGamma2_2ColorSpace];

      v39 = [(NUCVPixelBuffer *)self->_pixelBuffer CVPixelBuffer];
      v38 = +[NUColorSpace linearGrayColorSpace];
      CVBufferSetAttachment(v39, v33, [v38 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
      v18 = v67;
    }

    goto LABEL_28;
  }

LABEL_29:
  v40 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUCVPixelBuffer CVPixelBuffer](self->_pixelBuffer, "CVPixelBuffer")}];
  v41 = MEMORY[0x1E696AEC0];
  v42 = [(NURenderJob *)self request];
  v43 = [v42 name];
  v44 = [v41 stringWithFormat:@"%@-j%lld", v43, -[NURenderJob jobNumber](self, "jobNumber")];
  [v40 setLabel:v44];

  [v40 setColorSpace:{objc_msgSend(v18, "CGColorSpace")}];
  v45 = [(NURenderJob *)self outputImage];
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v12;
  v70 = v14;
  v46 = [v10 renderImage:v45 rect:buf toDestination:v40 atPoint:0 error:{0, a3}];
  renderTask = self->_renderTask;
  self->_renderTask = v46;

  if (!self->_renderTask)
  {
    v48 = [(NURenderJob *)self request];
    v49 = [v48 copy];
    *a3 = [NUError errorWithCode:1 reason:@"failed to prepare render auxiliaryImage" object:v49 underlyingError:*a3];
  }

  return self->_renderTask != 0;
}

- (unsigned)targetPixelFormat
{
  v3 = [(NUAuxiliaryImageRenderJob *)self auxiliaryImageType];
  if ((v3 - 10) < 2)
  {
    return 1111970369;
  }

  if (v3 == 2)
  {
    return 1751411059;
  }

  v4 = 1278226488;
  if (v3 == 7)
  {
    v5 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v6 = [v5 auxiliaryImagePropertiesForType:7];

    v10 = 0;
    v7 = [v6 auxiliaryImage:&v10];
    v8 = v7;
    if (v7)
    {
      v4 = [v7 pixelFormatType];
    }
  }

  return v4;
}

- (BOOL)prepare:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 157, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "error != nil");
  }

  v3 = a3;
  v5 = [(NURenderJob *)self request];
  -[NUAuxiliaryImageRenderJob setAuxiliaryImageType:](self, "setAuxiliaryImageType:", [v5 auxiliaryImageType]);
  v23.receiver = self;
  v23.super_class = NUAuxiliaryImageRenderJob;
  LOBYTE(v3) = [(NURenderJob *)&v23 prepare:v3];

  return v3;
}

- (id)evaluateOutputGeometry:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(NURenderJob *)self prepareNode];

  if (!v5)
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
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob evaluateOutputGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 144, @"Missing prepare node", v23, v24, v25, v26, v27.receiver);
  }

  v6 = [(NURenderJob *)self prepareNode];
  v7 = [v6 imageProperties:a3];
  [(NUAuxiliaryImageRenderJob *)self setImageProperties:v7];

  v8 = [(NUAuxiliaryImageRenderJob *)self imageProperties];

  if (v8)
  {
    v27.receiver = self;
    v27.super_class = NUAuxiliaryImageRenderJob;
    v9 = [(NURenderJob *)&v27 evaluateOutputGeometry:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NUAuxiliaryImageRenderJob;
  v5 = [(NURenderJob *)&v8 newRenderPipelineStateForEvaluationMode:?];
  v6 = v5;
  if (a3)
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
  v5 = [(NUAuxiliaryImageRenderJob *)self imageProperties];

  if (!v5)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *v33 = 138543618;
        *&v33[4] = v24;
        v34 = 2114;
        v35 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v33, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *v33 = 138543362;
      *&v33[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v33, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRenderJob scalePolicy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 121, @"Missing image properties", v29, v30, v31, v32, *v33);
  }

  v6 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
  v7 = [v6 auxiliaryImagePropertiesForType:{-[NUAuxiliaryImageRenderJob auxiliaryImageType](self, "auxiliaryImageType")}];

  if (v7)
  {
    v8 = [(NUAuxiliaryImageRenderJob *)self imageProperties];
    v9 = [v8 size];
    v11 = v10;

    v12 = [v7 size];
    v3 = NUScaleToFitSizeInSize(v9, v11, v12, v13);
    v4 = v14;
  }

  v15 = [[NUFixedScalePolicy alloc] initWithScale:v3, v4];

  return v15;
}

@end