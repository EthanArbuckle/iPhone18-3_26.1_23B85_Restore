@interface NUStyleEngine
+ (id)styleEngineForUsage:(int64_t)a3 withMetalCommandQueue:(id)a4 configuration:(id)a5 tuningParams:(id)a6;
- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientsTextureSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailTextureSize;
- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toBuffer:(id)a5 intensity:(float)a6 error:(id *)a7;
- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toBuffer:(id)a5 rect:(CGRect)a6 imageExtent:(CGRect)a7 intensity:(float)a8 error:(id *)a9;
- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toTexture:(id)a5 intensity:(float)a6 error:(id *)a7;
- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toTexture:(id)a5 rect:(CGRect)a6 imageExtent:(CGRect)a7 intensity:(float)a8 error:(id *)a9;
- (BOOL)generateThumbnailBuffer:(id)a3 fromBuffer:(id)a4 error:(id *)a5;
- (BOOL)generateThumbnailBuffer:(id)a3 fromBuffer:(id)a4 rect:(CGRect)a5 error:(id *)a6;
- (BOOL)generateThumbnailTexture:(id)a3 fromTexture:(id)a4 error:(id *)a5;
- (BOOL)generateThumbnailTexture:(id)a3 fromTexture:(id)a4 rect:(CGRect)a5 error:(id *)a6;
- (BOOL)prepare:(id *)a3;
- (NSDictionary)configuration;
- (NUStyleEngine)init;
- (NUStyleEngine)initWithEngine:(id)a3;
- (id)generateIdentityStyle:(id *)a3;
- (id)generateThumbnailFromBuffer:(id)a3 error:(id *)a4;
- (id)generateThumbnailFromBuffer:(id)a3 rect:(CGRect)a4 error:(id *)a5;
- (id)generateThumbnailFromTexture:(id)a3 error:(id *)a4;
- (id)generateThumbnailFromTexture:(id)a3 rect:(CGRect)a4 error:(id *)a5;
- (id)learnStyleFromBuffer:(id)a3 rect:(CGRect)a4 toBuffer:(id)a5 rect:(CGRect)a6 error:(id *)a7;
- (id)learnStyleFromBuffer:(id)a3 toTexture:(id)a4 error:(id *)a5;
- (id)learnStyleFromTexture:(id)a3 rect:(CGRect)a4 toTexture:(id)a5 rect:(CGRect)a6 error:(id *)a7;
- (id)learnStyleFromTexture:(id)a3 toTexture:(id)a4 error:(id *)a5;
- (id)learnStyleFromThumbnailBuffer:(id)a3 toThumbnailBuffer:(id)a4 error:(id *)a5;
- (id)learnStyleFromThumbnailTexture:(id)a3 toThumbnailTexture:(id)a4 error:(id *)a5;
- (int64_t)usage;
@end

@implementation NUStyleEngine

uint64_t __106___NUStyleEngine_usingSharedStyleEngineForUsage_withMetalCommandQueue_configuration_tuningParams_perform___block_invoke_687(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 processor];
  [v5 setExternalMemoryResource:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) processor];
  v8 = (*(v6 + 16))(v6, v7);

  return v8;
}

- (id)generateIdentityStyle:(id *)a3
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v27 = NUAssertLogger_30110();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", pixelBufferOut, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_30110();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *pixelBufferOut = 138543618;
        *&pixelBufferOut[4] = v41;
        v63 = 2114;
        v64 = v45;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", pixelBufferOut, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", pixelBufferOut, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateIdentityStyle:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3312, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v5 = [(_NUStyleEngine *)self->_engine processor];
  if (!v5)
  {
    v34 = NUAssertLogger_30110();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", pixelBufferOut, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_30110();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *pixelBufferOut = 138543618;
        *&pixelBufferOut[4] = v50;
        v63 = 2114;
        v64 = v54;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", pixelBufferOut, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", pixelBufferOut, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateIdentityStyle:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3315, @"Style Engine not prepared!", v55, v56, v57, v58, v59);
  }

  v6 = v5;
  *pixelBufferOut = 0;
  v7 = [(_NUStyleEngine *)self->_engine configuration];
  v8 = [v7 coefficientPixelBufferSize];
  v10 = v9;

  v11 = [(_NUStyleEngine *)self->_engine configuration];
  if ([v11 usesFloat16])
  {
    v12 = 1278226536;
  }

  else
  {
    v12 = 1278226534;
  }

  v60 = *MEMORY[0x1E69660D8];
  v61 = MEMORY[0x1E695E0F8];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v14 = CVPixelBufferCreate(0, v8, v10, v12, v13, pixelBufferOut);
  if (v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v16 = @"Failed to allocate coefficients pixel buffer";
  }

  else
  {
    v17 = [(_NUStyleEngine *)self->_engine processor];
    v18 = [v17 createIdentityTransformCoefficients:*pixelBufferOut];

    if (!v18)
    {
      v21 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
      v15 = [v21 commandBuffer];

      [v15 commit];
      [v15 waitUntilScheduled];
      v22 = CVPixelBufferLockBaseAddress(*pixelBufferOut, 1uLL);
      if (v22)
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
        [NUError failureError:@"Failed to lock coefficients pixel buffer" object:v23];
        *a3 = v19 = 0;
      }

      else
      {
        v24 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
        v23 = [v24 device];

        v25 = [(_NUStyleEngine *)self->_engine configuration];
        v26 = [v25 coefficientBufferSize];

        v19 = [v23 newBufferWithBytes:CVPixelBufferGetBaseAddress(*pixelBufferOut) length:v26 options:0];
        CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 1uLL);
      }

      goto LABEL_11;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInt:v18];
    v16 = @"Failed to generate identity coefficients";
  }

  [NUError failureError:v16 object:v15];
  *a3 = v19 = 0;
