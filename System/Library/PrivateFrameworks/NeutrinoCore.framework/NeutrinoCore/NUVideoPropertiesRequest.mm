@interface NUVideoPropertiesRequest
- (id)newRenderJob;
- (void)submit:(id)a3;
@end

@implementation NUVideoPropertiesRequest

- (void)submit:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NURenderRequest *)self renderContext];
  if ([v5 purpose] == 1)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_455);
    }

    v6 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = [v7 stringWithFormat:@"submitting a video properties request on a still image purpose context"];
      *v27 = 138543362;
      *&v27[4] = v9;
      _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v27, 0xCu);

      v10 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v10 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_455);
        }

        goto LABEL_9;
      }

      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_455);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v11 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = specific;
        v19 = v11;
        v20 = [v17 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *v27 = 138543618;
        *&v27[4] = specific;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v27, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUVideoPropertiesRequest submit:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPropertiesRequest.m", 30, @"submitting a video properties request on a still image purpose context", v12, v13, v14, v15, *v27);
      goto LABEL_16;
    }

    v22 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *v27 = 138543362;
      *&v27[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v27, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  [(NURenderRequest *)self submitGeneric:v4];
}

- (id)newRenderJob
{
  v3 = [NUVideoPropertiesJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end