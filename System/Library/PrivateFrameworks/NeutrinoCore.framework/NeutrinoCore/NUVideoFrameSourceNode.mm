@interface NUVideoFrameSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- ($41299696D20B6C925B74A5D5E4D5CC87)originalExtent;
- (NUVideoFrameSourceNode)initWithSettings:(id)a3;
- (NUVideoFrameSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)applySourceOptions:(id)a3 image:(id)a4;
- (id)descriptionSubClassHook;
@end

@implementation NUVideoFrameSourceNode

- ($41299696D20B6C925B74A5D5E4D5CC87)originalExtent
{
  var1 = self[6].var1;
  retstr->var0 = self[6].var0;
  retstr->var1 = var1;
  return self;
}

- (id)descriptionSubClassHook
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  [(NUVideoFrameSourceNode *)self time];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"t=%lld/%d", v4, v5];

  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  *retstr = **&MEMORY[0x1E6960C70];
  v4 = [(NURenderNode *)self settings];
  dictionaryRepresentation = [v4 objectForKeyedSubscript:@"time"];

  v5 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
    v5 = dictionaryRepresentation;
  }

  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
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
  _NUAssertFailHandler("[NUVideoFrameSourceNode pixelSizeWithSourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1083, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_NUImageProperties);
  [(_NUImageProperties *)v6 setMetadata:MEMORY[0x1E695E0F8]];
  v7 = [(NUVideoFrameSourceNode *)self pixelSizeWithSourceOptions:v5];
  v9 = v8;

  [(_NUImageProperties *)v6 setSize:v7, v9];
  [(_NUImageProperties *)v6 setOrientation:[(NUVideoFrameSourceNode *)self sourceOrientation]];

  return v6;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  _NUAssertFailHandler("[NUVideoFrameSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1067, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v27, v28, v29, v30, v26);
}

- (id)applySourceOptions:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NUSourceNode *)self auxiliaryImageType];
  v9 = [(NUSourceNode *)self auxiliaryImageType];
  if (!v8 || (v10 = v9, [(NUSourceNode *)self auxiliaryImageType]== 11) || v10 == 1)
  {
    v12 = [v6 objectForKeyedSubscript:@"applyCleanAperture"];
    v13 = v12;
    if (v12)
    {
      v20 = 0u;
      v21 = 0u;
      [v12 nu_pixelRect];
      CGAffineTransformMakeTranslation(&v19, -v20, -*(&v20 + 1));
      v14 = [v7 imageByApplyingTransform:&v19];

      v7 = [v14 imageByCroppingToRect:{0.0, 0.0, v21, *(&v21 + 1)}];
    }

    else
    {
      [(NUVideoFrameSourceNode *)self originalExtent];
      if (*&v19.c && *&v19.d)
      {
        v20 = 0u;
        v21 = 0u;
        [(NUVideoFrameSourceNode *)self originalExtent];
        CGAffineTransformMakeTranslation(&v19, -v20, -*(&v20 + 1));
        v15 = [v7 imageByApplyingTransform:&v19];

        v16 = [MEMORY[0x1E695F658] blackImage];
        v17 = [v15 imageByCompositingOverImage:v16];

        v7 = [v17 imageByCroppingToRect:{0.0, 0.0, v21, *(&v21 + 1)}];
      }
    }

    v11 = v7;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (NUVideoFrameSourceNode)initWithSettings:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUVideoFrameSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1017, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVideoFrameSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = NUAssertLogger_530();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_530();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoFrameSourceNode initWithSettings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1001, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "settings != nil");
  }

  if ((a4 - 1) >= 8)
  {
    v20 = NUAssertLogger_530();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_530();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoFrameSourceNode initWithSettings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1002, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "NUOrientationIsValid(orientation)");
  }

  v7 = v6;
  v45.receiver = self;
  v45.super_class = NUVideoFrameSourceNode;
  v8 = [(NUSourceNode *)&v45 initWithSettings:v6];
  v8->_orientation = a4;
  v9 = [v7 objectForKeyedSubscript:@"originalExtent"];
  v10 = v9;
  if (v9)
  {
    [v9 nu_pixelRect];
    v11 = *&buf[16];
    v8->_originalExtent.origin = *buf;
    v8->_originalExtent.size = v11;
  }

  return v8;
}

@end