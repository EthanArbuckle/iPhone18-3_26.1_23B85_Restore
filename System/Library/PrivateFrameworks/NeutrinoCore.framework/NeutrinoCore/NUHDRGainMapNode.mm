@interface NUHDRGainMapNode
- (NUHDRGainMapNode)initWithInput:(id)input contentHeadroom:(double)headroom displayHeadroom:(double)displayHeadroom;
- (NUHDRGainMapNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation NUHDRGainMapNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v45[2] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  inputs = [(NURenderNode *)self inputs];
  v11 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v12 = [v11 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  if (v12)
  {
    if ([stateCopy auxiliaryImageType] == 1)
    {
      v13 = [v11 imageProperties:error];
      v14 = v13;
      if (v13)
      {
        if ([v13 hasGainMap] && (objc_msgSend(v14, "gainMapHeadroom"), v15 > 1.0))
        {
          v16 = [stateCopy copy];
          [v16 setAuxiliaryImageType:7];
          v43 = 0;
          v17 = [v11 nodeByReplayingAgainstCache:cacheCopy pipelineState:v16 error:&v43];
          v18 = v43;
          v42 = v17;
          if (v17)
          {
            v19 = MEMORY[0x1E695DF90];
            v20 = v43;
            v21 = objc_alloc_init(v19);
            [(NURenderNode *)self settings];
            v22 = v41 = v16;
            [v22 objectForKeyedSubscript:@"displayHeadroom"];
            v23 = v40 = v18;
            [v23 doubleValue];
            v25 = v24;

            settings = [(NURenderNode *)self settings];
            v27 = [settings objectForKeyedSubscript:@"contentHeadroom"];
            [v27 doubleValue];
            v29 = v28;

            v30 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v29, v25)}];
            [v21 setObject:v30 forKeyedSubscript:@"inputHeadroom"];

            flexRangeProperties = [v14 flexRangeProperties];
            [v21 setObject:flexRangeProperties forKeyedSubscript:@"flexRangeProperties"];

            flexRangeProperties2 = [v14 flexRangeProperties];
            alternateColorSpace = [flexRangeProperties2 alternateColorSpace];
            [v21 setObject:alternateColorSpace forKeyedSubscript:@"inputColorSpace"];

            v34 = [NUFilterNode alloc];
            v44[0] = @"inputImage";
            v44[1] = @"inputGainMap";
            v45[0] = v12;
            v45[1] = v42;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
            v36 = [(NUFilterNode *)v34 initWithFilterName:@"NUHDRApplyGainMapFilter" settings:v21 inputs:v35];

            inputs2 = [(NURenderNode *)v36 inputs];
            v38 = [(NURenderNode *)v36 resolvedNodeWithCachedInputs:inputs2 cache:cacheCopy pipelineState:stateCopy error:error];

            v18 = v40;
            v16 = v41;
          }

          else
          {
            [NUError errorWithCode:1 reason:@"Failed to evaluate gain map image" object:v11 underlyingError:v43];
            *error = v38 = 0;
          }
        }

        else
        {
          v38 = v12;
        }
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = v12;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (NUHDRGainMapNode)initWithSettings:(id)settings inputs:(id)inputs
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
  _NUAssertFailHandler("[NUHDRGainMapNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 59, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- (NUHDRGainMapNode)initWithInput:(id)input contentHeadroom:(double)headroom displayHeadroom:(double)displayHeadroom
{
  v73 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!inputCopy)
  {
    v16 = NUAssertLogger_11533();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v70 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_11533();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v37;
        v71 = 2114;
        v72 = v41;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapNode initWithInput:contentHeadroom:displayHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 46, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "input != nil");
  }

  if (headroom < 1.0)
  {
    v23 = NUAssertLogger_11533();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contentHeadroom >= 1.0"];
      *buf = 138543362;
      v70 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_11533();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols3 = [v47 callStackSymbols];
        v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v46;
        v71 = 2114;
        v72 = v50;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapNode initWithInput:contentHeadroom:displayHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 47, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "contentHeadroom >= 1.0");
  }

  if (displayHeadroom < 1.0)
  {
    v30 = NUAssertLogger_11533();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "displayHeadroom >= 1.0"];
      *buf = 138543362;
      v70 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_11533();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols5 = [v56 callStackSymbols];
        v59 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v55;
        v71 = 2114;
        v72 = v59;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapNode initWithInput:contentHeadroom:displayHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 48, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "displayHeadroom >= 1.0");
  }

  v9 = inputCopy;
  v67[0] = @"contentHeadroom";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  v67[1] = @"displayHeadroom";
  v68[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:displayHeadroom];
  v68[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v65 = *MEMORY[0x1E695FAB0];
  v66 = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v64.receiver = self;
  v64.super_class = NUHDRGainMapNode;
  v14 = [(NURenderNode *)&v64 initWithSettings:v12 inputs:v13];

  return v14;
}

@end