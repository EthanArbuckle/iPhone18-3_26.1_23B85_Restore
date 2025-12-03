@interface NUClassifyPipelineImageCorrectionJob
- (BOOL)render:(id *)render;
- (NUClassifyPipelineImageCorrectionJob)initWithClassifyPipelineImageCorrectionRequest:(id)request;
- (NUClassifyPipelineImageCorrectionJob)initWithRequest:(id)request;
- (id)cacheKey;
- (id)detectClassifyPipelineImageCorrectionInBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation NUClassifyPipelineImageCorrectionJob

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = NUClassifyPipelineImageCorrectionJob;
  [(NURenderJob *)&v4 cleanUp];
  observation = self->_observation;
  self->_observation = 0;
}

- (id)result
{
  v3 = objc_alloc_init(_NUClassifyPipelineImageCorrectionResult);
  [(VNObservation *)self->_observation confidence];
  [(_NUClassifyPipelineImageCorrectionResult *)v3 setConfidence:?];

  return v3;
}

- (BOOL)render:(id *)render
{
  v50 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v29 = NUAssertLogger_16930();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_16930();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v36;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 166, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    outputImage = [(NURenderJob *)self outputImage];
    [outputImage extent];
    buf.origin.x = v7;
    buf.origin.y = v8;
    buf.size.width = v9;
    buf.size.height = v10;
    NU::RectT<long>::RectT(&v47, &buf, 0);
    v45 = v48;
    v46 = v47;
    v11 = [NUVideoUtilities newPixelBufferOfSize:v48 format:1111970369];
    if (!v11)
    {
      [NUError failureError:@"failed to allocate buffer for image" object:outputImage];
      *render = v24 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v12 = +[NUColorSpace sRGBColorSpace];
    cVPixelBuffer = [v11 CVPixelBuffer];
    CVBufferSetAttachment(cVPixelBuffer, *MEMORY[0x1E6965CE8], [v12 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    v14 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v11, "CVPixelBuffer")}];
    v15 = MEMORY[0x1E696AEC0];
    request = [(NURenderJob *)self request];
    name = [request name];
    v18 = [v15 stringWithFormat:@"%@-j%lld", name, -[NURenderJob jobNumber](self, "jobNumber")];
    [v14 setLabel:v18];

    outputImage2 = [(NURenderJob *)self outputImage];
    buf.origin = v46;
    buf.size = v45;
    v20 = [v5 renderImage:outputImage2 rect:&buf toDestination:v14 atPoint:0 error:{0, render}];

    if (v20)
    {
      v21 = [v20 waitUntilCompletedAndReturnError:render];

      if (v21)
      {
        v22 = -[NUClassifyPipelineImageCorrectionJob detectClassifyPipelineImageCorrectionInBuffer:error:](self, "detectClassifyPipelineImageCorrectionInBuffer:error:", [v11 CVPixelBuffer], render);
        observation = self->_observation;
        self->_observation = v22;
        v24 = 1;
LABEL_12:

        goto LABEL_13;
      }

      observation = [(NURenderJob *)self request];
      v25 = [observation copy];
      v26 = *render;
      v27 = @"failed to render for image correction detection. Error completing task.";
    }

    else
    {
      observation = [(NURenderJob *)self request];
      v25 = [observation copy];
      v26 = *render;
      v27 = @"failed to render for image correction detection. Error creating task.";
    }

    *render = [NUError errorWithCode:1 reason:v27 object:v25 underlyingError:v26];

    v24 = 0;
    goto LABEL_12;
  }

  v24 = 0;
LABEL_14:

  return v24;
}

- (id)detectClassifyPipelineImageCorrectionInBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v18 = NUAssertLogger_16930();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v53 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_16930();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v25;
        v54 = 2114;
        v55 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob detectClassifyPipelineImageCorrectionInBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 144, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "error != NULL");
  }

  v6 = objc_alloc_init(NSClassFromString(&cfstr_Vnclassifypipe.isa));
  [v6 setRevision:1];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69845B8]);
    v8 = +[NUFactory sharedFactory];
    visionSession = [v8 visionSession];
    v10 = [v7 initWithCVPixelBuffer:buffer options:MEMORY[0x1E695E0F8] session:visionSession];

    v51 = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v12 = [v10 performRequests:v11 error:error];

    if (v12)
    {
      results = [v6 results];

      if (!results)
      {
        v34 = NUAssertLogger_16930();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"successful correction request has nil results"];
          *buf = 138543362;
          v53 = v35;
          _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = NUAssertLogger_16930();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          if (v38)
          {
            v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v42 = MEMORY[0x1E696AF00];
            v43 = v41;
            callStackSymbols3 = [v42 callStackSymbols];
            v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v53 = v41;
            v54 = 2114;
            v55 = v45;
            _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v38)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v53 = v40;
          _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob detectClassifyPipelineImageCorrectionInBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 159, @"successful correction request has nil results", v46, v47, v48, v49, v50);
      }

      results2 = [v6 results];
      firstObject = [results2 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    *error = [NUError failureError:@"unable to create correction request" object:null];

    firstObject = 0;
  }

  return firstObject;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  renderNode = [(NURenderJob *)self renderNode];
  [renderNode nu_updateDigest:v3];

  [(NUDigest *)v3 finalize];
  stringValue = [(NUDigest *)v3 stringValue];

  return stringValue;
}

- (id)scalePolicy
{
  classifyPipelineImageCorrectionRequest = [(NUClassifyPipelineImageCorrectionJob *)self classifyPipelineImageCorrectionRequest];
  scalePolicy = [classifyPipelineImageCorrectionRequest scalePolicy];

  return scalePolicy;
}

- (NUClassifyPipelineImageCorrectionJob)initWithRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16959);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_16959);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16959);
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
  _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 105, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUClassifyPipelineImageCorrectionJob)initWithClassifyPipelineImageCorrectionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = NUClassifyPipelineImageCorrectionJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

@end