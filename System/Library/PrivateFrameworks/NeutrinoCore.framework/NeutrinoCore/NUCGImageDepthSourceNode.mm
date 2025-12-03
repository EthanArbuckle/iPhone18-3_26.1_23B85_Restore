@interface NUCGImageDepthSourceNode
- (NUCGImageDepthSourceNode)initWithSourceNode:(id)node auxiliaryImageType:(int64_t)type auxiliaryImageProperties:(id)properties;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUCGImageDepthSourceNode

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v56[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v21 = NUAssertLogger_10628();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_10628();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 76, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != nil");
  }

  if (!factor)
  {
    v28 = NUAssertLogger_10628();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_10628();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 78, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "subsampleFactor != NULL");
  }

  v9 = optionsCopy;
  *factor = 1;
  v10 = [(NUCGAuxiliaryImageSourceNode *)self _evaluateAuxiliaryImageForType:[(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType] error:error];
  v11 = v10;
  if (v10)
  {
    underlyingAVDepthData = [v10 underlyingAVDepthData];
    v13 = underlyingAVDepthData;
    if (underlyingAVDepthData)
    {
      depthDataMap = [underlyingAVDepthData depthDataMap];
      if (depthDataMap)
      {
        v55[0] = *MEMORY[0x1E695F9A8];
        null = [MEMORY[0x1E695DFB0] null];
        v55[1] = *MEMORY[0x1E695F938];
        v56[0] = null;
        v56[1] = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v17 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:depthDataMap options:v16];
        depthDataMap = v17;
        if (self->_needsAspectRatioCorrection)
        {
          v18 = *&self->_aspectTransform.c;
          *buf = *&self->_aspectTransform.a;
          *&buf[16] = v18;
          v54 = *&self->_aspectTransform.tx;
          v19 = [v17 imageByApplyingTransform:buf];

          depthDataMap = v19;
        }
      }

      else
      {
        *error = [NUError unknownError:@"Unable to convert AVDepthData to disparity" object:self];
      }
    }

    else
    {
      depthDataMap = 0;
    }
  }

  else
  {
    depthDataMap = 0;
  }

  return depthDataMap;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUCGImageDepthSourceNode;
  v6 = [(NUCGAuxiliaryImageSourceNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (NUCGImageDepthSourceNode)initWithSourceNode:(id)node auxiliaryImageType:(int64_t)type auxiliaryImageProperties:(id)properties
{
  v64 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  propertiesCopy = properties;
  if (!nodeCopy)
  {
    v30 = NUAssertLogger_10628();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceNode != nil"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v63, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_10628();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v63.a) = 138543618;
        *(&v63.a + 4) = v44;
        WORD2(v63.b) = 2114;
        *(&v63.b + 6) = v48;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v63, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v63, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 33, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "sourceNode != nil");
  }

  v10 = propertiesCopy;
  if (!propertiesCopy)
  {
    v37 = NUAssertLogger_10628();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "auxiliaryImageProperties != nil"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v63, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_10628();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols3 = [v54 callStackSymbols];
        v57 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(v63.a) = 138543618;
        *(&v63.a + 4) = v53;
        WORD2(v63.b) = 2114;
        *(&v63.b + 6) = v57;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v63, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v63, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 34, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "auxiliaryImageProperties != nil");
  }

  v62.receiver = self;
  v62.super_class = NUCGImageDepthSourceNode;
  v11 = [(NUCGAuxiliaryImageSourceNode *)&v62 initWithSourceNode:nodeCopy auxiliaryImageType:type auxiliaryImageProperties:propertiesCopy];
  *(v11 + 33) = [v10 size];
  *(v11 + 34) = v12;
  v13 = v11 + 272;
  v14 = [nodeCopy pixelSizeWithSourceOptions:MEMORY[0x1E695E0F8]];
  v16 = *(v11 + 33);
  v17 = *(v11 + 34);
  v18 = v15 * v16 / v14;
  v19 = v14 * v17 / v15;
  v20 = vabdd_f64(v19, v16);
  if (vabdd_f64(v18, v17) > 1.0 || v20 > 1.0)
  {
    v11[208] = 1;
    v22 = v14 / v15;
    v23 = v16 / v17;
    v24 = v11 + 216;
    if (v16 / v17 <= v22)
    {
      CGAffineTransformMakeScale(&v63, v22 / v23, 1.0);
      v27 = *&v63.a;
      v28 = *&v63.tx;
      *(v11 + 232) = *&v63.c;
      *(v11 + 248) = v28;
      *v24 = v27;
      v18 = v19;
      v13 = v11 + 264;
    }

    else
    {
      CGAffineTransformMakeScale(&v63, 1.0, v23 / v22);
      v25 = *&v63.a;
      v26 = *&v63.tx;
      *(v11 + 232) = *&v63.c;
      *(v11 + 248) = v26;
      *v24 = v25;
    }

    *v13 = llround(v18);
  }

  return v11;
}

@end