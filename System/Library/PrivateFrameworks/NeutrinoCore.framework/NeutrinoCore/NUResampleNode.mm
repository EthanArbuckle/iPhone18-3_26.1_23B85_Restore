@interface NUResampleNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)_additionalScale;
- (NUResampleNode)initWithInput:(id)input settings:(id)settings;
- (NUResampleNode)initWithPreparedInput:(id)input subsampleNode:(id)node;
- (NUResampleNode)initWithSubsampleFactor:(int64_t)factor sampleMode:(int64_t)mode source:(id)source subsampleNode:(id)node;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation NUResampleNode

- (id)_evaluateImageGeometry:(id *)geometry
{
  inputNode = [(NUAbstractScaleNode *)self inputNode];
  v6 = [inputNode outputImageGeometry:geometry];

  if (v6)
  {
    if ([(NUResampleNode *)self subsampleFactor])
    {
      subsampleFactor = [(NUResampleNode *)self subsampleFactor];
      renderScale = [v6 renderScale];
      v10 = NUScaleMultiply(1, subsampleFactor, renderScale, v9);
      v12 = v11;
      v13 = [NUImageGeometry alloc];
      [v6 extent];
      v14 = -[NUImageGeometry initWithExtent:renderScale:orientation:](v13, "initWithExtent:renderScale:orientation:", &v17, v10, v12, [v6 orientation]);
    }

    else
    {
      v14 = v6;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUAbstractScaleNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    _additionalScale = [(NUResampleNode *)self _additionalScale];
    v9 = v8;
    if (!NUScaleEqual(_additionalScale, v8, NUScaleOne, *(&NUScaleOne + 1)))
    {
      v10 = [(NURenderNode *)self outputImageGeometry:image];
      if (v10)
      {
        v11 = v10;
        resamplingColorSpace = [(NURenderNode *)self resamplingColorSpace];
        sampleMode = self->_sampleMode;
        [v11 physicalScaledExtent];
        v14 = [NURenderNode resampleImage:v6 by:_additionalScale sampleMode:v9 extent:sampleMode colorSpace:&v16, resamplingColorSpace];

        v6 = v11;
      }

      else
      {
        v14 = 0;
      }

      v6 = v14;
    }
  }

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_additionalScale
{
  v48 = *MEMORY[0x1E69E9840];
  appliedSubsampleFactor = [(NUSubsampleNode *)self->_subsampleNode appliedSubsampleFactor];
  if (appliedSubsampleFactor <= 0)
  {
    v11 = NUAssertLogger_13707();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad subsample factor"];
      *buf = 138543362;
      v45 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_13707();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v25;
        v46 = 2114;
        v47 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode _additionalScale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 628, @"Bad subsample factor", v30, v31, v32, v33, v43);
  }

  v4 = appliedSubsampleFactor;
  if (![(NUResampleNode *)self subsampleFactor])
  {
    v18 = NUAssertLogger_13707();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: invalid subsample factor", self];
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_13707();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v34;
        v46 = 2114;
        v47 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode _additionalScale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 631, @"%@: invalid subsample factor", v39, v40, v41, v42, self);
  }

  subsampleFactor = [(NUResampleNode *)self subsampleFactor];
  v7 = *(&NUScaleOne + 1);
  v6 = NUScaleOne;
  if (NUScaleCompare(1, v4, 1, subsampleFactor) >= 1)
  {
    v6 = NUScaleDivide(1, subsampleFactor, 1, v4);
    v7 = v8;
  }

  v9 = v6;
  v10 = v7;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy scale] < 1 || v10 <= 0)
  {
    v19 = NUAssertLogger_13707();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
      *v35 = 138543362;
      *&v35[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v35, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_13707();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v35 = 138543618;
        *&v35[4] = v26;
        v36 = 2114;
        v37 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v35, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v35 = 138543362;
      *&v35[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v35, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 584, @"Invalid render scale", v31, v32, v33, v34, *v35);
  }

  inputNode = [(NUAbstractScaleNode *)self inputNode];
  v12 = [(NUSubsampleNode *)inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_15;
  }

  if ([v12 isPlaceholderNode] || !-[NUAbstractScaleNode shouldCacheNodeForPipelineState:](self, "shouldCacheNodeForPipelineState:", stateCopy))
  {
    v16 = v13;
    goto LABEL_15;
  }

  subsampleNode = self->_subsampleNode;
  if (inputNode == subsampleNode)
  {
    v15 = v13;
LABEL_12:
    v16 = [v15 resolveSubsampleFactorForPipelineState:stateCopy error:error];
    if (v16)
    {
      v17 = -[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]([NUResampleNode alloc], "initWithSubsampleFactor:sampleMode:source:subsampleNode:", v16, [stateCopy sampleMode], v13, v15);
      v16 = [NURenderNode nodeFromCache:v17 cache:cacheCopy];

      [v16 setEvaluatedForMode:{objc_msgSend(stateCopy, "evaluationMode")}];
    }

    goto LABEL_14;
  }

  v15 = [(NUSubsampleNode *)subsampleNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  if (v15)
  {
    goto LABEL_12;
  }

  v16 = 0;
LABEL_14:

LABEL_15:

  return v16;
}

- (NUResampleNode)initWithSubsampleFactor:(int64_t)factor sampleMode:(int64_t)mode source:(id)source subsampleNode:(id)node
{
  v74 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  nodeCopy = node;
  if (factor < 0)
  {
    v19 = NUAssertLogger_13707();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor >= 0"];
      *buf = 138543362;
      v71 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_13707();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols = [v41 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v40;
        v72 = 2114;
        v73 = v44;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 555, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "subsampleFactor >= 0");
  }

  if (!mode)
  {
    v26 = NUAssertLogger_13707();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sampleMode != NUSampleModeDefault"];
      *buf = 138543362;
      v71 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_13707();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols3 = [v50 callStackSymbols];
        v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v49;
        v72 = 2114;
        v73 = v53;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 556, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sampleMode != NUSampleModeDefault");
  }

  v12 = nodeCopy;
  if (!nodeCopy)
  {
    v33 = NUAssertLogger_13707();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleNode != nil"];
      *buf = 138543362;
      v71 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_13707();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        callStackSymbols5 = [v59 callStackSymbols];
        v62 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v58;
        v72 = 2114;
        v73 = v62;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 557, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "subsampleNode != nil");
  }

  v68[0] = @"sampleMode";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v68[1] = @"subsampleFactor";
  v69[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:factor];
  v69[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v67.receiver = self;
  v67.super_class = NUResampleNode;
  v16 = [(NUAbstractScaleNode *)&v67 initWithInput:sourceCopy settings:v15];
  v16->_subsampleFactor = factor;
  v16->_sampleMode = mode;
  subsampleNode = v16->_subsampleNode;
  v16->_subsampleNode = v12;

  return v16;
}

- (NUResampleNode)initWithPreparedInput:(id)input subsampleNode:(id)node
{
  v33 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  nodeCopy = node;
  if (!nodeCopy)
  {
    v12 = NUAssertLogger_13707();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleNode != nil"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_13707();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithPreparedInput:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 544, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleNode != nil");
  }

  v8 = nodeCopy;
  v28.receiver = self;
  v28.super_class = NUResampleNode;
  v9 = [(NUAbstractScaleNode *)&v28 initWithInput:inputCopy settings:MEMORY[0x1E695E0F8]];
  subsampleNode = v9->_subsampleNode;
  v9->_subsampleNode = v8;

  return v9;
}

- (NUResampleNode)initWithInput:(id)input settings:(id)settings
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
  _NUAssertFailHandler("[NUResampleNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 539, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end