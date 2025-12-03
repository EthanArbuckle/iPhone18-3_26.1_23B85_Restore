@interface _NUStyleTransferLearnProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)learnStyleFromInputThumbnail:(id)thumbnail targetThumbnail:(id)targetThumbnail colorSpace:(id)space configuration:(id)configuration tuningParameters:(id)parameters error:(id *)error;
+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)outputFormatWithArguments:(id)arguments;
@end

@implementation _NUStyleTransferLearnProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  if ([inputsCopy count] != 2)
  {
    v56 = NUAssertLogger_30110();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count == 2"];
      *buf = 138543362;
      v98 = v57;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v59 = NUAssertLogger_30110();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v60)
      {
        v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v71 = MEMORY[0x1E696AF00];
        v72 = v70;
        callStackSymbols = [v71 callStackSymbols];
        v74 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v98 = v70;
        v99 = 2114;
        v100 = v74;
        _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v60)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v62 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v98 = v62;
      _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1736, @"Invalid parameter not satisfying: %s", v75, v76, v77, v78, "inputs.count == 2");
  }

  v11 = [inputsCopy objectAtIndexedSubscript:0];
  v12 = [inputsCopy objectAtIndexedSubscript:1];
  if (+[NUGlobalSettings debugDumpStyleEngineInputs])
  {
    v13 = [argumentsCopy objectForKeyedSubscript:@"config"];
    v14 = [v13 objectForKey:@"usage"];
    v89 = outputCopy;
    v15 = v14;
    v16 = @"default";
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v11 surface]);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-inputThumbnail", self, v17];
    [(NUIOSurface *)v18 debugDump:v19];

    v20 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v12 surface]);
    selfCopy = self;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-targetThumbnail"];

    [(NUIOSurface *)v20 debugDump:v21];
    outputCopy = v89;
  }

  v22 = [argumentsCopy objectForKeyedSubscript:@"thumbExtent"];
  if (!v22)
  {
    v63 = NUAssertLogger_30110();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
      *buf = 138543362;
      v98 = v64;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v66 = NUAssertLogger_30110();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    if (v65)
    {
      if (v67)
      {
        v79 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        callStackSymbols3 = [v80 callStackSymbols];
        v83 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v98 = v79;
        v99 = 2114;
        v100 = v83;
        _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v67)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v69 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v98 = v69;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1749, @"Missing thumbnail extent!", v84, v85, v86, v87, selfCopy);
  }

  v23 = v22;
  [v11 region];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v23 CGRectValue];
  v104.origin.x = v32;
  v104.origin.y = v33;
  v104.size.width = v34;
  v104.size.height = v35;
  v102.origin.x = v25;
  v102.origin.y = v27;
  v102.size.width = v29;
  v102.size.height = v31;
  if (!CGRectEqualToRect(v102, v104))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v53 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v98 = v23;
    v54 = "*** Invalid thumbnail input extent: %{public}@";
    goto LABEL_20;
  }

  [v12 region];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [v23 CGRectValue];
  v105.origin.x = v44;
  v105.origin.y = v45;
  v105.size.width = v46;
  v105.size.height = v47;
  v103.origin.x = v37;
  v103.origin.y = v39;
  v103.size.width = v41;
  v103.size.height = v43;
  if (!CGRectEqualToRect(v103, v105))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v53 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v98 = v23;
    v54 = "*** Invalid target input extent: %{public}@";
LABEL_20:
    _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0xCu);
LABEL_17:
    v52 = 0;
    goto LABEL_18;
  }

  [outputCopy metalCommandBuffer];
  v48 = v90 = outputCopy;
  commandQueue = [v48 commandQueue];
  v50 = [argumentsCopy objectForKeyedSubscript:@"config"];
  v51 = [argumentsCopy objectForKeyedSubscript:@"tuning"];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __75___NUStyleTransferLearnProcessor_processWithInputs_arguments_output_error___block_invoke;
  v92[3] = &unk_1E810B800;
  v93 = v90;
  v94 = v11;
  v95 = v12;
  selfCopy2 = self;
  v52 = [_NUStyleEngine usingSharedStyleEngineForUsage:@"learn" withMetalCommandQueue:commandQueue configuration:v50 tuningParams:v51 perform:v92];

  outputCopy = v90;
LABEL_18:

  return v52;
}

