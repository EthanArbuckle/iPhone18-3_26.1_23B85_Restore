@interface NUDevice
+ (id)_ciContextOptionsForRendererOptions:(unint64_t)options;
- (BOOL)shouldRenderUsingMetal;
- (BOOL)supportsPixelFormat:(id)format;
- (NSString)description;
- (NUDevice)init;
- (NUDevice)initWithName:(id)name model:(id)model metalDevice:(id)device;
- (id)_metalCommandQueue;
- (id)_newRendererWithCIContextOptions:(id)options error:(id *)error;
- (id)_newRendererWithOptions:(unint64_t)options error:(id *)error;
- (id)_rendererWithOptions:(unint64_t)options error:(id *)error;
- (id)rendererWithOptions:(unint64_t)options error:(id *)error;
- (int64_t)_defaultSampleMode;
- (int64_t)_preferredSampleMode;
- (int64_t)defaultSampleMode;
- (unint64_t)family;
- (void)clearCaches;
- (void)executeMetal:(id)metal;
@end

@implementation NUDevice

- (BOOL)supportsPixelFormat:(id)format
{
  formatCopy = format;
  metalDevice = [(NUDevice *)self metalDevice];
  [formatCopy metalFormat];

  MTLPixelFormatGetInfoForDevice();
  return 0;
}

- (id)_metalCommandQueue
{
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    newCommandQueue = [(MTLDevice *)self->_metalDevice newCommandQueue];
    v5 = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    commandQueue = self->_commandQueue;
  }

  return commandQueue;
}

- (void)executeMetal:(id)metal
{
  v40 = *MEMORY[0x1E69E9840];
  metalCopy = metal;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__NUDevice_executeMetal___block_invoke;
  block[3] = &unk_1E810B980;
  block[4] = self;
  block[5] = &v30;
  dispatch_sync(queue, block);
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  selfCopy = self;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUDevice(%p).currentCommandBuffer"];
  v9 = [threadDictionary objectForKeyedSubscript:v8];
  if (v9)
  {
    metalCopy[2](metalCopy, v9);
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E6974008]);
    v11 = [v31[5] commandBufferWithDescriptor:v10];
    if (!v11)
    {
      v14 = NUAssertLogger_292();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No Metal command buffer!"];
        *buf = 138543362;
        v37 = v15;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v17 = NUAssertLogger_292();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v18)
        {
          v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v23 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v37 = v21;
          v38 = 2114;
          v39 = v23;
          _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v18)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v37 = v20;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUDevice executeMetal:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 256, @"No Metal command buffer!", v24, v25, v26, v27, selfCopy);
    }

    [threadDictionary setObject:v11 forKeyedSubscript:v8];
    [v11 enqueue];
    metalCopy[2](metalCopy, v11);
    [v11 commit];
    [v11 waitUntilScheduled];
    if ([v11 status] == 5)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_184);
      }

      v12 = _NULogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        error = [v11 error];
        *buf = 138543362;
        v37 = error;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Metal execution failed: %{public}@", buf, 0xCu);
      }
    }

    [threadDictionary setObject:0 forKeyedSubscript:v8];
  }

  _Block_object_dispose(&v30, 8);
}

uint64_t __25__NUDevice_executeMetal___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _metalCommandQueue];

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearCaches
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__NUDevice_clearCaches__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __23__NUDevice_clearCaches__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 context];
  [v3 clearCaches];
}

- (id)_newRendererWithCIContextOptions:(id)options error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      callStackSymbols = [v13 callStackSymbols];
      v16 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    callStackSymbols2 = [v19 callStackSymbols];
    v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  _NUAssertFailHandler("[NUDevice _newRendererWithCIContextOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 223, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

- (id)_newRendererWithOptions:(unint64_t)options error:(id *)error
{
  v6 = [objc_opt_class() _ciContextOptionsForRendererOptions:options];
  v7 = [(NUDevice *)self _newRendererWithCIContextOptions:v6 error:error];

  return v7;
}

- (id)_rendererWithOptions:(unint64_t)options error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v8 = [(NSMutableDictionary *)self->_renderers objectForKey:v7];
  if (!v8)
  {
    v8 = [(NUDevice *)self _newRendererWithOptions:options error:error];
    [(NSMutableDictionary *)self->_renderers setObject:v8 forKeyedSubscript:v7];
    if ([(NUDevice *)self shouldLogRendererUsed])
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_184);
      }

      v9 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        name = self->_name;
        v12 = 138543874;
        v13 = name;
        v14 = 2114;
        v15 = v8;
        v16 = 2050;
        optionsCopy = options;
        _os_log_impl(&dword_1C0184000, v9, OS_LOG_TYPE_INFO, "Rendering on device %{public}@ using renderer: %{public}@ - [Options  %{public}lx]", &v12, 0x20u);
      }
    }
  }

  return v8;
}

