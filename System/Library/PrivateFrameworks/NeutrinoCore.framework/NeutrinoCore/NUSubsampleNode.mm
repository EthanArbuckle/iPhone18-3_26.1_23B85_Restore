@interface NUSubsampleNode
+ (int64_t)subsampleFactorForScale:(id)a3 additionalScale:(id *)a4;
- (NUSubsampleNode)initWithInput:(id)a3 settings:(id)a4;
- (NUSubsampleNode)initWithPreparedSource:(id)a3 container:(id)a4 pipelineSettings:(id)a5 sourceOptions:(id)a6;
- (NUSubsampleNode)initWithSubsampleFactor:(int64_t)a3 source:(id)a4 container:(id)a5 pipelineSettings:(id)a6 sourceOptions:(id)a7;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateImageProperties:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)debugQuickLookObject;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (int64_t)resolveSubsampleFactorForPipelineState:(id)a3 error:(id *)a4;
- (int64_t)resolveSubsampleFactorForPipelineState:(id)a3 sourceScale:(id)a4;
@end

@implementation NUSubsampleNode

- (id)_evaluateVideoComposition:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(NUSubsampleNode *)self _sourceNode];
  if (!v5)
  {
    v10 = NUAssertLogger_13707();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve source: %@", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_13707();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 527, @"Unable to resolve source: %@", v22, v23, v24, v25, self);
  }

  v6 = v5;
  v7 = [(NUSubsampleNode *)self sourceOptions];
  v8 = [v6 _evaluateVideoCompositionWithSourceOptions:v7 error:a3];

  return v8;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(NUSubsampleNode *)self _sourceNode];
  if (!v5)
  {
    v10 = NUAssertLogger_13707();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve source: %@", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_13707();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 518, @"Unable to resolve source: %@", v22, v23, v24, v25, self);
  }

  v6 = v5;
  v7 = [(NUSubsampleNode *)self sourceOptions];
  v8 = [v6 _evaluateVideoPropertiesWithSourceOptions:v7 error:a3];

  return v8;
}

- (id)_evaluateImageProperties:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(NUSubsampleNode *)self _sourceNode];
  if (!v5)
  {
    v10 = NUAssertLogger_13707();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve source: %@", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_13707();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode _evaluateImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 509, @"Unable to resolve source: %@", v22, v23, v24, v25, self);
  }

  v6 = v5;
  v7 = [(NUSubsampleNode *)self sourceOptions];
  v8 = [v6 _evaluateImagePropertiesWithSourceOptions:v7 error:a3];

  return v8;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(NUSubsampleNode *)self _sourceNode];
  if (!v5)
  {
    v10 = NUAssertLogger_13707();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve source: %@", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_13707();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode _evaluateImageGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 500, @"Unable to resolve source: %@", v22, v23, v24, v25, self);
  }

  v6 = v5;
  v7 = [(NUSubsampleNode *)self sourceOptions];
  v8 = [v6 _evaluateImageGeometryWithSourceOptions:v7 error:a3];

  return v8;
}

- (id)_evaluateImage:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(NUSubsampleNode *)self _sourceNode];
  if (!v5)
  {
    v10 = NUAssertLogger_13707();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve source: %@", self];
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_13707();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v17;
        v27 = 2114;
        v28 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 481, @"Unable to resolve source: %@", v22, v23, v24, v25, self);
  }

  v6 = v5;
  *buf = [(NUSubsampleNode *)self subsampleFactor];
  v7 = [(NUSubsampleNode *)self sourceOptions];
  v8 = [v6 _evaluateImageWithSourceOptions:v7 subsampleFactor:buf error:a3];

  if (v8)
  {
    [(NUSubsampleNode *)self setAppliedSubsampleFactor:*buf];
  }

  return v8;
}

