@interface NUMetalRenderer
- (NUMetalRenderer)initWithCIContext:(id)context priority:(int64_t)priority;
- (NUMetalRenderer)initWithMetalDevice:(id)device options:(id)options;
- (id)imageForSurface:(id)surface options:(id)options;
- (id)name;
- (id)renderDestinationForSurface:(id)surface;
- (void)_configureCommandQueue:(id)queue withOptions:(id)options;
@end

@implementation NUMetalRenderer

- (id)renderDestinationForSurface:(id)surface
{
  v49 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (!surfaceCopy)
  {
    v12 = NUAssertLogger_23497();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v46 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_23497();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMetalRenderer renderDestinationForSurface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 304, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "surface != nil");
  }

  v5 = surfaceCopy;
  v6 = [surfaceCopy textureForDevice:self->_device];
  v7 = [objc_alloc(MEMORY[0x1E695F678]) initWithMTLTexture:v6 commandBuffer:0];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695F678]);
    iOSurface = [v5 IOSurface];
    v8 = [v9 initWithIOSurface:iOSurface];

    if (!v8)
    {
      v19 = NUAssertLogger_23497();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create render destination!"];
        *buf = 138543362;
        v46 = v20;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v22 = NUAssertLogger_23497();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v36 = MEMORY[0x1E696AF00];
          v37 = v35;
          callStackSymbols3 = [v36 callStackSymbols];
          v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v46 = v35;
          v47 = 2114;
          v48 = v39;
          _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v23)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v25;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUMetalRenderer renderDestinationForSurface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 312, @"Failed to create render destination!", v40, v41, v42, v43, v44);
    }
  }

  [v8 setLabel:@"NUMetalRenderer-surface"];
  [v8 setFlipped:1];

  return v8;
}

- (id)imageForSurface:(id)surface options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  optionsCopy = options;
  if (!surfaceCopy)
  {
    v10 = NUAssertLogger_23497();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_23497();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMetalRenderer imageForSurface:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 295, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "surface != nil");
  }

  v7 = optionsCopy;
  v8 = [MEMORY[0x1E695F658] imageWithIOSurface:objc_msgSend(surfaceCopy options:{"IOSurfaceRef"), optionsCopy}];

  return v8;
}

- (id)name
{
  v2 = MEMORY[0x1E696AEC0];
  name = [(MTLDevice *)self->_device name];
  v4 = [v2 stringWithFormat:@"Metal renderer: %@", name];

  return v4;
}

- (void)_configureCommandQueue:(id)queue withOptions:(id)options
{
  optionsCopy = options;
  v5 = *MEMORY[0x1E695F848];
  queueCopy = queue;
  v7 = [optionsCopy objectForKeyedSubscript:v5];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = 1;
  }

  else
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E695F850]];
    bOOLValue2 = [v10 BOOLValue];

    if (bOOLValue2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  [queueCopy setGPUPriority:v9];
  [queueCopy setBackgroundGPUPriority:2];
}

- (NUMetalRenderer)initWithMetalDevice:(id)device options:(id)options
{
  v40 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  optionsCopy = options;
  if (!deviceCopy)
  {
    v19 = NUAssertLogger_23497();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metalDevice != nil"];
      *buf = 138543362;
      v37 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_23497();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMetalRenderer initWithMetalDevice:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 249, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "metalDevice != nil");
  }

  v8 = optionsCopy;
  newCommandQueue = [deviceCopy newCommandQueue];
  v10 = [NURenderer _renderContextOptionsWithOptions:v8 nameSuffix:@"Metal"];
  v11 = [MEMORY[0x1E695F620] contextWithMTLCommandQueue:newCommandQueue options:v10];
  [(NUMetalRenderer *)self _configureCommandQueue:newCommandQueue withOptions:v10];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695F850]];
  if ([v12 BOOLValue])
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v35.receiver = self;
  v35.super_class = NUMetalRenderer;
  v14 = [(NURenderer *)&v35 initWithCIContext:v11 priority:v13];
  commandQueue = v14->_commandQueue;
  v14->_commandQueue = newCommandQueue;
  v16 = newCommandQueue;

  device = v14->_device;
  v14->_device = deviceCopy;

  return v14;
}

- (NUMetalRenderer)initWithCIContext:(id)context priority:(int64_t)priority
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
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
  _NUAssertFailHandler("[NUMetalRenderer initWithCIContext:priority:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 244, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

@end