- (id)rendererWithOptions:(unint64_t)options error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__NUDevice_rendererWithOptions_error___block_invoke;
  v7[3] = &unk_1E8109260;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = options;
  v7[7] = error;
  dispatch_sync(queue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __38__NUDevice_rendererWithOptions_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _rendererWithOptions:*(a1 + 48) error:*(a1 + 56)];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)shouldRenderUsingMetal
{
  hasMetalSupport = [(NUDevice *)self hasMetalSupport];
  if (hasMetalSupport)
  {
    LOBYTE(hasMetalSupport) = !+[NUGlobalSettings deviceDisableMetal];
  }

  return hasMetalSupport;
}

- (int64_t)_preferredSampleMode
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUDevice _preferredSampleMode]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 80, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (int64_t)_defaultSampleMode
{
  result = +[NUGlobalSettings deviceDefaultSampleMode];
  if (result > 3 || ((0xEu >> (result & 0xF)) & 1) == 0)
  {

    return [(NUDevice *)self _preferredSampleMode];
  }

  return result;
}

- (int64_t)defaultSampleMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__NUDevice_defaultSampleMode__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__NUDevice_defaultSampleMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _defaultSampleMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)family
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUDevice family]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 55, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(NUDevice *)self name];
  model = [(NUDevice *)self model];
  v6 = [v3 stringWithFormat:@"%@ - %@", name, model];

  return v6;
}

- (NUDevice)initWithName:(id)name model:(id)model metalDevice:(id)device
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  modelCopy = model;
  deviceCopy = device;
  if (!nameCopy)
  {
    v25 = NUAssertLogger_292();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v43 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_292();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v32;
        v44 = 2114;
        v45 = v36;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUDevice initWithName:model:metalDevice:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 30, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "name != nil");
  }

  v11 = deviceCopy;
  v41.receiver = self;
  v41.super_class = NUDevice;
  v12 = [(NUDevice *)&v41 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [modelCopy copy];
    model = v12->_model;
    v12->_model = v15;

    objc_storeStrong(&v12->_metalDevice, device);
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUDevice.%@", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    queue = v12->_queue;
    v12->_queue = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    renderers = v12->_renderers;
    v12->_renderers = v22;
  }

  return v12;
}

- (NUDevice)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_182);
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
  _NUAssertFailHandler("[NUDevice init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Runtime/NUDevice.m", 25, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)_ciContextOptionsForRendererOptions:(unint64_t)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (optionsCopy)
  {
    v6 = MEMORY[0x1E695F850];
  }

  else
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E695F848];
  }

  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v6];
LABEL_6:
  if ((optionsCopy & 8) != 0)
  {
    if (!+[NUGlobalSettings rendererContextLowMemoryTarget])
    {
      goto LABEL_15;
    }

    v8 = MEMORY[0x1E696AD98];
    v9 = +[NUGlobalSettings rendererContextLowMemoryTarget];
    v10 = v8;
    goto LABEL_14;
  }

  if ((optionsCopy & 4) != 0)
  {
    v7 = +[NUGlobalSettings rendererContextLargeMemoryTarget];
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v7 = +[NUGlobalSettings rendererContextDefaultMemoryTarget];
  if (v7)
  {
LABEL_13:
    v9 = v7;
    v10 = MEMORY[0x1E696AD98];
LABEL_14:
    v11 = [v10 numberWithInteger:v9];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695F818]];
  }

LABEL_15:
  if ((optionsCopy & 0x10) != 0)
  {
    [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695F7F0]];
  }

  v12 = [v5 copy];

  return v12;
}

@end