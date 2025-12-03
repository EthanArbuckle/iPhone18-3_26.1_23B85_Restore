@interface NUStyleTransferThumbnailNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailSize;
- (NUStyleTransferThumbnailNode)initWithInput:(id)input settings:(id)settings;
- (NUStyleTransferThumbnailNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUStyleTransferThumbnailNode

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUStyleTransferNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    thumbnailSize = [(NUStyleTransferThumbnailNode *)self thumbnailSize];
    v9 = v8;
    [v6 extent];
    if (thumbnailSize == v11 && v9 == v10)
    {
      image = v6;
    }

    else
    {
      tuningParameters = [(NUStyleTransferNode *)self tuningParameters];
      configuration = [(NUStyleTransferNode *)self configuration];
      v15 = [configuration mutableCopy];

      settings = [(NURenderNode *)self settings];
      v17 = [settings objectForKeyedSubscript:@"useFloat16"];
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

      targetColorSpace = [(NUStyleTransferNode *)self targetColorSpace];
      image = [_NUStyleTransferThumbnailProcessor generateThumbnailForImage:v6 targetSize:thumbnailSize colorSpace:v9 configuration:targetColorSpace tuningParameters:v15 error:tuningParameters, image];
      if ([(NUStyleTransferNode *)self shouldCache])
      {
        v22 = [[NUProcessorCache alloc] initWithImage:image];
        [(NUProcessorCache *)v22 setLabel:@"NUStyleTransferThumbnailNode.Provider"];
        outputImage = [(NUProcessorCache *)v22 outputImage];

        image = outputImage;
      }
    }
  }

  else
  {
    image = 0;
  }

  return image;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [settingsCopy objectForKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  v14 = [v13 mutableCopy];
  [v14 removeObjectForKey:@"priorMatrix"];
  [v12 setObject:v14 forKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  v15 = [settingsCopy objectForKeyedSubscript:@"thumbnailWidth"];
  if (v15)
  {
    [v12 setObject:v15 forKeyedSubscript:@"thumbnailWidth"];
  }

  else
  {
    v16 = [v13 objectForKeyedSubscript:@"thumbnailWidth"];
    [v12 setObject:v16 forKeyedSubscript:@"thumbnailWidth"];
  }

  v17 = [settingsCopy objectForKeyedSubscript:@"thumbnailHeight"];
  if (v17)
  {
    [v12 setObject:v17 forKeyedSubscript:@"thumbnailHeight"];
  }

  else
  {
    [v13 objectForKeyedSubscript:@"thumbnailHeight"];
    v18 = inputsCopy;
    v20 = v19 = error;
    [v12 setObject:v20 forKeyedSubscript:@"thumbnailHeight"];

    error = v19;
    inputsCopy = v18;
  }

  v21 = [settingsCopy objectForKeyedSubscript:NUStyleTransferNodeTuningParametersKey];
  [v12 setObject:v21 forKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

  v22 = [settingsCopy objectForKeyedSubscript:NUStyleTransferNodeTargetColorSpaceKey];
  [v12 setObject:v22 forKeyedSubscript:NUStyleTransferNodeTargetColorSpaceKey];

  v23 = [settingsCopy objectForKeyedSubscript:@"useFloat16"];
  [v12 setObject:v23 forKeyedSubscript:@"useFloat16"];

  if (([stateCopy disableIntermediateCaching] & 1) == 0 && objc_msgSend(stateCopy, "evaluationMode") == 1)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:NUStyleTransferNodeShouldCacheKey];
  }

  v27.receiver = self;
  v27.super_class = NUStyleTransferThumbnailNode;
  v24 = [(NUStyleTransferNode *)&v27 resolvedNodeWithCachedInputs:inputsCopy settings:v12 pipelineState:stateCopy error:error];

  return v24;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] == 1)
  {
    v10 = [stateCopy copy];
    scale = [stateCopy scale];
    if (NUScaleCompare(scale, v12, 1, 4) >= 1 && [v10 mediaComponentType] == 1)
    {
      [v10 setScale:{1, 4}];
    }

    inputNode = [(NUStyleTransferNode *)self inputNode];
    v14 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

    if (v14)
    {
      v19 = @"input";
      v20[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v15 cache:cacheCopy pipelineState:stateCopy error:error];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    inputNode2 = [(NUStyleTransferNode *)self inputNode];
    v16 = [inputNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v16;
}

- (NUStyleTransferThumbnailNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  configuration = [(NUStyleTransferNode *)self configuration];
  settings = [(NURenderNode *)self settings];
  v5 = [settings objectForKeyedSubscript:@"thumbnailWidth"];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    v8 = [configuration objectForKeyedSubscript:@"thumbnailWidth"];
    integerValue = [v8 integerValue];
  }

  settings2 = [(NURenderNode *)self settings];
  v10 = [settings2 objectForKeyedSubscript:@"thumbnailHeight"];
  v11 = v10;
  if (v10)
  {
    integerValue2 = [v10 integerValue];
  }

  else
  {
    v13 = [configuration objectForKeyedSubscript:@"thumbnailHeight"];
    integerValue2 = [v13 integerValue];
  }

  if ((integerValue2 | integerValue) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    v34 = @"(width >= 0) && (height >= 0)";
    [currentHandler handleFailureInFunction:v17 file:@"NUGeometryPrimitives.h" lineNumber:38 description:@"Invalid parameter not satisfying: %@"];

    if (!integerValue)
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
          callStackSymbols = [v26 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v36 = v25;
          v37 = 2114;
          v38 = v29;
          _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v22)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v36 = v24;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUStyleTransferThumbnailNode thumbnailSize]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1092, @"Invalid thumbnail size", v30, v31, v32, v33, v34);
    }
  }

  else if (!integerValue)
  {
    goto LABEL_12;
  }

  if (!integerValue2)
  {
    goto LABEL_12;
  }

  v14 = integerValue;
  v15 = integerValue2;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (NUStyleTransferThumbnailNode)initWithInput:(id)input settings:(id)settings
{
  v35 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  if (!inputCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v19;
        v33 = 2114;
        v34 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferThumbnailNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1078, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "input != nil");
  }

  v8 = settingsCopy;
  v29 = @"input";
  v30 = inputCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v28.receiver = self;
  v28.super_class = NUStyleTransferThumbnailNode;
  v10 = [(NURenderNode *)&v28 initWithSettings:v8 inputs:v9];

  return v10;
}

@end