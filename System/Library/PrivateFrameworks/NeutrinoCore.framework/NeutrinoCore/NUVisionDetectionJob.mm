@interface NUVisionDetectionJob
- (BOOL)render:(id *)render;
- (NUVisionDetectionJob)initWithRequest:(id)request;
- (NUVisionDetectionJob)initWithVisionDetectionRequest:(id)request;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation NUVisionDetectionJob

- (void)cleanUp
{
  v3.receiver = self;
  v3.super_class = NUVisionDetectionJob;
  [(NURenderJob *)&v3 cleanUp];
  [(NUVisionDetectionJob *)self setObservations:0];
}

- (id)result
{
  v3 = objc_alloc_init(_NUVisionDetectionResult);
  observations = [(NUVisionDetectionJob *)self observations];
  [(_NUVisionDetectionResult *)v3 setObservations:observations];

  outputGeometry = [(NURenderJob *)self outputGeometry];
  v6 = [outputGeometry size];
  [(_NUVisionDetectionResult *)v3 setImageSize:v6, v7];

  return v3;
}

- (BOOL)render:(id *)render
{
  v59 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v27 = NUAssertLogger_17661();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v56 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_17661();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v34;
        v57 = 2114;
        v58 = v38;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionDetectionJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionDetectionRequest.m", 119, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    outputImage = [(NURenderJob *)self outputImage];
    context = [v5 context];
    v8 = objc_alloc(MEMORY[0x1E69845B8]);
    v53 = *MEMORY[0x1E6984998];
    v54 = context;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v10 = +[NUFactory sharedFactory];
    visionSession = [v10 visionSession];
    v12 = [v8 initWithCIImage:outputImage options:v9 session:visionSession];

    detectionRequest = [(NUVisionDetectionJob *)self detectionRequest];
    visionRequests = [detectionRequest visionRequests];

    v51 = 0;
    v15 = [v12 performRequests:visionRequests error:&v51];
    v16 = v51;
    v17 = v16;
    if (v15)
    {
      v43 = v16;
      v44 = v12;
      v45 = context;
      v46 = outputImage;
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = visionRequests;
      v20 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v48;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v19);
            }

            results = [*(*(&v47 + 1) + 8 * i) results];
            if (results)
            {
              [v18 addObjectsFromArray:results];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v21);
      }

      v25 = [v18 copy];
      [(NUVisionDetectionJob *)self setObservations:v25];

      context = v45;
      outputImage = v46;
      v17 = v43;
      v12 = v44;
    }

    else
    {
      *render = [NUError errorWithCode:1 reason:@"Vision detection failed" object:visionRequests underlyingError:v16];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)scalePolicy
{
  detectionRequest = [(NUVisionDetectionJob *)self detectionRequest];
  scalePolicy = [detectionRequest scalePolicy];

  return scalePolicy;
}

- (NUVisionDetectionJob)initWithRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_150);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_150);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_150);
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
  _NUAssertFailHandler("[NUVisionDetectionJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionDetectionRequest.m", 94, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVisionDetectionJob)initWithVisionDetectionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = NUVisionDetectionJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

@end