LABEL_11:

  return v19;
}

- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toBuffer:(id)a5 rect:(CGRect)a6 imageExtent:(CGRect)a7 intensity:(float)a8 error:(id *)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a6.size.height;
  v17 = a6.size.width;
  v18 = a6.origin.y;
  v19 = a6.origin.x;
  v109 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  if (!v21)
  {
    v40 = NUAssertLogger_30110();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "styleCoeffsBuffer != nil"];
      *buf = 138543362;
      v106 = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_30110();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v44)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        v71 = [v69 callStackSymbols];
        v72 = [v71 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v68;
        v107 = 2114;
        v108 = v72;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3268, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "styleCoeffsBuffer != nil");
  }

  if (!v22)
  {
    v47 = NUAssertLogger_30110();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnailBuffer != nil"];
      *buf = 138543362;
      v106 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_30110();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v77 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v78 = MEMORY[0x1E696AF00];
        v79 = v77;
        v80 = [v78 callStackSymbols];
        v81 = [v80 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v77;
        v107 = 2114;
        v108 = v81;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3269, @"Invalid parameter not satisfying: %s", v82, v83, v84, v85, "thumbnailBuffer != nil");
  }

  v24 = v23;
  if (!v23)
  {
    v54 = NUAssertLogger_30110();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inoutBuffer != nil"];
      *buf = 138543362;
      v106 = v55;
      _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v57 = NUAssertLogger_30110();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (v56)
    {
      if (v58)
      {
        v86 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v87 = MEMORY[0x1E696AF00];
        v88 = v86;
        v89 = [v87 callStackSymbols];
        v90 = [v89 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v86;
        v107 = 2114;
        v108 = v90;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3270, @"Invalid parameter not satisfying: %s", v91, v92, v93, v94, "inoutBuffer != nil");
  }

  v25 = [(_NUStyleEngine *)self->_engine processor];
  if (!v25)
  {
    v61 = NUAssertLogger_30110();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v106 = v62;
      _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v64 = NUAssertLogger_30110();
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      if (v65)
      {
        v95 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v96 = MEMORY[0x1E696AF00];
        v97 = v95;
        v98 = [v96 callStackSymbols];
        v99 = [v98 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v95;
        v107 = 2114;
        v108 = v99;
        _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v65)
    {
      v66 = [MEMORY[0x1E696AF00] callStackSymbols];
      v67 = [v66 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v67;
      _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3273, @"Style Engine not prepared!", v100, v101, v102, v103, v104);
  }

  v26 = v25;
  [v25 setImageSize:{width, height}];
  [v26 setInputThumbnailPixelBuffer:{objc_msgSend(v22, "CVPixelBuffer")}];
  [v26 setInputLinearSystemCoefficientsBuffer:v21];
  [v26 setInputPixelBuffer:{objc_msgSend(v24, "CVPixelBuffer")}];
  v27 = -x;
  v28 = -y;
  v29 = [v24 size];
  [v24 size];
  v31 = v30;
  [v26 setInputImageRect:{v27, v28, v29, v30}];
  *&v32 = a8;
  [v26 setApplicationStrengthFactor:v32];
  [v26 setOutputPixelBuffer:{objc_msgSend(v24, "CVPixelBuffer")}];
  [v26 setOutputImageRect:{v27, v28, v29, v31}];
  v110.origin.x = v19;
  v110.origin.y = v18;
  v110.size.width = v17;
  v110.size.height = v16;
  v111 = CGRectOffset(v110, v27, v28);
  [v26 setRegionToRender:{v111.origin.x, v111.origin.y, v111.size.width, v111.size.height}];
  v33 = [v26 prepareToProcess:6];
  if (v33)
  {
    v34 = v33;
    v35 = @"Failed to prepare StyleEngine (apply)";
  }

  else
  {
    v36 = [v26 process];
    if (!v36)
    {
      v38 = 1;
      goto LABEL_10;
    }

    v34 = v36;
    v35 = @"Failed to process StyleEngine (apply)";
  }

  v37 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  *a9 = [NUError failureError:v35 object:v37];

  v38 = 0;
LABEL_10:

  return v38;
}

- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toBuffer:(id)a5 intensity:(float)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v12 size];
  [v12 size];
  *&v18 = a6;
  LOBYTE(a7) = [(NUStyleEngine *)self applyStyle:v14 thumbnail:v13 toBuffer:v12 rect:a7 imageExtent:0.0 intensity:0.0 error:v15, v16, 0.0, 0.0, v15, v16, v18];

  return a7;
}

- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toTexture:(id)a5 rect:(CGRect)a6 imageExtent:(CGRect)a7 intensity:(float)a8 error:(id *)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a6.size.height;
  v17 = a6.size.width;
  v18 = a6.origin.y;
  v19 = a6.origin.x;
  v108 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  if (!v21)
  {
    v39 = NUAssertLogger_30110();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "styleCoeffsBuffer != nil"];
      *buf = 138543362;
      v105 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_30110();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v43)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v67;
        v106 = 2114;
        v107 = v71;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3211, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "styleCoeffsBuffer != nil");
  }

  if (!v22)
  {
    v46 = NUAssertLogger_30110();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnailTexture != nil"];
      *buf = 138543362;
      v105 = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_30110();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v50)
      {
        v76 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        v79 = [v77 callStackSymbols];
        v80 = [v79 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v76;
        v106 = 2114;
        v107 = v80;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3212, @"Invalid parameter not satisfying: %s", v81, v82, v83, v84, "thumbnailTexture != nil");
  }

  v24 = v23;
  if (!v23)
  {
    v53 = NUAssertLogger_30110();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inoutTexture != nil"];
      *buf = 138543362;
      v105 = v54;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v56 = NUAssertLogger_30110();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (v55)
    {
      if (v57)
      {
        v85 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v86 = MEMORY[0x1E696AF00];
        v87 = v85;
        v88 = [v86 callStackSymbols];
        v89 = [v88 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v85;
        v106 = 2114;
        v107 = v89;
        _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v57)
    {
      v58 = [MEMORY[0x1E696AF00] callStackSymbols];
      v59 = [v58 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v59;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3213, @"Invalid parameter not satisfying: %s", v90, v91, v92, v93, "inoutTexture != nil");
  }

  v25 = [(_NUStyleEngine *)self->_engine processor];
  if (!v25)
  {
    v60 = NUAssertLogger_30110();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v105 = v61;
      _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v63 = NUAssertLogger_30110();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (v62)
    {
      if (v64)
      {
        v94 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        v97 = [v95 callStackSymbols];
        v98 = [v97 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v94;
        v106 = 2114;
        v107 = v98;
        _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v64)
    {
      v65 = [MEMORY[0x1E696AF00] callStackSymbols];
      v66 = [v65 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v66;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3216, @"Style Engine not prepared!", v99, v100, v101, v102, v103);
  }

  v26 = v25;
  [v25 setImageSize:{width, height}];
  [v26 setInputThumbnailTexture:v22];
  [v26 setInputLinearSystemCoefficientsBuffer:v21];
  [v26 setInputTexture:v24];
  v27 = -x;
  v28 = -y;
  v29 = [v24 width];
  v30 = [v24 height];
  [v26 setInputImageRect:{v27, v28, v29, v30}];
  *&v31 = a8;
  [v26 setApplicationStrengthFactor:v31];
  [v26 setOutputTexture:v24];
  [v26 setOutputImageRect:{v27, v28, v29, v30}];
  v109.origin.x = v19;
  v109.origin.y = v18;
  v109.size.width = v17;
  v109.size.height = v16;
  v110 = CGRectOffset(v109, v27, v28);
  [v26 setRegionToRender:{v110.origin.x, v110.origin.y, v110.size.width, v110.size.height}];
  v32 = [v26 prepareToProcess:6];
  if (v32)
  {
    v33 = v32;
    v34 = @"Failed to prepare StyleEngine (apply)";
  }

  else
  {
    v35 = [v26 process];
    if (!v35)
    {
      v37 = 1;
      goto LABEL_10;
    }

    v33 = v35;
    v34 = @"Failed to process StyleEngine (apply)";
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  *a9 = [NUError failureError:v34 object:v36];

  v37 = 0;
LABEL_10:

  return v37;
}

- (BOOL)applyStyle:(id)a3 thumbnail:(id)a4 toTexture:(id)a5 intensity:(float)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v12 width];
  v16 = [v12 height];
  *&v18 = a6;
  LOBYTE(a7) = [(NUStyleEngine *)self applyStyle:v14 thumbnail:v13 toTexture:v12 rect:a7 imageExtent:0.0 intensity:0.0 error:v15, v16, 0.0, 0.0, v15, v16, v18];

  return a7;
}

- (id)learnStyleFromThumbnailBuffer:(id)a3 toThumbnailBuffer:(id)a4 error:(id *)a5
{
  v132 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceThumbnailBuffer != nil"];
      *buf = 138543362;
      v129 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        v76 = [v74 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v73;
        v130 = 2114;
        v131 = v77;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3144, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "sourceThumbnailBuffer != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v38 = NUAssertLogger_30110();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetThumbnailBuffer != nil"];
      *buf = 138543362;
      v129 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_30110();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v82 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v83 = MEMORY[0x1E696AF00];
        v84 = v82;
        v85 = [v83 callStackSymbols];
        v86 = [v85 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v82;
        v130 = 2114;
        v131 = v86;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3145, @"Invalid parameter not satisfying: %s", v87, v88, v89, v90, "targetThumbnailBuffer != nil");
  }

  if (!a5)
  {
    v45 = NUAssertLogger_30110();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v129 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_30110();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        v91 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v92 = MEMORY[0x1E696AF00];
        v93 = v91;
        v94 = [v92 callStackSymbols];
        v95 = [v94 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v91;
        v130 = 2114;
        v131 = v95;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3146, @"Invalid parameter not satisfying: %s", v96, v97, v98, v99, "error != NULL");
  }

  v11 = [(NUStyleEngine *)self thumbnailTextureSize];
  v13 = v12;
  v14 = [v8 size];
  if (v14 != v11 || (v16 = v15, v15 != v13))
  {
    v52 = NUAssertLogger_30110();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeEqualToSize(sourceThumbnailBuffer.size, thumbnailSize)"];
      *buf = 138543362;
      v129 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_30110();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (v54)
    {
      if (v56)
      {
        v100 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v101 = MEMORY[0x1E696AF00];
        v102 = v100;
        v103 = [v101 callStackSymbols];
        v104 = [v103 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v100;
        v130 = 2114;
        v131 = v104;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3148, @"Invalid parameter not satisfying: %s", v105, v106, v107, v108, "NUPixelSizeEqualToSize(sourceThumbnailBuffer.size, thumbnailSize)");
  }

  if ([v10 size] != v14 || v17 != v16)
  {
    v59 = NUAssertLogger_30110();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeEqualToSize(targetThumbnailBuffer.size, thumbnailSize)"];
      *buf = 138543362;
      v129 = v60;
      _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v62 = NUAssertLogger_30110();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (v61)
    {
      if (v63)
      {
        v109 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v110 = MEMORY[0x1E696AF00];
        v111 = v109;
        v112 = [v110 callStackSymbols];
        v113 = [v112 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v109;
        v130 = 2114;
        v131 = v113;
        _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      v64 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [v64 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v65;
      _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3149, @"Invalid parameter not satisfying: %s", v114, v115, v116, v117, "NUPixelSizeEqualToSize(targetThumbnailBuffer.size, thumbnailSize)");
  }

  v18 = [(_NUStyleEngine *)self->_engine processor];
  if (!v18)
  {
    v66 = NUAssertLogger_30110();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v129 = v67;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v69 = NUAssertLogger_30110();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
    if (v68)
    {
      if (v70)
      {
        v118 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v119 = MEMORY[0x1E696AF00];
        v120 = v118;
        v121 = [v119 callStackSymbols];
        v122 = [v121 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v118;
        v130 = 2114;
        v131 = v122;
        _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v70)
    {
      v71 = [MEMORY[0x1E696AF00] callStackSymbols];
      v72 = [v71 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v72;
      _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3152, @"Style Engine not prepared!", v123, v124, v125, v126, v127);
  }

  v19 = v18;
  v20 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  v21 = [v20 device];

  v22 = [(_NUStyleEngine *)self->_engine configuration];
  v23 = [v22 coefficientBufferSize];

  v24 = [v21 newBufferWithLength:v23 options:0];
  [v19 setInputThumbnailPixelBuffer:{objc_msgSend(v8, "CVPixelBuffer")}];
  [v19 setTargetThumbnailPixelBuffer:{objc_msgSend(v10, "CVPixelBuffer")}];
  [v19 setOutputLinearSystemCoefficientsBuffer:v24];
  v25 = [v19 prepareToProcess:1];
  if (v25)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:v25];
    v27 = @"Failed to prepare StyleEngine (learn)";
LABEL_13:
    *a5 = [NUError failureError:v27 object:v26];

    v29 = 0;
    goto LABEL_14;
  }

  v28 = [v19 process];
  if (v28)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:v28];
    v27 = @"Failed to process StyleEngine (learn)";
    goto LABEL_13;
  }

  v29 = v24;
LABEL_14:

  return v29;
}

- (id)learnStyleFromBuffer:(id)a3 rect:(CGRect)a4 toBuffer:(id)a5 rect:(CGRect)a6 error:(id *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a4.size.height;
  v14 = a4.size.width;
  v15 = a4.origin.y;
  v16 = a4.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  if (!v18)
  {
    v28 = NUAssertLogger_30110();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != nil"];
      *buf = 138543362;
      v80 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_30110();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v49;
        v81 = 2114;
        v82 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3114, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceBuffer != nil");
  }

  v20 = v19;
  if (!v19)
  {
    v35 = NUAssertLogger_30110();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetBuffer != nil"];
      *buf = 138543362;
      v80 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_30110();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v58;
        v81 = 2114;
        v82 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3115, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "targetBuffer != nil");
  }

  if (!a7)
  {
    v42 = NUAssertLogger_30110();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v80 = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_30110();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v67;
        v81 = 2114;
        v82 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3116, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "error != NULL");
  }

  v78 = 0;
  v21 = [(NUStyleEngine *)self generateThumbnailFromBuffer:v18 rect:&v78 error:v16, v15, v14, v13];
  v22 = v78;
  if (v21)
  {
    v77 = 0;
    v23 = [(NUStyleEngine *)self generateThumbnailFromBuffer:v20 rect:&v77 error:x, y, width, height];
    v24 = v77;

    if (v23)
    {
      v76 = 0;
      v25 = [(NUStyleEngine *)self learnStyleFromThumbnailBuffer:v21 toThumbnailBuffer:v23 error:&v76];
      v22 = v76;

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        *a7 = [NUError errorWithCode:1 reason:@"Failed to learn style" object:0 underlyingError:v22];
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate target thumbnail" object:v20 underlyingError:v24];
      *a7 = v25 = 0;
      v22 = v24;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate source thumbnail" object:v18 underlyingError:v22];
    *a7 = v25 = 0;
  }

  return v25;
}

- (id)learnStyleFromBuffer:(id)a3 toTexture:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a4;
  v11 = a3;
  v12 = [v11 size];
  [v11 size];
  v14 = v13;
  v15 = [v10 size];
  [v10 size];
  v17 = [(NUStyleEngine *)self learnStyleFromBuffer:v11 rect:v10 toBuffer:a5 rect:v8 error:v9, v12, v14, v8, v9, v15, v16];

  return v17;
}

- (id)learnStyleFromThumbnailTexture:(id)a3 toThumbnailTexture:(id)a4 error:(id *)a5
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v41 = NUAssertLogger_30110();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceThumbnailTexture != nil"];
      *buf = 138543362;
      v125 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_30110();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v87 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v88 = MEMORY[0x1E696AF00];
        v89 = v87;
        v90 = [v88 callStackSymbols];
        v91 = [v90 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v87;
        v126 = 2114;
        v127 = v91;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3068, @"Invalid parameter not satisfying: %s", v92, v93, v94, v95, "sourceThumbnailTexture != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v48 = NUAssertLogger_30110();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetThumbnailTexture != nil"];
      *buf = 138543362;
      v125 = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v51 = NUAssertLogger_30110();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v52)
      {
        v96 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v97 = MEMORY[0x1E696AF00];
        v98 = v96;
        v99 = [v97 callStackSymbols];
        v100 = [v99 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v96;
        v126 = 2114;
        v127 = v100;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      v53 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3069, @"Invalid parameter not satisfying: %s", v101, v102, v103, v104, "targetThumbnailTexture != nil");
  }

  if (!a5)
  {
    v55 = NUAssertLogger_30110();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v125 = v56;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v58 = NUAssertLogger_30110();
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
    if (v57)
    {
      if (v59)
      {
        v105 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v106 = MEMORY[0x1E696AF00];
        v107 = v105;
        v108 = [v106 callStackSymbols];
        v109 = [v108 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v105;
        v126 = 2114;
        v127 = v109;
        _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      v60 = [MEMORY[0x1E696AF00] callStackSymbols];
      v61 = [v60 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v61;
      _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3070, @"Invalid parameter not satisfying: %s", v110, v111, v112, v113, "error != NULL");
  }

  v11 = [(NUStyleEngine *)self thumbnailTextureSize];
  v13 = v12;
  if ([v8 width] != v11 || objc_msgSend(v8, "height") != v13)
  {
    v27 = NUAssertLogger_30110();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceThumbnailTexture.width == (NSUInteger)thumbnailSize.width && sourceThumbnailTexture.height == (NSUInteger)thumbnailSize.height"];
      *buf = 138543362;
      v125 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_30110();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        v65 = [v63 callStackSymbols];
        v66 = [v65 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v62;
        v126 = 2114;
        v127 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3072, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "sourceThumbnailTexture.width == (NSUInteger)thumbnailSize.width && sourceThumbnailTexture.height == (NSUInteger)thumbnailSize.height");
  }

  if ([v10 width] != v11 || objc_msgSend(v10, "height") != v13)
  {
    v34 = NUAssertLogger_30110();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetThumbnailTexture.width == (NSUInteger)thumbnailSize.width && targetThumbnailTexture.height == (NSUInteger)thumbnailSize.height"];
      *buf = 138543362;
      v125 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_30110();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v71;
        v126 = 2114;
        v127 = v75;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3073, @"Invalid parameter not satisfying: %s", v76, v77, v78, v79, "targetThumbnailTexture.width == (NSUInteger)thumbnailSize.width && targetThumbnailTexture.height == (NSUInteger)thumbnailSize.height");
  }

  v14 = [(_NUStyleEngine *)self->_engine processor];
  if (!v14)
  {
    v80 = NUAssertLogger_30110();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v125 = v81;
      _os_log_error_impl(&dword_1C0184000, v80, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v82 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v83 = NUAssertLogger_30110();
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
    if (v82)
    {
      if (v84)
      {
        v114 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v115 = MEMORY[0x1E696AF00];
        v116 = v114;
        v117 = [v115 callStackSymbols];
        v118 = [v117 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v114;
        v126 = 2114;
        v127 = v118;
        _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v84)
    {
      v85 = [MEMORY[0x1E696AF00] callStackSymbols];
      v86 = [v85 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v86;
      _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3076, @"Style Engine not prepared!", v119, v120, v121, v122, v123);
  }

  v15 = v14;
  v16 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  v17 = [v16 device];

  v18 = [(_NUStyleEngine *)self->_engine configuration];
  v19 = [v18 coefficientBufferSize];

  v20 = [v17 newBufferWithLength:v19 options:0];
  [v15 setInputThumbnailTexture:v8];
  [v15 setTargetThumbnailTexture:v10];
  [v15 setOutputLinearSystemCoefficientsBuffer:v20];
  v21 = [v15 prepareToProcess:1];
  if (v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
    v23 = @"Failed to prepare StyleEngine (learn)";
LABEL_13:
    *a5 = [NUError failureError:v23 object:v22];

    v25 = 0;
    goto LABEL_14;
  }

  v24 = [v15 process];
  if (v24)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v24];
    v23 = @"Failed to process StyleEngine (learn)";
    goto LABEL_13;
  }

  v25 = v20;
LABEL_14:

  return v25;
}

- (id)learnStyleFromTexture:(id)a3 rect:(CGRect)a4 toTexture:(id)a5 rect:(CGRect)a6 error:(id *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a4.size.height;
  v14 = a4.size.width;
  v15 = a4.origin.y;
  v16 = a4.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  if (!v18)
  {
    v28 = NUAssertLogger_30110();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceTexture != nil"];
      *buf = 138543362;
      v80 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_30110();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v49;
        v81 = 2114;
        v82 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3038, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceTexture != nil");
  }

  v20 = v19;
  if (!v19)
  {
    v35 = NUAssertLogger_30110();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetTexture != nil"];
      *buf = 138543362;
      v80 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_30110();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v58;
        v81 = 2114;
        v82 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3039, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "targetTexture != nil");
  }

  if (!a7)
  {
    v42 = NUAssertLogger_30110();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v80 = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_30110();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v67;
        v81 = 2114;
        v82 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3040, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "error != NULL");
  }

  v78 = 0;
  v21 = [(NUStyleEngine *)self generateThumbnailFromTexture:v18 rect:&v78 error:v16, v15, v14, v13];
  v22 = v78;
  if (v21)
  {
    v77 = 0;
    v23 = [(NUStyleEngine *)self generateThumbnailFromTexture:v20 rect:&v77 error:x, y, width, height];
    v24 = v77;

    if (v23)
    {
      v76 = 0;
      v25 = [(NUStyleEngine *)self learnStyleFromThumbnailTexture:v21 toThumbnailTexture:v23 error:&v76];
      v22 = v76;

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        *a7 = [NUError errorWithCode:1 reason:@"Failed to learn style" object:0 underlyingError:v22];
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate target thumbnail" object:v20 underlyingError:v24];
      *a7 = v25 = 0;
      v22 = v24;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate source thumbnail" object:v18 underlyingError:v22];
    *a7 = v25 = 0;
  }

  return v25;
}

- (id)learnStyleFromTexture:(id)a3 toTexture:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a4;
  v11 = a3;
  v12 = -[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:](self, "learnStyleFromTexture:rect:toTexture:rect:error:", v11, v10, a5, v8, v9, [v11 width], objc_msgSend(v11, "height"), v8, v9, objc_msgSend(v10, "width"), objc_msgSend(v10, "height"));

  return v12;
}

- (BOOL)generateThumbnailBuffer:(id)a3 fromBuffer:(id)a4 rect:(CGRect)a5 error:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v82 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (!v14)
  {
    v28 = NUAssertLogger_30110();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != nil"];
      *buf = 138543362;
      v79 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_30110();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v49;
        v80 = 2114;
        v81 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3005, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceBuffer != nil");
  }

  if (!v13)
  {
    v35 = NUAssertLogger_30110();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnailBuffer != nil"];
      *buf = 138543362;
      v79 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_30110();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v58;
        v80 = 2114;
        v81 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3006, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "thumbnailBuffer != nil");
  }

  v15 = v14;
  v16 = [(_NUStyleEngine *)self->_engine processor];
  if (!v16)
  {
    v42 = NUAssertLogger_30110();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v79 = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_30110();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v67;
        v80 = 2114;
        v81 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3009, @"Style Engine not prepared!", v72, v73, v74, v75, v76);
  }

  v17 = v16;
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v20 = [v15 size];
  [v15 size];
  v22 = v21;
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  if (CGRectIsEmpty(v83) || (v84.size.height = v22, v84.size.width = v20, v84.origin.x = v18, v84.origin.y = v19, v85.origin.x = x, v85.origin.y = y, v85.size.width = width, v85.size.height = height, !CGRectContainsRect(v84, v85)))
  {
    *v77 = x;
    *&v77[1] = y;
    *&v77[2] = width;
    *&v77[3] = height;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v77 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v25 = [NUError invalidError:@"Invalid source rect" object:v24];
  }

  else
  {
    v23 = [v17 downScaleInputPixelBuffer:objc_msgSend(v15 withInputCropRect:"CVPixelBuffer") toOutputPixelBuffer:objc_msgSend(v13 copyAttachments:{"CVPixelBuffer"), 0, x, y, width, height}];
    if (!v23)
    {
      v26 = 1;
      goto LABEL_10;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithInt:v23];
    v25 = [NUError failureError:@"Failed to rescale source texture" object:v24];
  }

  *a6 = v25;

  v26 = 0;
LABEL_10:

  return v26;
}

- (BOOL)generateThumbnailBuffer:(id)a3 fromBuffer:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a4;
  v11 = a3;
  v12 = [v10 size];
  [v10 size];
  LOBYTE(a5) = [(NUStyleEngine *)self generateThumbnailBuffer:v11 fromBuffer:v10 rect:a5 error:v8, v9, v12, v13];

  return a5;
}

- (id)generateThumbnailFromBuffer:(id)a3 rect:(CGRect)a4 error:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v79 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!v11)
  {
    v25 = NUAssertLogger_30110();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v76 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_30110();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v46;
        v77 = 2114;
        v78 = v50;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2974, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "buffer != nil");
  }

  if (!a5)
  {
    v32 = NUAssertLogger_30110();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v76 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_30110();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v55;
        v77 = 2114;
        v78 = v59;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2975, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "error != nil");
  }

  v12 = v11;
  v13 = [(_NUStyleEngine *)self->_engine processor];
  if (!v13)
  {
    v39 = NUAssertLogger_30110();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v76 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_30110();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v64;
        v77 = 2114;
        v78 = v68;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2978, @"Style Engine not prepared!", v69, v70, v71, v72, v73);
  }

  v14 = [(_NUStyleEngine *)self->_engine configuration];
  [v14 thumbnailSize];
  v16 = v15;
  v18 = v17;

  v19 = [NUVideoUtilities newPixelBufferOfSize:v16 format:v18, 1380411457];
  v74 = 0;
  if ([(NUStyleEngine *)self generateThumbnailBuffer:v19 fromBuffer:v12 rect:&v74 error:x, y, width, height])
  {
    v20 = v19;
  }

  else
  {
    v21 = v74;
    v22 = [NUError errorWithCode:1 reason:@"Failed to generate thumbnail" object:v12 underlyingError:v21];
    v23 = v22;

    v20 = 0;
    *a5 = v22;
  }

  return v20;
}