- (id)debugQuickLookObject
{
  v9 = 0;
  v3 = [(NURenderNode *)self outputImage:&v9];
  v4 = v3;
  if (!v3 || v9)
  {
    v8.receiver = self;
    v8.super_class = NUSubsampleNode;
    v5 = [(NURenderNode *)&v8 debugQuickLookObject];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 scale] < 1 || v10 <= 0)
  {
    v24 = NUAssertLogger_13707();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
      *v40 = 138543362;
      *&v40[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v40, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_13707();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *v40 = 138543618;
        *&v40[4] = v31;
        *&v40[12] = 2114;
        *&v40[14] = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v40, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *v40 = 138543362;
      *&v40[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v40, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 381, @"Invalid render scale", v36, v37, v38, v39, *v40);
  }

  v11 = [v9 copy];

  if ([v11 applyPipelineSettings:self->_pipelineSettings error:a5])
  {
    *v40 = NUScaleUnknown;
    v12 = [(NUSourceContainerNode *)self->_sourceContainer resolveSourceNodeForPipelineState:v11 foundScale:v40 error:a5];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 nodeByReplayingAgainstCache:v8 pipelineState:v11 error:a5];
      if (v14)
      {
        v15 = [(NUSubsampleNode *)self sourceOptions];
        v16 = [v14 _evaluateImageGeometryWithSourceOptions:v15 error:a5];

        if (v16)
        {
          v17 = [v16 renderScale];
          v19 = [(NUSubsampleNode *)self resolveSubsampleFactorForPipelineState:v11 sourceScale:v17, v18];
          if ([v14 isPlaceholderNode] || !-[NUAbstractScaleNode shouldCacheNodeForPipelineState:](self, "shouldCacheNodeForPipelineState:", v11))
          {
            v22 = v14;
          }

          else
          {
            v20 = [v13 pipelineOptionsForPipelineState:v11 error:a5];
            if (v20)
            {
              v21 = -[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]([NUSubsampleNode alloc], "initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:", [v14 normalizeSubsampleFactor:v19], v14, self->_sourceContainer, v20, self->_sourceOptions);
              v22 = [NURenderNode nodeFromCache:v21 cache:v8];

              [v22 setEvaluatedForMode:{objc_msgSend(v11, "evaluationMode")}];
            }

            else
            {
              v22 = 0;
            }
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (int64_t)resolveSubsampleFactorForPipelineState:(id)a3 sourceScale:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (var0 < 1 || var1 <= 0)
  {
    v14 = NUAssertLogger_13707();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(sourceScale)"];
      *buf = 138543362;
      *&buf[4] = v15;
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
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode resolveSubsampleFactorForPipelineState:sourceScale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 370, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "NUScaleIsValid(sourceScale)");
  }

  v7 = v6;
  v8 = [v6 scale];
  v10 = NUScaleDivide(v8, v9, var0, var1);
  *buf = 0;
  *&buf[8] = 0;
  v12 = [NUSubsampleNode subsampleFactorForScale:v10 additionalScale:v11, buf];

  return v12;
}

- (int64_t)resolveSubsampleFactorForPipelineState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NUAbstractScaleNode *)self inputNode];
  v8 = [v7 outputImageGeometry:a4];

  if (v8)
  {
    v9 = [v8 renderScale];
    v11 = [(NUSubsampleNode *)self resolveSubsampleFactorForPipelineState:v6 sourceScale:v9, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NUSubsampleNode)initWithSubsampleFactor:(int64_t)a3 source:(id)a4 container:(id)a5 pipelineSettings:(id)a6 sourceOptions:(id)a7
{
  v113 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a3 < 0)
  {
    v26 = NUAssertLogger_13707();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor >= 0"];
      *buf = 138543362;
      v110 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_13707();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        v64 = [v62 callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v61;
        v111 = 2114;
        v112 = v65;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 334, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "subsampleFactor >= 0");
  }

  if (!v13)
  {
    v33 = NUAssertLogger_13707();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceContainer != nil"];
      *buf = 138543362;
      v110 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_13707();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v71 = MEMORY[0x1E696AF00];
        v72 = v70;
        v73 = [v71 callStackSymbols];
        v74 = [v73 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v70;
        v111 = 2114;
        v112 = v74;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 335, @"Invalid parameter not satisfying: %s", v75, v76, v77, v78, "sourceContainer != nil");
  }

  if (!v12)
  {
    v40 = NUAssertLogger_13707();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v110 = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_13707();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v79 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        v82 = [v80 callStackSymbols];
        v83 = [v82 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v79;
        v111 = 2114;
        v112 = v83;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 336, @"Invalid parameter not satisfying: %s", v84, v85, v86, v87, "source != nil");
  }

  if (!v14)
  {
    v47 = NUAssertLogger_13707();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineSettings != nil"];
      *buf = 138543362;
      v110 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_13707();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v88 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v89 = MEMORY[0x1E696AF00];
        v90 = v88;
        v91 = [v89 callStackSymbols];
        v92 = [v91 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v88;
        v111 = 2114;
        v112 = v92;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 337, @"Invalid parameter not satisfying: %s", v93, v94, v95, v96, "pipelineSettings != nil");
  }

  v16 = v15;
  if (!v15)
  {
    v54 = NUAssertLogger_13707();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceOptions != nil"];
      *buf = 138543362;
      v110 = v55;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v57 = NUAssertLogger_13707();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (v56)
    {
      if (v58)
      {
        v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v98 = MEMORY[0x1E696AF00];
        v99 = v97;
        v100 = [v98 callStackSymbols];
        v101 = [v100 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v97;
        v111 = 2114;
        v112 = v101;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithSubsampleFactor:source:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 338, @"Invalid parameter not satisfying: %s", v102, v103, v104, v105, "sourceOptions != nil");
  }

  v107[0] = @"subsampleFactor";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v108[0] = v17;
  v108[1] = v14;
  v107[1] = @"pipelineSettings";
  v107[2] = @"sourceOptions";
  v108[2] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];

  v106.receiver = self;
  v106.super_class = NUSubsampleNode;
  v19 = [(NUAbstractScaleNode *)&v106 initWithInput:v12 settings:v18];
  sourceContainer = v19->_sourceContainer;
  v19->_sourceContainer = v13;
  v21 = v13;

  v19->_subsampleFactor = a3;
  pipelineSettings = v19->_pipelineSettings;
  v19->_pipelineSettings = v14;
  v23 = v14;

  sourceOptions = v19->_sourceOptions;
  v19->_sourceOptions = v16;

  return v19;
}

- (NUSubsampleNode)initWithPreparedSource:(id)a3 container:(id)a4 pipelineSettings:(id)a5 sourceOptions:(id)a6
{
  v94 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v23 = NUAssertLogger_13707();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceContainer != nil"];
      *buf = 138543362;
      v91 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_13707();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v51;
        v92 = 2114;
        v93 = v55;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithPreparedSource:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 314, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "sourceContainer != nil");
  }

  if (!v10)
  {
    v30 = NUAssertLogger_13707();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v91 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_13707();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v63 = [v61 callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v60;
        v92 = 2114;
        v93 = v64;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithPreparedSource:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 315, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "source != nil");
  }

  if (!v12)
  {
    v37 = NUAssertLogger_13707();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineSettings != nil"];
      *buf = 138543362;
      v91 = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_13707();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v69 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v70 = MEMORY[0x1E696AF00];
        v71 = v69;
        v72 = [v70 callStackSymbols];
        v73 = [v72 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v69;
        v92 = 2114;
        v93 = v73;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithPreparedSource:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 316, @"Invalid parameter not satisfying: %s", v74, v75, v76, v77, "pipelineSettings != nil");
  }

  v14 = v13;
  if (!v13)
  {
    v44 = NUAssertLogger_13707();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceOptions != nil"];
      *buf = 138543362;
      v91 = v45;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v47 = NUAssertLogger_13707();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      if (v48)
      {
        v78 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v79 = MEMORY[0x1E696AF00];
        v80 = v78;
        v81 = [v79 callStackSymbols];
        v82 = [v81 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v78;
        v92 = 2114;
        v93 = v82;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      v49 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v50;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSubsampleNode initWithPreparedSource:container:pipelineSettings:sourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 317, @"Invalid parameter not satisfying: %s", v83, v84, v85, v86, "sourceOptions != nil");
  }

  v88[0] = @"pipelineSettings";
  v88[1] = @"sourceOptions";
  v89[0] = v12;
  v89[1] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v87.receiver = self;
  v87.super_class = NUSubsampleNode;
  v16 = [(NUAbstractScaleNode *)&v87 initWithInput:v10 settings:v15];
  sourceContainer = v16->_sourceContainer;
  v16->_sourceContainer = v11;
  v18 = v11;

  pipelineSettings = v16->_pipelineSettings;
  v16->_pipelineSettings = v12;
  v20 = v12;

  sourceOptions = v16->_sourceOptions;
  v16->_sourceOptions = v14;

  return v16;
}

- (NUSubsampleNode)initWithInput:(id)a3 settings:(id)a4
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
  _NUAssertFailHandler("[NUSubsampleNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 308, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (int64_t)subsampleFactorForScale:(id)a3 additionalScale:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3.var0 < 1 || (var1 = a3.var1, a3.var1 <= 0))
  {
    v12 = NUAssertLogger_13707();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v29 = v13;
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
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSubsampleNode subsampleFactorForScale:additionalScale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Scale.m", 441, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "NUScaleIsValid(scale)");
  }

  var0 = a3.var0;
  v7 = NUScaleToDouble(a3.var0, a3.var1);
  v8 = 1;
  if (v7 <= 0.5)
  {
    v9 = 1 << -ceil(log2(v7));
    if (v9 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v9;
    }
  }

  a4->var0 = NUScaleMultiply(var0, var1, v8, 1);
  a4->var1 = v10;
  return v8;
}

@end