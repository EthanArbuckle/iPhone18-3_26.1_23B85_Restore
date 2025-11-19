@interface NUPixelBufferSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- (NUPixelBufferSourceNode)initWithPixelBuffer:(__CVBuffer *)a3 settings:(id)a4 orientation:(int64_t)a5;
- (NUPixelBufferSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation NUPixelBufferSourceNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  v4 = a3;
  v5 = [(NUSourceNode *)self auxiliaryImageType];
  v6 = [(NUSourceNode *)self auxiliaryImageType];
  if (!v5 || (v7 = v6, [(NUSourceNode *)self auxiliaryImageType]== 11) || v7 == 1)
  {
    v10 = [v4 objectForKeyedSubscript:@"applyCleanAperture"];
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

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a5)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v31;
        v55 = 2114;
        v56 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1140, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != NULL");
  }

  if (!a4)
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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v40;
        v55 = 2114;
        v56 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1142, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "subsampleFactor != NULL");
  }

  v9 = v8;
  *a4 = 1;
  if ([(NUSourceNode *)self auxiliaryImageType]== 2 || [(NUSourceNode *)self auxiliaryImageType]== 11 || [(NUSourceNode *)self auxiliaryImageType]== 10 || [(NUSourceNode *)self auxiliaryImageType]== 9 || [(NUSourceNode *)self auxiliaryImageType]== 3 || [(NUSourceNode *)self auxiliaryImageType]== 4)
  {
    v51 = *MEMORY[0x1E695F9A8];
    v10 = [MEMORY[0x1E695DFB0] null];
    v52 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
LABEL_10:
    v12 = v11;

    goto LABEL_11;
  }

  if ([(NUSourceNode *)self auxiliaryImageType]== 1 && [NUColorSpace shouldTagAsDisplayP3:self->_pixelBuffer])
  {
    v49 = *MEMORY[0x1E695F9A8];
    v10 = +[NUColorSpace displayP3ColorSpace];
    v50 = [v10 CGColorSpace];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    goto LABEL_10;
  }

  v12 = MEMORY[0x1E695E0F8];
LABEL_11:
  v13 = self;
  objc_sync_enter(v13);
  v14 = v13->_image;
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:v13->_pixelBuffer options:v12];
    if (!v14)
    {
      *a5 = [NUError errorWithCode:3 reason:@"Unable to produce CIImage from CVPixelBuffer" object:v13];
    }

    objc_storeStrong(&v13->_image, v14);
  }

  v15 = [(NUVideoFrameSourceNode *)v13 applySourceOptions:v9 image:v14];

  objc_sync_exit(v13);

  return v15;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = NUPixelBufferSourceNode;
  [(NUPixelBufferSourceNode *)&v3 dealloc];
}

- (NUPixelBufferSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
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
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
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
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
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

- (NUPixelBufferSourceNode)initWithPixelBuffer:(__CVBuffer *)a3 settings:(id)a4 orientation:(int64_t)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!a3)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v24;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelBufferSourceNode initWithPixelBuffer:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1109, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "pixelBuffer != nil");
  }

  v9 = v8;
  v10 = [v8 mutableCopy];
  IOSurface = CVPixelBufferGetIOSurface(a3);
  Seed = IOSurfaceGetSeed(IOSurface);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOSurfaceGetID(IOSurface)];
  [v10 setObject:v13 forKeyedSubscript:@"surfaceID"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Seed];
  [v10 setObject:v14 forKeyedSubscript:@"seed"];

  v33.receiver = self;
  v33.super_class = NUPixelBufferSourceNode;
  v15 = [(NUVideoFrameSourceNode *)&v33 initWithSettings:v10 orientation:a5];
  v15->_pixelBuffer = CVPixelBufferRetain(a3);

  return v15;
}

@end