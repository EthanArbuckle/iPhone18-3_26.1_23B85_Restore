@interface NUSourceOrientationNode
+ (int64_t)originalOrientationToApplyToSource:(id)a3 skipOrientation:(BOOL)a4 error:(id *)a5;
- (NUSourceOrientationNode)initWithInput:(id)a3 source:(id)a4 settings:(id)a5 orientation:(int64_t)a6;
- (NUSourceOrientationNode)initWithOrientation:(int64_t)a3 input:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NUSourceOrientationNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v25 = NUAssertLogger_8665();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v59 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_8665();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v32;
        v60 = 2114;
        v61 = v36;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceOrientationNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1071, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != nil");
  }

  v10 = v9;
  v11 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v12 = [v11 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
  if (v12)
  {
    v13 = [(NUOrientationNode *)self shouldCacheNodeForPipelineState:v10];
    v14 = v12;
    v15 = v14;
    if (v13)
    {
      v16 = [v14 inputs];
      v17 = [v16 count];

      v18 = v15;
      if (v17)
      {
        v19 = v15;
        do
        {
          v18 = [v19 uniqueInputNode];

          v20 = [v18 inputs];
          v21 = [v20 count];

          v19 = v18;
        }

        while (v21);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v41 = NUAssertLogger_8665();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a source node"];
          *buf = 138543362;
          v59 = v42;
          _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = NUAssertLogger_8665();
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (v43)
        {
          if (v45)
          {
            v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v49 = MEMORY[0x1E696AF00];
            v50 = v48;
            v51 = [v49 callStackSymbols];
            v52 = [v51 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v59 = v48;
            v60 = 2114;
            v61 = v52;
            _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v45)
        {
          v46 = [MEMORY[0x1E696AF00] callStackSymbols];
          v47 = [v46 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v59 = v47;
          _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUSourceOrientationNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1092, @"Expected a source node", v53, v54, v55, v56, v57);
      }

      v22 = [NUSourceOrientationNode originalOrientationToApplyToSource:v18 skipOrientation:self->_skipOrientation error:a5];
      if (v22)
      {
        if (v22 == 1)
        {
          v15 = v15;
        }

        else
        {
          v23 = [[NUOrientationNode alloc] initWithOrientation:v22 input:v15];
          -[NURenderNode setEvaluatedForMode:](v23, "setEvaluatedForMode:", [v10 evaluationMode]);
          v15 = [NURenderNode nodeFromCache:v23 cache:v8];
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NUSourceOrientationNode)initWithInput:(id)a3 source:(id)a4 settings:(id)a5 orientation:(int64_t)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v18 = NUAssertLogger_8665();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v68 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_8665();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v39;
        v69 = 2114;
        v70 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceOrientationNode initWithInput:source:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1020, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "input != nil");
  }

  if (!v11)
  {
    v25 = NUAssertLogger_8665();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v68 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_8665();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v48;
        v69 = 2114;
        v70 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceOrientationNode initWithInput:source:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1021, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "source != nil");
  }

  if ((a6 - 1) >= 8)
  {
    v32 = NUAssertLogger_8665();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v68 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_8665();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v57;
        v69 = 2114;
        v70 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceOrientationNode initWithInput:source:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1022, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "NUOrientationIsValid(orientation)");
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:@"skipOrientation"];
  v15 = [v14 BOOLValue];

  v66.receiver = self;
  v66.super_class = NUSourceOrientationNode;
  v16 = [(NUOrientationNode *)&v66 initWithOrientation:a6 input:v10];
  v16->_skipOrientation = v15;

  return v16;
}

- (NUSourceOrientationNode)initWithOrientation:(int64_t)a3 input:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v7 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v10, v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUSourceOrientationNode initWithOrientation:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1015, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

+ (int64_t)originalOrientationToApplyToSource:(id)a3 skipOrientation:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a5)
  {
    v19 = NUAssertLogger_8665();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v36 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_8665();
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
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSourceOrientationNode originalOrientationToApplyToSource:skipOrientation:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 1036, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != nil");
  }

  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 sourceOrientation];
  }

  v10 = [v8 originalNode];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 outputImageGeometry:a5];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 orientation];
      v15 = [v8 sourceDerivation];
      v9 = [v15 orientationFromOriginal:v14 derivativeOrientation:{objc_msgSend(v8, "sourceOrientation")}];

      if (v6)
      {
        v16 = 6;
        if (v14 != 8)
        {
          v16 = v14;
        }

        if (v14 == 6)
        {
          v17 = 8;
        }

        else
        {
          v17 = v16;
        }

        v9 = NUOrientationConcat(v9, v17);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end