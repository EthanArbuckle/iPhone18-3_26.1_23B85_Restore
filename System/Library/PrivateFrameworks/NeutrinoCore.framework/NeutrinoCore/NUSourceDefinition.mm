@interface NUSourceDefinition
+ (id)imageSourceDefinitionWithURL:(id)a3 options:(id)a4;
+ (id)livePhotoSourceDefinitionWithImage:(id)a3 video:(id)a4 options:(id)a5;
+ (id)videoSourceDefinitionWithURL:(id)a3 options:(id)a4;
- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation NUSourceDefinition

- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4
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
  _NUAssertFailHandler("[NUSourceDefinition(NodeProvider) sourceContainerNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 442, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

+ (id)livePhotoSourceDefinitionWithImage:(id)a3 video:(id)a4 options:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v13 = NUAssertLogger_9314();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageDefinition != nil"];
      *buf = 138543362;
      v46 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_9314();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSourceDefinition livePhotoSourceDefinitionWithImage:video:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 72, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "imageDefinition != nil");
  }

  if (!v8)
  {
    v20 = NUAssertLogger_9314();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoDefinition != nil"];
      *buf = 138543362;
      v46 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_9314();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSourceDefinition livePhotoSourceDefinitionWithImage:video:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 73, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "videoDefinition != nil");
  }

  v10 = v9;
  v11 = [[NULivePhotoSourceDefinition alloc] initWithImageSourceDefinition:v7 videoSourceDefinition:v8];

  return v11;
}

+ (id)videoSourceDefinitionWithURL:(id)a3 options:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v12 = NUAssertLogger_9314();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoURL != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_9314();
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

    _NUAssertFailHandler("+[NUSourceDefinition videoSourceDefinitionWithURL:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 66, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "videoURL != nil");
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"ContentType"];
  v9 = [v8 identifier];

  v10 = [(NUFileSourceDefinition *)[NUVideoFileSourceDefinition alloc] initWithURL:v5 UTI:v9];

  return v10;
}

+ (id)imageSourceDefinitionWithURL:(id)a3 options:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v12 = NUAssertLogger_9314();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageURL != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_9314();
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

    _NUAssertFailHandler("+[NUSourceDefinition imageSourceDefinitionWithURL:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 60, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "imageURL != nil");
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"ContentType"];
  v9 = [v8 identifier];

  v10 = [(NUFileSourceDefinition *)[NUImageFileSourceDefinition alloc] initWithURL:v5 UTI:v9];

  return v10;
}

@end