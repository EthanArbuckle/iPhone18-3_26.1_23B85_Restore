@interface NUHDRGainMapHeadroomNode
+ (double)_updateContentHeadroom:(double)headroom withOffset:(double)offset;
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (NUHDRGainMapHeadroomNode)initWithInput:(id)input settings:(id)settings;
- (NUHDRGainMapHeadroomNode)initWithSettings:(id)settings inputs:(id)inputs;
- (double)headroomOffset;
- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageProperties:(id *)properties;
- (id)inputNode;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUHDRGainMapHeadroomNode

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUHDRGainMapHeadroomNode *)self inputNode];
  v5 = [inputNode outputImage:image];

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUHDRGainMapHeadroomNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  v16.receiver = self;
  v16.super_class = NUHDRGainMapHeadroomNode;
  v6 = [(NURenderNode *)&v16 _evaluateAuxiliaryImageForType:type error:error];
  v7 = v6;
  if (v6)
  {
    if (type == 7)
    {
      metadata = [v6 metadata];
      v15 = 0x3FF0000000000000;
      if ([_NUImageProperties getGainMapHeadroom:&v15 fromMetadata:metadata])
      {
        MutableCopy = CGImageMetadataCreateMutableCopy(metadata);
        [_NUImageProperties getGainMapHeadroom:&v15 fromMetadata:metadata];
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

- (id)_evaluateImageProperties:(id *)properties
{
  inputNode = [(NUHDRGainMapHeadroomNode *)self inputNode];
  v6 = [inputNode imageProperties:properties];
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
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"headroomOffset"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)inputNode
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy evaluationMode] == 1 && objc_msgSend(stateCopy, "auxiliaryImageType") == 1;

  return v4;
}

- (NUHDRGainMapHeadroomNode)initWithInput:(id)input settings:(id)settings
{
  v42 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  if (!inputCopy)
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
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v24;
        v40 = 2114;
        v41 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHDRGainMapHeadroomNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 1036, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "input != nil");
  }

  v8 = settingsCopy;
  v9 = [settingsCopy objectForKeyedSubscript:@"headroomOffset"];
  [v9 doubleValue];
  v11 = v10;

  v36 = @"headroomOffset";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v37 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34 = *MEMORY[0x1E695FAB0];
  v35 = inputCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v33.receiver = self;
  v33.super_class = NUHDRGainMapHeadroomNode;
  v15 = [(NURenderNode *)&v33 initWithSettings:v13 inputs:v14];

  return v15;
}

- (NUHDRGainMapHeadroomNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
  _NUAssertFailHandler("[NUHDRGainMapHeadroomNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUHDRGainMapNode.m", 1032, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (double)_updateContentHeadroom:(double)headroom withOffset:(double)offset
{
  headroomCopy = headroom;
  if (offset >= 0.0)
  {
    if (offset > 0.0)
    {
      +[NUGlobalSettings maxGainMapHeadroom];
      return headroomCopy + offset * (v6 - headroomCopy);
    }
  }

  else if (headroom + offset * (headroom + -1.0) >= 1.0)
  {
    return headroom + offset * (headroom + -1.0);
  }

  else
  {
    return 1.0;
  }

  return headroomCopy;
}

@end