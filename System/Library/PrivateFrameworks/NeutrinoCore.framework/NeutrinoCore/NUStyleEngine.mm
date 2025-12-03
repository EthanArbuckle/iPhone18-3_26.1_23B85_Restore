@interface NUStyleEngine
+ (id)styleEngineForUsage:(int64_t)usage withMetalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params;
- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientsTextureSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)thumbnailTextureSize;
- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toBuffer:(id)buffer intensity:(float)intensity error:(id *)error;
- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toBuffer:(id)buffer rect:(CGRect)rect imageExtent:(CGRect)extent intensity:(float)intensity error:(id *)error;
- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toTexture:(id)texture intensity:(float)intensity error:(id *)error;
- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toTexture:(id)texture rect:(CGRect)rect imageExtent:(CGRect)extent intensity:(float)intensity error:(id *)error;
- (BOOL)generateThumbnailBuffer:(id)buffer fromBuffer:(id)fromBuffer error:(id *)error;
- (BOOL)generateThumbnailBuffer:(id)buffer fromBuffer:(id)fromBuffer rect:(CGRect)rect error:(id *)error;
- (BOOL)generateThumbnailTexture:(id)texture fromTexture:(id)fromTexture error:(id *)error;
- (BOOL)generateThumbnailTexture:(id)texture fromTexture:(id)fromTexture rect:(CGRect)rect error:(id *)error;
- (BOOL)prepare:(id *)prepare;
- (NSDictionary)configuration;
- (NUStyleEngine)init;
- (NUStyleEngine)initWithEngine:(id)engine;
- (id)generateIdentityStyle:(id *)style;
- (id)generateThumbnailFromBuffer:(id)buffer error:(id *)error;
- (id)generateThumbnailFromBuffer:(id)buffer rect:(CGRect)rect error:(id *)error;
- (id)generateThumbnailFromTexture:(id)texture error:(id *)error;
- (id)generateThumbnailFromTexture:(id)texture rect:(CGRect)rect error:(id *)error;
- (id)learnStyleFromBuffer:(id)buffer rect:(CGRect)rect toBuffer:(id)toBuffer rect:(CGRect)a6 error:(id *)error;
- (id)learnStyleFromBuffer:(id)buffer toTexture:(id)texture error:(id *)error;
- (id)learnStyleFromTexture:(id)texture rect:(CGRect)rect toTexture:(id)toTexture rect:(CGRect)a6 error:(id *)error;
- (id)learnStyleFromTexture:(id)texture toTexture:(id)toTexture error:(id *)error;
- (id)learnStyleFromThumbnailBuffer:(id)buffer toThumbnailBuffer:(id)thumbnailBuffer error:(id *)error;
- (id)learnStyleFromThumbnailTexture:(id)texture toThumbnailTexture:(id)thumbnailTexture error:(id *)error;
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

