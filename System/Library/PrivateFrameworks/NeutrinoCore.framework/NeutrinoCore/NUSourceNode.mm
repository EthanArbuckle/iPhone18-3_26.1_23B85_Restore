@interface NUSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options;
- (BOOL)isValid:(id *)valid;
- (NSString)auxiliaryImageTypeString;
- (NURenderNode)originalNode;
- (NUSourceNode)initWithSettings:(id)settings;
- (id)_addOrientationNode:(id)node sourceSettings:(id)settings error:(id *)error;
- (id)_addResampleNode:(id)node subsampleNode:(id)subsampleNode;
- (id)_addScaleNode:(id)node pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings;
- (id)_addStyleReverseNode:(id)node pipelineState:(id)state sourceSettings:(id)settings;
- (id)_evaluateGeometrySpaceMap:(id *)map;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)_evaluateVideoCompositionWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateVideoPropertiesWithSourceOptions:(id)options error:(id *)error;
- (id)preparedNodeWithSourceContainer:(id)container pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings error:(id *)error;
- (int64_t)auxiliaryImageType;
- (int64_t)sourceOrientation;
@end

@implementation NUSourceNode

- (NURenderNode)originalNode
{
  WeakRetained = objc_loadWeakRetained(&self->_originalNode);

  return WeakRetained;
}

- (id)_evaluateImage:(id *)image
{
  v5 = 1;
  v3 = [(NUSourceNode *)self _evaluateImageWithSourceOptions:MEMORY[0x1E695E0F8] subsampleFactor:&v5 error:image];

  return v3;
}

- (id)_evaluateVideoCompositionWithSourceOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v8 = NUAssertLogger_8665();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_8665();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode _evaluateVideoCompositionWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 975, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "error != nil");
  }

  v6 = optionsCopy;
  *error = [NUError unsupportedError:@"_evaluateVideoCompositionWithSourceOptions not implemented" object:objc_opt_class()];

  return 0;
}

- (id)_evaluateVideoPropertiesWithSourceOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v8 = NUAssertLogger_8665();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_8665();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode _evaluateVideoPropertiesWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 968, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "error != nil");
  }

  v6 = optionsCopy;
  *error = [NUError unsupportedError:@"_evaluateVideoPropertiesWithSourceOptions not implemented" object:objc_opt_class()];

  return 0;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v8 = NUAssertLogger_8665();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_8665();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode _evaluateImagePropertiesWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 961, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "error != nil");
  }

  v6 = optionsCopy;
  *error = [NUError unsupportedError:@"_evaluateImagePropertiesWithSourceOptions not implemented" object:objc_opt_class()];

  return 0;
}

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v9 = NUAssertLogger_8665();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_8665();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 954, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != nil");
  }

  v7 = optionsCopy;
  *error = [NUError unsupportedError:@"_evaluateImageWithSourceOptions not implemented" object:objc_opt_class()];

  return 0;
}

