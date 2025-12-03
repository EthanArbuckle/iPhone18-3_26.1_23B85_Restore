@interface NUFileSourceDefinition
- (NUFileSourceDefinition)init;
- (NUFileSourceDefinition)initWithURL:(id)l UTI:(id)i;
- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error;
- (int64_t)mediaType;
@end

@implementation NUFileSourceDefinition

- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v21 = NUAssertLogger_8665();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v40 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_8665();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v28;
        v41 = 2114;
        v42 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFileSourceDefinition(NodeProvider) generateSourceNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 513, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "identifier != nil");
  }

  v6 = identifierCopy;
  useEmbeddedPreview = [(NUFileSourceDefinition *)self useEmbeddedPreview];
  v8 = [(NUFileSourceDefinition *)self uti];
  v9 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v8];
  if (![v9 conformsToType:*MEMORY[0x1E6982F88]] || useEmbeddedPreview || +[NUGlobalSettings imageSourceDisableRAW](NUGlobalSettings, "imageSourceDisableRAW"))
  {
    if (![v9 conformsToType:*MEMORY[0x1E6982EE8]])
    {
      v14 = [NUCGImageSourceNode alloc];
      v15 = [(NUFileSourceDefinition *)self url];
      v37 = @"useEmbeddedPreview";
      v16 = [MEMORY[0x1E696AD98] numberWithBool:useEmbeddedPreview];
      v38 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v13 = [(NUCGImageSourceNode *)v14 initWithURL:v15 UTI:v8 identifier:v6 options:v17];

      goto LABEL_10;
    }

    v10 = [NUVideoSourceNode alloc];
    v11 = [(NUFileSourceDefinition *)self url];
    sourceOptions = [(NUSourceDefinition *)self sourceOptions];
    v13 = [(NUVideoSourceNode *)v10 initWithURL:v11 identifier:v6 options:sourceOptions];
  }

  else
  {
    v18 = [NURAWImageSourceNode alloc];
    v11 = [(NUFileSourceDefinition *)self url];
    v13 = [(NURAWImageSourceNode *)v18 initWithURL:v11 UTI:v8 identifier:v6];
  }

LABEL_10:
  sourceDerivation = [(NUSingleSourceDefinition *)self sourceDerivation];
  [(NUSourceNode *)v13 setSourceDerivation:sourceDerivation];

  return v13;
}

- (int64_t)mediaType
{
  if (!self->_uti)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  if ([v2 conformsToType:*MEMORY[0x1E6982E30]])
  {

    return 1;
  }

  v4 = [v2 conformsToType:*MEMORY[0x1E6982EE8]];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NUFileSourceDefinition)initWithURL:(id)l UTI:(id)i
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  iCopy = i;
  if (!lCopy)
  {
    v14 = NUAssertLogger_9314();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "url != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_9314();
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
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFileSourceDefinition initWithURL:UTI:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 132, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "url != nil");
  }

  v8 = iCopy;
  v30.receiver = self;
  v30.super_class = NUFileSourceDefinition;
  v9 = [(NUSingleSourceDefinition *)&v30 init];
  url = v9->_url;
  v9->_url = lCopy;
  v11 = lCopy;

  uti = v9->_uti;
  v9->_uti = v8;

  return v9;
}

- (NUFileSourceDefinition)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
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
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUFileSourceDefinition init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 127, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end