- (id)generateIdentityStyle:(id *)style
{
  v65 = *MEMORY[0x1E69E9840];
  if (!style)
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
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *pixelBufferOut = 138543618;
        *&pixelBufferOut[4] = v41;
        v63 = 2114;
        v64 = v45;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", pixelBufferOut, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", pixelBufferOut, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateIdentityStyle:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3312, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *pixelBufferOut = 138543618;
        *&pixelBufferOut[4] = v50;
        v63 = 2114;
        v64 = v54;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", pixelBufferOut, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", pixelBufferOut, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateIdentityStyle:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3315, @"Style Engine not prepared!", v55, v56, v57, v58, v59);
  }

  v6 = processor;
  *pixelBufferOut = 0;
  configuration = [(_NUStyleEngine *)self->_engine configuration];
  coefficientPixelBufferSize = [configuration coefficientPixelBufferSize];
  v10 = v9;

  configuration2 = [(_NUStyleEngine *)self->_engine configuration];
  if ([configuration2 usesFloat16])
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
  v14 = CVPixelBufferCreate(0, coefficientPixelBufferSize, v10, v12, v13, pixelBufferOut);
  if (v14)
  {
    commandBuffer = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v16 = @"Failed to allocate coefficients pixel buffer";
  }

  else
  {
    processor2 = [(_NUStyleEngine *)self->_engine processor];
    v18 = [processor2 createIdentityTransformCoefficients:*pixelBufferOut];

    if (!v18)
    {
      metalCommandQueue = [(_NUStyleEngine *)self->_engine metalCommandQueue];
      commandBuffer = [metalCommandQueue commandBuffer];

      [commandBuffer commit];
      [commandBuffer waitUntilScheduled];
      v22 = CVPixelBufferLockBaseAddress(*pixelBufferOut, 1uLL);
      if (v22)
      {
        device = [MEMORY[0x1E696AD98] numberWithInt:v22];
        [NUError failureError:@"Failed to lock coefficients pixel buffer" object:device];
        *style = v19 = 0;
      }

      else
      {
        metalCommandQueue2 = [(_NUStyleEngine *)self->_engine metalCommandQueue];
        device = [metalCommandQueue2 device];

        configuration3 = [(_NUStyleEngine *)self->_engine configuration];
        coefficientBufferSize = [configuration3 coefficientBufferSize];

        v19 = [device newBufferWithBytes:CVPixelBufferGetBaseAddress(*pixelBufferOut) length:coefficientBufferSize options:0];
        CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 1uLL);
      }

      goto LABEL_11;
    }

    commandBuffer = [MEMORY[0x1E696AD98] numberWithInt:v18];
    v16 = @"Failed to generate identity coefficients";
  }

  [NUError failureError:v16 object:commandBuffer];
  *style = v19 = 0;
LABEL_11:

  return v19;
}

- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toBuffer:(id)buffer rect:(CGRect)rect imageExtent:(CGRect)extent intensity:(float)intensity error:(id *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v16 = rect.size.height;
  v17 = rect.size.width;
  v18 = rect.origin.y;
  v19 = rect.origin.x;
  v109 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  thumbnailCopy = thumbnail;
  bufferCopy = buffer;
  if (!styleCopy)
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
        callStackSymbols = [v69 callStackSymbols];
        v72 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v68;
        v107 = 2114;
        v108 = v72;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3268, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "styleCoeffsBuffer != nil");
  }

  if (!thumbnailCopy)
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
        callStackSymbols3 = [v78 callStackSymbols];
        v81 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v77;
        v107 = 2114;
        v108 = v81;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3269, @"Invalid parameter not satisfying: %s", v82, v83, v84, v85, "thumbnailBuffer != nil");
  }

  v24 = bufferCopy;
  if (!bufferCopy)
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
        callStackSymbols5 = [v87 callStackSymbols];
        v90 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v86;
        v107 = 2114;
        v108 = v90;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v58)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v60;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3270, @"Invalid parameter not satisfying: %s", v91, v92, v93, v94, "inoutBuffer != nil");
  }

  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols7 = [v96 callStackSymbols];
        v99 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v106 = v95;
        v107 = 2114;
        v108 = v99;
        _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v65)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v67 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v106 = v67;
      _os_log_error_impl(&dword_1C0184000, v64, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toBuffer:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3273, @"Style Engine not prepared!", v100, v101, v102, v103, v104);
  }

  v26 = processor;
  [processor setImageSize:{width, height}];
  [v26 setInputThumbnailPixelBuffer:{objc_msgSend(thumbnailCopy, "CVPixelBuffer")}];
  [v26 setInputLinearSystemCoefficientsBuffer:styleCopy];
  [v26 setInputPixelBuffer:{objc_msgSend(v24, "CVPixelBuffer")}];
  v27 = -x;
  v28 = -y;
  v29 = [v24 size];
  [v24 size];
  v31 = v30;
  [v26 setInputImageRect:{v27, v28, v29, v30}];
  *&v32 = intensity;
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
    process = [v26 process];
    if (!process)
    {
      v38 = 1;
      goto LABEL_10;
    }

    v34 = process;
    v35 = @"Failed to process StyleEngine (apply)";
  }

  v37 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  *error = [NUError failureError:v35 object:v37];

  v38 = 0;
LABEL_10:

  return v38;
}

- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toBuffer:(id)buffer intensity:(float)intensity error:(id *)error
{
  bufferCopy = buffer;
  thumbnailCopy = thumbnail;
  styleCopy = style;
  v15 = [bufferCopy size];
  [bufferCopy size];
  *&v18 = intensity;
  LOBYTE(error) = [(NUStyleEngine *)self applyStyle:styleCopy thumbnail:thumbnailCopy toBuffer:bufferCopy rect:error imageExtent:0.0 intensity:0.0 error:v15, v16, 0.0, 0.0, v15, v16, v18];

  return error;
}

- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toTexture:(id)texture rect:(CGRect)rect imageExtent:(CGRect)extent intensity:(float)intensity error:(id *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v16 = rect.size.height;
  v17 = rect.size.width;
  v18 = rect.origin.y;
  v19 = rect.origin.x;
  v108 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  thumbnailCopy = thumbnail;
  textureCopy = texture;
  if (!styleCopy)
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
        callStackSymbols = [v68 callStackSymbols];
        v71 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v67;
        v106 = 2114;
        v107 = v71;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3211, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "styleCoeffsBuffer != nil");
  }

  if (!thumbnailCopy)
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
        callStackSymbols3 = [v77 callStackSymbols];
        v80 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v76;
        v106 = 2114;
        v107 = v80;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3212, @"Invalid parameter not satisfying: %s", v81, v82, v83, v84, "thumbnailTexture != nil");
  }

  v24 = textureCopy;
  if (!textureCopy)
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
        callStackSymbols5 = [v86 callStackSymbols];
        v89 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v85;
        v106 = 2114;
        v107 = v89;
        _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v57)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v59 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v59;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3213, @"Invalid parameter not satisfying: %s", v90, v91, v92, v93, "inoutTexture != nil");
  }

  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols7 = [v95 callStackSymbols];
        v98 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v105 = v94;
        v106 = 2114;
        v107 = v98;
        _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v64)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v66 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v105 = v66;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine applyStyle:thumbnail:toTexture:rect:imageExtent:intensity:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3216, @"Style Engine not prepared!", v99, v100, v101, v102, v103);
  }

  v26 = processor;
  [processor setImageSize:{width, height}];
  [v26 setInputThumbnailTexture:thumbnailCopy];
  [v26 setInputLinearSystemCoefficientsBuffer:styleCopy];
  [v26 setInputTexture:v24];
  v27 = -x;
  v28 = -y;
  width = [v24 width];
  height = [v24 height];
  [v26 setInputImageRect:{v27, v28, width, height}];
  *&v31 = intensity;
  [v26 setApplicationStrengthFactor:v31];
  [v26 setOutputTexture:v24];
  [v26 setOutputImageRect:{v27, v28, width, height}];
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
    process = [v26 process];
    if (!process)
    {
      v37 = 1;
      goto LABEL_10;
    }

    v33 = process;
    v34 = @"Failed to process StyleEngine (apply)";
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  *error = [NUError failureError:v34 object:v36];

  v37 = 0;
LABEL_10:

  return v37;
}

- (BOOL)applyStyle:(id)style thumbnail:(id)thumbnail toTexture:(id)texture intensity:(float)intensity error:(id *)error
{
  textureCopy = texture;
  thumbnailCopy = thumbnail;
  styleCopy = style;
  width = [textureCopy width];
  height = [textureCopy height];
  *&v18 = intensity;
  LOBYTE(error) = [(NUStyleEngine *)self applyStyle:styleCopy thumbnail:thumbnailCopy toTexture:textureCopy rect:error imageExtent:0.0 intensity:0.0 error:width, height, 0.0, 0.0, width, height, v18];

  return error;
}

