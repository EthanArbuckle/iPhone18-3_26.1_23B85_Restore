@interface NUHDRGainMapHeadroomNode
+ (double)_updateContentHeadroom:(double)a3 withOffset:(double)a4;
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (NUHDRGainMapHeadroomNode)initWithInput:(id)a3 settings:(id)a4;
- (NUHDRGainMapHeadroomNode)initWithSettings:(id)a3 inputs:(id)a4;
- (double)headroomOffset;
- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageProperties:(id *)a3;
- (id)inputNode;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUHDRGainMapHeadroomNode

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NUHDRGainMapHeadroomNode *)self inputNode];
  v5 = [v4 outputImage:a3];

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = NUHDRGainMapHeadroomNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4
{
  v16.receiver = self;
  v16.super_class = NUHDRGainMapHeadroomNode;
  v6 = [(NURenderNode *)&v16 _evaluateAuxiliaryImageForType:a3 error:a4];
  v7 = v6;
  if (v6)
  {
    if (a3 == 7)
    {
      v8 = [v6 metadata];
      v15 = 0x3FF0000000000000;
      if ([_NUImageProperties getGainMapHeadroom:&v15 fromMetadata:v8])
      {
        MutableCopy = CGImageMetadataCreateMutableCopy(v8);
        [_NUImageProperties getGainMapHeadroom:&v15 fromMetadata:v8];
        v10 = objc_opt_class();
        v11 = *&v15;
        [(NUHDRGainMapHeadroomNode *)self headroomOffset];
        [v10 _updateContentHeadroom:v11 withOffset:v12];
        [_NUImageProperties setGainMapHeadroom:MutableCopy toMetadata:?];
        v13 = [v7 auxiliaryImageByUpdatingMetadata:MutableCopy];

        v7 = v13;
      }
    }
  }

  return v7;
}

- (id)_evaluateImageProperties:(id *)a3
{
  v5 = [(NUHDRGainMapHeadroomNode *)self inputNode];
  v6 = [v5 imageProperties:a3];
  v7 = [v6 copy];

  if (v7)
  {
    v8 = objc_opt_class();
    [v7 gainMapHeadroom];
    v10 = v9;
    [(NUHDRGainMapHeadroomNode *)self headroomOffset];
    [v8 _updateContentHeadroom:v10 withOffset:v11];
    [v7 setGainMapHeadroom:?];
    v12 = v7;
  }

  return v7;
}

- (double)headroomOffset
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"headroomOffset"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)inputNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v3 = a3;
  v4 = [v3 evaluationMode] == 1 && objc_msgSend(v3, "auxiliaryImageType") == 1;

  return v4;
}

- (NUHDRGainMapHeadroomNode)initWithInput:(id)a3 settings:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v17 = NUAssertLogger_11533();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v39 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_11533();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v24;
        v40 = 2114;
        v41 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapHeadroomNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 1036, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "input != nil");
  }

  v8 = v7;
  v9 = [v7 objectForKeyedSubscript:@"headroomOffset"];
  [v9 doubleValue];
  v11 = v10;

  v36 = @"headroomOffset";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v37 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34 = *MEMORY[0x1E695FAB0];
  v35 = v6;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v33.receiver = self;
  v33.super_class = NUHDRGainMapHeadroomNode;
  v15 = [(NURenderNode *)&v33 initWithSettings:v13 inputs:v14];

  return v15;
}

- (NUHDRGainMapHeadroomNode)initWithSettings:(id)a3 inputs:(id)a4
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
  _NUAssertFailHandler("[NUHDRGainMapHeadroomNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 1032, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (double)_updateContentHeadroom:(double)a3 withOffset:(double)a4
{
  v5 = a3;
  if (a4 >= 0.0)
  {
    if (a4 > 0.0)
    {
      +[NUGlobalSettings maxGainMapHeadroom];
      return v5 + a4 * (v6 - v5);
    }
  }

  else if (a3 + a4 * (a3 + -1.0) >= 1.0)
  {
    return a3 + a4 * (a3 + -1.0);
  }

  else
  {
    return 1.0;
  }

  return v5;
}

@end