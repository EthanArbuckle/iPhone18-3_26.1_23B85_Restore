@interface NURenderPipelineRegistry
+ (id)sharedRegistry;
- (NURenderPipelineRegistry)init;
- (id)description;
- (id)renderPipelineForIdentifier:(id)a3;
- (void)registerRenderPipeline:(id)a3 forIdentifier:(id)a4;
@end

@implementation NURenderPipelineRegistry

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22415;
  v10 = __Block_byref_object_dispose__22416;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__NURenderPipelineRegistry_description__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__NURenderPipelineRegistry_description__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p> %@", objc_opt_class(), *(a1 + 32), *(*(a1 + 32) + 16)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)renderPipelineForIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_22421();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_22421();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineRegistry renderPipelineForIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineRegistry.m", 55, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "identifier != nil");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__22415;
  v30 = __Block_byref_object_dispose__22416;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NURenderPipelineRegistry_renderPipelineForIdentifier___block_invoke;
  block[3] = &unk_1E810B500;
  v26 = v4;
  v27 = buf;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v7;
}

uint64_t __56__NURenderPipelineRegistry_renderPipelineForIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _renderPipelineForIdentifier:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerRenderPipeline:(id)a3 forIdentifier:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = NUAssertLogger_22421();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v47 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_22421();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v25;
        v48 = 2114;
        v49 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineRegistry registerRenderPipeline:forIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineRegistry.m", 40, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "pipeline != nil");
  }

  if (!v7)
  {
    v18 = NUAssertLogger_22421();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_22421();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v34;
        v48 = 2114;
        v49 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineRegistry registerRenderPipeline:forIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineRegistry.m", 41, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "identifier != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__NURenderPipelineRegistry_registerRenderPipeline_forIdentifier___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v44 = v6;
  v45 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (NURenderPipelineRegistry)init
{
  v8.receiver = self;
  v8.super_class = NURenderPipelineRegistry;
  v2 = [(NURenderPipelineRegistry *)&v8 init];
  v3 = dispatch_queue_create("NURenderPipelineRegistry", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  registry = v2->_registry;
  v2->_registry = v5;

  return v2;
}

+ (id)sharedRegistry
{
  v2 = +[NUFactory sharedFactory];
  v3 = [v2 renderPipelineRegistry];

  return v3;
}

@end