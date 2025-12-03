@interface _NUStyleEngine
+ (BOOL)usingSharedStyleEngineForUsage:(id)usage withMetalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params perform:(id)perform;
- (BOOL)matchesUsage:(id)usage metalCommandQueue:(id)queue configuration:(id)configuration;
- (BOOL)setupProcessor;
- (_NUStyleEngine)init;
- (_NUStyleEngine)initWithUsage:(id)usage metalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params;
- (id)memoryDescriptor;
- (unsigned)processingType;
- (void)dealloc;
- (void)resetProcessor;
@end

@implementation _NUStyleEngine

- (BOOL)matchesUsage:(id)usage metalCommandQueue:(id)queue configuration:(id)configuration
{
  queueCopy = queue;
  configurationCopy = configuration;
  usageCopy = usage;
  usage = [(_NUStyleEngine *)self usage];

  if (usage == usageCopy && ([(_NUStyleEngine *)self metalCommandQueue], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == queueCopy))
  {
    configuration = [(_NUStyleEngine *)self configuration];
    v13 = [configuration matchesConfiguration:configurationCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)resetProcessor
{
  [(CMIStyleEngineProcessor *)self->_processor resetState];
  [(CMIStyleEngineProcessor *)self->_processor purgeResources];
  processor = self->_processor;

  [(CMIStyleEngineProcessor *)processor setExternalMemoryResource:0];
}

- (BOOL)setupProcessor
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_processor)
  {
    v19 = NUAssertLogger_30110();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already prepared!"];
      *v36 = 138543362;
      *&v36[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v36, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_30110();
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
        *v36 = 138543618;
        *&v36[4] = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v36, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v36 = 138543362;
      *&v36[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v36, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngine setupProcessor]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2386, @"Already prepared!", v31, v32, v33, v34, *v36);
  }

  v3 = objc_alloc(MEMORY[0x1E6991738]);
  metalCommandQueue = [(_NUStyleEngine *)self metalCommandQueue];
  v5 = [v3 initWithOptionalMetalCommandQueue:metalCommandQueue];
  processor = self->_processor;
  self->_processor = v5;

  configuration = [(_NUStyleEngine *)self configuration];
  styleEngineConfiguration = [configuration styleEngineConfiguration];
  [(CMIStyleEngineProcessor *)self->_processor setConfiguration:styleEngineConfiguration];

  tuningParams = [(_NUStyleEngine *)self tuningParams];
  [(CMIStyleEngineProcessor *)self->_processor setTuningParameters:tuningParams];

  setup = [(CMIStyleEngineProcessor *)self->_processor setup];
  if (setup)
  {
    v11 = setup;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v12 = _NULogger;
    v13 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      *v36 = 67109120;
      *&v36[4] = v11;
      v14 = "*** Failed to setup StyleEngine: %d";
      v15 = v12;
LABEL_12:
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, v14, v36, 8u);
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    prewarm = [(CMIStyleEngineProcessor *)self->_processor prewarm];
    if (!prewarm)
    {
      LOBYTE(v13) = 1;
      return v13;
    }

    v17 = prewarm;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v18 = _NULogger;
    v13 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      *v36 = 67109120;
      *&v36[4] = v17;
      v14 = "*** Failed to prewarm StyleEngine: %d";
      v15 = v18;
      goto LABEL_12;
    }
  }

  return v13;
}

- (id)memoryDescriptor
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"ProcessingType";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_NUStyleEngine processingType](self, "processingType")}];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:v4];
  [(CMIStyleEngineProcessor *)self->_processor setUseLiveMetalAllocations:1];
  v6 = [(CMIStyleEngineProcessor *)self->_processor externalMemoryDescriptorForConfiguration:v5];

  return v6;
}

- (unsigned)processingType
{
  usage = [(_NUStyleEngine *)self usage];
  v4 = [usage isEqualToString:@"learn"];

  if (v4)
  {
    return 1;
  }

  usage2 = [(_NUStyleEngine *)self usage];
  v7 = [usage2 isEqualToString:@"apply"];

  if (v7)
  {
    return 6;
  }

  usage3 = [(_NUStyleEngine *)self usage];
  v9 = [usage3 isEqualToString:@"learn&apply"];

  if (v9)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v3 = _NULogger;
  v4 = v3;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    usage = self->_usage;
    metalCommandQueue = self->_metalCommandQueue;
    *buf = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = usage;
    v13 = 2048;
    v14 = metalCommandQueue;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_INTERVAL_END, sid, "_NUStyleEngine", "%p usage:%@ q:%p", buf, 0x20u);
  }

  v8.receiver = self;
  v8.super_class = _NUStyleEngine;
  [(_NUStyleEngine *)&v8 dealloc];
}

