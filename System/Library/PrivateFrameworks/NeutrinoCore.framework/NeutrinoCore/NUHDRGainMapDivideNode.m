@interface NUHDRGainMapDivideNode
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (NUHDRGainMapDivideNode)initWithInput:(id)a3 lightMap:(id)a4 settings:(id)a5;
- (NUHDRGainMapDivideNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)inputNode;
- (id)lightMapNode;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NUHDRGainMapDivideNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 auxiliaryImageType] == 7)
  {
    v10 = [v9 copy];
    [v10 setAuxiliaryImageType:1];
    v11 = [(NUHDRGainMapDivideNode *)self lightMapNode];
    v12 = [v11 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

    if (v12)
    {
      v13 = [(NUHDRGainMapDivideNode *)self inputNode];
      v14 = [v13 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

      if (v14)
      {
        v15 = [(NURenderNode *)self settings];
        v16 = [v15 mutableCopy];

        [v16 setObject:@"inputImage" forKeyedSubscript:@"__dominantInputSettingsKey"];
        [v16 setObject:&unk_1F3F823B0 forKeyedSubscript:@"__gainMapMode"];
        v21[0] = @"inputImage";
        v21[1] = @"inputLightMap";
        v22[0] = v14;
        v22[1] = v12;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        v18 = [[NUFilterNode alloc] initWithFilterName:@"NUHDRDivideGainMapFilter" settings:v16 inputs:v17];
        v19 = [(NURenderNode *)v18 resolvedNodeWithCachedInputs:v17 cache:v8 pipelineState:v9 error:a5];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v10 = [(NUHDRGainMapDivideNode *)self inputNode];
    v19 = [v10 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v19;
}

- (id)lightMapNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:@"inputLightMap"];

  return v3;
}

- (id)inputNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:@"inputImage"];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v3 = a3;
  v4 = [v3 evaluationMode] == 1 && objc_msgSend(v3, "auxiliaryImageType") == 7;

  return v4;
}

- (NUHDRGainMapDivideNode)initWithInput:(id)a3 lightMap:(id)a4 settings:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v15 = NUAssertLogger_11533();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v35 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_11533();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v22;
        v36 = 2114;
        v37 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapDivideNode initWithInput:lightMap:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 750, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "input != nil");
  }

  v11 = v10;
  v32[0] = @"inputLightMap";
  v32[1] = @"inputImage";
  v33[0] = v9;
  v33[1] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v31.receiver = self;
  v31.super_class = NUHDRGainMapDivideNode;
  v13 = [(NURenderNode *)&v31 initWithSettings:v11 inputs:v12];

  return v13;
}

- (NUHDRGainMapDivideNode)initWithSettings:(id)a3 inputs:(id)a4
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
  _NUAssertFailHandler("[NUHDRGainMapDivideNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 746, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end