@interface _NUCIImageAsset
- (_NUCIImageAsset)initWithCIImage:(id)image type:(int64_t)type identifier:(id)identifier;
- (_NUCIImageAsset)initWithIdentifier:(id)identifier;
- (id)_loadMediaWithOptions:(id)options error:(id *)error;
@end

@implementation _NUCIImageAsset

- (id)_loadMediaWithOptions:(id)options error:(id *)error
{
  v6 = [options objectForKeyedSubscript:NUAssetOptionOrientation];
  v7 = v6;
  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  v9 = [[NUCIImageSourceDefinition alloc] initWithCIImage:self->_image orientation:intValue];
  identifier = [(_NUAsset *)self identifier];
  v27 = 0;
  v11 = [(NUSingleSourceDefinition *)v9 sourceContainerNodeWithIdentifier:identifier error:&v27];
  v12 = v27;
  sourceContainerNode = self->_sourceContainerNode;
  self->_sourceContainerNode = v11;

  if (self->_sourceContainerNode)
  {
    v14 = objc_alloc_init(NURenderPipelineState);
    [(NURenderPipelineState *)v14 setMediaComponentType:1];
    [(NURenderPipelineState *)v14 setEvaluationMode:0];
    v15 = self->_sourceContainerNode;
    v26 = 0;
    v16 = [(NUSourceContainerNode *)v15 preparedSourceNodeForPipelineState:v14 pipelineSettings:MEMORY[0x1E695E0F8] sourceSettings:&unk_1F3F82978 error:&v26];
    v17 = v26;

    if (v16)
    {
      v25 = 0;
      v18 = [v16 outputImageGeometry:&v25];
      v12 = v25;

      if (v18)
      {
        v19 = [NUChannelImageMediaFormat stillImageFormat:self->_mediaType];
        v20 = [_NUImageAssetMedia alloc];
        mediaGeometry = [v18 mediaGeometry];
        v22 = [(_NUImageAssetMedia *)v20 initWithImageAsset:self auxImageType:1 format:v19 geometry:mediaGeometry];

        v23 = [[_NURenderMedia alloc] initWithBaseMedia:v22 renderNode:v16];
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to evaluate image geometry node" object:self underlyingError:v12];
        *error = v23 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to prepare image source node" object:self underlyingError:v17];
      *error = v23 = 0;
      v12 = v17;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to create source container node" object:self underlyingError:v12];
    *error = v23 = 0;
  }

  return v23;
}

- (_NUCIImageAsset)initWithCIImage:(id)image type:(int64_t)type identifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  if (!imageCopy)
  {
    v15 = NUAssertLogger_10839();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_10839();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUCIImageAsset initWithCIImage:type:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 655, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "image != nil");
  }

  v10 = identifierCopy;
  v31.receiver = self;
  v31.super_class = _NUCIImageAsset;
  v11 = [(_NUAsset *)&v31 initWithIdentifier:identifierCopy];
  image = v11->_image;
  v11->_image = imageCopy;

  if (type <= 1)
  {
    typeCopy = 1;
  }

  else
  {
    typeCopy = type;
  }

  v11->_mediaType = typeCopy;

  return v11;
}

- (_NUCIImageAsset)initWithIdentifier:(id)identifier
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
  _NUAssertFailHandler("[_NUCIImageAsset initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 651, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end