@interface _NUStyleEngineMemoryResource
+ (BOOL)usingSharedMemoryResourceForDevice:(id)a3 withDescriptor:(id)a4 perform:(id)a5;
- (BOOL)setup;
- (_NUStyleEngineMemoryResource)init;
- (_NUStyleEngineMemoryResource)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation _NUStyleEngineMemoryResource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CMIExternalMemoryResource *)self->_resource allocatorBackend];
  v6 = [v3 stringWithFormat:@"<%@:%p size: %zu>", v4, self, objc_msgSend(v5, "memSize")];

  return v6;
}

- (BOOL)setup
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6991760]);
  [v3 setMemSize:{-[CMIExternalMemoryDescriptor memSize](self->_descriptor, "memSize")}];
  [v3 setWireMemory:0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setLabel:v5];

  [v3 setMemoryPoolId:0];
  v6 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:self->_device allocatorType:{-[CMIExternalMemoryDescriptor allocatorType](self->_descriptor, "allocatorType")}];
  v7 = [v6 setupWithDescriptor:v3];
  if (v7)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Failed to setup FigMetalAllocatorBackend, err = %d", v10, 8u);
    }
  }

  else
  {
    [(CMIExternalMemoryResource *)self->_resource setAllocatorBackend:v6];
  }

  return v7 == 0;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v3 = _NULogger;
  v4 = v3;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [(CMIExternalMemoryResource *)self->_resource allocatorBackend];
    *buf = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = [v6 memSize];
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_INTERVAL_END, sid, "_NUStyleEngineMemoryResource", "%p mem=%zu", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = _NUStyleEngineMemoryResource;
  [(_NUStyleEngineMemoryResource *)&v7 dealloc];
}

- (_NUStyleEngineMemoryResource)initWithDevice:(id)a3 descriptor:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = NUAssertLogger_30110();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      v52 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_30110();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v32;
        v53 = 2114;
        v54 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngineMemoryResource initWithDevice:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2609, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "device != nil");
  }

  v9 = v8;
  if (!v8)
  {
    v25 = NUAssertLogger_30110();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "desc != nil"];
      *buf = 138543362;
      v52 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_30110();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v41;
        v53 = 2114;
        v54 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngineMemoryResource initWithDevice:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2610, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "desc != nil");
  }

  v50.receiver = self;
  v50.super_class = _NUStyleEngineMemoryResource;
  v10 = [(_NUStyleEngineMemoryResource *)&v50 init];
  objc_storeStrong(&v10->_device, a3);
  objc_storeStrong(&v10->_descriptor, a4);
  v11 = objc_alloc_init(MEMORY[0x1E69916D0]);
  resource = v10->_resource;
  v10->_resource = v11;

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v13 = _NULogger;
  v10->_sid = os_signpost_id_make_with_pointer(v13, v10);

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v14 = _NULogger;
  v15 = v14;
  sid = v10->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 134217984;
    v52 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v15, OS_SIGNPOST_INTERVAL_BEGIN, sid, "_NUStyleEngineMemoryResource", "%p", buf, 0xCu);
  }

  return v10;
}

- (_NUStyleEngineMemoryResource)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
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
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUStyleEngineMemoryResource init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2605, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (BOOL)usingSharedMemoryResourceForDevice:(id)a3 withDescriptor:(id)a4 perform:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = +[NURenderResourcePool shared];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __90___NUStyleEngineMemoryResource_usingSharedMemoryResourceForDevice_withDescriptor_perform___block_invoke;
  v24 = &unk_1E810B8F0;
  v13 = v7;
  v25 = v13;
  v14 = v8;
  v26 = v14;
  v15 = [v12 checkOutResourceForKey:v11 matching:&v21];

  if (v15 || (v16 = [_NUStyleEngineMemoryResource alloc], v15 = [(_NUStyleEngineMemoryResource *)v16 initWithDevice:v13 descriptor:v14, v21, v22, v23, v24, v25], [(_NUStyleEngineMemoryResource *)v15 setup]))
  {
    v17 = [(_NUStyleEngineMemoryResource *)v15 resource:v21];
    v18 = v9[2](v9, v17);

    v19 = +[NURenderResourcePool shared];
    [v19 checkInResource:v15 forKey:v11];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end