+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v32 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v6 = [argumentsCopy objectForKeyedSubscript:@"thumbExtent"];
  if (!v6)
  {
    v10 = NUAssertLogger_30110();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
      *buf = 138543362;
      v29 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_30110();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v17;
        v30 = 2114;
        v31 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor roiTileArrayForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1730, @"Missing thumbnail extent!", v22, v23, v24, v25, v26);
  }

  v7 = v6;
  v27 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];

  return v8;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v39 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v6 = [argumentsCopy objectForKeyedSubscript:@"thumbExtent"];
  if (!v6)
  {
    v20 = NUAssertLogger_30110();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
      *v36 = 138543362;
      *&v36[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v36, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_30110();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v36 = 138543618;
        *&v36[4] = v27;
        v37 = 2114;
        v38 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v36, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v36 = 138543362;
      *&v36[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v36, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor roiForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1723, @"Missing thumbnail extent!", v32, v33, v34, v35, *v36);
  }

  v7 = v6;
  [v6 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (int)outputFormatWithArguments:(id)arguments
{
  v3 = [arguments objectForKeyedSubscript:@"config"];
  v4 = [v3 objectForKeyedSubscript:@"useFloat16"];
  bOOLValue = [v4 BOOLValue];

  v6 = MEMORY[0x1E695F930];
  if (!bOOLValue)
  {
    v6 = MEMORY[0x1E695F928];
  }

  v7 = *v6;

  return v7;
}

+ (id)learnStyleFromInputThumbnail:(id)thumbnail targetThumbnail:(id)targetThumbnail colorSpace:(id)space configuration:(id)configuration tuningParameters:(id)parameters error:(id *)error
{
  v133 = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  targetThumbnailCopy = targetThumbnail;
  spaceCopy = space;
  configurationCopy = configuration;
  parametersCopy = parameters;
  if (!thumbnailCopy)
  {
    v44 = NUAssertLogger_30110();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputThumbnail != nil"];
      *buf = 138543362;
      v130 = v45;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v47 = NUAssertLogger_30110();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v48)
      {
        v79 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        callStackSymbols = [v80 callStackSymbols];
        v83 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v130 = v79;
        v131 = 2114;
        v132 = v83;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v130 = v50;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:targetThumbnail:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1658, @"Invalid parameter not satisfying: %s", v84, v85, v86, v87, "inputThumbnail != nil");
  }

  if (!targetThumbnailCopy)
  {
    v51 = NUAssertLogger_30110();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetThumbnail != nil"];
      *buf = 138543362;
      v130 = v52;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v54 = NUAssertLogger_30110();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
    if (v53)
    {
      if (v55)
      {
        v88 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v89 = MEMORY[0x1E696AF00];
        v90 = v88;
        callStackSymbols3 = [v89 callStackSymbols];
        v92 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v130 = v88;
        v131 = 2114;
        v132 = v92;
        _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v57 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v130 = v57;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:targetThumbnail:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1659, @"Invalid parameter not satisfying: %s", v93, v94, v95, v96, "targetThumbnail != nil");
  }

  if (!spaceCopy)
  {
    v58 = NUAssertLogger_30110();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v130 = v59;
      _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v61 = NUAssertLogger_30110();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      if (v62)
      {
        v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v98 = MEMORY[0x1E696AF00];
        v99 = v97;
        callStackSymbols5 = [v98 callStackSymbols];
        v101 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v130 = v97;
        v131 = 2114;
        v132 = v101;
        _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v62)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v64 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v130 = v64;
      _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:targetThumbnail:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1660, @"Invalid parameter not satisfying: %s", v102, v103, v104, v105, "colorSpace != nil");
  }

  if (!configurationCopy)
  {
    v65 = NUAssertLogger_30110();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v130 = v66;
      _os_log_error_impl(&dword_1C0184000, v65, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger_30110();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v67)
    {
      if (v69)
      {
        v106 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v107 = MEMORY[0x1E696AF00];
        v108 = v106;
        callStackSymbols7 = [v107 callStackSymbols];
        v110 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v130 = v106;
        v131 = 2114;
        v132 = v110;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v69)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v71 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v130 = v71;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:targetThumbnail:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1661, @"Invalid parameter not satisfying: %s", v111, v112, v113, v114, "config != nil");
  }

  v19 = parametersCopy;
  if (!parametersCopy)
  {
    v72 = NUAssertLogger_30110();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tuningParams != nil"];
      *buf = 138543362;
      v130 = v73;
      _os_log_error_impl(&dword_1C0184000, v72, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v75 = NUAssertLogger_30110();
    v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
    if (v74)
    {
      if (v76)
      {
        v115 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v116 = MEMORY[0x1E696AF00];
        v117 = v115;
        callStackSymbols9 = [v116 callStackSymbols];
        v119 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v130 = v115;
        v131 = 2114;
        v132 = v119;
        _os_log_error_impl(&dword_1C0184000, v75, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v76)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v78 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v130 = v78;
      _os_log_error_impl(&dword_1C0184000, v75, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:targetThumbnail:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1662, @"Invalid parameter not satisfying: %s", v120, v121, v122, v123, "tuningParams != nil");
  }

  [thumbnailCopy extent];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [targetThumbnailCopy extent];
  v136.origin.x = v28;
  v136.origin.y = v29;
  v136.size.width = v30;
  v136.size.height = v31;
  v135.origin.x = v21;
  v135.origin.y = v23;
  v135.size.width = v25;
  v135.size.height = v27;
  if (CGRectEqualToRect(v135, v136))
  {
    errorCopy = error;
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v33 = [thumbnailCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
    [v32 addObject:v33];

    v34 = [targetThumbnailCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
    [v32 addObject:v34];

    v126[0] = @"tuning";
    v126[1] = @"config";
    v127[0] = v19;
    v127[1] = configurationCopy;
    v126[2] = @"thumbExtent";
    v35 = MEMORY[0x1E695F688];
    [thumbnailCopy extent];
    v36 = [v35 vectorWithCGRect:?];
    v127[2] = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:3];

    [_NUStyleEngineConfiguration coefficientTextureSizeForConfigurationDictionary:configurationCopy];
    v125 = 0;
    v40 = [self applyWithExtent:v32 inputs:v37 arguments:&v125 error:{0.0, 0.0, v38, v39}];
    v41 = v125;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      *errorCopy = [NUError errorWithCode:1 reason:@"Failed to generate style image" object:self underlyingError:v41];
    }
  }

  else
  {
    v128[0] = thumbnailCopy;
    v128[1] = targetThumbnailCopy;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
    [NUError mismatchError:@"target size must match thumbnail size" object:v32];
    *error = v40 = 0;
  }

  return v40;
}

@end