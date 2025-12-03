@interface NURedEyeDetectionJob
- (BOOL)prepare:(id *)prepare;
- (id)requestOptions;
- (void)cleanUp;
@end

@implementation NURedEyeDetectionJob

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = NURedEyeDetectionJob;
  [(NUImageDataJob *)&v4 cleanUp];
  fullSizeImage = self->_fullSizeImage;
  self->_fullSizeImage = 0;
}

- (id)requestOptions
{
  v7.receiver = self;
  v7.super_class = NURedEyeDetectionJob;
  requestOptions = [(NUImageDataJob *)&v7 requestOptions];
  v4 = [requestOptions mutableCopy];

  [v4 setObject:self->_fullSizeImage forKeyedSubscript:@"fullSizeImage"];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)prepare:(id *)prepare
{
  v38 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = NURedEyeDetectionJob;
  if (![(NURenderJob *)&v33 prepare:?])
  {
    return 0;
  }

  prepareNode = [(NURenderJob *)self prepareNode];

  if (!prepareNode)
  {
    v17 = NUAssertLogger_3811();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *buf = 138543362;
      v35 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_3811();
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
        v35 = v24;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURedEyeDetectionJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURedEyeDetectionRequest.m", 68, @"Missing prepare node", v29, v30, v31, v32, v33.receiver);
  }

  [(NURenderJob *)self setRenderScale:NUScaleOne];
  v6 = [(NUImageDataJob *)self newRenderPipelineStateForEvaluationMode:1];
  [v6 setScale:NUScaleOne];
  v7 = [(NURenderJob *)self renderNodeWithPipelineState:v6 error:prepare];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 outputImage:prepare];
    v10 = v9 != 0;
    if (v9)
    {
      v11 = [v8 imageProperties:prepare];
      v12 = v11;
      if (v11)
      {
        metadata = [v11 metadata];
        v14 = [v9 imageBySettingProperties:metadata];
        fullSizeImage = self->_fullSizeImage;
        self->_fullSizeImage = v14;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end