- (id)learnStyleFromThumbnailBuffer:(id)buffer toThumbnailBuffer:(id)thumbnailBuffer error:(id *)error
{
  v132 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  thumbnailBufferCopy = thumbnailBuffer;
  if (!bufferCopy)
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
        callStackSymbols = [v74 callStackSymbols];
        v77 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v73;
        v130 = 2114;
        v131 = v77;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3144, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "sourceThumbnailBuffer != nil");
  }

  v10 = thumbnailBufferCopy;
  if (!thumbnailBufferCopy)
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
        callStackSymbols3 = [v83 callStackSymbols];
        v86 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v82;
        v130 = 2114;
        v131 = v86;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3145, @"Invalid parameter not satisfying: %s", v87, v88, v89, v90, "targetThumbnailBuffer != nil");
  }

  if (!error)
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
        callStackSymbols5 = [v92 callStackSymbols];
        v95 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v91;
        v130 = 2114;
        v131 = v95;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3146, @"Invalid parameter not satisfying: %s", v96, v97, v98, v99, "error != NULL");
  }

  thumbnailTextureSize = [(NUStyleEngine *)self thumbnailTextureSize];
  v13 = v12;
  v14 = [bufferCopy size];
  if (v14 != thumbnailTextureSize || (v16 = v15, v15 != v13))
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
        callStackSymbols7 = [v101 callStackSymbols];
        v104 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v100;
        v130 = 2114;
        v131 = v104;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [callStackSymbols8 componentsJoinedByString:@"\n"];
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
        callStackSymbols9 = [v110 callStackSymbols];
        v113 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v109;
        v130 = 2114;
        v131 = v113;
        _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v65;
      _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3149, @"Invalid parameter not satisfying: %s", v114, v115, v116, v117, "NUPixelSizeEqualToSize(targetThumbnailBuffer.size, thumbnailSize)");
  }

  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols11 = [v119 callStackSymbols];
        v122 = [callStackSymbols11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v129 = v118;
        v130 = 2114;
        v131 = v122;
        _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v70)
    {
      callStackSymbols12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v72 = [callStackSymbols12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v129 = v72;
      _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailBuffer:toThumbnailBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3152, @"Style Engine not prepared!", v123, v124, v125, v126, v127);
  }

  v19 = processor;
  metalCommandQueue = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  device = [metalCommandQueue device];

  configuration = [(_NUStyleEngine *)self->_engine configuration];
  coefficientBufferSize = [configuration coefficientBufferSize];

  v24 = [device newBufferWithLength:coefficientBufferSize options:0];
  [v19 setInputThumbnailPixelBuffer:{objc_msgSend(bufferCopy, "CVPixelBuffer")}];
  [v19 setTargetThumbnailPixelBuffer:{objc_msgSend(v10, "CVPixelBuffer")}];
  [v19 setOutputLinearSystemCoefficientsBuffer:v24];
  v25 = [v19 prepareToProcess:1];
  if (v25)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:v25];
    v27 = @"Failed to prepare StyleEngine (learn)";
LABEL_13:
    *error = [NUError failureError:v27 object:v26];

    v29 = 0;
    goto LABEL_14;
  }

  process = [v19 process];
  if (process)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:process];
    v27 = @"Failed to process StyleEngine (learn)";
    goto LABEL_13;
  }

  v29 = v24;
LABEL_14:

  return v29;
}

- (id)learnStyleFromBuffer:(id)buffer rect:(CGRect)rect toBuffer:(id)toBuffer rect:(CGRect)a6 error:(id *)error
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  if (!bufferCopy)
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
        callStackSymbols = [v50 callStackSymbols];
        v53 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v49;
        v81 = 2114;
        v82 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3114, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceBuffer != nil");
  }

  v20 = toBufferCopy;
  if (!toBufferCopy)
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
        callStackSymbols3 = [v59 callStackSymbols];
        v62 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v58;
        v81 = 2114;
        v82 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3115, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "targetBuffer != nil");
  }

  if (!error)
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
        callStackSymbols5 = [v68 callStackSymbols];
        v71 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v67;
        v81 = 2114;
        v82 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromBuffer:rect:toBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3116, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "error != NULL");
  }

  v78 = 0;
  v21 = [(NUStyleEngine *)self generateThumbnailFromBuffer:bufferCopy rect:&v78 error:v16, v15, v14, v13];
  v22 = v78;
  if (v21)
  {
    v77 = 0;
    height = [(NUStyleEngine *)self generateThumbnailFromBuffer:v20 rect:&v77 error:x, y, width, height];
    v24 = v77;

    if (height)
    {
      v76 = 0;
      v25 = [(NUStyleEngine *)self learnStyleFromThumbnailBuffer:v21 toThumbnailBuffer:height error:&v76];
      v22 = v76;

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        *error = [NUError errorWithCode:1 reason:@"Failed to learn style" object:0 underlyingError:v22];
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate target thumbnail" object:v20 underlyingError:v24];
      *error = v25 = 0;
      v22 = v24;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate source thumbnail" object:bufferCopy underlyingError:v22];
    *error = v25 = 0;
  }

  return v25;
}

