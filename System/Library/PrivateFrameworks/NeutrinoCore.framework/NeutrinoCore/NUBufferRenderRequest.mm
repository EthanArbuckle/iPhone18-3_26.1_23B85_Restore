@interface NUBufferRenderRequest
- (id)newRenderJob;
- (void)submit:(id)submit;
@end

@implementation NUBufferRenderRequest

- (void)submit:(id)submit
{
  v30 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  renderContext = [(NURenderRequest *)self renderContext];
  if ([renderContext purpose] == 2)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1781);
    }

    v6 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = [v7 stringWithFormat:@"submitting a buffer render request on a video purpose context"];
      *v27 = 138543362;
      *&v27[4] = v9;
      _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v27, 0xCu);

      v10 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v10 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_1781);
        }

        goto LABEL_9;
      }

      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1781);
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
        callStackSymbols = [v17 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v27 = 138543618;
        *&v27[4] = specific;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v27, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUBufferRenderRequest submit:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUBufferRenderRequest.m", 29, @"submitting a buffer render request on a video purpose context", v12, v13, v14, v15, *v27);
      goto LABEL_16;
    }

    v22 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols2 = [v23 callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v27 = 138543362;
      *&v27[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v27, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  [(NURenderRequest *)self submitGeneric:submitCopy];
}

- (id)newRenderJob
{
  v3 = [NUBufferRenderJob alloc];

  return [(NUImageRenderJob *)v3 initWithImageRequest:self];
}

@end