- (id)generateThumbnailFromBuffer:(id)a3 error:(id *)a4
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = a3;
  v9 = [v8 size];
  [v8 size];
  v11 = [(NUStyleEngine *)self generateThumbnailFromBuffer:v8 rect:a4 error:v6, v7, v9, v10];

  return v11;
}

- (BOOL)generateThumbnailTexture:(id)a3 fromTexture:(id)a4 rect:(CGRect)a5 error:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v81 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (!v14)
  {
    v27 = NUAssertLogger_30110();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceTexture != nil"];
      *buf = 138543362;
      v78 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_30110();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v48;
        v79 = 2114;
        v80 = v52;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2942, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "sourceTexture != nil");
  }

  if (!v13)
  {
    v34 = NUAssertLogger_30110();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnailTexture != nil"];
      *buf = 138543362;
      v78 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_30110();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v57;
        v79 = 2114;
        v80 = v61;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2943, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "thumbnailTexture != nil");
  }

  v15 = v14;
  v16 = [(_NUStyleEngine *)self->_engine processor];
  if (!v16)
  {
    v41 = NUAssertLogger_30110();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v78 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_30110();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v45)
      {
        v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        v69 = [v67 callStackSymbols];
        v70 = [v69 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v66;
        v79 = 2114;
        v80 = v70;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2946, @"Style Engine not prepared!", v71, v72, v73, v74, v75);
  }

  v17 = v16;
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v20 = [v15 width];
  v21 = [v15 height];
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  if (CGRectIsEmpty(v82) || (v83.size.height = v21, v83.size.width = v20, v83.origin.x = v18, v83.origin.y = v19, v84.origin.x = x, v84.origin.y = y, v84.size.width = width, v84.size.height = height, !CGRectContainsRect(v83, v84)))
  {
    *v76 = x;
    *&v76[1] = y;
    *&v76[2] = width;
    *&v76[3] = height;
    v23 = [MEMORY[0x1E696B098] valueWithBytes:v76 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v24 = [NUError invalidError:@"Invalid source rect" object:v23];
  }

  else
  {
    v22 = [v17 downScaleInputTexture:v15 withInputCropRect:v13 toOutputTexture:{x, y, width, height}];
    if (!v22)
    {
      v25 = 1;
      goto LABEL_10;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v24 = [NUError failureError:@"Failed to rescale source texture" object:v23];
  }

  *a6 = v24;

  v25 = 0;
LABEL_10:

  return v25;
}

- (BOOL)generateThumbnailTexture:(id)a3 fromTexture:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a4;
  v11 = a3;
  LOBYTE(a5) = -[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:](self, "generateThumbnailTexture:fromTexture:rect:error:", v11, v10, a5, v8, v9, [v10 width], objc_msgSend(v10, "height"));

  return a5;
}