- (id)learnStyleFromBuffer:(id)buffer toTexture:(id)texture error:(id *)error
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  textureCopy = texture;
  bufferCopy = buffer;
  v12 = [bufferCopy size];
  [bufferCopy size];
  v14 = v13;
  v15 = [textureCopy size];
  [textureCopy size];
  v17 = [(NUStyleEngine *)self learnStyleFromBuffer:bufferCopy rect:textureCopy toBuffer:error rect:v8 error:v9, v12, v14, v8, v9, v15, v16];

  return v17;
}

- (id)learnStyleFromThumbnailTexture:(id)texture toThumbnailTexture:(id)thumbnailTexture error:(id *)error
{
  v128 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  thumbnailTextureCopy = thumbnailTexture;
  if (!textureCopy)
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
        callStackSymbols = [v88 callStackSymbols];
        v91 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v87;
        v126 = 2114;
        v127 = v91;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3068, @"Invalid parameter not satisfying: %s", v92, v93, v94, v95, "sourceThumbnailTexture != nil");
  }

  v10 = thumbnailTextureCopy;
  if (!thumbnailTextureCopy)
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
        callStackSymbols3 = [v97 callStackSymbols];
        v100 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v96;
        v126 = 2114;
        v127 = v100;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3069, @"Invalid parameter not satisfying: %s", v101, v102, v103, v104, "targetThumbnailTexture != nil");
  }

  if (!error)
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
        callStackSymbols5 = [v106 callStackSymbols];
        v109 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v105;
        v126 = 2114;
        v127 = v109;
        _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v61 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v61;
      _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3070, @"Invalid parameter not satisfying: %s", v110, v111, v112, v113, "error != NULL");
  }

  thumbnailTextureSize = [(NUStyleEngine *)self thumbnailTextureSize];
  v13 = v12;
  if ([textureCopy width] != thumbnailTextureSize || objc_msgSend(textureCopy, "height") != v13)
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
        callStackSymbols7 = [v63 callStackSymbols];
        v66 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v62;
        v126 = 2114;
        v127 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3072, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "sourceThumbnailTexture.width == (NSUInteger)thumbnailSize.width && sourceThumbnailTexture.height == (NSUInteger)thumbnailSize.height");
  }

  if ([v10 width] != thumbnailTextureSize || objc_msgSend(v10, "height") != v13)
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
        callStackSymbols9 = [v72 callStackSymbols];
        v75 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v71;
        v126 = 2114;
        v127 = v75;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3073, @"Invalid parameter not satisfying: %s", v76, v77, v78, v79, "targetThumbnailTexture.width == (NSUInteger)thumbnailSize.width && targetThumbnailTexture.height == (NSUInteger)thumbnailSize.height");
  }

  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols11 = [v115 callStackSymbols];
        v118 = [callStackSymbols11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v125 = v114;
        v126 = 2114;
        v127 = v118;
        _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v84)
    {
      callStackSymbols12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v86 = [callStackSymbols12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v125 = v86;
      _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromThumbnailTexture:toThumbnailTexture:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3076, @"Style Engine not prepared!", v119, v120, v121, v122, v123);
  }

  v15 = processor;
  metalCommandQueue = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  device = [metalCommandQueue device];

  configuration = [(_NUStyleEngine *)self->_engine configuration];
  coefficientBufferSize = [configuration coefficientBufferSize];

  v20 = [device newBufferWithLength:coefficientBufferSize options:0];
  [v15 setInputThumbnailTexture:textureCopy];
  [v15 setTargetThumbnailTexture:v10];
  [v15 setOutputLinearSystemCoefficientsBuffer:v20];
  v21 = [v15 prepareToProcess:1];
  if (v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
    v23 = @"Failed to prepare StyleEngine (learn)";
LABEL_13:
    *error = [NUError failureError:v23 object:v22];

    v25 = 0;
    goto LABEL_14;
  }

  process = [v15 process];
  if (process)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:process];
    v23 = @"Failed to process StyleEngine (learn)";
    goto LABEL_13;
  }

  v25 = v20;
