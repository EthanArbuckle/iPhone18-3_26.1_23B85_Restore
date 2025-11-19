@interface NUStyleTransferThumbnailNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailSize;
- (NUStyleTransferThumbnailNode)initWithInput:(id)a3 settings:(id)a4;
- (NUStyleTransferThumbnailNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUStyleTransferThumbnailNode

- (id)_evaluateImage:(id *)a3
{
  v5 = [(NUStyleTransferNode *)self inputNode];
  v6 = [v5 outputImage:a3];

  if (v6)
  {
    v7 = [(NUStyleTransferThumbnailNode *)self thumbnailSize];
    v9 = v8;
    [v6 extent];
    if (v7 == v11 && v9 == v10)
    {
      v21 = v6;
    }

    else
    {
      v13 = [(NUStyleTransferNode *)self tuningParameters];
      v14 = [(NUStyleTransferNode *)self configuration];
      v15 = [v14 mutableCopy];

      v16 = [(NURenderNode *)self settings];
      v17 = [v16 objectForKeyedSubscript:@"useFloat16"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = &unk_1F3F828C0;
      }

      [v15 setObject:v19 forKeyedSubscript:@"useFloat16"];

      v20 = [(NUStyleTransferNode *)self targetColorSpace];
      v21 = [_NUStyleTransferThumbnailProcessor generateThumbnailForImage:v6 targetSize:v7 colorSpace:v9 configuration:v20 tuningParameters:v15 error:v13, a3];
      if ([(NUStyleTransferNode *)self shouldCache])
      {
        v22 = [[NUProcessorCache alloc] initWithImage:v21];
        [(NUProcessorCache *)v22 setLabel:@"NUStyleTransferThumbnailNode.Provider"];
        v23 = [(NUProcessorCache *)v22 outputImage];

        v21 = v23;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [v10 objectForKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  v14 = [v13 mutableCopy];
  [v14 removeObjectForKey:@"priorMatrix"];
  [v12 setObject:v14 forKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  v15 = [v10 objectForKeyedSubscript:@"thumbnailWidth"];
  if (v15)
  {
    [v12 setObject:v15 forKeyedSubscript:@"thumbnailWidth"];
  }

  else
  {
    v16 = [v13 objectForKeyedSubscript:@"thumbnailWidth"];
    [v12 setObject:v16 forKeyedSubscript:@"thumbnailWidth"];
  }

  v17 = [v10 objectForKeyedSubscript:@"thumbnailHeight"];
  if (v17)
  {
    [v12 setObject:v17 forKeyedSubscript:@"thumbnailHeight"];
  }

  else
  {
    [v13 objectForKeyedSubscript:@"thumbnailHeight"];
    v18 = v9;
    v20 = v19 = a6;
    [v12 setObject:v20 forKeyedSubscript:@"thumbnailHeight"];

    a6 = v19;
    v9 = v18;
  }

  v21 = [v10 objectForKeyedSubscript:NUStyleTransferNodeTuningParametersKey];
  [v12 setObject:v21 forKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

  v22 = [v10 objectForKeyedSubscript:NUStyleTransferNodeTargetColorSpaceKey];
  [v12 setObject:v22 forKeyedSubscript:NUStyleTransferNodeTargetColorSpaceKey];

  v23 = [v10 objectForKeyedSubscript:@"useFloat16"];
  [v12 setObject:v23 forKeyedSubscript:@"useFloat16"];

  if (([v11 disableIntermediateCaching] & 1) == 0 && objc_msgSend(v11, "evaluationMode") == 1)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:NUStyleTransferNodeShouldCacheKey];
  }

  v27.receiver = self;
  v27.super_class = NUStyleTransferThumbnailNode;
  v24 = [(NUStyleTransferNode *)&v27 resolvedNodeWithCachedInputs:v9 settings:v12 pipelineState:v11 error:a6];

  return v24;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 auxiliaryImageType] == 1)
  {
    v10 = [v9 copy];
    v11 = [v9 scale];
    if (NUScaleCompare(v11, v12, 1, 4) >= 1 && [v10 mediaComponentType] == 1)
    {
      [v10 setScale:{1, 4}];
    }

    v13 = [(NUStyleTransferNode *)self inputNode];
    v14 = [v13 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

    if (v14)
    {
      v19 = @"input";
      v20[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v15 cache:v8 pipelineState:v9 error:a5];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = [(NUStyleTransferNode *)self inputNode];
    v16 = [v17 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v16;
}

- (NUStyleTransferThumbnailNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
  _NUAssertFailHandler("[NUStyleTransferThumbnailNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1097, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailSize
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(NUStyleTransferNode *)self configuration];
  v4 = [(NURenderNode *)self settings];
  v5 = [v4 objectForKeyedSubscript:@"thumbnailWidth"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v8 = [v3 objectForKeyedSubscript:@"thumbnailWidth"];
    v7 = [v8 integerValue];
  }

  v9 = [(NURenderNode *)self settings];
  v10 = [v9 objectForKeyedSubscript:@"thumbnailHeight"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v13 = [v3 objectForKeyedSubscript:@"thumbnailHeight"];
    v12 = [v13 integerValue];
  }

  if ((v12 | v7) < 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    v34 = @"(width >= 0) && (height >= 0)";
    [v16 handleFailureInFunction:v17 file:@"NUGeometryPrimitives.h" lineNumber:38 description:@"Invalid parameter not satisfying: %@"];

    if (!v7)
    {
LABEL_12:
      v18 = NUAssertLogger_30110();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid thumbnail size"];
        *buf = 138543362;
        v36 = v19;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v21 = NUAssertLogger_30110();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v22)
        {
          v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v26 = MEMORY[0x1E696AF00];
          v27 = v25;
          v28 = [v26 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v36 = v25;
          v37 = 2114;
          v38 = v29;
          _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v22)
      {
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v36 = v24;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUStyleTransferThumbnailNode thumbnailSize]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1092, @"Invalid thumbnail size", v30, v31, v32, v33, v34);
    }
  }

  else if (!v7)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = v7;
  v15 = v12;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (NUStyleTransferThumbnailNode)initWithInput:(id)a3 settings:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_30110();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v32 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_30110();
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
        v32 = v19;
        v33 = 2114;
        v34 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferThumbnailNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1078, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "input != nil");
  }

  v8 = v7;
  v29 = @"input";
  v30 = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v28.receiver = self;
  v28.super_class = NUStyleTransferThumbnailNode;
  v10 = [(NURenderNode *)&v28 initWithSettings:v8 inputs:v9];

  return v10;
}

@end