- (id)generateThumbnailFromTexture:(id)a3 rect:(CGRect)a4 error:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!v11)
  {
    v29 = NUAssertLogger_30110();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "texture != nil"];
      *buf = 138543362;
      v80 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_30110();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v50;
        v81 = 2114;
        v82 = v54;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2907, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "texture != nil");
  }

  if (!a5)
  {
    v36 = NUAssertLogger_30110();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v80 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_30110();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v59;
        v81 = 2114;
        v82 = v63;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2908, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != nil");
  }

  v12 = v11;
  v13 = [(_NUStyleEngine *)self->_engine processor];
  if (!v13)
  {
    v43 = NUAssertLogger_30110();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Style Engine not prepared!"];
      *buf = 138543362;
      v80 = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_30110();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v47)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        v71 = [v69 callStackSymbols];
        v72 = [v71 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v68;
        v81 = 2114;
        v82 = v72;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      v48 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [v48 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2911, @"Style Engine not prepared!", v73, v74, v75, v76, v77);
  }

  v14 = v13;
  v15 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  v16 = [v15 device];

  v17 = [(_NUStyleEngine *)self->_engine configuration];
  [v17 thumbnailSize];
  v19 = v18;
  v21 = v20;

  v22 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(v12 width:"pixelFormat") height:v19 mipmapped:v21, 0];
  [v22 setUsage:3];
  [v22 setStorageMode:2];
  v23 = [v16 newTextureWithDescriptor:v22];
  v78 = 0;
  if ([(NUStyleEngine *)self generateThumbnailTexture:v23 fromTexture:v12 rect:&v78 error:x, y, width, height])
  {
    v24 = v23;
  }

  else
  {
    v25 = v78;
    v26 = [NUError errorWithCode:1 reason:@"Failed to generate thumbnail" object:v12 underlyingError:v25];
    v27 = v26;

    v24 = 0;
    *a5 = v26;
  }

  return v24;
}

