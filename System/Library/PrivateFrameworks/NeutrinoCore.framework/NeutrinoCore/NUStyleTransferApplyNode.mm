@interface NUStyleTransferApplyNode
- (NUStyleTransferApplyNode)initWithInput:(id)input thumbnail:(id)thumbnail target:(id)target settings:(id)settings;
- (id)_evaluateImage:(id *)image;
- (id)configuration;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)targetColorSpace;
- (id)tuningParameters;
@end

@implementation NUStyleTransferApplyNode

- (id)_evaluateImage:(id *)image
{
  v44 = *MEMORY[0x1E69E9840];
  inputNode = [(NUStyleTransferNode *)self inputNode];
  v41 = 0;
  v6 = [inputNode outputImage:&v41];
  v7 = v41;

  if (!v6)
  {
    inputNode2 = [(NUStyleTransferNode *)self inputNode];
    [NUError errorWithCode:1 reason:@"Failed to get input image" object:inputNode2 underlyingError:v7];
    *image = v23 = 0;
    goto LABEL_36;
  }

  thumbnailNode = [(NUStyleTransferApplyNode *)self thumbnailNode];
  v40 = 0;
  inputNode2 = [thumbnailNode outputImage:&v40];
  v10 = v40;

  if (inputNode2)
  {
    styleNode = [(NUStyleTransferApplyNode *)self styleNode];
    targetNode = styleNode;
    if (!styleNode)
    {
      targetNode = [(NUStyleTransferNode *)self targetNode];
    }

    v39 = 0;
    thumbnailNode5 = [targetNode outputImage:&v39];
    v14 = v39;

    if (!styleNode)
    {
    }

    if (!thumbnailNode5)
    {
      v23 = v6;
LABEL_34:
      v10 = v14;
      goto LABEL_35;
    }

    configuration = [(NUStyleTransferApplyNode *)self configuration];
    v16 = [configuration mutableCopy];

    [v16 setObject:&unk_1F3F828C0 forKeyedSubscript:@"useFloat16"];
    tuningParameters = [(NUStyleTransferApplyNode *)self tuningParameters];
    targetColorSpace = [(NUStyleTransferApplyNode *)self targetColorSpace];
    v18 = [tuningParameters objectForKeyedSubscript:@"ResidualScaleFactor"];
    [v18 floatValue];
    v20 = v19;

    if (v20 <= 0.0)
    {
      goto LABEL_14;
    }

    if (+[NUGlobalSettings semanticStyleDisableResiduals])
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v21, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: not applying residuals, disabled", buf, 2u);
      }

LABEL_14:
      v22 = 0;
LABEL_33:
      noiseModel = [(NUStyleTransferNode *)self noiseModel];
      v23 = [_NUStyleTransferApplyProcessor applyStyle:thumbnailNode5 toImage:v6 thumbnail:inputNode2 target:v22 deltaMap:0 colorSpace:targetColorSpace configuration:v16 tuningParameters:tuningParameters noiseModel:noiseModel error:image];

      goto LABEL_34;
    }

    styleNode2 = [(NUStyleTransferApplyNode *)self styleNode];
    targetNode2 = [styleNode2 targetNode];

    styleNode3 = [(NUStyleTransferApplyNode *)self styleNode];
    thumbnailNode2 = [styleNode3 thumbnailNode];

    thumbnailNode3 = [(NUStyleTransferApplyNode *)self thumbnailNode];
    v35 = thumbnailNode2;
    if (thumbnailNode2 == thumbnailNode3 || +[NUGlobalSettings semanticStyleAllowResidualsMismatch])
    {
      thumbnailNode4 = [(NUStyleTransferApplyNode *)self thumbnailNode];

      if (thumbnailNode2 != thumbnailNode4)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
        }

        v28 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C0184000, v28, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: applying residuals even though thumbnails do not match", buf, 2u);
        }
      }

      v38 = 0;
      v22 = [targetNode2 outputImage:&v38];
      v29 = v38;

      if (v22)
      {
        v14 = v29;
        v30 = targetNode2;
LABEL_32:

        goto LABEL_33;
      }

      v31 = NULogger_30639();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v29;
        v43 = v29;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "NUStyleTransferApplyNode: not applying residuals because of error: %{public}@", buf, 0xCu);
      }

      else
      {
        v14 = v29;
      }
    }

    else
    {
      v31 = NULogger_30639();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v31, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: not applying residuals because thumbnails do not match", buf, 2u);
      }
    }

    v30 = targetNode2;

    v22 = 0;
    goto LABEL_32;
  }

  thumbnailNode5 = [(NUStyleTransferApplyNode *)self thumbnailNode];
  [NUError errorWithCode:1 reason:@"Failed to get input thumbnail image" object:thumbnailNode5 underlyingError:v10];
  *image = v23 = 0;
LABEL_35:

  v7 = v10;
