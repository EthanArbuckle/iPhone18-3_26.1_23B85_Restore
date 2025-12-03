@interface NUStyleTransferInterpolationNode
- (NUStyleTransferInterpolationNode)initWithInputs:(id)inputs weights:(id)weights settings:(id)settings;
- (NUStyleTransferInterpolationNode)initWithSettings:(id)settings inputs:(id)inputs;
- (float)interpolationWeightAtIndex:(unint64_t)index;
- (id)_evaluateImage:(id *)image;
- (id)configuration;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)styleInputAtIndex:(unint64_t)index;
- (id)targetColorSpace;
- (id)tuningParameters;
- (unint64_t)inputCount;
@end

@implementation NUStyleTransferInterpolationNode

- (id)_evaluateImage:(id *)image
{
  inputCount = [(NUStyleTransferInterpolationNode *)self inputCount];
  if (inputCount)
  {
    v6 = inputCount;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:inputCount];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v9;
      v12 = [(NUStyleTransferInterpolationNode *)self styleInputAtIndex:v10];
      v19 = 0;
      v13 = [v12 outputImage:&v19];
      v9 = v19;

      if (!v13)
      {
        break;
      }

      [v7 addObject:v13];
      [(NUStyleTransferInterpolationNode *)self interpolationWeightAtIndex:v10];
      v14 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [v8 addObject:v14];

      if (v6 == ++v10)
      {
        v15 = [_NUStyleTransferInterpolateProcessor interpolateStyles:v7 weights:v8 error:image];
        goto LABEL_8;
      }
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    *image = [NUError errorWithCode:1 reason:@"Failed to evaluate style at index" object:v17 underlyingError:v9];

    v16 = 0;
  }

  else
  {
    v7 = [(NUStyleTransferInterpolationNode *)self styleInputAtIndex:0];
    v20 = 0;
    v8 = [v7 outputImage:&v20];
    v9 = v20;
    if (v8)
    {
      v15 = v8;
      v8 = v15;
LABEL_8:
      v16 = v15;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to evaluate style at index" object:&unk_1F3F82860 underlyingError:v9];
      *image = v16 = 0;
    }
  }

  return v16;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30803;
  v21 = __Block_byref_object_dispose__30804;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__NUStyleTransferInterpolationNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke;
  v16[3] = &unk_1E810B7B0;
  v16[4] = &v17;
  [inputsCopy enumerateKeysAndObjectsUsingBlock:v16];
  if (v18[5])
  {
    [NUError invalidError:@"Invalid style input node" object:?];
    *error = v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NUStyleTransferInterpolationNode;
    v13 = [(NUStyleTransferNode *)&v15 resolvedNodeWithCachedInputs:inputsCopy settings:settingsCopy pipelineState:stateCopy error:error];
  }

  _Block_object_dispose(&v17, 8);

  return v13;
}

void __94__NUStyleTransferInterpolationNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] != 1)
  {
    v24 = NUAssertLogger_30110();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be applied to aux images", objc_opt_class()];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_30110();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v38;
        v67 = 2114;
        v68 = v42;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v43 = objc_opt_class();
    _NUAssertFailHandler("[NUStyleTransferInterpolationNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1352, @"%@ cannot be applied to aux images", v44, v45, v46, v47, v43);
  }

  if ([stateCopy evaluationMode] == 2)
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be evaluated for video", objc_opt_class()];
      *buf = 138543362;
      v66 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v48;
        v67 = 2114;
        v68 = v52;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v53 = objc_opt_class();
    _NUAssertFailHandler("[NUStyleTransferInterpolationNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1353, @"%@ cannot be evaluated for video", v54, v55, v56, v57, v53);
  }

  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  inputs = [(NURenderNode *)self inputs];
  v10 = [v8 initWithCapacity:{objc_msgSend(inputs, "count")}];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  inputs2 = [(NURenderNode *)self inputs];
  v12 = [inputs2 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v61 != v14)
      {
        objc_enumerationMutation(inputs2);
      }

      v16 = *(*(&v60 + 1) + 8 * v15);
      v17 = [(NURenderNode *)self inputForKey:v16];
      if ([v17 isCached])
      {
        evaluatedForMode = [v17 evaluatedForMode];
        if (evaluatedForMode != [stateCopy evaluationMode])
        {
          v22 = [NUError mismatchError:@"Wrong evaluation mode for cached input" object:v17];
          goto LABEL_18;
        }

        [v10 setObject:v17 forKeyedSubscript:v16];
      }

      else
      {
        v19 = [v17 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
        if (!v19)
        {
          v22 = [NUError failureError:@"failed to evaluate input" object:v17];
LABEL_18:
          *error = v22;

          v21 = 0;
          goto LABEL_19;
        }

        v20 = v19;
        [v10 setObject:v19 forKeyedSubscript:v16];
      }

      if (v13 == ++v15)
      {
        v13 = [inputs2 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v21 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v10 cache:cacheCopy pipelineState:stateCopy error:error];
LABEL_19:

  return v21;
}

- (id)targetColorSpace
{
  v2 = [(NUStyleTransferInterpolationNode *)self styleInputAtIndex:0];
  targetColorSpace = [v2 targetColorSpace];

  return targetColorSpace;
}

- (id)configuration
{
  v2 = [(NUStyleTransferInterpolationNode *)self styleInputAtIndex:0];
  configuration = [v2 configuration];

  return configuration;
}

- (id)tuningParameters
{
  v2 = [(NUStyleTransferInterpolationNode *)self styleInputAtIndex:0];
  tuningParameters = [v2 tuningParameters];

  return tuningParameters;
}

- (unint64_t)inputCount
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"count"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (float)interpolationWeightAtIndex:(unint64_t)index
{
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"weight#%lu", index];
  settings = [(NURenderNode *)self settings];
  v6 = [settings objectForKeyedSubscript:index];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (id)styleInputAtIndex:(unint64_t)index
{
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"input#%lu", index];
  v5 = [(NURenderNode *)self inputForKey:index];

  return v5;
}

- (NUStyleTransferInterpolationNode)initWithInputs:(id)inputs weights:(id)weights settings:(id)settings
{
  v83 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  weightsCopy = weights;
  settingsCopy = settings;
  if (![inputsCopy count])
  {
    v43 = NUAssertLogger_30110();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count >= 1"];
      *buf = 138543362;
      v80 = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_30110();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v47)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols = [v58 callStackSymbols];
        v61 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v57;
        v81 = 2114;
        v82 = v61;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferInterpolationNode initWithInputs:weights:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1302, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "inputs.count >= 1");
  }

  v11 = [inputsCopy count];
  if (v11 != [weightsCopy count])
  {
    v50 = NUAssertLogger_30110();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count == weights.count"];
      *buf = 138543362;
      v80 = v51;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v53 = NUAssertLogger_30110();
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      if (v54)
      {
        v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        callStackSymbols3 = [v67 callStackSymbols];
        v70 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v66;
        v81 = 2114;
        v82 = v70;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v54)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v56 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v56;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferInterpolationNode initWithInputs:weights:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1303, @"Invalid parameter not satisfying: %s", v71, v72, v73, v74, "inputs.count == weights.count");
  }

  selfCopy = self;
  v12 = [inputsCopy count];
  v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"input#%lu", i];
      v16 = [inputsCopy objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v27 = NUAssertLogger_30110();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid Style Transfer Interpolation input node"];
          *buf = 138543362;
          v80 = v28;
          _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = NUAssertLogger_30110();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (v29)
        {
          if (v31)
          {
            v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v35 = MEMORY[0x1E696AF00];
            v36 = v34;
            callStackSymbols5 = [v35 callStackSymbols];
            v38 = [callStackSymbols5 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v80 = v34;
            v81 = 2114;
            v82 = v38;
            _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v31)
        {
          callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
          v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v80 = v33;
          _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUStyleTransferInterpolationNode initWithInputs:weights:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1310, @"Invalid Style Transfer Interpolation input node", v39, v40, v41, v42, v75);
      }

      v18 = [inputsCopy objectAtIndexedSubscript:i];
      [v77 setObject:v18 forKeyedSubscript:v15];

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"weight#%lu", i];
      v20 = MEMORY[0x1E696AD98];
      [weightsCopy objectAtIndexedSubscript:i];
      v22 = v21 = weightsCopy;
      [v22 floatValue];
      v23 = [v20 numberWithFloat:?];
      [v13 setObject:v23 forKeyedSubscript:v19];

      weightsCopy = v21;
    }
  }

  if (settingsCopy)
  {
    [v13 addEntriesFromDictionary:settingsCopy];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
  [v13 setObject:v24 forKeyedSubscript:@"count"];

  v78.receiver = selfCopy;
  v78.super_class = NUStyleTransferInterpolationNode;
  v25 = [(NURenderNode *)&v78 initWithSettings:v13 inputs:v77];

  return v25;
}

- (NUStyleTransferInterpolationNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
  _NUAssertFailHandler("[NUStyleTransferInterpolationNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1298, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end