LABEL_14:

  return v25;
}

- (id)learnStyleFromTexture:(id)texture rect:(CGRect)rect toTexture:(id)toTexture rect:(CGRect)a6 error:(id *)error
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  toTextureCopy = toTexture;
  if (!textureCopy)
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
        callStackSymbols = [v50 callStackSymbols];
        v53 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v49;
        v81 = 2114;
        v82 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3038, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceTexture != nil");
  }

  v20 = toTextureCopy;
  if (!toTextureCopy)
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
        callStackSymbols3 = [v59 callStackSymbols];
        v62 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v58;
        v81 = 2114;
        v82 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3039, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "targetTexture != nil");
  }

  if (!error)
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
        callStackSymbols5 = [v68 callStackSymbols];
        v71 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v67;
        v81 = 2114;
        v82 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3040, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "error != NULL");
  }

  v78 = 0;
  v21 = [(NUStyleEngine *)self generateThumbnailFromTexture:textureCopy rect:&v78 error:v16, v15, v14, v13];
  v22 = v78;
  if (v21)
  {
    v77 = 0;
    height = [(NUStyleEngine *)self generateThumbnailFromTexture:v20 rect:&v77 error:x, y, width, height];
    v24 = v77;

    if (height)
    {
      v76 = 0;
      v25 = [(NUStyleEngine *)self learnStyleFromThumbnailTexture:v21 toThumbnailTexture:height error:&v76];
      v22 = v76;

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        *error = [NUError errorWithCode:1 reason:@"Failed to learn style" object:0 underlyingError:v22];
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate target thumbnail" object:v20 underlyingError:v24];
      *error = v25 = 0;
      v22 = v24;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate source thumbnail" object:textureCopy underlyingError:v22];
    *error = v25 = 0;
  }

  return v25;
}

- (id)learnStyleFromTexture:(id)texture toTexture:(id)toTexture error:(id *)error
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  toTextureCopy = toTexture;
  textureCopy = texture;
  v12 = -[NUStyleEngine learnStyleFromTexture:rect:toTexture:rect:error:](self, "learnStyleFromTexture:rect:toTexture:rect:error:", textureCopy, toTextureCopy, error, v8, v9, [textureCopy width], objc_msgSend(textureCopy, "height"), v8, v9, objc_msgSend(toTextureCopy, "width"), objc_msgSend(toTextureCopy, "height"));

  return v12;
}

- (BOOL)generateThumbnailBuffer:(id)buffer fromBuffer:(id)fromBuffer rect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v82 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  fromBufferCopy = fromBuffer;
  if (!fromBufferCopy)
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
        callStackSymbols = [v50 callStackSymbols];
        v53 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v49;
        v80 = 2114;
        v81 = v53;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3005, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "sourceBuffer != nil");
  }

  if (!bufferCopy)
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
        callStackSymbols3 = [v59 callStackSymbols];
        v62 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v58;
        v80 = 2114;
        v81 = v62;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3006, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "thumbnailBuffer != nil");
  }

  v15 = fromBufferCopy;
  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols5 = [v68 callStackSymbols];
        v71 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v67;
        v80 = 2114;
        v81 = v71;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailBuffer:fromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 3009, @"Style Engine not prepared!", v72, v73, v74, v75, v76);
  }

  v17 = processor;
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
    v23 = [v17 downScaleInputPixelBuffer:objc_msgSend(v15 withInputCropRect:"CVPixelBuffer") toOutputPixelBuffer:objc_msgSend(bufferCopy copyAttachments:{"CVPixelBuffer"), 0, x, y, width, height}];
    if (!v23)
    {
      v26 = 1;
      goto LABEL_10;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithInt:v23];
    v25 = [NUError failureError:@"Failed to rescale source texture" object:v24];
  }

  *error = v25;

  v26 = 0;
LABEL_10:

  return v26;
}

- (BOOL)generateThumbnailBuffer:(id)buffer fromBuffer:(id)fromBuffer error:(id *)error
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  fromBufferCopy = fromBuffer;
  bufferCopy = buffer;
  v12 = [fromBufferCopy size];
  [fromBufferCopy size];
  LOBYTE(error) = [(NUStyleEngine *)self generateThumbnailBuffer:bufferCopy fromBuffer:fromBufferCopy rect:error error:v8, v9, v12, v13];

  return error;
}

