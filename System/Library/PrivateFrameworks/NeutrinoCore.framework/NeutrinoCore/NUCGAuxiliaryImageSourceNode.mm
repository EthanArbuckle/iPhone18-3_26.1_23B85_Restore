@interface NUCGAuxiliaryImageSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options;
- (BOOL)supportsPipelineState:(id)state error:(id *)error;
- (NUCGAuxiliaryImageSourceNode)initWithSettings:(id)settings;
- (NUCGAuxiliaryImageSourceNode)initWithSourceNode:(id)node auxiliaryImageType:(int64_t)type auxiliaryImageProperties:(id)properties;
- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)pipelineOptionsForPipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUCGAuxiliaryImageSourceNode

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v28 = NUAssertLogger_10628();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_10628();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v35;
        v49 = 2114;
        v50 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 223, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v9 = optionsCopy;
  if ([(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType]== 10)
  {
    *buf = 1;
    auxiliaryImageProperties = self->_auxiliaryImageProperties;
    v45 = 0;
    v11 = [(NUAuxiliaryImageProperties *)auxiliaryImageProperties auxiliaryImageWithSourceOptions:v9 subsampleFactor:buf error:&v45];
    v12 = v45;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_10:
    v19 = [NUError errorWithCode:1 reason:@"Failed to retrieve auxiliary image" object:self->_auxiliaryImageProperties underlyingError:v12];
LABEL_12:
    v20 = 0;
    *error = v19;
    goto LABEL_20;
  }

  v18 = self->_auxiliaryImageProperties;
  v44 = 0;
  v11 = [(NUAuxiliaryImageProperties *)v18 auxiliaryImageWithSourceOptions:v9 subsampleFactor:factor error:&v44];
  v12 = v44;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_4:
  cvPixelBufferRef = [v11 cvPixelBufferRef];
  if (!cvPixelBufferRef)
  {
    v19 = [NUError unknownError:@"Unable to retrieve cvPixelBufferRef" object:v11];
    goto LABEL_12;
  }

  v14 = cvPixelBufferRef;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType]== 7)
  {
    v16 = CVBufferCopyAttachment(v14, *MEMORY[0x1E6965CE8], 0);
    if (!v16)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null forKeyedSubscript:*MEMORY[0x1E695F9A8]];
    }

    CGColorSpaceRelease(v16);
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v15 setObject:null2 forKeyedSubscript:*MEMORY[0x1E695F9A8]];
  }

  nu_digest = [self nu_digest];
  [v15 setObject:nu_digest forKeyedSubscript:*MEMORY[0x1E695F9B0]];

  v20 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v14 options:v15];
  metadata = [v11 metadata];
  if (metadata)
  {
    v46 = *MEMORY[0x1E696D228];
    v47 = metadata;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v25 = [v20 imageBySettingPropertiesNoCopy:v24];

    v20 = v25;
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    *error = [NUError unknownError:@"[CIImage imageWithCVPixelBuffer:cvPixelBufferRef options:options] failed." object:v14];
  }

LABEL_20:

  return v20;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v11 = NUAssertLogger_10628();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_10628();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode _evaluateAuxiliaryImageForType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 211, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  if ([(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType]== type)
  {
    v7 = [(NUAuxiliaryImageProperties *)self->_auxiliaryImageProperties auxiliaryImage:error];
  }

  else
  {
    if (type > 0xB)
    {
      v8 = @"Invalid";
    }

    else
    {
      v8 = off_1E8109908[type];
    }

    v9 = v8;
    *error = [NUError mismatchError:@"Incompatible auxiliary image type" object:v9];

    v7 = 0;
  }

  return v7;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  if ([(NUCGAuxiliaryImageSourceNode *)self supportsPipelineState:state error:error])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)supportsPipelineState:(id)state error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v12 = NUAssertLogger_10628();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_10628();
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
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 184, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != nil");
  }

  v7 = stateCopy;
  if ([stateCopy mediaComponentType] != 1)
  {
    v10 = @"expected an image mediaComponentType";
LABEL_7:
    [NUError mismatchError:v10 object:v7];
    *error = v9 = 0;
    goto LABEL_8;
  }

  auxiliaryImageType = [v7 auxiliaryImageType];
  if (auxiliaryImageType != [(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType])
  {
    v10 = @"Incompatible auxiliary image type";
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options
{
  v3 = [(NUAuxiliaryImageProperties *)self->_auxiliaryImageProperties size];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)pipelineOptionsForPipelineState:(id)state error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v13 = NUAssertLogger_10628();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v32 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_10628();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v20;
        v33 = 2114;
        v34 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode pipelineOptionsForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 148, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != NULL");
  }

  v7 = stateCopy;
  auxiliaryImageType = [(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType];
  v29 = @"auxiliaryImageType";
  if (auxiliaryImageType > 0xB)
  {
    v9 = @"Invalid";
  }

  else
  {
    v9 = off_1E8109908[auxiliaryImageType];
  }

  v10 = v9;
  v30 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  return v11;
}

- (NUCGAuxiliaryImageSourceNode)initWithSourceNode:(id)node auxiliaryImageType:(int64_t)type auxiliaryImageProperties:(id)properties
{
  v60 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  propertiesCopy = properties;
  if (!nodeCopy)
  {
    v21 = NUAssertLogger_10628();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceNode != nil"];
      *buf = 138543362;
      v57 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_10628();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v35;
        v58 = 2114;
        v59 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 126, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "sourceNode != nil");
  }

  if (!propertiesCopy)
  {
    v28 = NUAssertLogger_10628();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "auxiliaryImageProperties != nil"];
      *buf = 138543362;
      v57 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_10628();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v44;
        v58 = 2114;
        v59 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 127, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "auxiliaryImageProperties != nil");
  }

  auxiliaryImageProperties = self->_auxiliaryImageProperties;
  self->_auxiliaryImageProperties = propertiesCopy;
  v11 = propertiesCopy;

  self->_auxiliaryImageType = type;
  sourceNode = self->_sourceNode;
  self->_sourceNode = nodeCopy;
  v13 = nodeCopy;

  v54[0] = @"sourceSettings";
  settings = [(NURenderNode *)v13 settings];
  v54[1] = @"auxiliaryImageType";
  v55[0] = settings;
  auxiliaryImageType = [(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType];
  if (auxiliaryImageType > 0xB)
  {
    v16 = @"Invalid";
  }

  else
  {
    v16 = off_1E8109908[auxiliaryImageType];
  }

  v17 = v16;
  v55[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

  v53.receiver = self;
  v53.super_class = NUCGAuxiliaryImageSourceNode;
  v19 = [(NUSourceNode *)&v53 initWithSettings:v18];

  [(NUSourceNode *)v19 setOriginalNode:v13];
  return v19;
}

- (NUCGAuxiliaryImageSourceNode)initWithSettings:(id)settings
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10653);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10653);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10653);
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
  _NUAssertFailHandler("[NUCGAuxiliaryImageSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 121, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end