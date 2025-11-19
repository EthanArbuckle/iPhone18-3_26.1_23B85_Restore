@interface NUSingleSourceDefinition
- (NUSingleSourceDefinition)init;
- (id)generateSourceNodeWithIdentifier:(id)a3 error:(id *)a4;
- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation NUSingleSourceDefinition

- (id)generateSourceNodeWithIdentifier:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
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
    v10 = [v6 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  _NUAssertFailHandler("[NUSingleSourceDefinition(NodeProvider) generateSourceNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 466, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v12 = NUAssertLogger_8665();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
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

    _NUAssertFailHandler("[NUSingleSourceDefinition(NodeProvider) sourceContainerNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 451, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != NULL");
  }

  v7 = v6;
  v28 = 0;
  v8 = [(NUSingleSourceDefinition *)self generateSourceNodeWithIdentifier:v6 error:&v28];
  v9 = v28;
  if (v8)
  {
    v10 = [[NUSingleSourceContainerNode alloc] initWithSourceNode:v8 assetIdentifier:v7];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate source node" object:v7 underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (NUSingleSourceDefinition)init
{
  v6.receiver = self;
  v6.super_class = NUSingleSourceDefinition;
  v2 = [(NUSingleSourceDefinition *)&v6 init];
  v3 = objc_alloc_init(NUDefaultSourceDerivation);
  sourceDerivation = v2->_sourceDerivation;
  v2->_sourceDerivation = v3;

  return v2;
}

@end