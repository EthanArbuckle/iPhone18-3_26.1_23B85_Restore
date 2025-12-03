@interface NUHDRGainMapDivideNode
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (NUHDRGainMapDivideNode)initWithInput:(id)input lightMap:(id)map settings:(id)settings;
- (NUHDRGainMapDivideNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)inputNode;
- (id)lightMapNode;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation NUHDRGainMapDivideNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v22[2] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] == 7)
  {
    inputNode2 = [stateCopy copy];
    [inputNode2 setAuxiliaryImageType:1];
    lightMapNode = [(NUHDRGainMapDivideNode *)self lightMapNode];
    v12 = [lightMapNode nodeByReplayingAgainstCache:cacheCopy pipelineState:inputNode2 error:error];

    if (v12)
    {
      inputNode = [(NUHDRGainMapDivideNode *)self inputNode];
      v14 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:inputNode2 error:error];

      if (v14)
      {
        settings = [(NURenderNode *)self settings];
        v16 = [settings mutableCopy];

        [v16 setObject:@"inputImage" forKeyedSubscript:@"__dominantInputSettingsKey"];
        [v16 setObject:&unk_1F3F823B0 forKeyedSubscript:@"__gainMapMode"];
        v21[0] = @"inputImage";
        v21[1] = @"inputLightMap";
        v22[0] = v14;
        v22[1] = v12;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        v18 = [[NUFilterNode alloc] initWithFilterName:@"NUHDRDivideGainMapFilter" settings:v16 inputs:v17];
        v19 = [(NURenderNode *)v18 resolvedNodeWithCachedInputs:v17 cache:cacheCopy pipelineState:stateCopy error:error];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    inputNode2 = [(NUHDRGainMapDivideNode *)self inputNode];
    v19 = [inputNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v19;
}

- (id)lightMapNode
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:@"inputLightMap"];

  return v3;
}

- (id)inputNode
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:@"inputImage"];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy evaluationMode] == 1 && objc_msgSend(stateCopy, "auxiliaryImageType") == 7;

  return v4;
}

- (NUHDRGainMapDivideNode)initWithInput:(id)input lightMap:(id)map settings:(id)settings
{
  v38 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  mapCopy = map;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v15 = NUAssertLogger_11533();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v35 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_11533();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v22;
        v36 = 2114;
        v37 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapDivideNode initWithInput:lightMap:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 750, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "input != nil");
  }

  v11 = settingsCopy;
  v32[0] = @"inputLightMap";
  v32[1] = @"inputImage";
  v33[0] = mapCopy;
  v33[1] = inputCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v31.receiver = self;
  v31.super_class = NUHDRGainMapDivideNode;
  v13 = [(NURenderNode *)&v31 initWithSettings:v11 inputs:v12];

  return v13;
}

- (NUHDRGainMapDivideNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
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
  _NUAssertFailHandler("[NUHDRGainMapDivideNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 746, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end