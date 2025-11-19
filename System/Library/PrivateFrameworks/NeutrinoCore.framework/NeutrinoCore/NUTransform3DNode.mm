@interface NUTransform3DNode
- (NUTransform3DNode)initWithSettings:(id)a3 inputs:(id)a4;
- (NUTransform3DNode)initWithTransform3D:(id)a3 input:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_transformWithError:(id *)a3;
- (id)debugQuickLookObject;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUTransform3DNode

- (id)_transformWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = NUAssertLogger_27316();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_27316();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTransform3DNode _transformWithError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 433, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "error != nil");
  }

  transform = self->_transform;

  return transform;
}

- (id)debugQuickLookObject
{
  if ([(NURenderNode *)self isCached])
  {
    v5.receiver = self;
    v5.super_class = NUTransform3DNode;
    v3 = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    v3 = [(NUTransform3DNode *)self _evaluateImage:&v6];
  }

  return v3;
}

- (id)_evaluateImage:(id *)a3
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v52 = NUAssertLogger_27316();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_27316();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        buf[0].i32[0] = 138543618;
        *(buf[0].i64 + 4) = v59;
        buf[0].i16[6] = 2114;
        *(&buf[0].i64[1] + 6) = v63;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTransform3DNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 349, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v5 = *MEMORY[0x1E695FAB0];
  v6 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v91 = 0;
  v7 = [v6 outputImage:&v91];
  v8 = v91;
  if (v7)
  {
    v90 = 0;
    v9 = [v6 outputImageGeometry:&v90];
    v10 = v90;

    if (v9)
    {
      if ([v9 renderScale] < 1 || v11 <= 0)
      {
        v68 = NUAssertLogger_27316();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
          buf[0].i32[0] = 138543362;
          *(buf[0].i64 + 4) = v69;
          _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v71 = NUAssertLogger_27316();
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
        if (v70)
        {
          if (v72)
          {
            v75 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v76 = MEMORY[0x1E696AF00];
            v77 = v75;
            v78 = [v76 callStackSymbols];
            v79 = [v78 componentsJoinedByString:@"\n"];
            buf[0].i32[0] = 138543618;
            *(buf[0].i64 + 4) = v75;
            buf[0].i16[6] = 2114;
            *(&buf[0].i64[1] + 6) = v79;
            _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v72)
        {
          v73 = [MEMORY[0x1E696AF00] callStackSymbols];
          v74 = [v73 componentsJoinedByString:@"\n"];
          buf[0].i32[0] = 138543362;
          *(buf[0].i64 + 4) = v74;
          _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUTransform3DNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 374, @"Invalid render scale", v80, v81, v82, v83, v84);
      }

      v85 = a3;
      v89 = v10;
      v13 = [v9 renderScale];
      v15 = NUScaleToDouble(v13, v14);
      memset(buf, 0, sizeof(buf));
      [v9 extent];
      [(NUImageTransform3D *)self->_transform transformPoint:buf[0].i64[0], buf[0].i64[1]];
      v17 = v16;
      v19 = v18;
      [(NUImageTransform3D *)self->_transform transformPoint:(buf[1].i64[0] + buf[0].i64[0]), buf[0].i64[1]];
      v21 = v20;
      v23 = v22;
      [(NUImageTransform3D *)self->_transform transformPoint:buf[0].i64[0], (buf[1].i64[1] + buf[0].i64[1])];
      v25 = v24;
      v27 = v26;
      [(NUImageTransform3D *)self->_transform transformPoint:vcvtq_f64_s64(vaddq_s64(buf[1], buf[0]))];
      v28 = v15 * v17;
      v29 = v15 * v19;
      v30 = v15 * v21;
      v31 = v15 * v23;
      v32 = v15 * v25;
      v33 = v15 * v27;
      v35 = v15 * v34;
      v37 = v15 * v36;
      v38 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v32, v33}];
      v39 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v35, v37}];
      v40 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v30, v31}];
      v41 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v28, v29}];
      v42 = MEMORY[0x1E695F648];
      v92[0] = @"inputTopLeft";
      v92[1] = @"inputTopRight";
      v88 = v38;
      v93[0] = v38;
      v93[1] = v39;
      v92[2] = @"inputBottomRight";
      v92[3] = @"inputBottomLeft";
      v86 = v41;
      v87 = v40;
      v93[2] = v40;
      v93[3] = v41;
      v92[4] = v5;
      v93[4] = v7;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:5];
      v44 = [v42 filterWithName:@"CIPerspectiveTransform" withInputParameters:v43];

      if (v44)
      {
        v45 = [v44 outputImage];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
        }

        else
        {
          *v85 = [NUError errorWithCode:2 reason:@"Core Image returned invalid output for filter" object:v44];
        }

        v49 = v88;
        v10 = v89;
        v50 = v87;
        v48 = v86;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Cannot create CIPerspectiveTransform filter" object:self->_transform];
        v46 = 0;
        *v85 = v48 = v86;
        v49 = v88;
        v10 = v89;
        v50 = v87;
      }
    }

    else
    {
      [NUError errorWithCode:2 reason:@"Cannot evaluate input geometry" object:v6 underlyingError:v10];
      *a3 = v46 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Cannot evaluate input image" object:v6 underlyingError:v8];
    *a3 = v46 = 0;
    v10 = v8;
  }

  return v46;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = NUTransform3DNode;
  v42 = 0;
  v5 = [(NURenderNode *)&v41 _evaluateImageGeometry:&v42];
  if (v5)
  {
    v6 = v42;
    [v5 extent];
    [(NUImageTransform3D *)self->_transform transformPoint:0, 0];
    v8 = v7;
    v10 = v9;
    [(NUImageTransform3D *)self->_transform transformPoint:0, 0];
    v12 = v11;
    v14 = v13;
    [(NUImageTransform3D *)self->_transform transformPoint:0, 0];
    v16 = v15;
    v18 = v17;
    [(NUImageTransform3D *)self->_transform transformPoint:vcvtq_f64_s64(vaddq_s64(0, 0))];
    v20 = v19;
    v22 = v21;

    v45.f64[0] = v8;
    v45.f64[1] = v10;
    v46 = v12;
    v47 = v14;
    v48 = v16;
    v49 = v18;
    v50 = v20;
    v51 = v22;
    v23 = 16;
    v24 = v45;
    v25 = v45;
    do
    {
      v26 = *(&v45 + v23);
      v24 = vbslq_s8(vcgtq_f64(v26, v24), v26, v24);
      v25 = vbslq_s8(vcgtq_f64(v26, v25), v25, v26);
      v23 += 16;
    }

    while (v23 != 64);
    v44.origin = v25;
    v44.size = vsubq_f64(v24, v25);
    NU::RectT<long>::RectT(v43, &v44, 0);
    v39 = v43[1];
    v40 = v43[0];
    v27 = [NUImageGeometry alloc];
    v28 = [v5 renderScale];
    v30 = v29;
    v31 = [v5 orientation];
    v44.origin = v40;
    v44.size = v39;
    v32 = [(NUImageGeometry *)v27 initWithExtent:&v44 renderScale:v28 orientation:v30, v31];
  }

  else
  {
    v33 = MEMORY[0x1E695DFB0];
    v34 = v42;
    v35 = [v33 null];
    v36 = [NUError errorWithCode:1 reason:@"Cannot evaluate image geometry" object:v35 underlyingError:v34];
    v37 = v36;

    *a3 = v36;
    v32 = 0;
  }

  return v32;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10.receiver = self;
  v10.super_class = NUTransform3DNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 168), self->_transform);
  }

  return v8;
}

- (NUTransform3DNode)initWithTransform3D:(id)a3 input:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_transform, a3);
  v7 = a3;
  v8 = a4;
  v16 = @"transform";
  v17[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = *MEMORY[0x1E695FAB0];
  v15 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13.receiver = self;
  v13.super_class = NUTransform3DNode;
  v11 = [(NURenderNode *)&v13 initWithSettings:v9 inputs:v10];

  return v11;
}

- (NUTransform3DNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUTransform3DNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 294, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end