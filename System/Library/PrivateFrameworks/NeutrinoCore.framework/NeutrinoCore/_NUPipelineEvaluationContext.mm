@interface _NUPipelineEvaluationContext
- (_NUPipelineEvaluationContext)init;
- (id)dataForChannel:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)beginScope:(id)a3;
- (void)dealloc;
- (void)endScope:(id)a3;
- (void)setChannelData:(id)a3;
- (void)setData:(id)a3 forChannel:(id)a4;
@end

@implementation _NUPipelineEvaluationContext

- (void)setChannelData:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (!v21)
  {
    v5 = NUAssertLogger_5769();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channelData != nil"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_5769();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext setChannelData:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3764, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "channelData != nil");
  }

  v4 = [(_NUPipelineEvaluationContext *)self currentScope];
  [v4 setChannelData:v21];
}

- (void)setData:(id)a3 forChannel:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v6 = a4;
  if (!v40)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v42 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v26;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext setData:forChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3758, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "data != nil");
  }

  if (!v6)
  {
    v15 = NUAssertLogger_5769();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v42 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_5769();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext setData:forChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3759, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "channel != nil");
  }

  v7 = [(_NUPipelineEvaluationContext *)self currentScope];
  [v7 setData:v40 forChannel:v6];
}

- (id)dataForChannel:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5769();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext dataForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3753, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "channel != nil");
  }

  v5 = v4;
  v6 = [(_NUPipelineEvaluationContext *)self currentScope];
  v7 = [v6 dataForChannel:v5];

  return v7;
}

- (void)endScope:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v45 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
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
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext endScope:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3747, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "name != nil");
  }

  v43 = v4;
  v5 = [(_NUPipelineEvaluationContext *)self currentScope];
  v6 = [v5 name];
  v7 = [v43 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v15 = NUAssertLogger_5769();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(_NUPipelineEvaluationContext *)self currentScope];
      v18 = [v17 name];
      v19 = [v16 stringWithFormat:@"Scope '%@' is not current ('%@')", v43, v18];
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
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

    [(_NUPipelineEvaluationContext *)self currentScope];
    [objc_claimAutoreleasedReturnValue() name];
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler("[_NUPipelineEvaluationContext endScope:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3748, @"Scope '%@' is not current ('%@')", v39, v40, v41, v42, v43);
  }

  [(NSMutableArray *)self->_scopes removeLastObject];
}

- (void)beginScope:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a3;
  if (!v24)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v26 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v15;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineEvaluationContext beginScope:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3737, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v4 = [_NUPipelineEvaluationScope alloc];
  v5 = [(_NUPipelineEvaluationContext *)self currentScope];
  v6 = [v5 channelData];
  v7 = [(_NUPipelineEvaluationScope *)v4 initWithName:v24 channelData:v6];

  [(NSMutableArray *)self->_scopes addObject:v7];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSMutableArray *)self->_scopes componentsJoinedByString:@", \n"];
  v6 = [v3 stringWithFormat:@"<%@:%p scopes:%@>", v4, self, v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUPipelineEvaluationContext *)self currentScope];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_scopes count])
  {
    v3 = NUAssertLogger_5769();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ deallocated with pending scopes: %@", objc_opt_class(), self->_scopes];
      *buf = 138543362;
      v22 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_5769();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v15 = objc_opt_class();
    _NUAssertFailHandler("[_NUPipelineEvaluationContext dealloc]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3725, @"%@ deallocated with pending scopes: %@", v16, v17, v18, v19, v15);
  }

  v20.receiver = self;
  v20.super_class = _NUPipelineEvaluationContext;
  [(_NUPipelineEvaluationContext *)&v20 dealloc];
}

- (_NUPipelineEvaluationContext)init
{
  v6.receiver = self;
  v6.super_class = _NUPipelineEvaluationContext;
  v2 = [(_NUPipelineEvaluationContext *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  scopes = v2->_scopes;
  v2->_scopes = v3;

  return v2;
}

@end