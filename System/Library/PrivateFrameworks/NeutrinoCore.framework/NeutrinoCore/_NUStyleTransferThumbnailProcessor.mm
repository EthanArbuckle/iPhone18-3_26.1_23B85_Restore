@interface _NUStyleTransferThumbnailProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)generateThumbnailForImage:(id)a3 targetSize:(id)a4 colorSpace:(id)a5 configuration:(id)a6 tuningParameters:(id)a7 error:(id *)a8;
+ (id)roiTileArrayForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
@end

@implementation _NUStyleTransferThumbnailProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] != 1)
  {
    v29 = NUAssertLogger_30110();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs.count == 1"];
      *buf = 138543362;
      v66 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_30110();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v43;
        v67 = 2114;
        v68 = v47;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2276, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "inputs.count == 1");
  }

  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v9 objectForKeyedSubscript:@"imageExtent"];
  [v12 CGRectValue];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v70.origin.x = v14;
  v70.origin.y = v16;
  v70.size.width = v18;
  v70.size.height = v20;
  if (CGRectIsEmpty(v70))
  {
    v36 = NUAssertLogger_30110();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image extent!"];
      *buf = 138543362;
      v66 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_30110();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v52;
        v67 = 2114;
        v68 = v56;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor processWithInputs:arguments:output:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2280, @"Missing image extent!", v57, v58, v59, v60, v61);
  }

  v21 = [v9 objectForKeyedSubscript:@"config"];
  v22 = [v9 objectForKeyedSubscript:@"tuning"];
  v23 = [v10 metalCommandBuffer];
  v24 = [v23 commandQueue];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __79___NUStyleTransferThumbnailProcessor_processWithInputs_arguments_output_error___block_invoke;
  v62[3] = &unk_1E810B878;
  v63 = v11;
  v64 = v10;
  v25 = v10;
  v26 = v11;
  v27 = [_NUStyleEngine usingSharedStyleEngineForUsage:@"apply" withMetalCommandQueue:v24 configuration:v21 tuningParams:v22 perform:v62];

  return v27;
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
  v69 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:@"imageExtent"];
  [v10 CGRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v70.origin.x = v12;
  v70.origin.y = v14;
  v70.size.width = v16;
  v70.size.height = v18;
  if (CGRectIsEmpty(v70))
  {
    v32 = NUAssertLogger_30110();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image extent"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_30110();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v48;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v52;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor roiForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2241, @"Missing image extent", v53, v54, v55, v56, v66);
  }

  v19 = [v9 objectForKeyedSubscript:@"config"];
  v20 = [v19 objectForKeyedSubscript:@"thumbnailWidth"];
  v21 = [v20 integerValue];

  v22 = [v19 objectForKeyedSubscript:@"thumbnailHeight"];
  v23 = [v22 integerValue];

  if ((v23 | v21) < 0)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    v66 = @"(width >= 0) && (height >= 0)";
    [v39 handleFailureInFunction:v40 file:@"NUGeometryPrimitives.h" lineNumber:38 description:@"Invalid parameter not satisfying: %@"];

    if (!v21)
    {
LABEL_12:
      v41 = NUAssertLogger_30110();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail size"];
        LODWORD(buf.origin.x) = 138543362;
        *(&buf.origin.x + 4) = v42;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v44 = NUAssertLogger_30110();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        if (v45)
        {
          v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v58 = MEMORY[0x1E696AF00];
          v59 = v57;
          v60 = [v58 callStackSymbols];
          v61 = [v60 componentsJoinedByString:@"\n"];
          LODWORD(buf.origin.x) = 138543618;
          *(&buf.origin.x + 4) = v57;
          WORD2(buf.origin.y) = 2114;
          *(&buf.origin.y + 6) = v61;
          _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v45)
      {
        v46 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543362;
        *(&buf.origin.x + 4) = v47;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor roiForInput:arguments:outputRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2246, @"Missing thumbnail size", v62, v63, v64, v65, v66);
    }
  }

  else if (!v21)
  {
    goto LABEL_12;
  }

  if (!v23)
  {
    goto LABEL_12;
  }

  buf.origin.x = x;
  buf.origin.y = y;
  buf.size.width = width;
  buf.size.height = height;
  NU::RectT<long>::RectT(&v67, &buf, 3);
  buf = v67;
  NU::RectT<long>::grow(&buf, 1, 1);
  v71.origin.x = v12 + *&buf.origin.x / v21 * v16;
  v71.origin.y = v14 + *&buf.origin.y / v23 * v18;
  v71.size.width = *&buf.size.width / v21 * v16;
  v71.size.height = *&buf.size.height / v23 * v18;
  v72 = CGRectIntegral(v71);
  v75.origin.x = v12;
  v75.origin.y = v14;
  v75.size.width = v16;
  v75.size.height = v18;
  v73 = CGRectIntersection(v72, v75);
  v24 = v73.origin.x;
  v25 = v73.origin.y;
  v26 = v73.size.width;
  v27 = v73.size.height;

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