- (id)_evaluateGeometrySpaceMap:(id *)map
{
  v4 = objc_alloc_init(NUGeometrySpaceMap);
  v5 = objc_alloc_init(NUSpace);
  spaceMapKey = [(NURenderNode *)self spaceMapKey];
  [(NUGeometrySpaceMap *)v4 setSpace:v5 forKey:spaceMapKey];

  return v4;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  originalNode = [(NUSourceNode *)self originalNode];
  v8 = originalNode;
  if (originalNode)
  {
    v9 = [originalNode outputImageGeometry:error];
    if (v9)
    {
      v10 = v9;
      orientation = [v9 orientation];
      sourceDerivation = [(NUSourceNode *)self sourceDerivation];
      v13 = [sourceDerivation orientationFromOriginal:orientation derivativeOrientation:{-[NUSourceNode sourceOrientation](self, "sourceOrientation")}];

      v14 = 6;
      if (v13 != 8)
      {
        v14 = v13;
      }

      if (v13 == 6)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      v16 = NUOrientationConcat(orientation, v15);
      [v10 extent];
      v44 = NUOrientationTransformImageSize(v16, v45, v46);
      v18 = v17;
      scaledSize = [v10 scaledSize];
      v21 = NUOrientationTransformImageSize(v16, scaledSize, v20);
      v23 = v22;
      v24 = [(NUSourceNode *)self pixelSizeWithSourceOptions:optionsCopy];
      v26 = v25;
      sourceDerivation2 = [(NUSourceNode *)self sourceDerivation];
      v28 = [sourceDerivation2 scaleFromOriginalSize:v21 derivativeSize:{v23, v24, v26}];
      v30 = v29;

      renderScale = [v10 renderScale];
      v33 = NUScaleMultiply(renderScale, v32, v28, v30);
      v35 = v34;
      v36 = [NUImageGeometry alloc];
      v47 = 0;
      v48 = 0;
      v49 = v44;
      v50 = v18;
      v37 = [(NUImageGeometry *)v36 initWithExtent:&v47 renderScale:v33 orientation:v35, v13];
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v38 = [(NUSourceNode *)self pixelSizeWithSourceOptions:optionsCopy];
    v40 = v39;
    v41 = [NUImageGeometry alloc];
    sourceOrientation = [(NUSourceNode *)self sourceOrientation];
    v47 = 0;
    v48 = 0;
    v49 = v38;
    v50 = v40;
    v37 = [(NUImageGeometry *)v41 initWithExtent:&v47 renderScale:NUScaleOne orientation:sourceOrientation];
  }

  return v37;
}

- (id)preparedNodeWithSourceContainer:(id)container pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  stateCopy = state;
  settingsCopy = settings;
  sourceSettingsCopy = sourceSettings;
  if (!error)
  {
    v29 = NUAssertLogger_8665();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v79 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_8665();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols = [v51 callStackSymbols];
        v54 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v50;
        v80 = 2114;
        v81 = v54;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 837, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "error != nil");
  }

  if (!stateCopy)
  {
    v36 = NUAssertLogger_8665();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineState != nil"];
      *buf = 138543362;
      v79 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_8665();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols3 = [v60 callStackSymbols];
        v63 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v59;
        v80 = 2114;
        v81 = v63;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 838, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "pipelineState != nil");
  }

  if (!containerCopy)
  {
    v43 = NUAssertLogger_8665();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceContainer != nil"];
      *buf = 138543362;
      v79 = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_8665();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v47)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        callStackSymbols5 = [v69 callStackSymbols];
        v72 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v68;
        v80 = 2114;
        v81 = v72;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 839, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "sourceContainer != nil");
  }

  v16 = sourceSettingsCopy;
  if ([(NUSourceNode *)self load:error])
  {
    originalNode = [(NUSourceNode *)self originalNode];
    if (originalNode && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![originalNode load:error] || !-[NUSourceNode supportsPipelineState:error:](self, "supportsPipelineState:error:", stateCopy, error))
    {
      v27 = 0;
    }

    else
    {
      v18 = [(NUSourceNode *)self sourceOptionsForSettings:v16 error:error];
      if (v18)
      {
        v19 = [v16 objectForKeyedSubscript:@"__addTags"];
        bOOLValue = [v19 BOOLValue];

        if (bOOLValue)
        {
          currentGroup = [stateCopy currentGroup];
          v22 = [currentGroup addTag:@"__SourceOrigin" forNode:self];
        }

        v23 = [[NUSubsampleNode alloc] initWithPreparedSource:self container:containerCopy pipelineSettings:settingsCopy sourceOptions:v18];
        v24 = [(NUSourceNode *)self _addResampleNode:v23 subsampleNode:v23];
        [(NUSourceNode *)self _addStyleReverseNode:v24 pipelineState:stateCopy sourceSettings:v16];
        v25 = v77 = v18;

        v26 = [(NUSourceNode *)self _addScaleNode:v25 pipelineState:stateCopy pipelineSettings:settingsCopy sourceSettings:v16];

        v18 = v77;
        v27 = [(NUSourceNode *)self preparedNodeWithSourceNode:v26 sourceSettings:v16 pipelineState:stateCopy error:error];
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_addStyleReverseNode:(id)node pipelineState:(id)state sourceSettings:(id)settings
{
  v42 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  stateCopy = state;
  settingsCopy = settings;
  mediaComponentType = [stateCopy mediaComponentType];
  v12 = [settingsCopy objectForKeyedSubscript:@"revertToOriginalStyle"];

  LODWORD(settingsCopy) = [v12 BOOLValue];
  if (!settingsCopy)
  {
    v17 = nodeCopy;
    goto LABEL_34;
  }

  if (mediaComponentType != 1)
  {
    v36 = 0;
    v13 = [(NURenderNode *)self videoProperties:&v36];
    v14 = v36;
    if (!v13)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_319);
      }

      v22 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v14;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "*** failed to load video properties: %@", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_30;
    }

    v18 = [v13 metadataItemForKey:NUQuicktimeMetadataKey_SmartStyleRenderingBypassed];
    numberValue = [v18 numberValue];
    bOOLValue = [numberValue BOOLValue];

    if (bOOLValue)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_319);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v21, OS_LOG_TYPE_INFO, "Bypassing revert for video frame", buf, 2u);
      }
    }

    else
    {
      videoCorruptionInfo = [v13 videoCorruptionInfo];
      v24 = PFExists();

      if ((v24 & 1) == 0)
      {

        goto LABEL_30;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_319);
      }

      v25 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Bypassing revert due to corrupted video track", buf, 2u);
      }
    }

    v17 = nodeCopy;

    goto LABEL_28;
  }

  v37 = 0;
  v13 = [(NURenderNode *)self imageProperties:&v37];
  v14 = v37;
  if (!v13)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_319);
    }

    v15 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v14;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "*** failed to load image properties: %@", buf, 0xCu);
    }
  }

  rawProperties = [v13 rawProperties];

  if (rawProperties)
  {
    v17 = nodeCopy;
LABEL_28:

    goto LABEL_34;
  }

