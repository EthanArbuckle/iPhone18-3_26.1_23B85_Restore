@interface NUVisionDetectionJob
- (BOOL)render:(id *)a3;
- (NUVisionDetectionJob)initWithRequest:(id)a3;
- (NUVisionDetectionJob)initWithVisionDetectionRequest:(id)a3;
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
  v4 = [(NUVisionDetectionJob *)self observations];
  [(_NUVisionDetectionResult *)v3 setObservations:v4];

  v5 = [(NURenderJob *)self outputGeometry];
  v6 = [v5 size];
  [(_NUVisionDetectionResult *)v3 setImageSize:v6, v7];

  return v3;
}

- (BOOL)render:(id *)a3
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v34;
        v57 = 2114;
        v58 = v38;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionDetectionJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionDetectionRequest.m", 119, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    v6 = [(NURenderJob *)self outputImage];
    v7 = [v5 context];
    v8 = objc_alloc(MEMORY[0x1E69845B8]);
    v53 = *MEMORY[0x1E6984998];
    v54 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v10 = +[NUFactory sharedFactory];
    v11 = [v10 visionSession];
    v12 = [v8 initWithCIImage:v6 options:v9 session:v11];

    v13 = [(NUVisionDetectionJob *)self detectionRequest];
    v14 = [v13 visionRequests];

    v51 = 0;
    v15 = [v12 performRequests:v14 error:&v51];
    v16 = v51;
    v17 = v16;
    if (v15)
    {
      v43 = v16;
      v44 = v12;
      v45 = v7;
      v46 = v6;
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v14;
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

            v24 = [*(*(&v47 + 1) + 8 * i) results];
            if (v24)
            {
              [v18 addObjectsFromArray:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v21);
      }

      v25 = [v18 copy];
      [(NUVisionDetectionJob *)self setObservations:v25];

      v7 = v45;
      v6 = v46;
      v17 = v43;
      v12 = v44;
    }

    else
    {
      *a3 = [NUError errorWithCode:1 reason:@"Vision detection failed" object:v14 underlyingError:v16];
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
  v2 = [(NUVisionDetectionJob *)self detectionRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

- (NUVisionDetectionJob)initWithRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  _NUAssertFailHandler("[NUVisionDetectionJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionDetectionRequest.m", 94, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVisionDetectionJob)initWithVisionDetectionRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = NUVisionDetectionJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

@end