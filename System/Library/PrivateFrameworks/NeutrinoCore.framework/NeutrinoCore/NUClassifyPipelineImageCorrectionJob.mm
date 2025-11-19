@interface NUClassifyPipelineImageCorrectionJob
- (BOOL)render:(id *)a3;
- (NUClassifyPipelineImageCorrectionJob)initWithClassifyPipelineImageCorrectionRequest:(id)a3;
- (NUClassifyPipelineImageCorrectionJob)initWithRequest:(id)a3;
- (id)cacheKey;
- (id)detectClassifyPipelineImageCorrectionInBuffer:(__CVBuffer *)a3 error:(id *)a4;
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

- (BOOL)render:(id *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v36;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 166, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    v6 = [(NURenderJob *)self outputImage];
    [v6 extent];
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
      [NUError failureError:@"failed to allocate buffer for image" object:v6];
      *a3 = v24 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v12 = +[NUColorSpace sRGBColorSpace];
    v13 = [v11 CVPixelBuffer];
    CVBufferSetAttachment(v13, *MEMORY[0x1E6965CE8], [v12 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    v14 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v11, "CVPixelBuffer")}];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [(NURenderJob *)self request];
    v17 = [v16 name];
    v18 = [v15 stringWithFormat:@"%@-j%lld", v17, -[NURenderJob jobNumber](self, "jobNumber")];
    [v14 setLabel:v18];

    v19 = [(NURenderJob *)self outputImage];
    buf.origin = v46;
    buf.size = v45;
    v20 = [v5 renderImage:v19 rect:&buf toDestination:v14 atPoint:0 error:{0, a3}];

    if (v20)
    {
      v21 = [v20 waitUntilCompletedAndReturnError:a3];

      if (v21)
      {
        v22 = -[NUClassifyPipelineImageCorrectionJob detectClassifyPipelineImageCorrectionInBuffer:error:](self, "detectClassifyPipelineImageCorrectionInBuffer:error:", [v11 CVPixelBuffer], a3);
        observation = self->_observation;
        self->_observation = v22;
        v24 = 1;
LABEL_12:

        goto LABEL_13;
      }

      observation = [(NURenderJob *)self request];
      v25 = [observation copy];
      v26 = *a3;
      v27 = @"failed to render for image correction detection. Error completing task.";
    }

    else
    {
      observation = [(NURenderJob *)self request];
      v25 = [observation copy];
      v26 = *a3;
      v27 = @"failed to render for image correction detection. Error creating task.";
    }

    *a3 = [NUError errorWithCode:1 reason:v27 object:v25 underlyingError:v26];

    v24 = 0;
    goto LABEL_12;
  }

  v24 = 0;
LABEL_14:

  return v24;
}

- (id)detectClassifyPipelineImageCorrectionInBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a4)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v25;
        v54 = 2114;
        v55 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
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
    v9 = [v8 visionSession];
    v10 = [v7 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8] session:v9];

    v51 = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v12 = [v10 performRequests:v11 error:a4];

    if (v12)
    {
      v13 = [v6 results];

      if (!v13)
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
            v44 = [v42 callStackSymbols];
            v45 = [v44 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v53 = v41;
            v54 = 2114;
            v55 = v45;
            _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v38)
        {
          v39 = [MEMORY[0x1E696AF00] callStackSymbols];
          v40 = [v39 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v53 = v40;
          _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUClassifyPipelineImageCorrectionJob detectClassifyPipelineImageCorrectionInBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUClassifyPipelineImageCorrectionRequest.m", 159, @"successful correction request has nil results", v46, v47, v48, v49, v50);
      }

      v14 = [v6 results];
      v15 = [v14 firstObject];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
    *a4 = [NUError failureError:@"unable to create correction request" object:v16];

    v15 = 0;
  }

  return v15;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  v4 = [(NURenderJob *)self renderNode];
  [v4 nu_updateDigest:v3];

  [(NUDigest *)v3 finalize];
  v5 = [(NUDigest *)v3 stringValue];

  return v5;
}

- (id)scalePolicy
{
  v2 = [(NUClassifyPipelineImageCorrectionJob *)self classifyPipelineImageCorrectionRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

- (NUClassifyPipelineImageCorrectionJob)initWithRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
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

- (NUClassifyPipelineImageCorrectionJob)initWithClassifyPipelineImageCorrectionRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = NUClassifyPipelineImageCorrectionJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

@end