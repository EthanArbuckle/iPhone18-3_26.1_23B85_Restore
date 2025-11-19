@interface NUCGImageDepthSourceNode
- (NUCGImageDepthSourceNode)initWithSourceNode:(id)a3 auxiliaryImageType:(int64_t)a4 auxiliaryImageProperties:(id)a5;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUCGImageDepthSourceNode

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v56[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a5)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 76, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != nil");
  }

  if (!a4)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 78, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "subsampleFactor != NULL");
  }

  v9 = v8;
  *a4 = 1;
  v10 = [(NUCGAuxiliaryImageSourceNode *)self _evaluateAuxiliaryImageForType:[(NUCGAuxiliaryImageSourceNode *)self auxiliaryImageType] error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 underlyingAVDepthData];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 depthDataMap];
      if (v14)
      {
        v55[0] = *MEMORY[0x1E695F9A8];
        v15 = [MEMORY[0x1E695DFB0] null];
        v55[1] = *MEMORY[0x1E695F938];
        v56[0] = v15;
        v56[1] = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v17 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v14 options:v16];
        v14 = v17;
        if (self->_needsAspectRatioCorrection)
        {
          v18 = *&self->_aspectTransform.c;
          *buf = *&self->_aspectTransform.a;
          *&buf[16] = v18;
          v54 = *&self->_aspectTransform.tx;
          v19 = [v17 imageByApplyingTransform:buf];

          v14 = v19;
        }
      }

      else
      {
        *a5 = [NUError unknownError:@"Unable to convert AVDepthData to disparity" object:self];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = NUCGImageDepthSourceNode;
  v6 = [(NUCGAuxiliaryImageSourceNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (NUCGImageDepthSourceNode)initWithSourceNode:(id)a3 auxiliaryImageType:(int64_t)a4 auxiliaryImageProperties:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        LODWORD(v63.a) = 138543618;
        *(&v63.a + 4) = v44;
        WORD2(v63.b) = 2114;
        *(&v63.b + 6) = v48;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v63, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v63, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 33, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "sourceNode != nil");
  }

  v10 = v9;
  if (!v9)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        LODWORD(v63.a) = 138543618;
        *(&v63.a + 4) = v53;
        WORD2(v63.b) = 2114;
        *(&v63.b + 6) = v57;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v63, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      LODWORD(v63.a) = 138543362;
      *(&v63.a + 4) = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v63, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageDepthSourceNode initWithSourceNode:auxiliaryImageType:auxiliaryImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGAuxiliaryImage.m", 34, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "auxiliaryImageProperties != nil");
  }

  v62.receiver = self;
  v62.super_class = NUCGImageDepthSourceNode;
  v11 = [(NUCGAuxiliaryImageSourceNode *)&v62 initWithSourceNode:v8 auxiliaryImageType:a4 auxiliaryImageProperties:v9];
  *(v11 + 33) = [v10 size];
  *(v11 + 34) = v12;
  v13 = v11 + 272;
  v14 = [v8 pixelSizeWithSourceOptions:MEMORY[0x1E695E0F8]];
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