+ (id)generateThumbnailForImage:(id)a3 targetSize:(id)a4 colorSpace:(id)a5 configuration:(id)a6 tuningParameters:(id)a7 error:(id *)a8
{
  var1 = a4.var1;
  var0 = a4.var0;
  v102 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v14)
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *buf = 138543362;
      v99 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v59;
        v100 = 2114;
        v101 = v63;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor generateThumbnailForImage:targetSize:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2193, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "inputImage != nil");
  }

  if (!v15)
  {
    v38 = NUAssertLogger_30110();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v99 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_30110();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        v71 = [v69 callStackSymbols];
        v72 = [v71 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v68;
        v100 = 2114;
        v101 = v72;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor generateThumbnailForImage:targetSize:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2194, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "colorSpace != nil");
  }

  if (!v16)
  {
    v45 = NUAssertLogger_30110();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v99 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_30110();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        v77 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v78 = MEMORY[0x1E696AF00];
        v79 = v77;
        v80 = [v78 callStackSymbols];
        v81 = [v80 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v77;
        v100 = 2114;
        v101 = v81;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor generateThumbnailForImage:targetSize:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2195, @"Invalid parameter not satisfying: %s", v82, v83, v84, v85, "config != nil");
  }

  v18 = v17;
  if (!v17)
  {
    v52 = NUAssertLogger_30110();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tuningParams != nil"];
      *buf = 138543362;
      v99 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_30110();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (v54)
    {
      if (v56)
      {
        v86 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v87 = MEMORY[0x1E696AF00];
        v88 = v86;
        v89 = [v87 callStackSymbols];
        v90 = [v89 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v86;
        v100 = 2114;
        v101 = v90;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferThumbnailProcessor generateThumbnailForImage:targetSize:colorSpace:configuration:tuningParameters:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2196, @"Invalid parameter not satisfying: %s", v91, v92, v93, v94, "tuningParams != nil");
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v20 = [v14 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v15, "CGColorSpace")}];
  [v19 addObject:v20];

  v21 = var0;
  v22 = var1;
  v96[0] = @"tuning";
  v96[1] = @"config";
  v97[0] = v18;
  v97[1] = v16;
  v96[2] = @"thumbExtent";
  v23 = [MEMORY[0x1E695F688] vectorWithCGRect:{0.0, 0.0, var0, var1}];
  v97[2] = v23;
  v96[3] = @"imageExtent";
  v24 = MEMORY[0x1E695F688];
  [v14 extent];
  v25 = [v24 vectorWithCGRect:?];
  v97[3] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:4];

  v95 = 0;
  v27 = [a1 applyWithExtent:v19 inputs:v26 arguments:&v95 error:{0.0, 0.0, v21, v22}];
  v28 = v95;
  if (v27)
  {
    v29 = [v27 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v15, "CGColorSpace")}];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate thumbnail" object:a1 underlyingError:v28];
    *a8 = v29 = 0;
  }

  return v29;
}

@end