LABEL_36:

  return v23;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  stateCopy = state;
  v12 = [settings mutableCopy];
  v13 = [inputsCopy objectForKeyedSubscript:@"target"];
  configuration = [v13 configuration];
  v15 = [configuration objectForKeyedSubscript:@"applySyntheticNoise"];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    inputNode = [(NUStyleTransferNode *)self inputNode];
    v18 = [inputNode imageProperties:error];

    if (!v18)
    {
      v34 = 0;
      goto LABEL_13;
    }

    metadata = [v18 metadata];
    v20 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v21 = [v20 objectForKeyedSubscript:@"90"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v20;
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __86__NUStyleTransferApplyNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke;
      v42[3] = &unk_1E810B7D8;
      v43 = stateCopy;
      selfCopy = self;
      v23 = MEMORY[0x1C68D98A0](v42);
      [v21 objectForKeyedSubscript:@"0"];
      v24 = v38 = v18;
      [v22 setObject:v24 forKeyedSubscript:@"Version"];

      v25 = [v21 objectForKeyedSubscript:@"1"];
      (v23)[2](v23, v25);
      v26 = v40 = error;
      [v22 setObject:v26 forKeyedSubscript:@"ReadNoise"];

      v27 = [v21 objectForKeyedSubscript:@"2"];
      v28 = (v23)[2](v23, v27);
      [v22 setObject:v28 forKeyedSubscript:@"ShotNoise"];

      v29 = [v21 objectForKeyedSubscript:@"3"];
      v30 = (v23)[2](v23, v29);
      [v22 setObject:v30 forKeyedSubscript:@"SquaredNoise"];

      v31 = [v21 objectForKeyedSubscript:@"4"];
      v32 = (v23)[2](v23, v31);
      [v22 setObject:v32 forKeyedSubscript:@"SpatialSigma"];

      v18 = v38;
      v33 = [v22 copy];
      [v12 setObject:v33 forKeyedSubscript:NUStyleTransferNodeNoiseModelKey];

      error = v40;
      self = selfCopy;

      v20 = v37;
    }

    else if (v21)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v35 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v21;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Invalid noise model from makernote, ignored: %{public}@", buf, 0xCu);
      }
    }
  }

  v41.receiver = self;
  v41.super_class = NUStyleTransferApplyNode;
  v34 = [(NUStyleTransferNode *)&v41 resolvedNodeWithCachedInputs:inputsCopy settings:v12 pipelineState:stateCopy error:error];
LABEL_13:

  return v34;
}

id __86__NUStyleTransferApplyNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v6 = v5;
    v7 = [*(a1 + 32) scale];
    v9 = [v4 numberWithDouble:{v6 * NUScaleToDouble(v7, v8)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  inputNode = [(NUStyleTransferNode *)self inputNode];
  v11 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

  if (!v11)
  {
    v14 = 0;
    goto LABEL_22;
  }

  if ([stateCopy auxiliaryImageType] != 1)
  {
    v15 = v11;
LABEL_11:
    v14 = v15;
    goto LABEL_22;
  }

  if (![stateCopy evaluationMode])
  {
    v26.receiver = self;
    v26.super_class = NUStyleTransferApplyNode;
    v15 = [(NUStyleTransferNode *)&v26 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    goto LABEL_11;
  }

  targetNode = [(NUStyleTransferNode *)self targetNode];
  v13 = [targetNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([stateCopy evaluationMode] == 2)
      {
        v14 = v13;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v16 setObject:v11 forKeyedSubscript:@"input"];
        [v16 setObject:v13 forKeyedSubscript:@"target"];
        thumbnailNode = [(NUStyleTransferApplyNode *)self thumbnailNode];
        v18 = thumbnailNode;
        if (thumbnailNode)
        {
          inputNode2 = thumbnailNode;
        }

        else
        {
          inputNode2 = [(NUStyleTransferNode *)self inputNode];
        }

        v20 = inputNode2;

        v21 = [NUStyleTransferThumbnailNode alloc];
        settings = [v13 settings];
        v23 = [(NUStyleTransferThumbnailNode *)v21 initWithInput:v20 settings:settings];

        v24 = [(NUStyleTransferThumbnailNode *)v23 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

        if (v24)
        {
          [v16 setObject:v24 forKeyedSubscript:@"thumbnail"];
          v14 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v16 cache:cacheCopy pipelineState:stateCopy error:error];
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      [NUError invalidError:@"Invalid style node" object:v13];
      *error = v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)configuration
{
  styleNode = [(NUStyleTransferApplyNode *)self styleNode];
  configuration = [styleNode configuration];

  return configuration;
}

- (id)tuningParameters
{
  styleNode = [(NUStyleTransferApplyNode *)self styleNode];
  tuningParameters = [styleNode tuningParameters];

  return tuningParameters;
}

- (id)targetColorSpace
{
  styleNode = [(NUStyleTransferApplyNode *)self styleNode];
  targetColorSpace = [styleNode targetColorSpace];

  return targetColorSpace;
}

- (NUStyleTransferApplyNode)initWithInput:(id)input thumbnail:(id)thumbnail target:(id)target settings:(id)settings
{
  v73 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  thumbnailCopy = thumbnail;
  targetCopy = target;
  settingsCopy = settings;
  if (!inputCopy)
  {
    v19 = NUAssertLogger_30110();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v70 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_30110();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols = [v41 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v40;
        v71 = 2114;
        v72 = v44;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1438, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "input != nil");
  }

  if (!thumbnailCopy)
  {
    v26 = NUAssertLogger_30110();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnail != nil"];
      *buf = 138543362;
      v70 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_30110();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols3 = [v50 callStackSymbols];
        v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v49;
        v71 = 2114;
        v72 = v53;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1439, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "thumbnail != nil");
  }

  if (!targetCopy)
  {
    v33 = NUAssertLogger_30110();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "target != nil"];
      *buf = 138543362;
      v70 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_30110();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        callStackSymbols5 = [v59 callStackSymbols];
        v62 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v58;
        v71 = 2114;
        v72 = v62;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1440, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "target != nil");
  }

  v14 = settingsCopy;
  v15 = [settingsCopy mutableCopy];
  [v15 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v67[0] = @"input";
  v67[1] = @"target";
  v68[0] = inputCopy;
  v68[1] = targetCopy;
  v67[2] = @"thumbnail";
  v68[2] = thumbnailCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v17 = [(NURenderNode *)self initWithSettings:v15 inputs:v16];

  return v17;
}

@end