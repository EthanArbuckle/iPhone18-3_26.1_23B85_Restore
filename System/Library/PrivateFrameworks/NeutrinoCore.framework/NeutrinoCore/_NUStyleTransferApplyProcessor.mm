@interface _NUStyleTransferApplyProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyStyle:(id)style toImage:(id)image thumbnail:(id)thumbnail target:(id)target deltaMap:(id)map colorSpace:(id)space configuration:(id)configuration tuningParameters:(id)self0 noiseModel:(id)self1 error:(id *)self2;
+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments;
@end

@implementation _NUStyleTransferApplyProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v212 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  v12 = [argumentsCopy objectForKeyedSubscript:@"imageIndex"];
  v13 = [inputsCopy objectAtIndex:{objc_msgSend(v12, "unsignedIntegerValue")}];

  v14 = [argumentsCopy objectForKeyedSubscript:@"styleIndex"];
  v15 = [inputsCopy objectAtIndex:{objc_msgSend(v14, "unsignedIntegerValue")}];

  v16 = [argumentsCopy objectForKeyedSubscript:@"thumbIndex"];

  if (v16)
  {
    v17 = [argumentsCopy objectForKeyedSubscript:@"thumbIndex"];
    v18 = [inputsCopy objectAtIndex:{objc_msgSend(v17, "unsignedIntegerValue")}];
  }

  else
  {
    v18 = 0;
  }

  selfCopy = self;
  v19 = [argumentsCopy objectForKeyedSubscript:@"deltaIndex"];

  if (v19)
  {
    v20 = [argumentsCopy objectForKeyedSubscript:@"deltaIndex"];
    v21 = [inputsCopy objectAtIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];
  }

  else
  {
    v21 = 0;
  }

  v22 = [argumentsCopy objectForKeyedSubscript:@"targetIndex"];

  if (v22)
  {
    v23 = [argumentsCopy objectForKeyedSubscript:@"targetIndex"];
    v24 = [inputsCopy objectAtIndex:{objc_msgSend(v23, "unsignedIntegerValue")}];
  }

  else
  {
    v24 = 0;
  }

  v186 = v18;
  if (+[NUGlobalSettings debugDumpStyleEngineInputs])
  {
    v183 = inputsCopy;
    v179 = v21;
    v25 = [argumentsCopy objectForKeyedSubscript:@"config"];
    v26 = [v25 objectForKey:@"usage"];
    v27 = v26;
    v28 = @"default";
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    v30 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v13 surface]);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-inputImage", selfCopy, v29];
    [(NUIOSurface *)v30 debugDump:v31];

    v32 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v15 surface]);
    v172 = selfCopy;
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-inputStyle"];
    [(NUIOSurface *)v32 debugDump:v33];

    if (v18)
    {
      v34 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v18 surface]);
      v172 = selfCopy;
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-inputThumbnail"];
      [(NUIOSurface *)v34 debugDump:v35];

      v18 = v186;
    }

    if (v24)
    {
      v36 = -[NUIOSurface initWithIOSurface:]([NUIOSurface alloc], "initWithIOSurface:", [v24 surface]);
      v172 = selfCopy;
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-targetThumbnail"];
      [(NUIOSurface *)v36 debugDump:v37];

      v18 = v186;
    }

    v21 = v179;
    inputsCopy = v183;
  }

  v38 = [argumentsCopy objectForKeyedSubscript:@"imageExtent"];
  [v38 CGRectValue];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v213.origin.x = v40;
  v213.origin.y = v42;
  v213.size.width = v44;
  v213.size.height = v46;
  if (CGRectIsEmpty(v213))
  {
    v92 = NUAssertLogger_30110();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image extent!"];
      *buf = 138543362;
      v209 = v93;
      _os_log_error_impl(&dword_1C0184000, v92, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v95 = NUAssertLogger_30110();
    v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v96)
      {
        v106 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v107 = MEMORY[0x1E696AF00];
        v108 = v106;
        callStackSymbols = [v107 callStackSymbols];
        v110 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v209 = v106;
        v210 = 2114;
        v211 = v110;
        _os_log_error_impl(&dword_1C0184000, v95, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v96)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v98 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v209 = v98;
      _os_log_error_impl(&dword_1C0184000, v95, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1955, @"Missing image extent!", v111, v112, v113, v114, v172);
  }

  v178 = v46;
  v180 = v44;
  v181 = v42;
  v182 = v40;
  v47 = [argumentsCopy objectForKeyedSubscript:@"styleExtent"];
  [v47 CGRectValue];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v214.origin.x = v49;
  v214.origin.y = v51;
  v214.size.width = v53;
  v214.size.height = v55;
  if (CGRectIsEmpty(v214))
  {
    v99 = NUAssertLogger_30110();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style extent!"];
      *buf = 138543362;
      v209 = v100;
      _os_log_error_impl(&dword_1C0184000, v99, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v101 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v102 = NUAssertLogger_30110();
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
    if (v101)
    {
      if (v103)
      {
        v115 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v116 = MEMORY[0x1E696AF00];
        v117 = v115;
        callStackSymbols3 = [v116 callStackSymbols];
        v119 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v209 = v115;
        v210 = 2114;
        v211 = v119;
        _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v103)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v105 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v209 = v105;
      _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1958, @"Missing style extent!", v120, v121, v122, v123, v172);
  }

  [v15 region];
  v223.origin.x = v49;
  v223.origin.y = v51;
  v223.size.width = v53;
  v223.size.height = v55;
  if (!CGRectEqualToRect(v215, v223))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v89 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138543362;
    v209 = v15;
    v90 = "*** Invalid style input extent: %{public}@";
    goto LABEL_42;
  }

  if (v18)
  {
    v56 = [argumentsCopy objectForKeyedSubscript:@"thumbExtent"];
    [v56 CGRectValue];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v216.origin.x = v58;
    v216.origin.y = v60;
    v216.size.width = v62;
    v216.size.height = v64;
    if (CGRectIsEmpty(v216))
    {
      v124 = NUAssertLogger_30110();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
        *buf = 138543362;
        v209 = v125;
        _os_log_error_impl(&dword_1C0184000, v124, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v126 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v127 = NUAssertLogger_30110();
      v128 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
      if (v126)
      {
        if (v128)
        {
          v145 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v146 = MEMORY[0x1E696AF00];
          v147 = v145;
          callStackSymbols5 = [v146 callStackSymbols];
          v149 = [callStackSymbols5 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v209 = v145;
          v210 = 2114;
          v211 = v149;
          _os_log_error_impl(&dword_1C0184000, v127, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v128)
      {
        callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
        v130 = [callStackSymbols6 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v209 = v130;
        _os_log_error_impl(&dword_1C0184000, v127, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1967, @"Missing thumbnail extent!", v150, v151, v152, v153, v172);
    }

    [v18 region];
    v224.origin.x = v58;
    v224.origin.y = v60;
    v224.size.width = v62;
    v224.size.height = v64;
    if (!CGRectEqualToRect(v217, v224))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v89 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 138543362;
      v209 = v18;
      v90 = "*** Invalid thumbnail input extent: %{public}@";
      goto LABEL_42;
    }
  }

  if (v21)
  {
    v65 = [argumentsCopy objectForKeyedSubscript:@"deltaExtent"];
    [v65 CGRectValue];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    v218.origin.x = v67;
    v218.origin.y = v69;
    v218.size.width = v71;
    v218.size.height = v73;
    if (CGRectIsEmpty(v218))
    {
      v131 = NUAssertLogger_30110();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing delta extent!"];
        *buf = 138543362;
        v209 = v132;
        _os_log_error_impl(&dword_1C0184000, v131, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v133 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v134 = NUAssertLogger_30110();
      v135 = os_log_type_enabled(v134, OS_LOG_TYPE_ERROR);
      if (v133)
      {
        if (v135)
        {
          v154 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v155 = MEMORY[0x1E696AF00];
          v156 = v154;
          callStackSymbols7 = [v155 callStackSymbols];
          v158 = [callStackSymbols7 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v209 = v154;
          v210 = 2114;
          v211 = v158;
          _os_log_error_impl(&dword_1C0184000, v134, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v135)
      {
        callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
        v137 = [callStackSymbols8 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v209 = v137;
        _os_log_error_impl(&dword_1C0184000, v134, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1977, @"Missing delta extent!", v159, v160, v161, v162, v172);
    }
  }

  if (v24)
  {
    v74 = [argumentsCopy objectForKeyedSubscript:@"targetExtent"];
    [v74 CGRectValue];
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;

    v219.origin.x = v76;
    v219.origin.y = v78;
    v219.size.width = v80;
    v219.size.height = v82;
    if (CGRectIsEmpty(v219))
    {
      v138 = NUAssertLogger_30110();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        v139 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing target extent!"];
        *buf = 138543362;
        v209 = v139;
        _os_log_error_impl(&dword_1C0184000, v138, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v140 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v141 = NUAssertLogger_30110();
      v142 = os_log_type_enabled(v141, OS_LOG_TYPE_ERROR);
      if (v140)
      {
        if (v142)
        {
          v163 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v164 = MEMORY[0x1E696AF00];
          v165 = v163;
          callStackSymbols9 = [v164 callStackSymbols];
          v167 = [callStackSymbols9 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v209 = v163;
          v210 = 2114;
          v211 = v167;
          _os_log_error_impl(&dword_1C0184000, v141, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v142)
      {
        callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
        v144 = [callStackSymbols10 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v209 = v144;
        _os_log_error_impl(&dword_1C0184000, v141, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1983, @"Missing target extent!", v168, v169, v170, v171, v172);
    }

    [v24 region];
    v225.origin.x = v76;
    v225.origin.y = v78;
    v225.size.width = v80;
    v225.size.height = v82;
    if (!CGRectEqualToRect(v220, v225))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v89 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 138543362;
      v209 = v24;
      v90 = "*** Invalid thumbnail input extent: %{public}@";
LABEL_42:
      _os_log_error_impl(&dword_1C0184000, v89, OS_LOG_TYPE_ERROR, v90, buf, 0xCu);
LABEL_43:
      v88 = 0;
      goto LABEL_44;
    }
  }

  [outputCopy region];
  v226.origin.x = v182;
  v226.origin.y = v181;
  v226.size.width = v180;
  v226.size.height = v178;
  v222 = CGRectIntersection(v221, v226);
  y = v222.origin.y;
  x = v222.origin.x;
  height = v222.size.height;
  width = v222.size.width;
  metalCommandBuffer = [outputCopy metalCommandBuffer];
  commandQueue = [metalCommandBuffer commandQueue];
  [argumentsCopy objectForKeyedSubscript:@"config"];
  v184 = inputsCopy;
  v84 = v24;
  v86 = v85 = v21;
  v87 = [argumentsCopy objectForKeyedSubscript:@"tuning"];
  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __75___NUStyleTransferApplyProcessor_processWithInputs_arguments_output_error___block_invoke;
  v187[3] = &unk_1E810B828;
  v195 = v49;
  v196 = v51;
  v197 = v53;
  v198 = v55;
  v199 = v182;
  v200 = v181;
  v201 = v180;
  v202 = v178;
  v203 = x;
  v204 = y;
  v205 = width;
  v206 = height;
  v188 = v13;
  v189 = v15;
  v190 = v18;
  v191 = v85;
  v192 = v84;
  v193 = argumentsCopy;
  v194 = outputCopy;
  v207 = selfCopy;
  v88 = [_NUStyleEngine usingSharedStyleEngineForUsage:@"apply" withMetalCommandQueue:commandQueue configuration:v86 tuningParams:v87 perform:v187];

  v21 = v85;
  v24 = v84;
  inputsCopy = v184;

LABEL_44:
  return v88;
}

+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v8[1] = *MEMORY[0x1E69E9840];
  [self roiForInput:*&input arguments:arguments outputRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v5 = [MEMORY[0x1E695F688] vectorWithCGRect:?];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  argumentsCopy = arguments;
  v11 = [argumentsCopy objectForKeyedSubscript:@"styleIndex"];
  intValue = [v11 intValue];

  if (intValue == input)
  {
    v13 = @"styleExtent";
LABEL_9:
    v22 = [argumentsCopy objectForKeyedSubscript:v13];
    [v22 CGRectValue];
    x = v23;
    y = v24;
    width = v25;
    height = v26;

    goto LABEL_10;
  }

  v14 = [argumentsCopy objectForKeyedSubscript:@"thumbIndex"];
  if (v14)
  {
    v15 = v14;
    v16 = [argumentsCopy objectForKeyedSubscript:@"thumbIndex"];
    intValue2 = [v16 intValue];

    if (intValue2 == input)
    {
      v13 = @"thumbExtent";
      goto LABEL_9;
    }
  }

  v18 = [argumentsCopy objectForKeyedSubscript:@"targetIndex"];
  if (v18)
  {
    v19 = v18;
    v20 = [argumentsCopy objectForKeyedSubscript:@"targetIndex"];
    intValue3 = [v20 intValue];

    if (intValue3 == input)
    {
      v13 = @"targetExtent";
      goto LABEL_9;
    }
  }

LABEL_10:

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments
{
  argumentsCopy = arguments;
  v6 = [argumentsCopy objectForKeyedSubscript:@"styleIndex"];
  intValue = [v6 intValue];

  if (intValue == index)
  {
    v8 = [argumentsCopy objectForKeyedSubscript:@"config"];
    v9 = [v8 objectForKeyedSubscript:@"useFloat16"];
    bOOLValue = [v9 BOOLValue];

    v11 = MEMORY[0x1E695F930];
    if (!bOOLValue)
    {
      v11 = MEMORY[0x1E695F928];
    }

    v12 = *v11;
  }

  else
  {
    v13 = [argumentsCopy objectForKeyedSubscript:@"deltaIndex"];
    if (v13 && (v14 = v13, [argumentsCopy objectForKeyedSubscript:@"deltaIndex"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v14, v16 == index))
    {
      v17 = MEMORY[0x1E695F890];
    }

    else
    {
      v17 = MEMORY[0x1E695F8A8];
    }

    v12 = *v17;
  }

  return v12;
}

+ (id)applyStyle:(id)style toImage:(id)image thumbnail:(id)thumbnail target:(id)target deltaMap:(id)map colorSpace:(id)space configuration:(id)configuration tuningParameters:(id)self0 noiseModel:(id)self1 error:(id *)self2
{
  v157 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  imageCopy = image;
  thumbnailCopy = thumbnail;
  targetCopy = target;
  mapCopy = map;
  spaceCopy = space;
  configurationCopy = configuration;
  parametersCopy = parameters;
  modelCopy = model;
  if (!styleCopy)
  {
    v51 = NUAssertLogger_30110();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "styleImage != nil"];
      *buf = 138543362;
      v154 = v52;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v54 = NUAssertLogger_30110();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v55)
      {
        v93 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v94 = MEMORY[0x1E696AF00];
        v95 = v93;
        callStackSymbols = [v94 callStackSymbols];
        v97 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v93;
        v155 = 2114;
        v156 = v97;
        _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v55)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v57 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v57;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1796, @"Invalid parameter not satisfying: %s", v98, v99, v100, v101, "styleImage != nil");
  }

  if (!imageCopy)
  {
    v58 = NUAssertLogger_30110();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v154 = v59;
      _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v61 = NUAssertLogger_30110();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      if (v62)
      {
        v102 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v103 = MEMORY[0x1E696AF00];
        v104 = v102;
        callStackSymbols3 = [v103 callStackSymbols];
        v106 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v102;
        v155 = 2114;
        v156 = v106;
        _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v62)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v64 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v64;
      _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1797, @"Invalid parameter not satisfying: %s", v107, v108, v109, v110, "inputImage != nil");
  }

  if (!thumbnailCopy)
  {
    v65 = NUAssertLogger_30110();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputThumbnail != nil"];
      *buf = 138543362;
      v154 = v66;
      _os_log_error_impl(&dword_1C0184000, v65, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v68 = NUAssertLogger_30110();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v67)
    {
      if (v69)
      {
        v111 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v112 = MEMORY[0x1E696AF00];
        v113 = v111;
        callStackSymbols5 = [v112 callStackSymbols];
        v115 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v111;
        v155 = 2114;
        v156 = v115;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v69)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v71 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v71;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1799, @"Invalid parameter not satisfying: %s", v116, v117, v118, v119, "inputThumbnail != nil");
  }

  if (!spaceCopy)
  {
    v72 = NUAssertLogger_30110();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v154 = v73;
      _os_log_error_impl(&dword_1C0184000, v72, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v75 = NUAssertLogger_30110();
    v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
    if (v74)
    {
      if (v76)
      {
        v120 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v121 = MEMORY[0x1E696AF00];
        v122 = v120;
        callStackSymbols7 = [v121 callStackSymbols];
        v124 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v120;
        v155 = 2114;
        v156 = v124;
        _os_log_error_impl(&dword_1C0184000, v75, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v76)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v78 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v78;
      _os_log_error_impl(&dword_1C0184000, v75, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1801, @"Invalid parameter not satisfying: %s", v125, v126, v127, v128, "colorSpace != nil");
  }

  if (!configurationCopy)
  {
    v79 = NUAssertLogger_30110();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v154 = v80;
      _os_log_error_impl(&dword_1C0184000, v79, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v82 = NUAssertLogger_30110();
    v83 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
    if (v81)
    {
      if (v83)
      {
        v129 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v130 = MEMORY[0x1E696AF00];
        v131 = v129;
        callStackSymbols9 = [v130 callStackSymbols];
        v133 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v129;
        v155 = 2114;
        v156 = v133;
        _os_log_error_impl(&dword_1C0184000, v82, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v83)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v85 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v85;
      _os_log_error_impl(&dword_1C0184000, v82, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1802, @"Invalid parameter not satisfying: %s", v134, v135, v136, v137, "config != nil");
  }

  if (!parametersCopy)
  {
    v86 = NUAssertLogger_30110();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tuningParams != nil"];
      *buf = 138543362;
      v154 = v87;
      _os_log_error_impl(&dword_1C0184000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v88 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v89 = NUAssertLogger_30110();
    v90 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
    if (v88)
    {
      if (v90)
      {
        v138 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v139 = MEMORY[0x1E696AF00];
        v140 = v138;
        callStackSymbols11 = [v139 callStackSymbols];
        v142 = [callStackSymbols11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v154 = v138;
        v155 = 2114;
        v156 = v142;
        _os_log_error_impl(&dword_1C0184000, v89, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v90)
    {
      callStackSymbols12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v92 = [callStackSymbols12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v154 = v92;
      _os_log_error_impl(&dword_1C0184000, v89, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferApplyProcessor applyStyle:toImage:thumbnail:target:deltaMap:colorSpace:configuration:tuningParameters:noiseModel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1803, @"Invalid parameter not satisfying: %s", v143, v144, v145, v146, "tuningParams != nil");
  }

  v26 = modelCopy;
  v151 = targetCopy;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v148 = parametersCopy;
  [v28 setObject:parametersCopy forKeyedSubscript:@"tuning"];
  v149 = configurationCopy;
  [v28 setObject:configurationCopy forKeyedSubscript:@"config"];
  v147 = v26;
  [v28 setObject:v26 forKeyedSubscript:@"noiseModel"];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  [v28 setObject:v29 forKeyedSubscript:@"imageIndex"];

  v30 = MEMORY[0x1E695F688];
  [imageCopy extent];
  v31 = [v30 vectorWithCGRect:?];
  [v28 setObject:v31 forKeyedSubscript:@"imageExtent"];

  v32 = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
  [v27 addObject:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  [v28 setObject:v33 forKeyedSubscript:@"styleIndex"];

  v34 = MEMORY[0x1E695F688];
  [styleCopy extent];
  v35 = [v34 vectorWithCGRect:?];
  [v28 setObject:v35 forKeyedSubscript:@"styleExtent"];

  [v27 addObject:styleCopy];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  [v28 setObject:v36 forKeyedSubscript:@"thumbIndex"];

  v37 = MEMORY[0x1E695F688];
  [thumbnailCopy extent];
  v38 = [v37 vectorWithCGRect:?];
  [v28 setObject:v38 forKeyedSubscript:@"thumbExtent"];

  v39 = [thumbnailCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
  [v27 addObject:v39];

  if (mapCopy)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    [v28 setObject:v40 forKeyedSubscript:@"deltaIndex"];

    v41 = MEMORY[0x1E695F688];
    [mapCopy extent];
    v42 = [v41 vectorWithCGRect:?];
    [v28 setObject:v42 forKeyedSubscript:@"deltaExtent"];

    [v27 addObject:mapCopy];
  }

  if (v151)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    [v28 setObject:v43 forKeyedSubscript:@"targetIndex"];

    v44 = MEMORY[0x1E695F688];
    [v151 extent];
    v45 = [v44 vectorWithCGRect:?];
    [v28 setObject:v45 forKeyedSubscript:@"targetExtent"];

    v46 = [v151 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
    [v27 addObject:v46];
  }

  [imageCopy extent];
  v152 = 0;
  v47 = [self applyWithExtent:v27 inputs:v28 arguments:&v152 error:?];
  v48 = v152;
  if (v47)
  {
    v49 = [v47 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to apply style" object:self underlyingError:v48];
    *error = v49 = 0;
  }

  return v49;
}

@end