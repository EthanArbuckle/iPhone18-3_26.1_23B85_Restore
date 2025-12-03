@interface NURenderPipeline
- (id)_processedRenderNodeForComposition:(id)composition input:(id)input pipelineState:(id)state error:(id *)error;
- (id)_runPipelineFiltersForRenderNode:(id)node composition:(id)composition pipelineState:(id)state error:(id *)error;
- (id)processedRenderNodeForComposition:(id)composition pipelineState:(id)state extentPolicy:(id)policy error:(id *)error;
@end

@implementation NURenderPipeline

- (id)_runPipelineFiltersForRenderNode:(id)node composition:(id)composition pipelineState:(id)state error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  compositionCopy = composition;
  stateCopy = state;
  v12 = [[NURenderPipelineHelper alloc] initWithPipelineState:stateCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = stateCopy;
  pipelineFilters = [stateCopy pipelineFilters];
  v14 = [pipelineFilters countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_3:
    v17 = 0;
    v18 = nodeCopy;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(pipelineFilters);
      }

      filterBlock = [*(*(&v22 + 1) + 8 * v17) filterBlock];
      nodeCopy = (filterBlock)[2](filterBlock, v12, compositionCopy, v18, error);

      if (!nodeCopy)
      {
        break;
      }

      ++v17;
      v18 = nodeCopy;
      if (v15 == v17)
      {
        v15 = [pipelineFilters countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return nodeCopy;
}

- (id)_processedRenderNodeForComposition:(id)composition input:(id)input pipelineState:(id)state error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  inputCopy = input;
  stateCopy = state;
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
      callStackSymbols = [v19 callStackSymbols];
      v22 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v25 callStackSymbols];
    v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (id)processedRenderNodeForComposition:(id)composition pipelineState:(id)state extentPolicy:(id)policy error:(id *)error
{
  compositionCopy = composition;
  stateCopy = state;
  policyCopy = policy;
  v13 = [(NURenderPipeline *)self _processedRenderNodeForComposition:compositionCopy input:0 pipelineState:stateCopy error:error];
  if (v13)
  {
    v14 = [(NURenderPipeline *)self _runPipelineFiltersForRenderNode:v13 composition:compositionCopy pipelineState:stateCopy error:error];

    if (v14)
    {
      v15 = objc_opt_new();
      if ([stateCopy enableTransparency])
      {
        [v15 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"renderTransparencyOpaque"];
      }

      if ([stateCopy enforceEvenDimensions])
      {
        [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enforceEvenDimensions"];
      }

      if (policyCopy)
      {
        [v15 setObject:policyCopy forKeyedSubscript:@"extentPolicy"];
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