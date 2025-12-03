@interface NUAuxiliaryRenderNode
- (NUAuxiliaryRenderNode)initWithInput:(id)input auxiliaryImageType:(int64_t)type;
- (NUAuxiliaryRenderNode)initWithSettings:(id)settings inputs:(id)inputs;
- (NURenderNode)inputNode;
- (id)_evaluateImageProperties:(id *)properties;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (int64_t)auxiliaryImageType;
@end

@implementation NUAuxiliaryRenderNode

- (id)_evaluateImageProperties:(id *)properties
{
  v7.receiver = self;
  v7.super_class = NUAuxiliaryRenderNode;
  v3 = [(NURenderNode *)&v7 _evaluateImageProperties:properties];
  if (v3)
  {
    v4 = v3;
    v5 = [[_NUImageProperties alloc] initWithProperties:v3];
    [(_NUImageProperties *)v5 resetAuxiliaryImageProperties];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  v9 = [state copy];
  [v9 setAuxiliaryImageType:{-[NUAuxiliaryRenderNode auxiliaryImageType](self, "auxiliaryImageType")}];
  inputNode = [(NUAuxiliaryRenderNode *)self inputNode];
  v11 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v9 error:error];

  return v11;
}

- (NURenderNode)inputNode
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:@"input"];

  return v3;
}

- (int64_t)auxiliaryImageType
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"type"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NUAuxiliaryRenderNode)initWithInput:(id)input auxiliaryImageType:(int64_t)type
{
  v38 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!inputCopy)
  {
    v13 = NUAssertLogger_31991();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      v35 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_31991();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v20;
        v36 = 2114;
        v37 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryRenderNode initWithInput:auxiliaryImageType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUAuxiliaryRenderNode.m", 22, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "node != nil");
  }

  v7 = inputCopy;
  v32 = @"type";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v33 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v30 = @"input";
  v31 = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v29.receiver = self;
  v29.super_class = NUAuxiliaryRenderNode;
  v11 = [(NURenderNode *)&v29 initWithSettings:v9 inputs:v10];

  return v11;
}

- (NUAuxiliaryRenderNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_32008);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_32008);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_32008);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUAuxiliaryRenderNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUAuxiliaryRenderNode.m", 18, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end