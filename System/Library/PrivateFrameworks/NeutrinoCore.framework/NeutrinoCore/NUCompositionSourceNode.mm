@interface NUCompositionSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options;
- (BOOL)load:(id *)load;
- (NUCompositionSourceNode)initWithComposition:(id)composition renderPipeline:(id)pipeline settings:(id)settings;
- (NUCompositionSourceNode)initWithSettings:(id)settings;
- (id)_compositionRenderNodeForPipelineState:(id)state error:(id *)error;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error;
@end

@implementation NUCompositionSourceNode

- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error
{
  v6 = objc_alloc_init(NURenderPipelineState);
  [(NURenderPipelineState *)v6 setEvaluationMode:0];
  [(NURenderPipelineState *)v6 setMediaComponentType:1];
  v7 = [(NUCompositionSourceNode *)self _compositionRenderNodeForPipelineState:v6 error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 imageProperties:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error
{
  v6 = objc_alloc_init(NURenderPipelineState);
  [(NURenderPipelineState *)v6 setEvaluationMode:0];
  [(NURenderPipelineState *)v6 setMediaComponentType:1];
  v7 = [(NUCompositionSourceNode *)self _compositionRenderNodeForPipelineState:v6 error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 outputImageGeometry:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_compositionRenderNodeForPipelineState:(id)state error:(id *)error
{
  v6 = [state copy];
  [v6 resetRenderTagGroups];
  v7 = [(NURenderPipeline *)self->_renderPipeline processedRenderNodeForComposition:self->_composition pipelineState:v6 error:error];

  return v7;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  if (width)
  {
    v7 = height == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = NUAssertLogger_22348();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_22348();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSourceNode pixelSizeWithSourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Composition.m", 89, @"%@ not loaded", v22, v23, v24, v25, self);
  }

  v8 = width;
  v9 = height;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (BOOL)load:(id *)load
{
  p_pixelSize = &self->_pixelSize;
  if (self->_pixelSize.width)
  {
    v4 = self->_pixelSize.height == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v14 = 0;
    v7 = [(NURenderNode *)self outputImageGeometry:&v14];
    if (!v7)
    {
      v11 = v14;
      v12 = [NUError errorWithCode:1 reason:@"Failed to compute image geometry" object:self underlyingError:v11];
      v13 = v12;

      result = 0;
      *load = v12;
      return result;
    }

    v8 = v7;
    p_pixelSize->width = [v7 scaledSize];
    p_pixelSize->height = v9;
  }

  return 1;
}

- (id)_evaluateImage:(id *)image
{
  if (image)
  {
    *image = [NUError errorWithCode:9 reason:@"NUCompositionSourceNode does not provide images directly" object:self];
  }

  return 0;
}

- (NUCompositionSourceNode)initWithSettings:(id)settings
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22361);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_22361);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_22361);
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
  _NUAssertFailHandler("[NUCompositionSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Composition.m", 53, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUCompositionSourceNode)initWithComposition:(id)composition renderPipeline:(id)pipeline settings:(id)settings
{
  v54 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  pipelineCopy = pipeline;
  settingsCopy = settings;
  if (!compositionCopy)
  {
    v17 = NUAssertLogger_22348();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_22348();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSourceNode initWithComposition:renderPipeline:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Composition.m", 40, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "composition != nil");
  }

  if (!pipelineCopy)
  {
    v24 = NUAssertLogger_22348();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_22348();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSourceNode initWithComposition:renderPipeline:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Composition.m", 41, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "pipeline != nil");
  }

  v11 = settingsCopy;
  v49.receiver = self;
  v49.super_class = NUCompositionSourceNode;
  v12 = [(NUSourceNode *)&v49 initWithSettings:settingsCopy];
  composition = v12->_composition;
  v12->_composition = compositionCopy;
  v14 = compositionCopy;

  renderPipeline = v12->_renderPipeline;
  v12->_renderPipeline = pipelineCopy;

  return v12;
}

@end