@interface NUCacheNodeRegistry
- (Class)classForCacheNodeType:(id)type;
- (NUCacheNodeRegistry)init;
- (void)registerClass:(Class)class forCacheNodeType:(id)type;
@end

@implementation NUCacheNodeRegistry

- (Class)classForCacheNodeType:(id)type
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
  {
    v9 = NUAssertLogger_165();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "type != nil"];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_165();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNodeRegistry classForCacheNodeType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNodeRegistry.m", 45, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "type != nil");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2050000000;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NUCacheNodeRegistry_classForCacheNodeType___block_invoke;
  block[3] = &unk_1E810B500;
  v26 = typeCopy;
  v27 = buf;
  block[4] = self;
  v6 = typeCopy;
  dispatch_sync(queue, block);
  v7 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);

  return v7;
}

uint64_t __45__NUCacheNodeRegistry_classForCacheNodeType___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)registerClass:(Class)class forCacheNodeType:(id)type
{
  v65 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!class)
  {
    v10 = NUAssertLogger_165();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cacheNodeClass != nil"];
      *buf = 138543362;
      v62 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_165();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v31;
        v63 = 2114;
        v64 = v35;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNodeRegistry registerClass:forCacheNodeType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNodeRegistry.m", 33, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "cacheNodeClass != nil");
  }

  v7 = typeCopy;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v17 = NUAssertLogger_165();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[cacheNodeClass isSubclassOfClass:NUCacheNode.class]"];
      *buf = 138543362;
      v62 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_165();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v40;
        v63 = 2114;
        v64 = v44;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNodeRegistry registerClass:forCacheNodeType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNodeRegistry.m", 34, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "[cacheNodeClass isSubclassOfClass:NUCacheNode.class]");
  }

  if (!v7)
  {
    v24 = NUAssertLogger_165();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "type != nil"];
      *buf = 138543362;
      v62 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_165();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols5 = [v50 callStackSymbols];
        v53 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v49;
        v63 = 2114;
        v64 = v53;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNodeRegistry registerClass:forCacheNodeType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNodeRegistry.m", 35, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "type != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NUCacheNodeRegistry_registerClass_forCacheNodeType___block_invoke;
  block[3] = &unk_1E8109238;
  block[4] = self;
  v59 = v7;
  classCopy = class;
  v9 = v7;
  dispatch_barrier_sync(queue, block);
}

- (NUCacheNodeRegistry)init
{
  v9.receiver = self;
  v9.super_class = NUCacheNodeRegistry;
  v2 = [(NUCacheNodeRegistry *)&v9 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NUCacheNodeRegistry", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  registry = v2->_registry;
  v2->_registry = v6;

  [(NSMutableDictionary *)v2->_registry setObject:objc_opt_class() forKeyedSubscript:@"Image"];
  [(NSMutableDictionary *)v2->_registry setObject:objc_opt_class() forKeyedSubscript:@"Video"];
  [(NSMutableDictionary *)v2->_registry setObject:objc_opt_class() forKeyedSubscript:@"Intermediate"];
  [(NSMutableDictionary *)v2->_registry setObject:objc_opt_class() forKeyedSubscript:@"Memory"];
  return v2;
}

@end