- (_NUStyleEngine)initWithUsage:(id)usage metalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params
{
  v84 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  queueCopy = queue;
  configurationCopy = configuration;
  paramsCopy = params;
  if (!queueCopy)
  {
    v27 = NUAssertLogger_30110();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandQueue != nil"];
      *buf = 138543362;
      v77 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_30110();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols = [v49 callStackSymbols];
        v52 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v77 = v48;
        v78 = 2114;
        usageCopy2 = v52;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v77 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngine initWithUsage:metalCommandQueue:configuration:tuningParams:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2311, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "commandQueue != nil");
  }

  if (!configurationCopy)
  {
    v34 = NUAssertLogger_30110();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v77 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_30110();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols3 = [v58 callStackSymbols];
        v61 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v77 = v57;
        v78 = 2114;
        usageCopy2 = v61;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v77 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngine initWithUsage:metalCommandQueue:configuration:tuningParams:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2312, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "config != nil");
  }

  v15 = paramsCopy;
  if (!paramsCopy)
  {
    v41 = NUAssertLogger_30110();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "params != nil"];
      *buf = 138543362;
      v77 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_30110();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v45)
      {
        v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        callStackSymbols5 = [v67 callStackSymbols];
        v70 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v77 = v66;
        v78 = 2114;
        usageCopy2 = v70;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v77 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngine initWithUsage:metalCommandQueue:configuration:tuningParams:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2313, @"Invalid parameter not satisfying: %s", v71, v72, v73, v74, "params != nil");
  }

  v75.receiver = self;
  v75.super_class = _NUStyleEngine;
  v16 = [(_NUStyleEngine *)&v75 init];
  objc_storeStrong(&v16->_usage, usage);
  objc_storeStrong(&v16->_metalCommandQueue, queue);
  objc_storeStrong(&v16->_configuration, configuration);
  v17 = [v15 copy];
  tuningParams = v16->_tuningParams;
  v16->_tuningParams = v17;

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v19 = _NULogger;
  v16->_sid = os_signpost_id_make_with_pointer(v19, v16);

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v20 = _NULogger;
  v21 = v20;
  sid = v16->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    usage = v16->_usage;
    metalCommandQueue = v16->_metalCommandQueue;
    configurationDictionary = [(_NUStyleEngineConfiguration *)v16->_configuration configurationDictionary];
    *buf = 134218754;
    v77 = v16;
    v78 = 2112;
    usageCopy2 = usage;
    v80 = 2048;
    v81 = metalCommandQueue;
    v82 = 2112;
    v83 = configurationDictionary;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v21, OS_SIGNPOST_INTERVAL_BEGIN, sid, "_NUStyleEngine", "%p usage:%@ q:%p config:%@", buf, 0x2Au);
  }

  return v16;
}

- (_NUStyleEngine)init
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
  _NUAssertFailHandler("[_NUStyleEngine init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2307, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (BOOL)usingSharedStyleEngineForUsage:(id)usage withMetalCommandQueue:(id)queue configuration:(id)configuration tuningParams:(id)params perform:(id)perform
{
  v58 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  queueCopy = queue;
  configurationCopy = configuration;
  paramsCopy = params;
  performCopy = perform;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [[_NUStyleEngineConfiguration alloc] initWithConfigurationDictionary:configurationCopy];
  v19 = +[NURenderResourcePool shared];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __106___NUStyleEngine_usingSharedStyleEngineForUsage_withMetalCommandQueue_configuration_tuningParams_perform___block_invoke;
  v44[3] = &unk_1E810B8A0;
  v20 = usageCopy;
  v45 = v20;
  v21 = queueCopy;
  v46 = v21;
  v22 = v18;
  v47 = v22;
  v39 = v17;
  v23 = [v19 checkOutResourceForKey:v17 matching:v44];

  v40 = v21;
  if (v23)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v24 = performCopy;
    v25 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219010;
      v49 = v23;
      v50 = 2048;
      v51 = v40;
      v52 = 2112;
      v53 = v20;
      v54 = 2112;
      v55 = configurationCopy;
      v56 = 2112;
      v57 = paramsCopy;
      _os_log_debug_impl(&dword_1C0184000, v25, OS_LOG_TYPE_DEBUG, "Reusing _NUStyleEngine instance: %p, queue:%p usage:%@ config:%@ params:%@", buf, 0x34u);
    }

    v26 = v20;
    v27 = configurationCopy;
    styleEngineConfiguration = [(_NUStyleEngineConfiguration *)v22 styleEngineConfiguration];
    processor = [(_NUStyleEngine *)v23 processor];
    [processor setConfiguration:styleEngineConfiguration];

    processor2 = [(_NUStyleEngine *)v23 processor];
    [processor2 setTuningParameters:paramsCopy];
  }

  else
  {
    v23 = [[_NUStyleEngine alloc] initWithUsage:v20 metalCommandQueue:v21 configuration:v22 tuningParams:paramsCopy];
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v31 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219010;
      v49 = v23;
      v50 = 2048;
      v51 = v21;
      v52 = 2112;
      v53 = v20;
      v54 = 2112;
      v55 = configurationCopy;
      v56 = 2112;
      v57 = paramsCopy;
      _os_log_debug_impl(&dword_1C0184000, v31, OS_LOG_TYPE_DEBUG, "Using new _NUStyleEngine instance: %p, queue:%p usage:%@ config:%@ params:%@", buf, 0x34u);
    }

    if (![(_NUStyleEngine *)v23 setupProcessor])
    {
      v35 = 0;
      v37 = v17;
      goto LABEL_14;
    }

    v26 = v20;
    v24 = performCopy;
    v27 = configurationCopy;
  }

  metalCommandQueue = [(_NUStyleEngine *)v23 metalCommandQueue];
  device = [metalCommandQueue device];
  memoryDescriptor = [(_NUStyleEngine *)v23 memoryDescriptor];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __106___NUStyleEngine_usingSharedStyleEngineForUsage_withMetalCommandQueue_configuration_tuningParams_perform___block_invoke_687;
  v41[3] = &unk_1E810B8C8;
  v23 = v23;
  v42 = v23;
  v43 = v24;
  v35 = [_NUStyleEngineMemoryResource usingSharedMemoryResourceForDevice:device withDescriptor:memoryDescriptor perform:v41];

  performCopy = v24;
  [(_NUStyleEngine *)v23 resetProcessor];
  v36 = +[NURenderResourcePool shared];
  v37 = v39;
  [v36 checkInResource:v23 forKey:v39];

  configurationCopy = v27;
  v20 = v26;
LABEL_14:

  return v35;
}

@end