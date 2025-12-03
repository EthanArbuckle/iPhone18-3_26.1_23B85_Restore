@interface NUPixelBufferSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options;
- (NUPixelBufferSourceNode)initWithPixelBuffer:(__CVBuffer *)buffer settings:(id)settings orientation:(int64_t)orientation;
- (NUPixelBufferSourceNode)initWithSettings:(id)settings orientation:(int64_t)orientation;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (void)dealloc;
@end

@implementation NUPixelBufferSourceNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)options
{
  optionsCopy = options;
  auxiliaryImageType = [(NUSourceNode *)self auxiliaryImageType];
  auxiliaryImageType2 = [(NUSourceNode *)self auxiliaryImageType];
  if (!auxiliaryImageType || (v7 = auxiliaryImageType2, [(NUSourceNode *)self auxiliaryImageType]== 11) || v7 == 1)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"applyCleanAperture"];
    v11 = v10;
    if (v10)
    {
      [v10 nu_pixelRect];
      Width = v18;
      Height = v19;
    }

    else
    {
      [(NUVideoFrameSourceNode *)self originalExtent];
      if (v16 && v17)
      {
        [(NUVideoFrameSourceNode *)self originalExtent];
        Width = v14;
        Height = v15;
      }

      else
      {
        Width = CVPixelBufferGetWidth(self->_pixelBuffer);
        Height = CVPixelBufferGetHeight(self->_pixelBuffer);
      }
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_pixelBuffer);
  }

  v12 = Width;
  v13 = Height;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!error)
  {
    v17 = NUAssertLogger_530();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v54 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_530();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v31;
        v55 = 2114;
        v56 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1140, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != NULL");
  }

  if (!factor)
  {
    v24 = NUAssertLogger_530();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      v54 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_530();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v40;
        v55 = 2114;
        v56 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1142, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "subsampleFactor != NULL");
  }

  v9 = optionsCopy;
  *factor = 1;
  if ([(NUSourceNode *)self auxiliaryImageType]== 2 || [(NUSourceNode *)self auxiliaryImageType]== 11 || [(NUSourceNode *)self auxiliaryImageType]== 10 || [(NUSourceNode *)self auxiliaryImageType]== 9 || [(NUSourceNode *)self auxiliaryImageType]== 3 || [(NUSourceNode *)self auxiliaryImageType]== 4)
  {
    v51 = *MEMORY[0x1E695F9A8];
    null = [MEMORY[0x1E695DFB0] null];
    v52 = null;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
LABEL_10:
    v12 = v11;

    goto LABEL_11;
  }

  if ([(NUSourceNode *)self auxiliaryImageType]== 1 && [NUColorSpace shouldTagAsDisplayP3:self->_pixelBuffer])
  {
    v49 = *MEMORY[0x1E695F9A8];
    null = +[NUColorSpace displayP3ColorSpace];
    cGColorSpace = [null CGColorSpace];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cGColorSpace forKeys:&v49 count:1];
    goto LABEL_10;
  }

  v12 = MEMORY[0x1E695E0F8];
LABEL_11:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = selfCopy->_image;
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:selfCopy->_pixelBuffer options:v12];
    if (!v14)
    {
      *error = [NUError errorWithCode:3 reason:@"Unable to produce CIImage from CVPixelBuffer" object:selfCopy];
    }

    objc_storeStrong(&selfCopy->_image, v14);
  }

  v15 = [(NUVideoFrameSourceNode *)selfCopy applySourceOptions:v9 image:v14];

  objc_sync_exit(selfCopy);

  return v15;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = NUPixelBufferSourceNode;
  [(NUPixelBufferSourceNode *)&v3 dealloc];
}

- (NUPixelBufferSourceNode)initWithSettings:(id)settings orientation:(int64_t)orientation
{
  v36 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
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
    v11 = NSStringFromSelector(a2);
    v12 = [v7 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v10, v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      callStackSymbols = [v15 callStackSymbols];
      v18 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    callStackSymbols2 = [v21 callStackSymbols];
    v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUPixelBufferSourceNode initWithSettings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1130, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

- (NUPixelBufferSourceNode)initWithPixelBuffer:(__CVBuffer *)buffer settings:(id)settings orientation:(int64_t)orientation
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!buffer)
  {
    v17 = NUAssertLogger_530();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelBuffer != nil"];
      *buf = 138543362;
      v35 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_530();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v24;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode initWithPixelBuffer:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1109, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "pixelBuffer != nil");
  }

  v9 = settingsCopy;
  v10 = [settingsCopy mutableCopy];
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  Seed = IOSurfaceGetSeed(IOSurface);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOSurfaceGetID(IOSurface)];
  [v10 setObject:v13 forKeyedSubscript:@"surfaceID"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Seed];
  [v10 setObject:v14 forKeyedSubscript:@"seed"];

  v33.receiver = self;
  v33.super_class = NUPixelBufferSourceNode;
  v15 = [(NUVideoFrameSourceNode *)&v33 initWithSettings:v10 orientation:orientation];
  v15->_pixelBuffer = CVPixelBufferRetain(buffer);

  return v15;
}

@end