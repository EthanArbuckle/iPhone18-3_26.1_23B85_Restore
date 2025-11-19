@interface _NUPipelineBuilderRenderPipeline
- (_NUPipelineBuilderRenderPipeline)initWithPipelineBuilder:(id)a3;
@end

@implementation _NUPipelineBuilderRenderPipeline

- (_NUPipelineBuilderRenderPipeline)initWithPipelineBuilder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineBuilder != nil"];
      *buf = 138543362;
      v27 = v10;
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
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipelineBuilderRenderPipeline initWithPipelineBuilder:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3691, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "pipelineBuilder != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = _NUPipelineBuilderRenderPipeline;
  v6 = [(_NUPipelineBuilderRenderPipeline *)&v25 init];
  pipelineBuilder = v6->_pipelineBuilder;
  v6->_pipelineBuilder = v5;

  return v6;
}

@end