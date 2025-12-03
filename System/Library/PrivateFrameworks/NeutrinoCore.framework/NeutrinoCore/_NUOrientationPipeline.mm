@interface _NUOrientationPipeline
- (_NUOrientationPipeline)init;
- (_NUOrientationPipeline)initWithIdentifier:(id)identifier;
- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error;
@end

@implementation _NUOrientationPipeline

- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  portCopy = port;
  contextCopy = context;
  if (!portCopy)
  {
    v32 = NUAssertLogger_5769();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputPort != nil"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_5769();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols = [v54 callStackSymbols];
        v57 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v57;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUOrientationPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3285, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "outputPort != nil");
  }

  v10 = contextCopy;
  if (!contextCopy)
  {
    v39 = NUAssertLogger_5769();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_5769();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols3 = [v63 callStackSymbols];
        v66 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v66;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUOrientationPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3286, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "context != nil");
  }

  if (!error)
  {
    v46 = NUAssertLogger_5769();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_5769();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v50)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols5 = [v72 callStackSymbols];
        v75 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v71;
        *&buf[12] = 2114;
        *&buf[14] = v75;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUOrientationPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3287, @"Invalid parameter not satisfying: %s", v76, v77, v78, v79, "error != NULL");
  }

  v11 = [contextCopy dataForChannel:@"media"];
  if ([v11 isNull])
  {
    v12 = [NUError missingError:@"Missing media input" object:self];
  }

  else
  {
    if ([v11 type] == 1)
    {
      media = [v11 media];
      v14 = [v10 dataForChannel:@"orientation"];
      if ([v14 isNull])
      {
        geometry = [media geometry];
        orientation = [geometry orientation];
      }

      else
      {
        geometry = [v14 value];
        orientation = [geometry integerValue];
      }

      v18 = orientation;

      if ((v18 - 1) >= 8)
      {
        [NUError invalidError:@"Invalid orientation value" object:v14];
        *error = v17 = 0;
      }

      else
      {
        v19 = [NUOrientationNode alloc];
        renderNode = [media renderNode];
        v21 = [(NUOrientationNode *)v19 initWithOrientation:v18 input:renderNode];

        geometry2 = [media geometry];
        v23 = [geometry2 size];
        v25 = NUOrientationTransformImageSize(v18, v23, v24);
        v27 = v26;
        v28 = [_NUMediaGeometry alloc];
        if (geometry2)
        {
          [geometry2 duration];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v29 = [(_NUMediaGeometry *)v28 initWithSize:v25 orientation:v27 duration:1, buf];
        v30 = [media filteredMediaWithRenderNode:v21 geometry:v29];
        v17 = [[NUChannelMediaData alloc] initWithMedia:v30];
      }

      goto LABEL_19;
    }

    v12 = [NUError invalidError:@"Invalid media data" object:v11];
  }

  v17 = 0;
  *error = v12;
LABEL_19:

  return v17;
}

- (_NUOrientationPipeline)init
{
  v3 = [[NUIdentifier alloc] initWithName:@"orientation"];
  v15.receiver = self;
  v15.super_class = _NUOrientationPipeline;
  v4 = [(_NUPipeline *)&v15 initWithIdentifier:v3];
  v5 = [NUChannel alloc];
  v6 = +[NUChannelImageMediaFormat genericImageFormat];
  v7 = [(NUChannel *)v5 initWithName:@"media" format:v6];

  v8 = [(_NUPipeline *)v4 _addInputChannel:v7];
  v9 = [(_NUPipeline *)v4 _addOutputChannel:v7];
  v10 = [NUNumberSetting alloc];
  v11 = [(NUNumberSetting *)v10 initWithMinimum:&unk_1F3F82308 maximum:&unk_1F3F82350 attributes:MEMORY[0x1E695E0F8]];
  v12 = [NUChannel controlChannelWithSetting:v11 name:@"orientation"];
  v13 = [(_NUPipeline *)v4 _addInputChannel:v12];

  return v4;
}

- (_NUOrientationPipeline)initWithIdentifier:(id)identifier
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
  _NUAssertFailHandler("[_NUOrientationPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3260, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end