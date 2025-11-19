@interface NUSingleSourceContainerNode
- (NUSingleSourceContainerNode)initWithAssetIdentifier:(id)a3;
- (NUSingleSourceContainerNode)initWithSourceNode:(id)a3 assetIdentifier:(id)a4;
- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5;
- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4;
@end

@implementation NUSingleSourceContainerNode

- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v16 = NUAssertLogger_8665();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v51 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_8665();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v30;
        v52 = 2114;
        v53 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSingleSourceContainerNode sourceNodeForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 180, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != NULL");
  }

  v7 = v6;
  if (!v6)
  {
    v23 = NUAssertLogger_8665();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineState != nil"];
      *buf = 138543362;
      v51 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_8665();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v39;
        v52 = 2114;
        v53 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSingleSourceContainerNode sourceNodeForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 181, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "pipelineState != nil");
  }

  source = self->_source;
  v49 = 0;
  v9 = [(NUSourceNode *)source load:&v49];
  v10 = v49;
  if (v9)
  {
    v11 = self->_source;
    v48 = 0;
    v12 = [(NUSourceNode *)v11 isValid:&v48];
    v13 = v48;

    if (v12)
    {
      v14 = self->_source;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to validate source node" object:self->_source underlyingError:v13];
      *a4 = v14 = 0;
    }

    v10 = v13;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to load source node" object:self->_source underlyingError:v10];
    *a4 = v14 = 0;
  }

  return v14;
}

- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v12 = NUAssertLogger_8665();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "foundScale != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_8665();
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

    _NUAssertFailHandler("[NUSingleSourceContainerNode resolveSourceNodeForPipelineState:foundScale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 168, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "foundScale != nil");
  }

  v9 = v8;
  v10 = [(NUSingleSourceContainerNode *)self sourceNodeForPipelineState:v8 error:a5];
  *a4 = NUScaleOne;

  return v10;
}

- (NUSingleSourceContainerNode)initWithSourceNode:(id)a3 assetIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_8665();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_8665();
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

    _NUAssertFailHandler("[NUSingleSourceContainerNode initWithSourceNode:assetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 152, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "node != nil");
  }

  v8 = v7;
  v28.receiver = self;
  v28.super_class = NUSingleSourceContainerNode;
  v9 = [(NUSourceContainerNode *)&v28 initWithAssetIdentifier:v7];
  source = v9->_source;
  v9->_source = v6;

  return v9;
}

- (NUSingleSourceContainerNode)initWithAssetIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUSingleSourceContainerNode initWithAssetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 147, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end