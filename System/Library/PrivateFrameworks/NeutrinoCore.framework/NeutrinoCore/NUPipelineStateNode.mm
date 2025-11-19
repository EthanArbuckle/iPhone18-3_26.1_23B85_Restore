@interface NUPipelineStateNode
- (id)_evaluateImage:(id *)a3;
- (id)debugQuickLookObject;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUPipelineStateNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = NUPipelineStateNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)debugQuickLookObject
{
  if ([(NURenderNode *)self isCached])
  {
    v5.receiver = self;
    v5.super_class = NUPipelineStateNode;
    v3 = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    v3 = [(NUPipelineStateNode *)self _evaluateImage:&v6];
  }

  return v3;
}

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 _evaluateImage:a3];

  return v5;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v15 = NUAssertLogger_22743();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_22743();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPipelineStateNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Pipeline.m", 19, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != nil");
  }

  v10 = v9;
  v11 = [v9 copy];
  v12 = [(NURenderNode *)self settings];
  [v11 applyPipelineSettings:v12 error:a5];

  v31.receiver = self;
  v31.super_class = NUPipelineStateNode;
  v13 = [(NURenderNode *)&v31 nodeByReplayingAgainstCache:v8 pipelineState:v11 error:a5];

  return v13;
}

@end