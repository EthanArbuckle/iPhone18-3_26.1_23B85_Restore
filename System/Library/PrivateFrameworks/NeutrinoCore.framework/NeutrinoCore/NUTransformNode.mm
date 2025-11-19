@interface NUTransformNode
+ (id)transformNodeWithInput:(id)a3 transform:(id)a4 error:(id *)a5;
- (BOOL)canPropagateOriginalLivePhotoMetadataTrack;
- (id)_evaluateGeometrySpaceMap:(id *)a3;
- (id)_transformWithError:(id *)a3;
- (id)descriptionSubClassHook;
@end

@implementation NUTransformNode

- (BOOL)canPropagateOriginalLivePhotoMetadataTrack
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(NUTransformNode *)self _transformWithError:&v9];
  v4 = v9;
  if (!v3)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_128);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "[NUTransformNode] could not evaluate transform: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 isIdentityImageTransform])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v8.receiver = self;
  v8.super_class = NUTransformNode;
  v5 = [(NURenderNode *)&v8 canPropagateOriginalLivePhotoMetadataTrack];
LABEL_10:

  return v5;
}

- (id)descriptionSubClassHook
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = 0;
  v4 = [(NUTransformNode *)self _transformWithError:&v7];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@"%@ (T : %@)", *MEMORY[0x1E695FAB0], v4];
  }

  return v3;
}

- (id)_evaluateGeometrySpaceMap:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = NUAssertLogger_27316();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v33 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_27316();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTransformNode _evaluateGeometrySpaceMap:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 84, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != nil");
  }

  v30.receiver = self;
  v30.super_class = NUTransformNode;
  v31 = 0;
  v5 = [(NURenderNode *)&v30 _evaluateGeometrySpaceMap:&v31];
  v6 = v31;
  if (v5)
  {
    v29 = 0;
    v7 = [(NUTransformNode *)self _transformWithError:&v29];
    v8 = v29;

    if (v7)
    {
      [v5 applyTransform:v7];
      v9 = objc_opt_new();
      v10 = [(NURenderNode *)self spaceMapKey];
      [v5 setSpace:v9 forKey:v10];

      v11 = v5;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Cannot get geometry transform" object:self underlyingError:v8];
      *a3 = v11 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Cannot get geometry map for inputs" object:self underlyingError:v6];
    *a3 = v11 = 0;
    v8 = v6;
  }

  return v11;
}

- (id)_transformWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v29 = v8;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v9 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
      }

      goto LABEL_8;
    }

    if (v9 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v10 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AF00];
      v12 = v10;
      v13 = [v11 callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v14;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = MEMORY[0x1E696AF00];
    v18 = specific;
    v19 = v15;
    v20 = [v17 callStackSymbols];
    v21 = [v20 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v29 = specific;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  _NUAssertFailHandler("[NUTransformNode _transformWithError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 79, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v24, v25, v26, v27, v23);
}

+ (id)transformNodeWithInput:(id)a3 transform:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = NUAssertLogger_27316();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v63 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_27316();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v35;
        v64 = 2114;
        v65 = v39;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUTransformNode transformNodeWithInput:transform:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 25, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "input != nil");
  }

  v9 = v8;
  if (!v8)
  {
    v21 = NUAssertLogger_27316();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "transform != nil"];
      *buf = 138543362;
      v63 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_27316();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUTransformNode transformNodeWithInput:transform:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 26, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "transform != nil");
  }

  if (!a5)
  {
    v28 = NUAssertLogger_27316();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v63 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_27316();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUTransformNode transformNodeWithInput:transform:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Transform.m", 27, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "error != nil");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [[NUAffineTransformNode alloc] initWithAffineTransform:v10 input:v7];
LABEL_8:
    v12 = v11;

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [[NUTransform3DNode alloc] initWithTransform3D:v10 input:v7];
    goto LABEL_8;
  }

  [NUError invalidError:@"unsupported image transform type" object:v9];
  *a5 = v12 = 0;
LABEL_10:

  return v12;
}

@end