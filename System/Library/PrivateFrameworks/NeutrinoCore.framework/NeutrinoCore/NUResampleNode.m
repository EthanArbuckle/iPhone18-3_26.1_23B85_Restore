@interface NUResampleNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)_additionalScale;
- (NUResampleNode)initWithInput:(id)a3 settings:(id)a4;
- (NUResampleNode)initWithPreparedInput:(id)a3 subsampleNode:(id)a4;
- (NUResampleNode)initWithSubsampleFactor:(int64_t)a3 sampleMode:(int64_t)a4 source:(id)a5 subsampleNode:(id)a6;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NUResampleNode

- (id)_evaluateImageGeometry:(id *)a3
{
  v5 = [(NUAbstractScaleNode *)self inputNode];
  v6 = [v5 outputImageGeometry:a3];

  if (v6)
  {
    if ([(NUResampleNode *)self subsampleFactor])
    {
      v7 = [(NUResampleNode *)self subsampleFactor];
      v8 = [v6 renderScale];
      v10 = NUScaleMultiply(1, v7, v8, v9);
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

- (id)_evaluateImage:(id *)a3
{
  v5 = [(NUAbstractScaleNode *)self inputNode];
  v6 = [v5 outputImage:a3];

  if (v6)
  {
    v7 = [(NUResampleNode *)self _additionalScale];
    v9 = v8;
    if (!NUScaleEqual(v7, v8, NUScaleOne, *(&NUScaleOne + 1)))
    {
      v10 = [(NURenderNode *)self outputImageGeometry:a3];
      if (v10)
      {
        v11 = v10;
        v12 = [(NURenderNode *)self resamplingColorSpace];
        sampleMode = self->_sampleMode;
        [v11 physicalScaledExtent];
        v14 = [NURenderNode resampleImage:v6 by:v7 sampleMode:v9 extent:sampleMode colorSpace:&v16, v12];

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
  v3 = [(NUSubsampleNode *)self->_subsampleNode appliedSubsampleFactor];
  if (v3 <= 0)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v25;
        v46 = 2114;
        v47 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode _additionalScale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 628, @"Bad subsample factor", v30, v31, v32, v33, v43);
  }

  v4 = v3;
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v34;
        v46 = 2114;
        v47 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode _additionalScale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 631, @"%@: invalid subsample factor", v39, v40, v41, v42, self);
  }

  v5 = [(NUResampleNode *)self subsampleFactor];
  v7 = *(&NUScaleOne + 1);
  v6 = NUScaleOne;
  if (NUScaleCompare(1, v4, 1, v5) >= 1)
  {
    v6 = NUScaleDivide(1, v5, 1, v4);
    v7 = v8;
  }

  v9 = v6;
  v10 = v7;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 scale] < 1 || v10 <= 0)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *v35 = 138543618;
        *&v35[4] = v26;
        v36 = 2114;
        v37 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v35, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *v35 = 138543362;
      *&v35[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v35, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 584, @"Invalid render scale", v31, v32, v33, v34, *v35);
  }

  v11 = [(NUAbstractScaleNode *)self inputNode];
  v12 = [(NUSubsampleNode *)v11 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_15;
  }

  if ([v12 isPlaceholderNode] || !-[NUAbstractScaleNode shouldCacheNodeForPipelineState:](self, "shouldCacheNodeForPipelineState:", v9))
  {
    v16 = v13;
    goto LABEL_15;
  }

  subsampleNode = self->_subsampleNode;
  if (v11 == subsampleNode)
  {
    v15 = v13;
LABEL_12:
    v16 = [v15 resolveSubsampleFactorForPipelineState:v9 error:a5];
    if (v16)
    {
      v17 = -[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]([NUResampleNode alloc], "initWithSubsampleFactor:sampleMode:source:subsampleNode:", v16, [v9 sampleMode], v13, v15);
      v16 = [NURenderNode nodeFromCache:v17 cache:v8];

      [v16 setEvaluatedForMode:{objc_msgSend(v9, "evaluationMode")}];
    }

    goto LABEL_14;
  }

  v15 = [(NUSubsampleNode *)subsampleNode nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  if (v15)
  {
    goto LABEL_12;
  }

  v16 = 0;
LABEL_14:

LABEL_15:

  return v16;
}

- (NUResampleNode)initWithSubsampleFactor:(int64_t)a3 sampleMode:(int64_t)a4 source:(id)a5 subsampleNode:(id)a6
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (a3 < 0)
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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v40;
        v72 = 2114;
        v73 = v44;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 555, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "subsampleFactor >= 0");
  }

  if (!a4)
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
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v49;
        v72 = 2114;
        v73 = v53;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 556, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sampleMode != NUSampleModeDefault");
  }

  v12 = v11;
  if (!v11)
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
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v58;
        v72 = 2114;
        v73 = v62;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithSubsampleFactor:sampleMode:source:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 557, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "subsampleNode != nil");
  }

  v68[0] = @"sampleMode";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v68[1] = @"subsampleFactor";
  v69[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v69[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v67.receiver = self;
  v67.super_class = NUResampleNode;
  v16 = [(NUAbstractScaleNode *)&v67 initWithInput:v10 settings:v15];
  v16->_subsampleFactor = a3;
  v16->_sampleMode = a4;
  subsampleNode = v16->_subsampleNode;
  v16->_subsampleNode = v12;

  return v16;
}

- (NUResampleNode)initWithPreparedInput:(id)a3 subsampleNode:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUResampleNode initWithPreparedInput:subsampleNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 544, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleNode != nil");
  }

  v8 = v7;
  v28.receiver = self;
  v28.super_class = NUResampleNode;
  v9 = [(NUAbstractScaleNode *)&v28 initWithInput:v6 settings:MEMORY[0x1E695E0F8]];
  subsampleNode = v9->_subsampleNode;
  v9->_subsampleNode = v8;

  return v9;
}

- (NUResampleNode)initWithInput:(id)a3 settings:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
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
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
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