LABEL_30:

  v26 = [NUStyleTransferReverseNode alloc];
  v17 = [(NUStyleTransferReverseNode *)v26 initWithInput:nodeCopy settings:MEMORY[0x1E695E0F8]];
  if (mediaComponentType == 1)
  {
    v27 = [NUProviderCacheNode alloc];
    v38[0] = @"auxiliaryImageType";
    v28 = @"None";
    v39[0] = @"None";
    v38[1] = @"pixelFormat";
    v29 = +[NUPixelFormat A2RGB10];
    v39[1] = v29;
    v38[2] = @"colorSpace";
    v30 = +[NUColorSpace displayP3ColorSpace];
    v39[2] = v30;
    v38[3] = @"onlyCacheWhenAtOneToOne";
    lowMemoryMode = [stateCopy lowMemoryMode];
    v32 = MEMORY[0x1E695E110];
    if (!lowMemoryMode)
    {
      v32 = MEMORY[0x1E695E118];
    }

    v38[4] = @"keepCacheWhenAtOneToOne";
    v39[3] = v32;
    v39[4] = MEMORY[0x1E695E118];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
    v34 = [(NUCacheNode *)v27 initWithInput:v17 settings:v33];

    v17 = v34;
  }

LABEL_34:

  return v17;
}

- (id)_addOrientationNode:(id)node sourceSettings:(id)settings error:(id *)error
{
  nodeCopy = node;
  settingsCopy = settings;
  v10 = [settingsCopy objectForKeyedSubscript:@"skipOrientation"];
  bOOLValue = [v10 BOOLValue];

  v12 = [NUSourceOrientationNode originalOrientationToApplyToSource:self skipOrientation:bOOLValue error:error];
  if ((v12 - 1) > 7)
  {
    v13 = 0;
  }

  else
  {
    v13 = [[NUSourceOrientationNode alloc] initWithInput:nodeCopy source:self settings:settingsCopy orientation:v12];
  }

  return v13;
}

