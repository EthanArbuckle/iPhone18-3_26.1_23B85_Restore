@interface NUStyleTransferNode
+ (NSDictionary)semanticStyleImageConfiguration;
+ (NSDictionary)semanticStyleVideoConfiguration;
+ (id)defaultImageSettingsForScale:(id)scale;
+ (id)defaultVideoSettingsForScale:(id)scale;
+ (id)semanticStyleImageConfiguration_alt;
+ (id)semanticStyleImageSettingsForScale:(id)scale aspectRatio:(id)ratio;
+ (id)semanticStyleVideoConfiguration_alt;
+ (id)semanticStyleVideoSettingsForScale:(id)scale aspectRatio:(id)ratio;
+ (id)thumbnailScalePolicyForConfiguration:(id)configuration;
- (BOOL)shouldCache;
- (NSDictionary)configuration;
- (NSDictionary)tuningParameters;
- (NUColorSpace)targetColorSpace;
- (NUStyleTransferNode)initWithInput:(id)input target:(id)target settings:(id)settings;
- (id)_evaluateImage:(id *)image;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)noiseModel;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUStyleTransferNode

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUStyleTransferNode *)self inputNode];
  v22 = 0;
  v6 = [inputNode outputImage:&v22];
  v7 = v22;

  if (v6)
  {
    thumbnailNode = [(NUStyleTransferNode *)self thumbnailNode];
    v21 = 0;
    v9 = [thumbnailNode outputImage:&v21];
    v10 = v21;

    if (v9)
    {
      targetNode = [(NUStyleTransferNode *)self targetNode];
      v20 = 0;
      thumbnailNode2 = [targetNode outputImage:&v20];
      v7 = v20;

      if (thumbnailNode2)
      {
        configuration = [(NUStyleTransferNode *)self configuration];
        targetNode2 = [configuration mutableCopy];

        [targetNode2 setObject:&unk_1F3F828C0 forKeyedSubscript:@"useFloat16"];
        tuningParameters = [(NUStyleTransferNode *)self tuningParameters];
        targetColorSpace = [(NUStyleTransferNode *)self targetColorSpace];
        v17 = [_NUStyleTransferProcessor applyStyleFromInputThumbnail:v9 targetThumbnail:thumbnailNode2 toImage:v6 colorSpace:targetColorSpace configuration:targetNode2 tuningParameters:tuningParameters error:image];
      }

      else
      {
        targetNode2 = [(NUStyleTransferNode *)self targetNode];
        [NUError errorWithCode:1 reason:@"Failed to get input target thumbnail image" object:targetNode2 underlyingError:v7];
        *image = v17 = 0;
      }
    }

    else
    {
      thumbnailNode2 = [(NUStyleTransferNode *)self thumbnailNode];
      [NUError errorWithCode:1 reason:@"Failed to get input thumbnail image" object:thumbnailNode2 underlyingError:v10];
      *image = v17 = 0;
      v7 = v10;
    }
  }

  else
  {
    v18 = v7;
    v17 = 0;
    *image = v7;
  }

  return v17;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUStyleTransferNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy evaluationMode])
  {
    if ([stateCopy auxiliaryImageType] == 1 && objc_msgSend(stateCopy, "evaluationMode") != 2)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      v13 = [NUStyleTransferThumbnailNode alloc];
      inputNode = [(NUStyleTransferNode *)self inputNode];
      settings = [(NURenderNode *)self settings];
      v16 = [(NUStyleTransferThumbnailNode *)v13 initWithInput:inputNode settings:settings];

      v17 = [(NUStyleTransferThumbnailNode *)v16 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

      if (v17)
      {
        [v12 setObject:v17 forKeyedSubscript:@"thumbnail"];
        v18 = [NUStyleTransferThumbnailNode alloc];
        targetNode = [(NUStyleTransferNode *)self targetNode];
        settings2 = [(NURenderNode *)self settings];
        v21 = [(NUStyleTransferThumbnailNode *)v18 initWithInput:targetNode settings:settings2];

        v22 = [(NUStyleTransferThumbnailNode *)v21 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

        if (v22)
        {
          [v12 setObject:v22 forKeyedSubscript:@"target"];
          inputNode2 = [(NUStyleTransferNode *)self inputNode];
          v24 = [inputNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

          if (v24)
          {
            [v12 setObject:v24 forKeyedSubscript:@"input"];
            v11 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v12 cache:cacheCopy pipelineState:stateCopy error:error];
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      targetNode2 = [(NUStyleTransferNode *)self targetNode];
      v11 = [targetNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = NUStyleTransferNode;
    v11 = [(NURenderNode *)&v26 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v11;
}

+ (id)thumbnailScalePolicyForConfiguration:(id)configuration
{
  v50 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v11 = NUAssertLogger_30110();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v47 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_30110();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUStyleTransferNode thumbnailScalePolicyForConfiguration:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 407, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "config != nil");
  }

  v4 = configurationCopy;
  v5 = [configurationCopy objectForKeyedSubscript:@"thumbnailWidth"];
  integerValue = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"thumbnailHeight"];
  integerValue2 = [v7 integerValue];

  if ((integerValue2 | integerValue) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    v45 = @"(width >= 0) && (height >= 0)";
    [currentHandler handleFailureInFunction:v19 file:@"NUGeometryPrimitives.h" lineNumber:38 description:@"Invalid parameter not satisfying: %@"];

    if (!integerValue)
    {
LABEL_14:
      v20 = NUAssertLogger_30110();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid thumbnail size"];
        *buf = 138543362;
        v47 = v21;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v23 = NUAssertLogger_30110();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v22)
      {
        if (v24)
        {
          v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v37 = MEMORY[0x1E696AF00];
          v38 = v36;
          callStackSymbols3 = [v37 callStackSymbols];
          v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v47 = v36;
          v48 = 2114;
          v49 = v40;
          _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v24)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v47 = v26;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[NUStyleTransferNode thumbnailScalePolicyForConfiguration:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 412, @"Invalid thumbnail size", v41, v42, v43, v44, v45);
    }
  }

  else if (!integerValue)
  {
    goto LABEL_14;
  }

  if (!integerValue2)
  {
    goto LABEL_14;
  }

  v9 = [[NUFitScalePolicy alloc] initWithTargetPixelSize:integerValue, integerValue2];

  return v9;
}

+ (id)semanticStyleImageConfiguration_alt
{
  v2 = [MEMORY[0x1E6991728] configurationForUseCase:13];
  [v2 setApplySyntheticNoise:{+[NUGlobalSettings semanticStyleForceSyntheticNoise](NUGlobalSettings, "semanticStyleForceSyntheticNoise")}];
  v3 = [[_NUStyleEngineConfiguration alloc] initWithStyleEngineConfiguration:v2];
  [(_NUStyleEngineConfiguration *)v3 setUsage:@"semstyle-image-alt"];
  configurationDictionary = [(_NUStyleEngineConfiguration *)v3 configurationDictionary];

  return configurationDictionary;
}

+ (NSDictionary)semanticStyleImageConfiguration
{
  v2 = [MEMORY[0x1E6991728] configurationForUseCase:0];
  [v2 setApplySyntheticNoise:{+[NUGlobalSettings semanticStyleForceSyntheticNoise](NUGlobalSettings, "semanticStyleForceSyntheticNoise")}];
  v3 = [[_NUStyleEngineConfiguration alloc] initWithStyleEngineConfiguration:v2];
  [(_NUStyleEngineConfiguration *)v3 setUsage:@"semstyle-image"];
  configurationDictionary = [(_NUStyleEngineConfiguration *)v3 configurationDictionary];

  return configurationDictionary;
}

+ (id)semanticStyleVideoConfiguration_alt
{
  v2 = [MEMORY[0x1E6991728] configurationForUseCase:2];
  v3 = [[_NUStyleEngineConfiguration alloc] initWithStyleEngineConfiguration:v2];
  [(_NUStyleEngineConfiguration *)v3 setUsage:@"semstyle-video-alt"];
  configurationDictionary = [(_NUStyleEngineConfiguration *)v3 configurationDictionary];

  return configurationDictionary;
}

+ (NSDictionary)semanticStyleVideoConfiguration
{
  v2 = [MEMORY[0x1E6991728] configurationForUseCase:1];
  v3 = [[_NUStyleEngineConfiguration alloc] initWithStyleEngineConfiguration:v2];
  [(_NUStyleEngineConfiguration *)v3 setUsage:@"semstyle-video"];
  configurationDictionary = [(_NUStyleEngineConfiguration *)v3 configurationDictionary];

  return configurationDictionary;
}

+ (id)semanticStyleImageSettingsForScale:(id)scale aspectRatio:(id)ratio
{
  var1 = ratio.var1;
  var0 = ratio.var0;
  v6 = scale.var1;
  v7 = scale.var0;
  v23[2] = *MEMORY[0x1E69E9840];
  if (ratio.var0 >= ratio.var1)
  {
    [self semanticStyleImageConfiguration];
  }

  else
  {
    [self semanticStyleImageConfiguration_alt];
  }
  v9 = ;
  v10 = [v9 mutableCopy];

  semanticStyleImageTuningParameters = [self semanticStyleImageTuningParameters];
  v12 = [semanticStyleImageTuningParameters mutableCopy];

  if (+[NUGlobalSettings semanticStyleUseDynamicConfig])
  {
    if (NUScaleCompare(v7, v6, 2, 3) < 0)
    {
      if (NUScaleCompare(v7, v6, 1, 3) < 0)
      {
        if (NUScaleCompare(v7, v6, 1, 6) < 0)
        {
          [v10 setObject:@"semstyle-image@1:8" forKeyedSubscript:@"usage"];
          [v10 setObject:&unk_1F3F827A0 forKeyedSubscript:@"linearSystemOrder"];
          v16 = &unk_1F3F827E8;
          if (var0 >= var1)
          {
            v21 = &unk_1F3F827E8;
          }

          else
          {
            v21 = &unk_1F3F827D0;
          }

          if (var0 >= var1)
          {
            v15 = &unk_1F3F827D0;
          }

          else
          {
            v15 = &unk_1F3F827E8;
          }
        }

        else
        {
          [v10 setObject:@"semstyle-image@1:4" forKeyedSubscript:@"usage"];
          [v10 setObject:&unk_1F3F827A0 forKeyedSubscript:@"linearSystemOrder"];
          v16 = &unk_1F3F827B8;
          if (var0 >= var1)
          {
            v21 = &unk_1F3F82788;
          }

          else
          {
            v21 = &unk_1F3F827B8;
          }

          if (var0 >= var1)
          {
            v15 = &unk_1F3F827B8;
          }

          else
          {
            v15 = &unk_1F3F82788;
          }
        }

        [v10 setObject:v21 forKeyedSubscript:@"spotlightCountX"];
        goto LABEL_16;
      }

      [v10 setObject:@"semstyle-image@1:2" forKeyedSubscript:@"usage"];
      v13 = &unk_1F3F827A0;
    }

    else
    {
      [v10 setObject:@"semstyle-image@1:1" forKeyedSubscript:@"usage"];
      v13 = &unk_1F3F82740;
    }

    [v10 setObject:v13 forKeyedSubscript:@"linearSystemOrder"];
    if (var0 >= var1)
    {
      v14 = &unk_1F3F82770;
    }

    else
    {
      v14 = &unk_1F3F82758;
    }

    if (var0 >= var1)
    {
      v15 = &unk_1F3F82758;
    }

    else
    {
      v15 = &unk_1F3F82770;
    }

    [v10 setObject:v14 forKeyedSubscript:@"spotlightCountX"];
    v16 = &unk_1F3F82788;
LABEL_16:
    [v10 setObject:v15 forKeyedSubscript:@"spotlightCountY"];
    [v10 setObject:v16 forKeyedSubscript:@"weightPlaneCount"];
  }

  if (+[NUGlobalSettings semanticStyleUseFasterSystemOrder])
  {
    [v10 setObject:&unk_1F3F82800 forKeyedSubscript:@"linearSystemOrder"];
  }

  if (+[NUGlobalSettings semanticStyleForceResiduals])
  {
    [v12 setObject:&unk_1F3F82DF8 forKeyedSubscript:@"ResidualScaleFactor"];
  }

  [v12 setObject:0 forKeyedSubscript:@"SpotlightCount_X"];
  [v12 setObject:0 forKeyedSubscript:@"SpotlightCount_Y"];
  [v12 setObject:0 forKeyedSubscript:@"WeightPlaneCount"];
  v22[0] = NUStyleTransferNodeConfigurationKey;
  v17 = [v10 copy];
  v22[1] = NUStyleTransferNodeTuningParametersKey;
  v23[0] = v17;
  v18 = [v12 copy];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v19;
}

+ (id)semanticStyleVideoSettingsForScale:(id)scale aspectRatio:(id)ratio
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = NUStyleTransferNodeConfigurationKey;
  if (ratio.var0 >= ratio.var1)
  {
    [self semanticStyleVideoConfiguration];
  }

  else
  {
    [self semanticStyleVideoConfiguration_alt];
  }
  v5 = ;
  v10[0] = v5;
  v9[1] = NUStyleTransferNodeTuningParametersKey;
  semanticStyleVideoTuningParameters = [self semanticStyleVideoTuningParameters];
  v9[2] = NUStyleTransferNodeShouldCacheKey;
  v10[1] = semanticStyleVideoTuningParameters;
  v10[2] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

+ (id)defaultImageSettingsForScale:(id)scale
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = NUStyleTransferNodeConfigurationKey;
  defaultImageConfiguration = [self defaultImageConfiguration];
  v8[1] = NUStyleTransferNodeTuningParametersKey;
  v9[0] = defaultImageConfiguration;
  defaultImageTuningParameters = [self defaultImageTuningParameters];
  v9[1] = defaultImageTuningParameters;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)defaultVideoSettingsForScale:(id)scale
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = NUStyleTransferNodeConfigurationKey;
  defaultVideoConfiguration = [self defaultVideoConfiguration];
  v9[0] = defaultVideoConfiguration;
  v8[1] = NUStyleTransferNodeTuningParametersKey;
  defaultVideoTuningParameters = [self defaultVideoTuningParameters];
  v8[2] = NUStyleTransferNodeShouldCacheKey;
  v9[1] = defaultVideoTuningParameters;
  v9[2] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)noiseModel
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:NUStyleTransferNodeNoiseModelKey];

  return v3;
}

