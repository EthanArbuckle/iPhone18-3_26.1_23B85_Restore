@interface _NUCropPipeline
- (_NUCropPipeline)init;
- (_NUCropPipeline)initWithIdentifier:(id)identifier;
- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error;
@end

@implementation _NUCropPipeline

- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  portCopy = port;
  contextCopy = context;
  if (!portCopy)
  {
    v33 = NUAssertLogger_5769();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputPort != nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_5769();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v37)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2114;
        *&buf[14] = v58;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUCropPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3180, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "outputPort != nil");
  }

  v10 = contextCopy;
  if (!contextCopy)
  {
    v40 = NUAssertLogger_5769();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_5769();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        callStackSymbols3 = [v64 callStackSymbols];
        v67 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v63;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUCropPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3181, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "context != nil");
  }

  if (!error)
  {
    v47 = NUAssertLogger_5769();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_5769();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        callStackSymbols5 = [v73 callStackSymbols];
        v76 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v72;
        *&buf[12] = 2114;
        *&buf[14] = v76;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUCropPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3182, @"Invalid parameter not satisfying: %s", v77, v78, v79, v80, "error != NULL");
  }

  v11 = [contextCopy dataForChannel:@"media"];
  if ([v11 isNull])
  {
    v12 = [NUError missingError:@"Missing media input" object:self];
LABEL_10:
    v15 = 0;
    *error = v12;
    goto LABEL_21;
  }

  if ([v11 type] != 1)
  {
    v12 = [NUError invalidError:@"Invalid media data" object:v11];
    goto LABEL_10;
  }

  media = [v11 media];
  v14 = [v10 dataForChannel:@"pixelRect"];
  if ([v14 isNull])
  {
    [NUError missingError:@"Missing crop rect input" object:self];
    *error = v15 = 0;
  }

  else
  {
    memset(buf, 0, 32);
    value = [v14 value];
    v17 = value;
    if (value)
    {
      [value nu_pixelRect];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v18 = [v10 dataForChannel:@"projectDirtyApertureInCrop"];
    if (([v18 isNull] & 1) == 0)
    {
      value2 = [v18 value];
      [value2 BOOLValue];
    }

    v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F3F82928];
    v21 = objc_alloc_init(NURenderPipelineHelper);
    renderNode = [media renderNode];
    v86[0] = *buf;
    v86[1] = *&buf[16];
    v83 = v21;
    v84 = v20;
    v23 = [(NURenderPipelineHelper *)v21 cropNode:renderNode cropRect:v86 cropSettings:v20];

    v85 = 0;
    v24 = [v23 outputImageGeometry:&v85];
    v25 = v85;
    v82 = v25;
    if (v24)
    {
      v26 = [_NUMediaGeometry alloc];
      v27 = [v24 size];
      v81 = v18;
      v28 = media;
      v30 = -[_NUMediaGeometry initWithSize:orientation:](v26, "initWithSize:orientation:", v27, v29, [v24 orientation]);
      v31 = [v28 filteredMediaWithRenderNode:v23 geometry:v30];
      v15 = [[NUChannelMediaData alloc] initWithMedia:v31];

      media = v28;
      v18 = v81;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to evaluate node geometry" object:v23 underlyingError:v25];
      *error = v15 = 0;
    }
  }

LABEL_21:

  return v15;
}

- (_NUCropPipeline)init
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [[NUIdentifier alloc] initWithName:@"crop"];
  v18.receiver = self;
  v18.super_class = _NUCropPipeline;
  v4 = [(_NUPipeline *)&v18 initWithIdentifier:v3];
  v5 = [NUChannel alloc];
  v6 = +[NUChannelImageMediaFormat genericImageFormat];
  v7 = [(NUChannel *)v5 initWithName:@"media" format:v6];

  v8 = [(_NUPipeline *)v4 _addInputChannel:v7];
  v9 = [(_NUPipeline *)v4 _addOutputChannel:v7];
  v10 = +[NUChannel pixelRect];
  v11 = [(_NUPipeline *)v4 _addInputChannel:v10];

  v12 = [NUBoolSetting alloc];
  v19 = @"default";
  v20[0] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14 = [(NUModel *)v12 initWithAttributes:v13];

  v15 = [NUChannel controlChannelWithSetting:v14 name:@"projectDirtyApertureInCrop"];
  v16 = [(_NUPipeline *)v4 _addInputChannel:v15];

  return v4;
}

- (_NUCropPipeline)initWithIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
  _NUAssertFailHandler("[_NUCropPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3155, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end