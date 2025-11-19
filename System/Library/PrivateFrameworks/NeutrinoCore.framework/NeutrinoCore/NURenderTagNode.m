@interface NURenderTagNode
+ (BOOL)validateName:(id)a3 error:(id *)a4;
- (NURenderTagNode)initWithInput:(id)a3 name:(id)a4;
- (NURenderTagNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_descriptionWithOffset:(int64_t)a3 showInputs:(BOOL)a4 map:(id)a5;
- (id)_evaluateGeometrySpaceMap:(id *)a3;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NURenderTagNode

- (id)_descriptionWithOffset:(int64_t)a3 showInputs:(BOOL)a4 map:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = self;
  v11 = v10;
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v12 = v11;
    v13 = [v12 name];
    [v9 addObject:v13];

    v14 = v12;
    v11 = [(NURenderTagNode *)v14 input];

    v10 = v14;
  }

  v15 = MEMORY[0x1E696AD60];
  v16 = [v9 componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"TAGS: %@", v16];

  if (v5)
  {
    [(NURenderNode *)v10 _appendInputsWithOffset:a3 to:v17 map:v8];
  }

  return v17;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v4 = [(NURenderTagNode *)self input];
  v5 = [v4 outputImageGeometry:a3];

  return v5;
}

- (id)_evaluateGeometrySpaceMap:(id *)a3
{
  v6.receiver = self;
  v6.super_class = NURenderTagNode;
  v4 = [(NURenderNode *)&v6 _evaluateGeometrySpaceMap:a3];
  [v4 addTagNode:self];

  return v4;
}

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NURenderTagNode *)self input];
  v5 = [v4 outputImage:a3];

  return v5;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E695FAB0];
  v9 = a4;
  v10 = a3;
  v11 = [(NURenderNode *)self inputForKey:v8];
  v12 = [v11 nodeByReplayingAgainstCache:v10 pipelineState:v9 error:a5];

  return v12;
}

- (NURenderTagNode)initWithInput:(id)a3 name:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = NUAssertLogger_20879();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v53 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_20879();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v29;
        v54 = 2114;
        v55 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagNode initWithInput:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagNode.m", 24, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "input != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v22 = NUAssertLogger_20879();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v53 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_20879();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v38;
        v54 = 2114;
        v55 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagNode initWithInput:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagNode.m", 25, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "name != nil");
  }

  v50 = @"name";
  v51 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v48 = *MEMORY[0x1E695FAB0];
  v49 = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v47.receiver = self;
  v47.super_class = NURenderTagNode;
  v11 = [(NURenderNode *)&v47 initWithSettings:v9 inputs:v10];

  v12 = [v8 copy];
  name = v11->_name;
  v11->_name = v12;

  return v11;
}

- (NURenderTagNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_20901);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_20901);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_20901);
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
  _NUAssertFailHandler("[NURenderTagNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagNode.m", 18, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (BOOL)validateName:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = NUAssertLogger_20879();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tagName != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_20879();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTagNode validateName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagNode.m", 45, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "tagName != nil");
  }

  if (!a4)
  {
    v16 = NUAssertLogger_20879();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_20879();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTagNode validateName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagNode.m", 46, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = v5;
  if (([v5 isEqualToString:@"."] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"..") & 1) != 0 || (objc_msgSend(v6, "containsString:", @"/") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", &stru_1F3F4BA98))
  {
    [NUError mismatchError:@"invalid tag : cannot be empty object:exactly '.' or '..' or contain '/' characters ", v6];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end