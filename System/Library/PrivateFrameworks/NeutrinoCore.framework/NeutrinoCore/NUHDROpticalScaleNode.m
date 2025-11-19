@interface NUHDROpticalScaleNode
- (NUHDROpticalScaleNode)initWithInput:(id)a3 opticalScale:(double)a4;
- (NUHDROpticalScaleNode)initWithSettings:(id)a3 inputs:(id)a4;
- (double)opticalScale;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NUHDROpticalScaleNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(NURenderNode *)self inputs];
  v11 = *MEMORY[0x1E695FAB0];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v13 = [v12 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  if (v13)
  {
    if ([v9 auxiliaryImageType] == 1)
    {
      v14 = [v12 imageProperties:a5];
      v15 = v14;
      if (v14)
      {
        if (([v14 isHDR] & 1) != 0 && (objc_msgSend(v15, "contentHeadroom"), v16 > 1.0))
        {
          v17 = v16;
          [(NUHDROpticalScaleNode *)self opticalScale];
          v19 = 1.0;
          if (v18 <= 1.0)
          {
            if (v18 < 1.0)
            {
              v19 = fmax(v18 * v17, 1.0);
            }
          }

          else
          {
            v19 = fmin(v18 / v17, 1.0);
          }

          v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v22 = [MEMORY[0x1E695F688] vectorWithX:v19 Y:0.0 Z:0.0];
          [v21 setObject:v22 forKeyedSubscript:@"inputRVector"];

          v23 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v19 Z:0.0];
          [v21 setObject:v23 forKeyedSubscript:@"inputGVector"];

          v24 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v19];
          [v21 setObject:v24 forKeyedSubscript:@"inputBVector"];

          v25 = [NUFilterNode alloc];
          v30 = v11;
          v31[0] = v13;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
          v27 = [(NUFilterNode *)v25 initWithFilterName:@"CIColorMatrix" settings:v21 inputs:v26];

          v28 = [(NURenderNode *)v27 inputs];
          v20 = [(NURenderNode *)v27 resolvedNodeWithCachedInputs:v28 cache:v8 pipelineState:v9 error:a5];
        }

        else
        {
          v20 = v13;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = v13;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (double)opticalScale
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"opticalScale"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NUHDROpticalScaleNode)initWithInput:(id)a3 opticalScale:(double)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = NUAssertLogger_11533();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v51 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_11533();
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
        v51 = v27;
        v52 = 2114;
        v53 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDROpticalScaleNode initWithInput:opticalScale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 413, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "input != nil");
  }

  if (a4 <= 0.0)
  {
    v20 = NUAssertLogger_11533();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "opticalScale > 0.0"];
      *buf = 138543362;
      v51 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_11533();
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
        v51 = v36;
        v52 = 2114;
        v53 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDROpticalScaleNode initWithInput:opticalScale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 414, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "opticalScale > 0.0");
  }

  v7 = v6;
  v48 = @"opticalScale";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v49 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v46 = *MEMORY[0x1E695FAB0];
  v47 = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v45.receiver = self;
  v45.super_class = NUHDROpticalScaleNode;
  v11 = [(NURenderNode *)&v45 initWithSettings:v9 inputs:v10];

  return v11;
}

- (NUHDROpticalScaleNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_311);
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
  _NUAssertFailHandler("[NUHDROpticalScaleNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 409, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end