- (id)generateThumbnailFromBuffer:(id)buffer rect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v79 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if (!bufferCopy)
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
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v46;
        v77 = 2114;
        v78 = v50;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2974, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "buffer != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v56 callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v55;
        v77 = 2114;
        v78 = v59;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2975, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "error != nil");
  }

  v12 = bufferCopy;
  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols5 = [v65 callStackSymbols];
        v68 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v64;
        v77 = 2114;
        v78 = v68;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromBuffer:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2978, @"Style Engine not prepared!", v69, v70, v71, v72, v73);
  }

  configuration = [(_NUStyleEngine *)self->_engine configuration];
  [configuration thumbnailSize];
  v16 = v15;
  v18 = v17;

  1380411457 = [NUVideoUtilities newPixelBufferOfSize:v16 format:v18, 1380411457];
  v74 = 0;
  if ([(NUStyleEngine *)self generateThumbnailBuffer:1380411457 fromBuffer:v12 rect:&v74 error:x, y, width, height])
  {
    v20 = 1380411457;
  }

  else
  {
    v21 = v74;
    v22 = [NUError errorWithCode:1 reason:@"Failed to generate thumbnail" object:v12 underlyingError:v21];
    v23 = v22;

    v20 = 0;
    *error = v22;
  }

  return v20;
}

- (id)generateThumbnailFromBuffer:(id)buffer error:(id *)error
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  bufferCopy = buffer;
  v9 = [bufferCopy size];
  [bufferCopy size];
  v11 = [(NUStyleEngine *)self generateThumbnailFromBuffer:bufferCopy rect:error error:v6, v7, v9, v10];

  return v11;
}

- (BOOL)generateThumbnailTexture:(id)texture fromTexture:(id)fromTexture rect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v81 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  fromTextureCopy = fromTexture;
  if (!fromTextureCopy)
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
        callStackSymbols = [v49 callStackSymbols];
        v52 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v48;
        v79 = 2114;
        v80 = v52;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2942, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "sourceTexture != nil");
  }

  if (!textureCopy)
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
        callStackSymbols3 = [v58 callStackSymbols];
        v61 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v57;
        v79 = 2114;
        v80 = v61;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2943, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "thumbnailTexture != nil");
  }

  v15 = fromTextureCopy;
  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols5 = [v67 callStackSymbols];
        v70 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v66;
        v79 = 2114;
        v80 = v70;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2946, @"Style Engine not prepared!", v71, v72, v73, v74, v75);
  }

  v17 = processor;
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  width = [v15 width];
  height = [v15 height];
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  if (CGRectIsEmpty(v82) || (v83.size.height = height, v83.size.width = width, v83.origin.x = v18, v83.origin.y = v19, v84.origin.x = x, v84.origin.y = y, v84.size.width = width, v84.size.height = height, !CGRectContainsRect(v83, v84)))
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
    v22 = [v17 downScaleInputTexture:v15 withInputCropRect:textureCopy toOutputTexture:{x, y, width, height}];
    if (!v22)
    {
      v25 = 1;
      goto LABEL_10;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v24 = [NUError failureError:@"Failed to rescale source texture" object:v23];
  }

  *error = v24;

  v25 = 0;
LABEL_10:

  return v25;
}

- (BOOL)generateThumbnailTexture:(id)texture fromTexture:(id)fromTexture error:(id *)error
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  fromTextureCopy = fromTexture;
  textureCopy = texture;
  LOBYTE(error) = -[NUStyleEngine generateThumbnailTexture:fromTexture:rect:error:](self, "generateThumbnailTexture:fromTexture:rect:error:", textureCopy, fromTextureCopy, error, v8, v9, [fromTextureCopy width], objc_msgSend(fromTextureCopy, "height"));

  return error;
}

