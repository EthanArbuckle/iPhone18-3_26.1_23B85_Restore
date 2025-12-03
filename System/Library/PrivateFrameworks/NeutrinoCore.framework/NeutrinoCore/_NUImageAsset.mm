@interface _NUImageAsset
- (_NUImageAsset)initWithIdentifier:(id)identifier;
- (_NUImageAsset)initWithImageURL:(id)l;
- (_NUImageAsset)initWithImageURL:(id)l identifier:(id)identifier;
- (id)_loadMediaWithOptions:(id)options error:(id *)error;
@end

@implementation _NUImageAsset

- (id)_loadMediaWithOptions:(id)options error:(id *)error
{
  imageURL = [(_NUImageAsset *)self imageURL];
  v69[0] = 0;
  v7 = *MEMORY[0x1E695DAA0];
  v68 = 0;
  v8 = [imageURL getResourceValue:v69 forKey:v7 error:&v68];
  v9 = v69[0];
  v10 = v68;
  if ((v8 & 1) == 0)
  {
    v46 = [NUError errorWithCode:1 reason:@"Failed to get URL resource value" object:imageURL underlyingError:v10];
LABEL_14:
    v45 = 0;
    *error = v46;
    goto LABEL_27;
  }

  if ([v9 conformsToType:*MEMORY[0x1E6982FF8]])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [imageURL path];
    v67 = v10;
    v13 = [defaultManager destinationOfSymbolicLinkAtPath:path error:&v67];
    v14 = v67;

    if (v13)
    {
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 relativeToURL:imageURL];

      v65 = 0;
      v66 = 0;
      v16 = [v15 getResourceValue:&v66 forKey:v7 error:&v65];
      v17 = v66;

      v10 = v65;
      if (v16)
      {

        imageURL = v15;
        v9 = v17;
        goto LABEL_6;
      }

      v47 = [NUError errorWithCode:1 reason:@"Failed to get resolved URL resource value" object:v15 underlyingError:v10];
      imageURL = v15;
      v9 = v17;
    }

    else
    {
      v47 = [NUError errorWithCode:1 reason:@"Failed to resolve symlink" object:imageURL underlyingError:v14];
      v10 = v14;
    }

    *error = v47;

    v45 = 0;
    goto LABEL_27;
  }

LABEL_6:
  if (v9 && ([v9 conformsToType:*MEMORY[0x1E6982E30]] & 1) == 0)
  {
    v46 = [NUError invalidError:@"Not an image file" object:v9];
    goto LABEL_14;
  }

  v18 = [NUImageFileSourceDefinition alloc];
  imageURL2 = [(_NUImageAsset *)self imageURL];
  identifier = [v9 identifier];
  v21 = [(NUFileSourceDefinition *)v18 initWithURL:imageURL2 UTI:identifier];

  identifier2 = [(_NUAsset *)self identifier];
  v64 = 0;
  v23 = [(NUSingleSourceDefinition *)v21 sourceContainerNodeWithIdentifier:identifier2 error:&v64];
  v24 = v64;

  sourceContainerNode = self->_sourceContainerNode;
  self->_sourceContainerNode = v23;

  if (self->_sourceContainerNode)
  {
    v26 = objc_alloc_init(NURenderPipelineState);
    [(NURenderPipelineState *)v26 setMediaComponentType:1];
    [(NURenderPipelineState *)v26 setEvaluationMode:0];
    v27 = self->_sourceContainerNode;
    v63 = 0;
    v28 = [(NUSourceContainerNode *)v27 sourceNodeForPipelineState:v26 error:&v63];
    v29 = v63;

    if (v28)
    {
      v55 = v21;
      v62 = 0;
      v54 = [v28 _evaluateImageProperties:&v62];
      v30 = v62;

      v31 = self->_sourceContainerNode;
      v61 = 0;
      v32 = [(NUSourceContainerNode *)v31 preparedSourceNodeForPipelineState:v26 pipelineSettings:MEMORY[0x1E695E0F8] sourceSettings:&unk_1F3F82950 error:&v61];
      v33 = v61;

      v53 = v32;
      if (v32)
      {
        v60 = 0;
        v34 = [v32 outputImageGeometry:&v60];
        v29 = v60;

        v35 = v34;
        if (v34)
        {
          v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v36 = [_NUImageAssetMedia alloc];
          v37 = [NUChannelImageMediaFormat stillImageFormat:1];
          [v35 mediaGeometry];
          v38 = v52 = v35;
          v39 = [(_NUImageAssetMedia *)v36 initWithImageAsset:self auxImageType:1 format:v37 geometry:v38];

          v49 = v39;
          v51 = [[_NURenderMedia alloc] initWithBaseMedia:v39 renderNode:v32];
          [v50 setObject:v51 forKeyedSubscript:@"primary"];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __45___NUImageAsset__loadMediaWithOptions_error___block_invoke;
          v56[3] = &unk_1E810A070;
          v57 = v26;
          selfCopy = self;
          v59 = v50;
          v40 = v50;
          v41 = v54;
          [v54 enumerateAuxiliaryImageProperties:v56];
          v42 = [_NUContainerMedia alloc];
          geometry = [(_NUMedia *)v39 geometry];
          v44 = [(_NUContainerMedia *)v42 initWithContainerType:1 components:v40 geometry:geometry];

          v45 = [[_NUAssetContainerMedia alloc] initWithAsset:self containerMedia:v44];
          v35 = v52;
        }

        else
        {
          [NUError errorWithCode:1 reason:@"Failed to evaluate image geometry node" object:self underlyingError:v29];
          *error = v45 = 0;
          v41 = v54;
        }

        v21 = v55;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to prepare image source node" object:self underlyingError:v33];
        *error = v45 = 0;
        v29 = v33;
        v41 = v54;
        v21 = v55;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to create source node" object:self underlyingError:v29];
      *error = v45 = 0;
    }

    v24 = v29;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to create source container node" object:self underlyingError:v24];
    *error = v45 = 0;
  }

  v10 = v24;
LABEL_27:

  return v45;
}

- (_NUImageAsset)initWithImageURL:(id)l identifier:(id)identifier
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  if (!lCopy)
  {
    v12 = NUAssertLogger_10839();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v46 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_10839();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageAsset initWithImageURL:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 205, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "fileURL != nil");
  }

  v8 = identifierCopy;
  if (!identifierCopy)
  {
    v19 = NUAssertLogger_10839();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v46 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_10839();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageAsset initWithImageURL:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 206, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "identifier != nil");
  }

  v44.receiver = self;
  v44.super_class = _NUImageAsset;
  v9 = [(_NUAsset *)&v44 initWithIdentifier:identifierCopy];
  imageURL = v9->_imageURL;
  v9->_imageURL = lCopy;

  return v9;
}

- (_NUImageAsset)initWithImageURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [(_NUImageAsset *)self initWithImageURL:lCopy identifier:absoluteString];

  return v6;
}

- (_NUImageAsset)initWithIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUImageAsset initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 197, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end