- (id)_addScaleNode:(id)node pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings
{
  v46 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  stateCopy = state;
  settingsCopy = settings;
  sourceSettingsCopy = sourceSettings;
  v13 = [sourceSettingsCopy objectForKeyedSubscript:@"nativeScale"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    nodeCopy = [[NUNativeScaleNode alloc] initWithInput:nodeCopy];
  }

  else
  {
    sampleMode = [stateCopy sampleMode];
    v18 = *(&NUScaleUnknown + 1);
    scale = NUScaleUnknown;
    v41 = NUScaleUnknown;
    v19 = [settingsCopy objectForKeyedSubscript:@"scale"];

    if (v19)
    {
      if ([stateCopy scale] < 1 || v20 <= 0)
      {
        v25 = NUAssertLogger_8665();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          settingsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid pipelineState scale when applying override: %@", settingsCopy];
          *buf = 138543362;
          v43 = settingsCopy;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = NUAssertLogger_8665();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v29)
          {
            v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v33 = MEMORY[0x1E696AF00];
            v34 = v32;
            callStackSymbols = [v33 callStackSymbols];
            v36 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v43 = v32;
            v44 = 2114;
            v45 = v36;
            _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v29)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v43 = v31;
          _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUSourceNode _addScaleNode:pipelineState:pipelineSettings:sourceSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 738, @"Invalid pipelineState scale when applying override: %@", v37, v38, v39, v40, settingsCopy);
      }

      scale = [stateCopy scale];
      v18 = v21;
      [NUSubsampleNode subsampleFactorForScale:scale additionalScale:v21, &v41];
    }

    v22 = [NUScaleNode alloc];
    nodeCopy = [(NUScaleNode *)v22 initWithTargetScale:scale effectiveScale:v18 sampleMode:v41 input:sampleMode, nodeCopy];
  }

  v23 = nodeCopy;

  return v23;
}

- (id)_addResampleNode:(id)node subsampleNode:(id)subsampleNode
{
  subsampleNodeCopy = subsampleNode;
  nodeCopy = node;
  v7 = [[NUResampleNode alloc] initWithPreparedInput:nodeCopy subsampleNode:subsampleNodeCopy];

  return v7;
}

- (NSString)auxiliaryImageTypeString
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"auxiliaryImageType"];

  return v3;
}

- (int64_t)auxiliaryImageType
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"auxiliaryImageType"];
  v4 = NUAuxiliaryImageTypeFromString(v3);

  return v4;
}

- (int64_t)sourceOrientation
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUSourceNode sourceOrientation]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 684, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (BOOL)isValid:(id *)valid
{
  v30 = *MEMORY[0x1E69E9840];
  if (!valid)
  {
    v9 = NUAssertLogger_8665();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_8665();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSourceNode isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 661, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != nil");
  }

  LODWORD(v5) = [(NUSourceNode *)self load:?];
  if (v5)
  {
    if ([(NUSourceNode *)self pixelSizeWithSourceOptions:MEMORY[0x1E695E0F8]])
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = [NUError invalidError:@"Invalid size" object:self];
      v5 = v8;
      LOBYTE(v5) = 0;
      *valid = v8;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  _NUAssertFailHandler("[NUSourceNode pixelSizeWithSourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 656, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (NUSourceNode)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = NUSourceNode;
  v3 = [(NURenderNode *)&v7 initWithSettings:settings inputs:MEMORY[0x1E695E0F8]];
  v4 = objc_alloc_init(NUDefaultSourceDerivation);
  sourceDerivation = v3->_sourceDerivation;
  v3->_sourceDerivation = v4;

  return v3;
}

@end