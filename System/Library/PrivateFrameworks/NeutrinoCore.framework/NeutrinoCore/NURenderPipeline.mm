@interface NURenderPipeline
- (id)_processedRenderNodeForComposition:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)_runPipelineFiltersForRenderNode:(id)a3 composition:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)processedRenderNodeForComposition:(id)a3 pipelineState:(id)a4 extentPolicy:(id)a5 error:(id *)a6;
@end

@implementation NURenderPipeline

- (id)_runPipelineFiltersForRenderNode:(id)a3 composition:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[NURenderPipelineHelper alloc] initWithPipelineState:v11];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v11;
  v13 = [v11 pipelineFilters];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_3:
    v17 = 0;
    v18 = v9;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v19 = [*(*(&v22 + 1) + 8 * v17) filterBlock];
      v9 = (v19)[2](v19, v12, v10, v18, a6);

      if (!v9)
      {
        break;
      }

      ++v17;
      v18 = v9;
      if (v15 == v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v9;
}

- (id)_processedRenderNodeForComposition:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31249);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v12 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v15];
    *buf = 138543362;
    v37 = v16;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v17 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v17 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_31249);
      }

      goto LABEL_8;
    }

    if (v17 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31249);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v18 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v22;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v23 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = MEMORY[0x1E696AF00];
    v26 = specific;
    v27 = v23;
    v28 = [v25 callStackSymbols];
    v29 = [v28 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v37 = specific;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  _NUAssertFailHandler("[NURenderPipeline _processedRenderNodeForComposition:input:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipeline.m", 52, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v32, v33, v34, v35, v31);
}

- (id)processedRenderNodeForComposition:(id)a3 pipelineState:(id)a4 extentPolicy:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(NURenderPipeline *)self _processedRenderNodeForComposition:v10 input:0 pipelineState:v11 error:a6];
  if (v13)
  {
    v14 = [(NURenderPipeline *)self _runPipelineFiltersForRenderNode:v13 composition:v10 pipelineState:v11 error:a6];

    if (v14)
    {
      v15 = objc_opt_new();
      if ([v11 enableTransparency])
      {
        [v15 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"renderTransparencyOpaque"];
      }

      if ([v11 enforceEvenDimensions])
      {
        [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enforceEvenDimensions"];
      }

      if (v12)
      {
        [v15 setObject:v12 forKeyedSubscript:@"extentPolicy"];
      }

      v16 = [NUPipelineOutputNode alloc];
      v17 = [v15 copy];
      v13 = [(NUPipelineOutputNode *)v16 initWithInput:v14 settings:v17];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end