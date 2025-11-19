@interface NUScaledSourceContainerNode
- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5;
@end

@implementation NUScaledSourceContainerNode

- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(NUMultipleSourceContainerNode *)self sources];
  v10 = [v9 objectAtIndexedSubscript:0];

  v34.receiver = self;
  v34.super_class = NUScaledSourceContainerNode;
  v11 = [(NUMultipleSourceContainerNode *)&v34 resolveSourceNodeForPipelineState:v8 foundScale:a4 error:a5];
  if (v11 && [v8 evaluationMode] == 1 && v11 == v10)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }

    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = v12;
      v15 = [v13 stringWithFormat:@"Trying to render using a dummy node. Note: You cannot use a NUScaledSourceContainerNodefor 1-1 rendering. You must specify the renderRequest.scalePolicy to match [NUScaledSourceDefiniton scale] or lower."];
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_1C0184000, v14, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v16 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v16 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
        }

        goto LABEL_11;
      }

      if (v16 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_11:
      v17 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = specific;
        v25 = v17;
        v26 = [v23 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = specific;
        v37 = 2114;
        v38 = v27;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_17:
      _NUAssertContinueHandler("[NUScaledSourceContainerNode resolveSourceNodeForPipelineState:foundScale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 366, @"Trying to render using a dummy node. Note: You cannot use a NUScaledSourceContainerNodefor 1-1 rendering. You must specify the renderRequest.scalePolicy to match [NUScaledSourceDefiniton scale] or lower.", v18, v19, v20, v21, v34.receiver);
      goto LABEL_18;
    }

    v28 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v30 = MEMORY[0x1E696AF00];
      v31 = v28;
      v32 = [v30 callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v33;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

@end