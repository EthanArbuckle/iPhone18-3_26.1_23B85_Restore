@interface _NUStraightenPipeline
- (_NUStraightenPipeline)init;
- (_NUStraightenPipeline)initWithIdentifier:(id)a3;
- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation _NUStraightenPipeline

- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v46 = NUAssertLogger_5769();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputPort != nil"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_5769();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v67;
        *&buf[12] = 2114;
        *&buf[14] = v71;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStraightenPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3093, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "outputPort != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v53 = NUAssertLogger_5769();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      *&buf[4] = v54;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v56 = NUAssertLogger_5769();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (v55)
    {
      if (v57)
      {
        v76 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        v79 = [v77 callStackSymbols];
        v80 = [v79 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v76;
        *&buf[12] = 2114;
        *&buf[14] = v80;
        _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v57)
    {
      v58 = [MEMORY[0x1E696AF00] callStackSymbols];
      v59 = [v58 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v59;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStraightenPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3094, @"Invalid parameter not satisfying: %s", v81, v82, v83, v84, "context != nil");
  }

  if (!a5)
  {
    v60 = NUAssertLogger_5769();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v61;
      _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v63 = NUAssertLogger_5769();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (v62)
    {
      if (v64)
      {
        v85 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v86 = MEMORY[0x1E696AF00];
        v87 = v85;
        v88 = [v86 callStackSymbols];
        v89 = [v88 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v85;
        *&buf[12] = 2114;
        *&buf[14] = v89;
        _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v64)
    {
      v65 = [MEMORY[0x1E696AF00] callStackSymbols];
      v66 = [v65 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v66;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStraightenPipeline _evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3095, @"Invalid parameter not satisfying: %s", v90, v91, v92, v93, "error != NULL");
  }

  v11 = [v9 dataForChannel:@"media"];
  if ([v11 isNull])
  {
    v12 = [NUError missingError:@"Missing media input" object:self];
LABEL_10:
    v15 = 0;
    *a5 = v12;
    goto LABEL_29;
  }

  if ([v11 type] != 1)
  {
    v12 = [NUError invalidError:@"Invalid media data" object:v11];
    goto LABEL_10;
  }

  v13 = [v11 media];
  v14 = [v10 dataForChannel:@"angle"];
  if ([v14 isNull])
  {
    [NUError missingError:@"Missing angle value" object:self];
    *a5 = v15 = 0;
  }

  else
  {
    v16 = [v10 dataForChannel:@"pitch"];
    v17 = [v10 dataForChannel:@"yaw"];
    v18 = 0.0;
    v19 = 0.0;
    if (([v14 isNull] & 1) == 0)
    {
      v20 = [v14 value];
      [v20 doubleValue];
      v19 = v21;
    }

    if (([v16 isNull] & 1) == 0)
    {
      v22 = [v16 value];
      [v22 doubleValue];
      v18 = v23;
    }

    v24 = 0.0;
    if (([v17 isNull] & 1) == 0)
    {
      v25 = [v17 value];
      [v25 doubleValue];
      v24 = v26;
    }

    v27 = [v13 geometry];
    v28 = objc_alloc_init(NURenderPipelineHelper);
    v97 = v17;
    v98 = v16;
    v95 = v28;
    v96 = v27;
    if (v18 == 0.0 && v24 == 0.0)
    {
      *buf = 0;
      *&buf[8] = 0;
      *&buf[16] = [v27 size];
      v103 = v29;
      v30 = [(NURenderPipelineHelper *)v28 straightenTransformWithAngle:buf extent:v19];
    }

    else
    {
      v31 = [v27 size];
      v30 = [(NURenderPipelineHelper *)v28 perspectiveTransformWithPitch:v18 yaw:v24 roll:v19 imageRect:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v31, v32];
    }

    v33 = v30;
    v99 = v13;
    v34 = [v13 renderNode];
    v101 = 0;
    v35 = [NUTransformNode transformNodeWithInput:v34 transform:v33 error:&v101];
    v36 = v101;

    if (v35)
    {
      v100 = 0;
      v37 = [v35 outputImageGeometry:&v100];
      v38 = v100;

      v94 = v38;
      if (v37)
      {
        v39 = [_NUMediaGeometry alloc];
        v40 = [v37 size];
        v42 = -[_NUMediaGeometry initWithSize:orientation:](v39, "initWithSize:orientation:", v40, v41, [v37 orientation]);
        v43 = [v99 filteredMediaWithRenderNode:v35 geometry:v42];
        v15 = [[NUChannelMediaData alloc] initWithMedia:v43];
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to evaluate output image geometry" object:v35 underlyingError:v38];
        *a5 = v15 = 0;
      }

      v13 = v99;
      v44 = v94;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to create node with transform" object:v33 underlyingError:v36];
      *a5 = v15 = 0;
      v44 = v36;
      v13 = v99;
    }
  }

LABEL_29:

  return v15;
}

- (_NUStraightenPipeline)init
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22 = [[NUIdentifier alloc] initWithName:@"straighten"];
  v23.receiver = self;
  v23.super_class = _NUStraightenPipeline;
  v3 = [(_NUPipeline *)&v23 initWithIdentifier:v22];
  v4 = [NUChannel alloc];
  v5 = +[NUChannelImageMediaFormat genericImageFormat];
  v6 = [(NUChannel *)v4 initWithName:@"media" format:v5];

  v7 = [(_NUPipeline *)v3 _addInputChannel:v6];
  v8 = [(_NUPipeline *)v3 _addOutputChannel:v6];
  v9 = [NUNumberSetting alloc];
  v26[0] = @"default";
  v26[1] = @"required";
  v27[0] = &unk_1F3F82308;
  v27[1] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v11 = [(NUNumberSetting *)v9 initWithMinimum:&unk_1F3F822D8 maximum:&unk_1F3F822F0 attributes:v10];

  v12 = [NUChannel controlChannelWithSetting:v11 name:@"angle"];
  v13 = [(_NUPipeline *)v3 _addInputChannel:v12];

  v14 = [NUNumberSetting alloc];
  v24[0] = @"default";
  v24[1] = @"required";
  v25[0] = &unk_1F3F82308;
  v25[1] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v16 = [(NUNumberSetting *)v14 initWithMinimum:&unk_1F3F82320 maximum:&unk_1F3F82338 attributes:v15];

  v17 = [NUChannel controlChannelWithSetting:v16 name:@"pitch"];
  v18 = [(_NUPipeline *)v3 _addInputChannel:v17];

  v19 = [NUChannel controlChannelWithSetting:v16 name:@"yaw"];
  v20 = [(_NUPipeline *)v3 _addInputChannel:v19];

  return v3;
}

- (_NUStraightenPipeline)initWithIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[_NUStraightenPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3067, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end