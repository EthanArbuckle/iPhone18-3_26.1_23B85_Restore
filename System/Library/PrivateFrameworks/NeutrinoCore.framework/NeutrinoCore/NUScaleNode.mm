@interface NUScaleNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)effectiveScale;
- ($0AC6E346AE4835514AAA8AC86D8F4844)targetScale;
- (NUScaleNode)initWithInput:(id)input settings:(id)settings;
- (NUScaleNode)initWithPipelineState:(id)state input:(id)input;
- (NUScaleNode)initWithTargetScale:(id)scale effectiveScale:(id)effectiveScale sampleMode:(int64_t)mode input:(id)input;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_settingsWithTargetScale:(id)scale effectiveScale:(id)effectiveScale sampleMode:(int64_t)mode;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUScaleNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)effectiveScale
{
  objc_copyStruct(v4, &self->_effectiveScale, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)targetScale
{
  objc_copyStruct(v4, &self->_targetScale, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v13.receiver = self;
  v13.super_class = NUScaleNode;
  v4 = [(NURenderNode *)&v13 _evaluateImageGeometry:geometry];
  v5 = v4;
  if (v4)
  {
    p_targetScale = &self->_targetScale;
    if (self->_targetScale.numerator < 1 || self->_targetScale.denominator <= 0)
    {
      v10 = v4;
    }

    else
    {
      v9 = [NUImageGeometry alloc];
      [v5 extent];
      v10 = -[NUImageGeometry initWithExtent:renderScale:orientation:](v9, "initWithExtent:renderScale:orientation:", &v12, p_targetScale->numerator, p_targetScale->denominator, [v5 orientation]);
    }

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_evaluateImage:(id *)image
{
  v34 = *MEMORY[0x1E69E9840];
  p_effectiveScale = &self->_effectiveScale;
  if (self->_effectiveScale.numerator < 1 || self->_effectiveScale.denominator <= 0)
  {
    v14 = NUAssertLogger_13707();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: invalid scale", self];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_13707();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScaleNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 174, @"%@: invalid scale", v26, v27, v28, v29, self);
  }

  v7 = [(NURenderNode *)self outputImageGeometry:?];
  if (v7)
  {
    inputNode = [(NUAbstractScaleNode *)self inputNode];
    v9 = [inputNode outputImage:image];

    if (v9)
    {
      v10 = v9;
      if (!NUScaleEqual(p_effectiveScale->numerator, p_effectiveScale->denominator, NUScaleOne, *(&NUScaleOne + 1)))
      {
        sampleMode = self->_sampleMode;
        [v7 physicalScaledExtent];
        v12 = [NURenderNode resampleImage:v10 by:p_effectiveScale->numerator sampleMode:p_effectiveScale->denominator extent:sampleMode colorSpace:buf, 0];

        v10 = v12;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  if (!error)
  {
    v37 = NUAssertLogger_13707();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v74 = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_13707();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        callStackSymbols = [v52 callStackSymbols];
        v55 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v51;
        v75 = 2114;
        v76 = v55;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScaleNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 118, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "error != nil");
  }

  v13 = stateCopy;
  if ([stateCopy scale] < 1 || v14 <= 0)
  {
    v44 = NUAssertLogger_13707();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
      *buf = 138543362;
      v74 = v45;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v47 = NUAssertLogger_13707();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      if (v48)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        callStackSymbols3 = [v61 callStackSymbols];
        v64 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v60;
        v75 = 2114;
        v76 = v64;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v50;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScaleNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 119, @"Invalid render scale", v65, v66, v67, v68, v69);
  }

  v15 = settingsCopy;
  v16 = [inputsCopy objectForKey:*MEMORY[0x1E695FAB0]];
  v17 = [v16 outputImageGeometry:error];
  v18 = v17;
  if (!v17)
  {
    v21 = 0;
    goto LABEL_12;
  }

  if ([v17 renderScale] < 1 || v19 <= 0)
  {
    [NUError invalidError:@"invalid scale" object:v18];
    *error = v21 = 0;
LABEL_12:
    v22 = v15;
    goto LABEL_24;
  }

  targetScale = [(NUScaleNode *)self targetScale];
  v25 = v24;
  effectiveScale = [(NUScaleNode *)self effectiveScale];
  v71 = v27;
  effectiveScale2 = [(NUScaleNode *)self effectiveScale];
  if (effectiveScale2 < 1 || v29 <= 0)
  {
    if ([v13 scale] >= 1 && v30 >= 1)
    {
      targetScale = [v13 scale];
      v25 = v31;
    }

    if (targetScale >= 1 && v25 >= 1 && [v13 evaluationMode])
    {
      renderScale = [v18 renderScale];
      effectiveScale = NUScaleDivide(targetScale, v25, renderScale, v33);
      v71 = v34;
    }
  }

  v70 = targetScale;
  v22 = -[NUScaleNode _settingsWithTargetScale:effectiveScale:sampleMode:](self, "_settingsWithTargetScale:effectiveScale:sampleMode:", targetScale, v25, effectiveScale, v71, [v13 sampleMode]);

  v72.receiver = self;
  v72.super_class = NUScaleNode;
  v35 = [(NURenderNode *)&v72 resolvedNodeWithCachedInputs:inputsCopy settings:v22 pipelineState:v13 error:error];
  v21 = v35;
  if (v35)
  {
    v35[22] = v70;
    v35[23] = v25;
    v35[24] = effectiveScale;
    v35[25] = v71;
    v35[21] = [v13 sampleMode];
  }

LABEL_24:

  return v21;
}

- (id)_settingsWithTargetScale:(id)scale effectiveScale:(id)effectiveScale sampleMode:(int64_t)mode
{
  var1 = scale.var1;
  var0 = scale.var0;
  v18[3] = *MEMORY[0x1E69E9840];
  if (effectiveScale.var0 >= 1 && effectiveScale.var1 >= 1)
  {
    v17[0] = @"effectiveScale";
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", effectiveScale.var0, effectiveScale.var1];
    v18[0] = v8;
    v17[1] = @"targetScale";
    var1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", var0, var1];
    v18[1] = var1;
    v17[2] = @"sampleMode";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v18[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

LABEL_7:
    goto LABEL_9;
  }

  if (scale.var0 >= 1 && scale.var1 >= 1)
  {
    v15[0] = @"targetScale";
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", scale.var0, scale.var1];
    v15[1] = @"sampleMode";
    v16[0] = v8;
    var1 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v16[1] = var1;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    goto LABEL_7;
  }

  v13 = @"sampleMode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v14 = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
LABEL_9:

  return v11;
}

- (NUScaleNode)initWithPipelineState:(id)state input:(id)input
{
  inputCopy = input;
  stateCopy = state;
  scale = [stateCopy scale];
  v10 = v9;
  sampleMode = [stateCopy sampleMode];

  inputCopy = [(NUScaleNode *)self initWithScale:scale sampleMode:v10 input:sampleMode, inputCopy];
  return inputCopy;
}

- (NUScaleNode)initWithTargetScale:(id)scale effectiveScale:(id)effectiveScale sampleMode:(int64_t)mode input:(id)input
{
  var1 = effectiveScale.var1;
  var0 = effectiveScale.var0;
  v9 = scale.var1;
  v10 = scale.var0;
  v54 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!mode)
  {
    v17 = NUAssertLogger_13707();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sampleMode != NUSampleModeDefault"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_13707();
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
        v51 = v24;
        v52 = 2114;
        v53 = v28;
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

    _NUAssertFailHandler("[NUScaleNode initWithTargetScale:effectiveScale:sampleMode:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 74, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "sampleMode != NUSampleModeDefault");
  }

  v13 = inputCopy;
  if ((v10 < 1 || v9 < 1) && var0 >= 1 && var1 >= 1)
  {
    v33 = NUAssertLogger_13707();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(targetScale) || !NUScaleIsValid(effectiveScale)"];
      *buf = 138543362;
      v51 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_13707();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
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
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScaleNode initWithTargetScale:effectiveScale:sampleMode:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 76, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "NUScaleIsValid(targetScale) || !NUScaleIsValid(effectiveScale)");
  }

  mode = [(NUScaleNode *)self _settingsWithTargetScale:v10 effectiveScale:v9 sampleMode:var0, var1, mode];
  v49.receiver = self;
  v49.super_class = NUScaleNode;
  v15 = [(NUAbstractScaleNode *)&v49 initWithInput:v13 settings:mode];
  v15->_targetScale.numerator = v10;
  v15->_targetScale.denominator = v9;
  v15->_effectiveScale.numerator = var0;
  v15->_effectiveScale.denominator = var1;
  v15->_sampleMode = mode;

  return v15;
}

- (NUScaleNode)initWithInput:(id)input settings:(id)settings
{
  v38 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13724);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_13724);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13724);
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
  _NUAssertFailHandler("[NUScaleNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 63, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end