- (id)generateThumbnailFromTexture:(id)a3 error:(id *)a4
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = a3;
  v9 = -[NUStyleEngine generateThumbnailFromTexture:rect:error:](self, "generateThumbnailFromTexture:rect:error:", v8, a4, v6, v7, [v8 width], objc_msgSend(v8, "height"));

  return v9;
}

- (BOOL)prepare:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = NUAssertLogger_30110();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_30110();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2881, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  if ([(_NUStyleEngine *)self->_engine setupProcessor])
  {
    v5 = [_NUStyleEngineMemoryResource alloc];
    v6 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
    v7 = [v6 device];
    v8 = [(_NUStyleEngine *)self->_engine memoryDescriptor];
    v9 = [(_NUStyleEngineMemoryResource *)v5 initWithDevice:v7 descriptor:v8];

    v10 = [(_NUStyleEngineMemoryResource *)v9 setup];
    if (v10)
    {
      v11 = [(_NUStyleEngineMemoryResource *)v9 resource];
      v12 = [(_NUStyleEngine *)self->_engine processor];
      [v12 setExternalMemoryResource:v11];
    }

    else
    {
      *a3 = [NUError failureError:@"Failed to setup Style Engine memory resource" object:self->_engine];
    }
  }

  else
  {
    [NUError failureError:@"Failed to prepare Style Engine processor" object:self->_engine];
    *a3 = v10 = 0;
  }

  return v10;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientsTextureSize
{
  v2 = [(_NUStyleEngine *)self->_engine configuration];
  [v2 coefficientTextureSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailTextureSize
{
  v2 = [(_NUStyleEngine *)self->_engine configuration];
  [v2 thumbnailSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (NSDictionary)configuration
{
  v2 = [(_NUStyleEngine *)self->_engine configuration];
  v3 = [v2 configurationDictionary];

  return v3;
}

- (int64_t)usage
{
  v3 = [(_NUStyleEngine *)self->_engine usage];
  v4 = [v3 isEqualToString:@"learn"];

  if (v4)
  {
    return 0;
  }

  v6 = [(_NUStyleEngine *)self->_engine usage];
  v7 = [v6 isEqualToString:@"learn&apply"];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NUStyleEngine)initWithEngine:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_30110();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "engine != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_30110();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine initWithEngine:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2825, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "engine != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUStyleEngine;
  v6 = [(NUStyleEngine *)&v25 init];
  engine = v6->_engine;
  v6->_engine = v5;

  return v6;
}

- (NUStyleEngine)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUStyleEngine init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2816, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)styleEngineForUsage:(int64_t)a3 withMetalCommandQueue:(id)a4 configuration:(id)a5 tuningParams:(id)a6
{
  if (a3 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E810B910[a3];
  }

  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[_NUStyleEngineConfiguration alloc] initWithConfigurationDictionary:v11];

  v14 = [[_NUStyleEngine alloc] initWithUsage:v9 metalCommandQueue:v12 configuration:v13 tuningParams:v10];
  v15 = [[a1 alloc] initWithEngine:v14];

  return v15;
}

@end