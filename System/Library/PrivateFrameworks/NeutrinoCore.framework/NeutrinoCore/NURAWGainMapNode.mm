@interface NURAWGainMapNode
- (NURAWGainMapNode)initWithFilter:(id)filter settings:(id)settings inputs:(id)inputs;
- (NURAWGainMapNode)initWithFilterName:(id)name settings:(id)settings inputs:(id)inputs;
- (NURAWGainMapNode)initWithInput:(id)input gainMapVersion:(id)version gainMapParameters:(id)parameters;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NURAWGainMapNode

- (id)_evaluateImageGeometry:(id *)geometry
{
  v12.receiver = self;
  v12.super_class = NURAWGainMapNode;
  v4 = [(NUFilterNode *)&v12 _evaluateImageGeometry:geometry];
  if (v4)
  {
    if (-[NURenderNode isCached](self, "isCached") || (v5 = [v4 renderScale], NUScaleCompare(v5, v6, 1, 2) <= 0))
    {
      v8 = v4;
    }

    else
    {
      v7 = [NUImageGeometry alloc];
      [v4 extent];
      v8 = -[NUImageGeometry initWithExtent:renderScale:orientation:](v7, "initWithExtent:renderScale:orientation:", &v11, 1, 2, [v4 orientation]);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NURAWGainMapNode;
  v6 = [(NUFilterNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  stateCopy = state;
  cacheCopy = cache;
  if ([stateCopy auxiliaryImageType] == 7)
  {
    v10 = [stateCopy copy];
    [v10 setAuxiliaryImageType:1];
    v14.receiver = self;
    v14.super_class = NURAWGainMapNode;
    v11 = [(NUFilterNode *)&v14 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
  }

  else
  {
    v12 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
    v11 = [v12 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v11;
}

- (NURAWGainMapNode)initWithFilter:(id)filter settings:(id)settings inputs:(id)inputs
{
  v41 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
    *buf = 138543362;
    v38 = v17;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v18 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v18 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
      }

      goto LABEL_8;
    }

    if (v18 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      callStackSymbols = [v20 callStackSymbols];
      v23 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    callStackSymbols2 = [v26 callStackSymbols];
    v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v38 = specific;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURAWGainMapNode initWithFilter:settings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1194, @"Initializer not available: [%@ %@], use designated initializer instead.", v33, v34, v35, v36, v32);
}

- (NURAWGainMapNode)initWithFilterName:(id)name settings:(id)settings inputs:(id)inputs
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
    *buf = 138543362;
    v38 = v17;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v18 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v18 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
      }

      goto LABEL_8;
    }

    if (v18 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      callStackSymbols = [v20 callStackSymbols];
      v23 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    callStackSymbols2 = [v26 callStackSymbols];
    v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v38 = specific;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURAWGainMapNode initWithFilterName:settings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1189, @"Initializer not available: [%@ %@], use designated initializer instead.", v33, v34, v35, v36, v32);
}

- (NURAWGainMapNode)initWithInput:(id)input gainMapVersion:(id)version gainMapParameters:(id)parameters
{
  v40 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  versionCopy = version;
  parametersCopy = parameters;
  if (!inputCopy)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      v37 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
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
        v37 = v24;
        v38 = 2114;
        v39 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWGainMapNode initWithInput:gainMapVersion:gainMapParameters:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1176, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "node != nil");
  }

  v11 = parametersCopy;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([versionCopy isEqualToString:@"GM1"])
  {
    firstObject = [v11 firstObject];
    [v12 setObject:firstObject forKeyedSubscript:@"inputGain"];
  }

  v34 = *MEMORY[0x1E695FAB0];
  v35 = inputCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v33.receiver = self;
  v33.super_class = NURAWGainMapNode;
  v15 = [(NUFilterNode *)&v33 initWithFilterName:@"NURAWGainMapFilter" settings:v12 inputs:v14];

  return v15;
}

@end