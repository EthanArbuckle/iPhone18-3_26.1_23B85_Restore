@interface NUSwitchNode
- (NUSwitchNode)initWithInputs:(id)inputs mainInput:(id)input selector:(id)selector;
- (NUSwitchNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)uniqueInputNode;
@end

@implementation NUSwitchNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  settings = [(NURenderNode *)self settings];
  v11 = [settings nu_evaluateWithPipelineState:stateCopy error:error];

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"selector"];
    inputs = [(NURenderNode *)self inputs];
    v14 = [inputs objectForKeyedSubscript:v12];

    if (v14)
    {
      v15 = [v14 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    }

    else
    {
      [NUError missingError:@"Missing input for selector" object:v12];
      *error = v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)uniqueInputNode
{
  dominantInputKey = [(NURenderNode *)self dominantInputKey];
  v4 = [(NURenderNode *)self inputForKey:dominantInputKey];

  return v4;
}

- (NUSwitchNode)initWithInputs:(id)inputs mainInput:(id)input selector:(id)selector
{
  v69 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  inputCopy = input;
  selectorCopy = selector;
  if (![inputsCopy count])
  {
    v14 = NUAssertLogger_1149();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count != 0"];
      *buf = 138543362;
      v66 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_1149();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v35;
        v67 = 2114;
        v68 = v39;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSwitchNode initWithInputs:mainInput:selector:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUSwitchNode.m", 21, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "inputs.count != 0");
  }

  if (!selectorCopy)
  {
    v21 = NUAssertLogger_1149();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "selector != nil"];
      *buf = 138543362;
      v66 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_1149();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v44;
        v67 = 2114;
        v68 = v48;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSwitchNode initWithInputs:mainInput:selector:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUSwitchNode.m", 22, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "selector != nil");
  }

  if (!inputCopy)
  {
    v28 = NUAssertLogger_1149();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "mainKey != nil"];
      *buf = 138543362;
      v66 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_1149();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols5 = [v54 callStackSymbols];
        v57 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v53;
        v67 = 2114;
        v68 = v57;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSwitchNode initWithInputs:mainInput:selector:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUSwitchNode.m", 23, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "mainKey != nil");
  }

  v63[0] = @"selector";
  v63[1] = @"__dominantInputSettingsKey";
  v64[0] = selectorCopy;
  v64[1] = inputCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v62.receiver = self;
  v62.super_class = NUSwitchNode;
  v12 = [(NURenderNode *)&v62 initWithSettings:v11 inputs:inputsCopy];

  return v12;
}

- (NUSwitchNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1177);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1177);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1177);
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
  _NUAssertFailHandler("[NUSwitchNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUSwitchNode.m", 18, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end