- (BOOL)shouldCache
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:NUStyleTransferNodeShouldCacheKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:NUStyleTransferNodeConfigurationKey];

  if (!v3)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
    }

    v4 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = [v5 stringWithFormat:@"Missing style engine configuration"];
      *v26 = 138543362;
      *&v26[4] = v7;
      _os_log_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v26, 0xCu);

      v8 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v8 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
        }

        goto LABEL_9;
      }

      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v9 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = specific;
        v17 = v9;
        callStackSymbols = [v15 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v26 = 138543618;
        *&v26[4] = specific;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v26, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUStyleTransferNode configuration]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 457, @"Missing style engine configuration", v10, v11, v12, v13, *v26);
      v3 = +[NUStyleTransferNode defaultImageConfiguration];
      goto LABEL_16;
    }

    v20 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v22 = MEMORY[0x1E696AF00];
      v23 = v20;
      callStackSymbols2 = [v22 callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v26 = 138543362;
      *&v26[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v26, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v3;
}

- (NSDictionary)tuningParameters
{
  v29 = *MEMORY[0x1E69E9840];
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

  if (!v3)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
    }

    v4 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = [v5 stringWithFormat:@"Missing style engine tuning parameters"];
      *v26 = 138543362;
      *&v26[4] = v7;
      _os_log_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v26, 0xCu);

      v8 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v8 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
        }

        goto LABEL_9;
      }

      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v9 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = specific;
        v17 = v9;
        callStackSymbols = [v15 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v26 = 138543618;
        *&v26[4] = specific;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v26, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUStyleTransferNode tuningParameters]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 449, @"Missing style engine tuning parameters", v10, v11, v12, v13, *v26);
      v3 = +[NUStyleTransferNode defaultImageTuningParameters];
      goto LABEL_16;
    }

    v20 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v22 = MEMORY[0x1E696AF00];
      v23 = v20;
      callStackSymbols2 = [v22 callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v26 = 138543362;
      *&v26[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v26, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v3;
}

- (NUColorSpace)targetColorSpace
{
  v3 = +[NUColorSpace displayP3ColorSpace];
  settings = [(NURenderNode *)self settings];
  v5 = [settings objectForKeyedSubscript:NUStyleTransferNodeTargetColorSpaceKey];

  if (v5)
  {
    if ([v5 isEqual:@"sRGB"])
    {
      v6 = +[NUColorSpace sRGBColorSpace];
    }

    else if ([v5 isEqual:@"sRGBLinear"])
    {
      v6 = +[NUColorSpace sRGBLinearColorSpace];
    }

    else
    {
      if (![v5 isEqual:@"displayP3Linear"])
      {
        goto LABEL_9;
      }

      v6 = +[NUColorSpace displayP3LinearColorSpace];
    }

    v7 = v6;

    v3 = v7;
  }

LABEL_9:

  return v3;
}

- (NUStyleTransferNode)initWithInput:(id)input target:(id)target settings:(id)settings
{
  v54 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  targetCopy = target;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v16 = NUAssertLogger_30110();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v51 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_30110();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v30;
        v52 = 2114;
        v53 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferNode initWithInput:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 418, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "input != nil");
  }

  if (!targetCopy)
  {
    v23 = NUAssertLogger_30110();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "target != nil"];
      *buf = 138543362;
      v51 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_30110();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v39;
        v52 = 2114;
        v53 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferNode initWithInput:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 419, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "target != nil");
  }

  v11 = settingsCopy;
  v12 = [settingsCopy mutableCopy];
  [v12 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v48[0] = @"input";
  v48[1] = @"target";
  v49[0] = inputCopy;
  v49[1] = targetCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v14 = [(NURenderNode *)self initWithSettings:v12 inputs:v13];

  return v14;
}

@end