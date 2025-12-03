@interface NUAffineTransformNode
- (NUAffineTransformNode)initWithAffineTransform:(id)transform input:(id)input;
- (NUAffineTransformNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_transformWithError:(id *)error;
- (id)debugQuickLookObject;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUAffineTransformNode

- (id)_transformWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (!error)
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
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAffineTransformNode _transformWithError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 279, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "error != nil");
  }

  transform = self->_transform;

  return transform;
}

- (id)debugQuickLookObject
{
  if ([(NURenderNode *)self isCached])
  {
    v5.receiver = self;
    v5.super_class = NUAffineTransformNode;
    debugQuickLookObject = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    debugQuickLookObject = [(NUAffineTransformNode *)self _evaluateImage:&v6];
  }

  return debugQuickLookObject;
}

- (id)_evaluateImage:(id *)image
{
  v66 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v26 = NUAssertLogger_27316();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_27316();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAffineTransformNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 212, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v5 = *MEMORY[0x1E695FAB0];
  v6 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v61 = 0;
  v7 = [v6 outputImage:&v61];
  v8 = v61;
  if (v7)
  {
    v60 = 0;
    v9 = [v6 outputImageGeometry:&v60];
    v10 = v60;

    if (v9)
    {
      if ([v9 renderScale] < 1 || v11 <= 0)
      {
        v42 = NUAssertLogger_27316();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
          *buf = 138543362;
          *&buf[4] = v43;
          _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = NUAssertLogger_27316();
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        if (v44)
        {
          if (v46)
          {
            v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v50 = MEMORY[0x1E696AF00];
            v51 = v49;
            callStackSymbols3 = [v50 callStackSymbols];
            v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v49;
            *&buf[12] = 2114;
            *&buf[14] = v53;
            _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v46)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v48 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v48;
          _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUAffineTransformNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 237, @"Invalid render scale", v54, v55, v56, v57, v58);
      }

      renderScale = [v9 renderScale];
      v15 = NUScaleToDouble(renderScale, v14);
      v16 = 0uLL;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      transform = self->_transform;
      if (transform)
      {
        v59 = v15;
        [(NUImageTransformAffine *)transform transform];
        v15 = v59;
        v16 = v65;
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v65 = vmulq_n_f64(v16, v15);
      v19 = [MEMORY[0x1E696B098] valueWithBytes:buf objCType:"{CGAffineTransform=dddddd}"];
      v20 = MEMORY[0x1E695F648];
      v62[0] = *MEMORY[0x1E695FB38];
      v62[1] = v5;
      v63[0] = v19;
      v63[1] = v7;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v22 = [v20 filterWithName:@"CIAffineTransform" withInputParameters:v21];

      if (v22)
      {
        outputImage = [v22 outputImage];
        v18 = outputImage;
        if (outputImage)
        {
          v24 = outputImage;
        }

        else
        {
          *image = [NUError errorWithCode:2 reason:@"Core Image returned invalid output for filter" object:v22];
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Cannot create CIAffineTransform filter" object:v19];
        *image = v18 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:2 reason:@"Cannot evaluate input geometry" object:v6 underlyingError:v10];
      *image = v18 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Cannot evaluate input image" object:v6 underlyingError:v8];
    *image = v18 = 0;
    v10 = v8;
  }

  return v18;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v23.receiver = self;
  v23.super_class = NUAffineTransformNode;
  v24 = 0;
  v5 = [(NURenderNode *)&v23 _evaluateImageGeometry:&v24];
  v6 = v24;
  if (v5)
  {
    [v5 extent];
    v7 = *&v22.a;
    v8 = *&v22.b;
    v9 = *&v22.c;
    v10 = *&v22.d;
    transform = self->_transform;
    if (transform)
    {
      [(NUImageTransformAffine *)transform transform];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    v27.origin.x = v7;
    v27.origin.y = v8;
    v27.size.width = v9;
    v27.size.height = v10;
    v28 = CGRectApplyAffineTransform(v27, &v22);
    v22.a = v28.origin.x;
    v22.b = v28.origin.y;
    v22.c = v28.size.width;
    v22.d = v28.size.height;
    NU::RectT<long>::RectT(v25, &v22, 0);
    v20 = v25[1];
    v21 = v25[0];
    v14 = [NUImageGeometry alloc];
    renderScale = [v5 renderScale];
    v17 = v16;
    orientation = [v5 orientation];
    *&v22.a = v21;
    *&v22.c = v20;
    v13 = [(NUImageGeometry *)v14 initWithExtent:&v22 renderScale:renderScale orientation:v17, orientation];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    *geometry = [NUError errorWithCode:1 reason:@"Cannot evaluate image geometry" object:null underlyingError:v6];

    v13 = 0;
  }

  return v13;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v10.receiver = self;
  v10.super_class = NUAffineTransformNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 168), self->_transform);
  }

  return v8;
}

- (NUAffineTransformNode)initWithAffineTransform:(id)transform input:(id)input
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_transform, transform);
  transformCopy = transform;
  inputCopy = input;
  v16 = @"transform";
  v17[0] = transformCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = *MEMORY[0x1E695FAB0];
  v15 = inputCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13.receiver = self;
  v13.super_class = NUAffineTransformNode;
  v11 = [(NURenderNode *)&v13 initWithSettings:v9 inputs:v10];

  return v11;
}

- (NUAffineTransformNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUAffineTransformNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 166, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end