- (id)generateThumbnailFromTexture:(id)texture rect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  if (!textureCopy)
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
        callStackSymbols = [v51 callStackSymbols];
        v54 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v50;
        v81 = 2114;
        v82 = v54;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2907, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "texture != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v60 callStackSymbols];
        v63 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v59;
        v81 = 2114;
        v82 = v63;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2908, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != nil");
  }

  v12 = textureCopy;
  processor = [(_NUStyleEngine *)self->_engine processor];
  if (!processor)
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
        callStackSymbols5 = [v69 callStackSymbols];
        v72 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v68;
        v81 = 2114;
        v82 = v72;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine generateThumbnailFromTexture:rect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2911, @"Style Engine not prepared!", v73, v74, v75, v76, v77);
  }

  v14 = processor;
  metalCommandQueue = [(_NUStyleEngine *)self->_engine metalCommandQueue];
  device = [metalCommandQueue device];

  configuration = [(_NUStyleEngine *)self->_engine configuration];
  [configuration thumbnailSize];
  v19 = v18;
  v21 = v20;

  v22 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(v12 width:"pixelFormat") height:v19 mipmapped:v21, 0];
  [v22 setUsage:3];
  [v22 setStorageMode:2];
  v23 = [device newTextureWithDescriptor:v22];
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
    *error = v26;
  }

  return v24;
}

- (id)generateThumbnailFromTexture:(id)texture error:(id *)error
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  textureCopy = texture;
  v9 = -[NUStyleEngine generateThumbnailFromTexture:rect:error:](self, "generateThumbnailFromTexture:rect:error:", textureCopy, error, v6, v7, [textureCopy width], objc_msgSend(textureCopy, "height"));

  return v9;
}

- (BOOL)prepare:(id *)prepare
{
  v34 = *MEMORY[0x1E69E9840];
  if (!prepare)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2881, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  if ([(_NUStyleEngine *)self->_engine setupProcessor])
  {
    v5 = [_NUStyleEngineMemoryResource alloc];
    metalCommandQueue = [(_NUStyleEngine *)self->_engine metalCommandQueue];
    device = [metalCommandQueue device];
    memoryDescriptor = [(_NUStyleEngine *)self->_engine memoryDescriptor];
    v9 = [(_NUStyleEngineMemoryResource *)v5 initWithDevice:device descriptor:memoryDescriptor];

    setup = [(_NUStyleEngineMemoryResource *)v9 setup];
    if (setup)
    {
      resource = [(_NUStyleEngineMemoryResource *)v9 resource];
      processor = [(_NUStyleEngine *)self->_engine processor];
      [processor setExternalMemoryResource:resource];
    }

    else
    {
      *prepare = [NUError failureError:@"Failed to setup Style Engine memory resource" object:self->_engine];
    }
  }

  else
  {
    [NUError failureError:@"Failed to prepare Style Engine processor" object:self->_engine];
    *prepare = setup = 0;
  }

  return setup;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientsTextureSize
{
  configuration = [(_NUStyleEngine *)self->_engine configuration];
  [configuration coefficientTextureSize];
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
  configuration = [(_NUStyleEngine *)self->_engine configuration];
  [configuration thumbnailSize];
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
  configuration = [(_NUStyleEngine *)self->_engine configuration];
  configurationDictionary = [configuration configurationDictionary];

  return configurationDictionary;
}

- (int64_t)usage
{
  usage = [(_NUStyleEngine *)self->_engine usage];
  v4 = [usage isEqualToString:@"learn"];

  if (v4)
  {
    return 0;
  }

  usage2 = [(_NUStyleEngine *)self->_engine usage];
  v7 = [usage2 isEqualToString:@"learn&apply"];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NUStyleEngine)initWithEngine:(id)engine
{
  v30 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  if (!engineCopy)
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
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleEngine initWithEngine:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2825, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "engine != nil");
  }

  v5 = engineCopy;
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
  _NUAssertFailHandler("[NUStyleEngine init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2816, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)styleEngineForUsage:(int64_t)usage withMetalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params
{
  if (usage > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E810B910[usage];
  }

  paramsCopy = params;
  configurationCopy = configuration;
  queueCopy = queue;
  v13 = [[_NUStyleEngineConfiguration alloc] initWithConfigurationDictionary:configurationCopy];

  v14 = [[_NUStyleEngine alloc] initWithUsage:v9 metalCommandQueue:queueCopy configuration:v13 tuningParams:paramsCopy];
  v15 = [[self alloc] initWithEngine:v14];

  return v15;
}

@end