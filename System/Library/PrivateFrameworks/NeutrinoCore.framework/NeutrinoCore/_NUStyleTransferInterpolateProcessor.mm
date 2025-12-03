@interface _NUStyleTransferInterpolateProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)interpolateStyles:(id)styles weights:(id)weights error:(id *)error;
+ (id)roiTileArrayForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation _NUStyleTransferInterpolateProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  v11 = [argumentsCopy objectForKeyedSubscript:@"extent"];
  if (!v11)
  {
    v42 = NUAssertLogger_30110();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style extent!"];
      *buf = 138543362;
      v113 = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_30110();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v71 = MEMORY[0x1E696AF00];
        v72 = v70;
        callStackSymbols = [v71 callStackSymbols];
        v74 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v113 = v70;
        v114 = 2114;
        v115 = v74;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v113 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2725, @"Missing style extent!", v75, v76, v77, v78, v106);
  }

  v12 = v11;
  v111 = outputCopy;
  v13 = [argumentsCopy objectForKeyedSubscript:@"weights"];
  if (!v13)
  {
    v49 = NUAssertLogger_30110();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing weights!"];
      *buf = 138543362;
      v113 = v50;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v52 = NUAssertLogger_30110();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (v51)
    {
      if (v53)
      {
        v79 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        callStackSymbols3 = [v80 callStackSymbols];
        v83 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v113 = v79;
        v114 = 2114;
        v115 = v83;
        _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v113 = v55;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2728, @"Missing weights!", v84, v85, v86, v87, v106);
  }

  v14 = v13;
  if (![inputsCopy count])
  {
    v56 = NUAssertLogger_30110();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Empty inputs"];
      *buf = 138543362;
      v113 = v57;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v59 = NUAssertLogger_30110();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v58)
    {
      if (v60)
      {
        v88 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v89 = MEMORY[0x1E696AF00];
        v90 = v88;
        callStackSymbols5 = [v89 callStackSymbols];
        v92 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v113 = v88;
        v114 = 2114;
        v115 = v92;
        _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v60)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v62 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v113 = v62;
      _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2730, @"Empty inputs", v93, v94, v95, v96, v106);
  }

  v15 = [inputsCopy count];
  if (v15 != [v14 count])
  {
    v63 = NUAssertLogger_30110();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style weights mismatch"];
      *buf = 138543362;
      v113 = v64;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v66 = NUAssertLogger_30110();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    if (v65)
    {
      if (v67)
      {
        v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v98 = MEMORY[0x1E696AF00];
        v99 = v97;
        callStackSymbols7 = [v98 callStackSymbols];
        v101 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v113 = v97;
        v114 = 2114;
        v115 = v101;
        _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v67)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v69 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v113 = v69;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2731, @"Style weights mismatch", v102, v103, v104, v105, v106);
  }

  v16 = [inputsCopy count];
  v109 = v12;
  v110 = argumentsCopy;
  v107 = v14;
  if (v16)
  {
    v17 = 0;
    v18 = 0.0;
    do
    {
      v19 = [v14 objectAtIndexedSubscript:{v17, v107, v109, v110}];
      [v19 doubleValue];
      v18 = v18 + v20;

      ++v17;
    }

    while (v16 != v17);
    v21 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
    v22 = v16 - 1;
    v23 = 1.0;
    do
    {
      v24 = [v14 objectAtIndexedSubscript:v22];
      [v24 doubleValue];
      v26 = v25 / v18;

      v21[v22] = v26 / v23;
      v23 = v23 - v26;
      --v22;
    }

    while (v22 != -1);
  }

  else
  {
    v21 = malloc_type_malloc(0, 0x100004000313F17uLL);
  }

  v27 = [inputsCopy objectAtIndexedSubscript:{0, v107}];
  metalTexture = [v27 metalTexture];
  v29 = v111;
  metalTexture2 = [v111 metalTexture];
  metalCommandBuffer = [v111 metalCommandBuffer];
  [NUCopyKernel copyFromTexture:metalTexture toTexture:metalTexture2 withCommandBuffer:metalCommandBuffer];

  if (v16 >= 2)
  {
    for (i = 1; i != v16; ++i)
    {
      metalTexture3 = [v29 metalTexture];
      v34 = [inputsCopy objectAtIndexedSubscript:i];
      metalTexture4 = [v34 metalTexture];
      v36 = v21[i];
      [v29 metalTexture];
      v38 = v37 = inputsCopy;
      metalCommandBuffer2 = [v29 metalCommandBuffer];
      *&v40 = v36;
      [NUMixKernel mixTexture:metalTexture3 withTexture:metalTexture4 factor:v38 intoTexture:metalCommandBuffer2 withCommandBuffer:v40];

      v29 = v111;
      inputsCopy = v37;
    }
  }

  free(v21);

  return 1;
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
  v39 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v6 = [argumentsCopy objectForKeyedSubscript:@"extent"];
  if (!v6)
  {
    v20 = NUAssertLogger_30110();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style extent!"];
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

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor roiForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2703, @"Missing style extent!", v32, v33, v34, v35, *v36);
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

+ (id)interpolateStyles:(id)styles weights:(id)weights error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  stylesCopy = styles;
  weightsCopy = weights;
  if (![stylesCopy count])
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputStyles.count >= 1"];
      *buf = 138543362;
      v72 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v45;
        v73 = 2114;
        v74 = v49;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor interpolateStyles:weights:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2655, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "inputStyles.count >= 1");
  }

  v10 = [stylesCopy count];
  if (v10 != [weightsCopy count])
  {
    v38 = NUAssertLogger_30110();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputStyles.count == weights.count"];
      *buf = 138543362;
      v72 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_30110();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols3 = [v55 callStackSymbols];
        v58 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v54;
        v73 = 2114;
        v74 = v58;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferInterpolateProcessor interpolateStyles:weights:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2656, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputStyles.count == weights.count");
  }

  firstObject = [stylesCopy firstObject];
  [firstObject extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v20 = stylesCopy;
  v21 = [v20 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v65;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v64 + 1) + 8 * i) extent];
        v78.origin.x = v13;
        v78.origin.y = v15;
        v78.size.width = v17;
        v78.size.height = v19;
        if (!CGRectEqualToRect(v77, v78))
        {
          [NUError mismatchError:@"Style size must be consistent" object:v20];
          *error = v27 = 0;
          v28 = v20;
          goto LABEL_16;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v68[0] = @"extent";
  v25 = [MEMORY[0x1E695F688] vectorWithCGRect:{v13, v15, v17, v19}];
  v68[1] = @"weights";
  v69[0] = v25;
  v69[1] = weightsCopy;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v63 = 0;
  v27 = [self applyWithExtent:v20 inputs:v26 arguments:&v63 error:{v13, v15, v17, v19}];
  v28 = v63;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    *error = [NUError errorWithCode:1 reason:@"Failed to interpolate style" object:self underlyingError:v28];
  }

LABEL_16:

  return v27;
}

@end