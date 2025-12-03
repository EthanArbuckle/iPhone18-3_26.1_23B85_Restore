@interface NUCISourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options;
- (BOOL)supportsPipelineState:(id)state error:(id *)error;
- (NUCISourceNode)initWithImage:(id)image identifier:(id)identifier orientation:(int64_t)orientation;
- (NUCISourceNode)initWithImage:(id)image settings:(id)settings orientation:(int64_t)orientation;
- (NUCISourceNode)initWithSettings:(id)settings;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUCISourceNode

- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if ([(NUSourceNode *)self load:error])
  {
    v7 = objc_alloc_init(_NUImageProperties);
    [(_NUImageProperties *)v7 setMetadata:MEMORY[0x1E695E0F8]];
    colorSpace = [(CIImage *)self->_image colorSpace];
    if (colorSpace)
    {
      v9 = [[NUColorSpace alloc] initWithCGColorSpace:colorSpace];
    }

    else
    {
      v9 = +[NUColorSpace workingColorSpace];
    }

    v10 = v9;
    [(_NUImageProperties *)v7 setColorSpace:v9];

    v11 = [(NUCISourceNode *)self pixelSizeWithSourceOptions:optionsCopy];
    [(_NUImageProperties *)v7 setSize:v11, v12];
    [(_NUImageProperties *)v7 setOrientation:[(NUCISourceNode *)self sourceOrientation]];
    if ([(CIImage *)self->_image isOpaque])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(_NUImageProperties *)v7 setAlphaInfo:v13];
    [(_NUImageProperties *)v7 setComponentInfo:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options
{
  [(CIImage *)self->_image extent];
  v4 = vcvtmd_s64_f64(v3);
  v6 = vcvtmd_s64_f64(v5);
  result.var1 = v6;
  result.var0 = v4;
  return result;
}

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!factor)
  {
    v12 = NUAssertLogger_19919();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_19919();
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

    _NUAssertFailHandler("[NUCISourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 164, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleFactor != NULL");
  }

  v8 = optionsCopy;
  *factor = 1;
  image = self->_image;
  v10 = image;

  return image;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  if (!error)
  {
    v16 = NUAssertLogger_19919();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_19919();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 152, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != nil");
  }

  v13 = stateCopy;
  if ([(NUCISourceNode *)self supportsPipelineState:stateCopy error:error])
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
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v14 = NUAssertLogger_19919();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_19919();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 120, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  v6 = stateCopy;
  auxiliaryImageType = [stateCopy auxiliaryImageType];
  if ((auxiliaryImageType - 3) >= 9)
  {
    if (auxiliaryImageType == 2)
    {
      v13 = [NUError invalidError:@"depth is not supported on CIImages" object:v6];
    }

    else
    {
      if ([v6 mediaComponentType] == 1)
      {
        v11 = 1;
        goto LABEL_7;
      }

      v13 = [NUError mismatchError:@"expected an image mediaComponentType" object:v6];
    }

    v11 = 0;
    *error = v13;
    goto LABEL_7;
  }

  auxiliaryImageType2 = [v6 auxiliaryImageType];
  if (auxiliaryImageType2 > 0xB)
  {
    v9 = @"Invalid";
  }

  else
  {
    v9 = off_1E8109908[auxiliaryImageType2];
  }

  v10 = v9;
  *error = [NUError unsupportedError:@"Auxiliary image type is not supported" object:v10];

  v11 = 0;
LABEL_7:

  return v11;
}

- (NUCISourceNode)initWithSettings:(id)settings
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_19933);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_19933);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_19933);
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
  _NUAssertFailHandler("[NUCISourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 97, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUCISourceNode)initWithImage:(id)image settings:(id)settings orientation:(int64_t)orientation
{
  v70 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  settingsCopy = settings;
  if (!imageCopy)
  {
    v17 = NUAssertLogger_19919();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v67 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_19919();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v38;
        v68 = 2114;
        v69 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode initWithImage:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 77, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "image != nil");
  }

  v10 = settingsCopy;
  if (!settingsCopy)
  {
    v24 = NUAssertLogger_19919();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v67 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_19919();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols3 = [v48 callStackSymbols];
        v51 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v47;
        v68 = 2114;
        v69 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode initWithImage:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 78, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "settings != nil");
  }

  if ((orientation - 1) >= 8)
  {
    v31 = NUAssertLogger_19919();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v67 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_19919();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols5 = [v57 callStackSymbols];
        v60 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v56;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode initWithImage:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 79, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "NUOrientationIsValid(orientation)");
  }

  v11 = [settingsCopy mutableCopy];
  v12 = [MEMORY[0x1E696B098] valueWithPointer:imageCopy];
  [v11 setObject:v12 forKeyedSubscript:@"_image"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  [v11 setObject:v13 forKeyedSubscript:@"_orientation"];

  v65.receiver = self;
  v65.super_class = NUCISourceNode;
  v14 = [(NUSourceNode *)&v65 initWithSettings:v11];
  image = v14->_image;
  v14->_image = imageCopy;

  v14->_orientation = orientation;
  return v14;
}

- (NUCISourceNode)initWithImage:(id)image identifier:(id)identifier orientation:(int64_t)orientation
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v14 = NUAssertLogger_19919();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v33 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_19919();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v21;
        v34 = 2114;
        v35 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCISourceNode initWithImage:identifier:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CIImage.m", 70, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "identifier != nil");
  }

  v10 = identifierCopy;
  v30 = @"identifier";
  v31 = identifierCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v12 = [(NUCISourceNode *)self initWithImage:imageCopy settings:v11 orientation:orientation];

  return v12;
}

@end