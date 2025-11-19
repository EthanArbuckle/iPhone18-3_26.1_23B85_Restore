@interface _NUStyleTransferProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)applyStyleFromInputThumbnail:(id)a3 targetThumbnail:(id)a4 toImage:(id)a5 colorSpace:(id)a6 configuration:(id)a7 tuningParameters:(id)a8 error:(id *)a9;
+ (id)roiTileArrayForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
@end

@implementation _NUStyleTransferProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v134 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count] != 3)
  {
    v63 = NUAssertLogger_30110();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count == 3"];
      *buf = 138543362;
      v131 = v64;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v66 = NUAssertLogger_30110();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v67)
      {
        v77 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v78 = MEMORY[0x1E696AF00];
        v79 = v77;
        v80 = [v78 callStackSymbols];
        v81 = [v80 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v131 = v77;
        v132 = 2114;
        v133 = v81;
        _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v67)
    {
      v68 = [MEMORY[0x1E696AF00] callStackSymbols];
      v69 = [v68 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v131 = v69;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2132, @"Invalid parameter not satisfying: %s", v82, v83, v84, v85, "inputs.count == 3");
  }

  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = [v9 objectAtIndexedSubscript:1];
  v14 = [v9 objectAtIndexedSubscript:2];
  v15 = [v10 objectForKeyedSubscript:@"thumbExtent"];
  if (!v15)
  {
    v70 = NUAssertLogger_30110();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
      *buf = 138543362;
      v131 = v71;
      _os_log_error_impl(&dword_1C0184000, v70, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v73 = NUAssertLogger_30110();
    v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (v72)
    {
      if (v74)
      {
        v86 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v87 = MEMORY[0x1E696AF00];
        v88 = v86;
        v89 = [v87 callStackSymbols];
        v90 = [v89 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v131 = v86;
        v132 = 2114;
        v133 = v90;
        _os_log_error_impl(&dword_1C0184000, v73, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v74)
    {
      v75 = [MEMORY[0x1E696AF00] callStackSymbols];
      v76 = [v75 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v131 = v76;
      _os_log_error_impl(&dword_1C0184000, v73, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2143, @"Missing thumbnail extent!", v91, v92, v93, v94, v111);
  }

  v16 = v15;
  [v12 region];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v16 CGRectValue];
  v140.origin.x = v25;
  v140.origin.y = v26;
  v140.size.width = v27;
  v140.size.height = v28;
  v135.origin.x = v18;
  v135.origin.y = v20;
  v135.size.width = v22;
  v135.size.height = v24;
  if (!CGRectEqualToRect(v135, v140))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v60 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v131 = v16;
    v61 = "*** Invalid thumbnail input extent: %{public}@";
    goto LABEL_17;
  }

  [v13 region];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v16 CGRectValue];
  v141.origin.x = v37;
  v141.origin.y = v38;
  v141.size.width = v39;
  v141.size.height = v40;
  v136.origin.x = v30;
  v136.origin.y = v32;
  v136.size.width = v34;
  v136.size.height = v36;
  if (!CGRectEqualToRect(v136, v141))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v60 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v131 = v16;
    v61 = "*** Invalid target input extent: %{public}@";
LABEL_17:
    _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, v61, buf, 0xCu);
LABEL_14:
    v59 = 0;
    goto LABEL_15;
  }

  v41 = [v10 objectForKeyedSubscript:@"imageExtent"];
  [v41 CGRectValue];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v137.origin.x = v43;
  v137.origin.y = v45;
  v137.size.width = v47;
  v137.size.height = v49;
  if (CGRectIsEmpty(v137))
  {
    v95 = NUAssertLogger_30110();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image extent!"];
      *buf = 138543362;
      v131 = v96;
      _os_log_error_impl(&dword_1C0184000, v95, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v98 = NUAssertLogger_30110();
    v99 = os_log_type_enabled(v98, OS_LOG_TYPE_ERROR);
    if (v97)
    {
      if (v99)
      {
        v102 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v103 = MEMORY[0x1E696AF00];
        v104 = v102;
        v105 = [v103 callStackSymbols];
        v106 = [v105 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v131 = v102;
        v132 = 2114;
        v133 = v106;
        _os_log_error_impl(&dword_1C0184000, v98, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v99)
    {
      v100 = [MEMORY[0x1E696AF00] callStackSymbols];
      v101 = [v100 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v131 = v101;
      _os_log_error_impl(&dword_1C0184000, v98, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2153, @"Missing image extent!", v107, v108, v109, v110, v111);
  }

  [v11 region];
  v142.origin.x = v43;
  v142.origin.y = v45;
  v142.size.width = v47;
  v142.size.height = v49;
  v139 = CGRectIntersection(v138, v142);
  x = v139.origin.x;
  y = v139.origin.y;
  width = v139.size.width;
  height = v139.size.height;
  v114 = [v11 metalCommandBuffer];
  [v114 commandQueue];
  v113 = v54 = a1;
  v112 = [v10 objectForKeyedSubscript:@"config"];
  v55 = [v10 objectForKeyedSubscript:@"tuning"];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __70___NUStyleTransferProcessor_processWithInputs_arguments_output_error___block_invoke;
  v115[3] = &unk_1E810B850;
  v116 = v16;
  v117 = v12;
  v118 = v13;
  v121 = v43;
  v122 = v45;
  v123 = v47;
  v124 = v49;
  v125 = x;
  v126 = y;
  v127 = width;
  v128 = height;
  v119 = v14;
  v120 = v11;
  v129 = v54;
  v56 = v12;
  v57 = v13;
  v58 = v55;
  v59 = [_NUStyleEngine usingSharedStyleEngineForUsage:@"learn&apply" withMetalCommandQueue:v113 configuration:v112 tuningParams:v55 perform:v115];

  v13 = v57;
  v12 = v56;

LABEL_15:
  return v59;
}

+ (id)roiTileArrayForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v8[1] = *MEMORY[0x1E69E9840];
  [a1 roiForInput:*&a3 arguments:a4 outputRect:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v5 = [MEMORY[0x1E695F688] vectorWithCGRect:?];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v41 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = v10;
  if (a3 <= 1)
  {
    v12 = [v10 objectForKeyedSubscript:@"thumbExtent"];
    if (!v12)
    {
      v22 = NUAssertLogger_30110();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail extent!"];
        *v38 = 138543362;
        *&v38[4] = v23;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v38, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v25 = NUAssertLogger_30110();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v30 = MEMORY[0x1E696AF00];
          v31 = v29;
          v32 = [v30 callStackSymbols];
          v33 = [v32 componentsJoinedByString:@"\n"];
          *v38 = 138543618;
          *&v38[4] = v29;
          v39 = 2114;
          v40 = v33;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v38, 0x16u);
        }
      }

      else if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *v38 = 138543362;
        *&v38[4] = v28;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v38, 0xCu);
      }

      _NUAssertFailHandler("+[_NUStyleTransferProcessor roiForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2109, @"Missing thumbnail extent!", v34, v35, v36, v37, *v38);
    }

    v13 = v12;
    [v12 CGRectValue];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (id)applyStyleFromInputThumbnail:(id)a3 targetThumbnail:(id)a4 toImage:(id)a5 colorSpace:(id)a6 configuration:(id)a7 tuningParameters:(id)a8 error:(id *)a9
{
  v152 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!v15)
  {
    v47 = NUAssertLogger_30110();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputThumbnail != nil"];
      *buf = 138543362;
      v149 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_30110();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v51)
      {
        v89 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v90 = MEMORY[0x1E696AF00];
        v91 = v89;
        v92 = [v90 callStackSymbols];
        v93 = [v92 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v89;
        v150 = 2114;
        v151 = v93;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2050, @"Invalid parameter not satisfying: %s", v94, v95, v96, v97, "inputThumbnail != nil");
  }

  if (!v16)
  {
    v54 = NUAssertLogger_30110();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetThumbnail != nil"];
      *buf = 138543362;
      v149 = v55;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v57 = NUAssertLogger_30110();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (v56)
    {
      if (v58)
      {
        v98 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v99 = MEMORY[0x1E696AF00];
        v100 = v98;
        v101 = [v99 callStackSymbols];
        v102 = [v101 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v98;
        v150 = 2114;
        v151 = v102;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2051, @"Invalid parameter not satisfying: %s", v103, v104, v105, v106, "targetThumbnail != nil");
  }

  if (!v17)
  {
    v61 = NUAssertLogger_30110();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v149 = v62;
      _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v64 = NUAssertLogger_30110();
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      if (v65)
      {
        v107 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v108 = MEMORY[0x1E696AF00];
        v109 = v107;
        v110 = [v108 callStackSymbols];
        v111 = [v110 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v107;
        v150 = 2114;
        v151 = v111;
        _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v65)
    {
      v66 = [MEMORY[0x1E696AF00] callStackSymbols];
      v67 = [v66 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v67;
      _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2052, @"Invalid parameter not satisfying: %s", v112, v113, v114, v115, "inputImage != nil");
  }

  if (!v18)
  {
    v68 = NUAssertLogger_30110();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v149 = v69;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v71 = NUAssertLogger_30110();
    v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
    if (v70)
    {
      if (v72)
      {
        v116 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v117 = MEMORY[0x1E696AF00];
        v118 = v116;
        v119 = [v117 callStackSymbols];
        v120 = [v119 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v116;
        v150 = 2114;
        v151 = v120;
        _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v72)
    {
      v73 = [MEMORY[0x1E696AF00] callStackSymbols];
      v74 = [v73 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v74;
      _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2053, @"Invalid parameter not satisfying: %s", v121, v122, v123, v124, "colorSpace != nil");
  }

  if (!v19)
  {
    v75 = NUAssertLogger_30110();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v149 = v76;
      _os_log_error_impl(&dword_1C0184000, v75, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v77 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v78 = NUAssertLogger_30110();
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
    if (v77)
    {
      if (v79)
      {
        v125 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v126 = MEMORY[0x1E696AF00];
        v127 = v125;
        v128 = [v126 callStackSymbols];
        v129 = [v128 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v125;
        v150 = 2114;
        v151 = v129;
        _os_log_error_impl(&dword_1C0184000, v78, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v79)
    {
      v80 = [MEMORY[0x1E696AF00] callStackSymbols];
      v81 = [v80 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v81;
      _os_log_error_impl(&dword_1C0184000, v78, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2054, @"Invalid parameter not satisfying: %s", v130, v131, v132, v133, "config != nil");
  }

  v21 = v20;
  if (!v20)
  {
    v82 = NUAssertLogger_30110();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tuningParams != nil"];
      *buf = 138543362;
      v149 = v83;
      _os_log_error_impl(&dword_1C0184000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v84 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v85 = NUAssertLogger_30110();
    v86 = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);
    if (v84)
    {
      if (v86)
      {
        v134 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v135 = MEMORY[0x1E696AF00];
        v136 = v134;
        v137 = [v135 callStackSymbols];
        v138 = [v137 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v134;
        v150 = 2114;
        v151 = v138;
        _os_log_error_impl(&dword_1C0184000, v85, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v86)
    {
      v87 = [MEMORY[0x1E696AF00] callStackSymbols];
      v88 = [v87 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v88;
      _os_log_error_impl(&dword_1C0184000, v85, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor applyStyleFromInputThumbnail:targetThumbnail:toImage:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2055, @"Invalid parameter not satisfying: %s", v139, v140, v141, v142, "tuningParams != nil");
  }

  [v15 extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v16 extent];
  v155.origin.x = v30;
  v155.origin.y = v31;
  v155.size.width = v32;
  v155.size.height = v33;
  v154.origin.x = v23;
  v154.origin.y = v25;
  v154.size.width = v27;
  v154.size.height = v29;
  if (CGRectEqualToRect(v154, v155))
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v35 = [v15 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v18, "CGColorSpace")}];
    [v34 addObject:v35];

    v36 = [v16 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v18, "CGColorSpace")}];
    [v34 addObject:v36];

    v37 = [v17 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v18, "CGColorSpace")}];
    [v34 addObject:v37];

    v145[0] = @"tuning";
    v145[1] = @"config";
    v146[0] = v21;
    v146[1] = v19;
    v143 = v19;
    v145[2] = @"thumbExtent";
    v38 = MEMORY[0x1E695F688];
    [v15 extent];
    v39 = [v38 vectorWithCGRect:?];
    v146[2] = v39;
    v145[3] = @"imageExtent";
    v40 = MEMORY[0x1E695F688];
    [v17 extent];
    v41 = [v40 vectorWithCGRect:?];
    v146[3] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:4];

    [v17 extent];
    v144 = 0;
    v43 = [a1 applyWithExtent:v34 inputs:v42 arguments:&v144 error:?];
    v44 = v144;
    if (v43)
    {
      v45 = [v43 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v18, "CGColorSpace")}];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to apply style" object:a1 underlyingError:v44];
      *a9 = v45 = 0;
    }

    v19 = v143;
  }

  else
  {
    v147[0] = v15;
    v147[1] = v16;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
    [NUError mismatchError:@"target size must match thumbnail size" object:v34];
    *a9 = v45 = 0;
  }

  return v45;
}

@end