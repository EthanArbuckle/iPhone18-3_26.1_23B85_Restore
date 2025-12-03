@interface NURenderResultCache
+ (id)shared;
- (NURenderResultCache)init;
- (id)resultForJob:(id)job;
- (void)flush;
- (void)setResult:(id)result forJob:(id)job;
@end

@implementation NURenderResultCache

- (void)flush
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NURenderResultCache_flush__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __28__NURenderResultCache_flush__block_invoke(uint64_t a1)
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31_29349);
  }

  v2 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1C0184000, v2, OS_LOG_TYPE_DEBUG, "MEMOIZE CACHE FLUSH", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (void)setResult:(id)result forJob:(id)job
{
  v54 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  jobCopy = job;
  if (!jobCopy)
  {
    v14 = NUAssertLogger_29354();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "job != nil"];
      *buf = 138543362;
      v51 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_29354();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v28;
        v52 = 2114;
        v53 = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResultCache setResult:forJob:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResultCache.m", 52, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "job != nil");
  }

  if (!resultCopy)
  {
    v21 = NUAssertLogger_29354();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "result != nil"];
      *buf = 138543362;
      v51 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_29354();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols3 = [v38 callStackSymbols];
        v41 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v37;
        v52 = 2114;
        v53 = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResultCache setResult:forJob:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResultCache.m", 53, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "result != nil");
  }

  v8 = jobCopy;
  memoizationCacheKey = [jobCopy memoizationCacheKey];
  if (memoizationCacheKey)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__NURenderResultCache_setResult_forJob___block_invoke;
    block[3] = &unk_1E810B6B8;
    block[4] = self;
    v47 = v11;
    v48 = memoizationCacheKey;
    v49 = resultCopy;
    v13 = v11;
    dispatch_sync(queue, block);
  }
}

void __40__NURenderResultCache_setResult_forJob___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ result cache", a1[5]];
    [v2 setName:v3];

    [v2 setCountLimit:16];
    [*(a1[4] + 16) setObject:v2 forKeyedSubscript:a1[5]];
  }

  v4 = [v2 objectForKey:a1[6]];

  if (!v4)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31_29349);
    }

    v5 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[5];
      v7 = a1[6];
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEBUG, "MEMOIZE %@ %@ CACHE STORE", buf, 0x16u);
    }

    [v2 setObject:a1[7] forKey:a1[6]];
  }
}

- (id)resultForJob:(id)job
{
  v44 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  if (!jobCopy)
  {
    v16 = NUAssertLogger_29354();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "job != nil"];
      *v40 = 138543362;
      *&v40[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v40, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_29354();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v40 = 138543618;
        *&v40[4] = v23;
        *&v40[12] = 2114;
        *&v40[14] = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v40, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v40 = 138543362;
      *&v40[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v40, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResultCache resultForJob:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResultCache.m", 27, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "job != nil");
  }

  v5 = jobCopy;
  memoizationCacheKey = [jobCopy memoizationCacheKey];
  if (!memoizationCacheKey)
  {
    v14 = 0;
    goto LABEL_13;
  }

  *v40 = 0;
  *&v40[8] = v40;
  *&v40[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__29385;
  v42 = __Block_byref_object_dispose__29386;
  v43 = 0;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NURenderResultCache_resultForJob___block_invoke;
  block[3] = &unk_1E810BA20;
  block[4] = self;
  v10 = v8;
  v33 = v10;
  v35 = v40;
  v11 = memoizationCacheKey;
  v34 = v11;
  dispatch_sync(queue, block);
  if (*(*&v40[8] + 40))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31_29349);
    }

    v12 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    v13 = "MEMOIZE %@ %@ CACHE HIT";
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31_29349);
    }

    v12 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    v13 = "MEMOIZE %@ %@ CACHE MISS";
  }

  _os_log_debug_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);
LABEL_12:
  v14 = *(*&v40[8] + 40);

  _Block_object_dispose(v40, 8);
LABEL_13:

  return v14;
}

void __36__NURenderResultCache_resultForJob___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 objectForKey:a1[6]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (NURenderResultCache)init
{
  v9.receiver = self;
  v9.super_class = NURenderResultCache;
  v2 = [(NURenderResultCache *)&v9 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NURenderResultCache", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cache = v2->_cache;
  v2->_cache = v6;

  return v2;
}

+ (id)shared
{
  v2 = +[NUFactory sharedFactory];
  renderResultCache = [v2 renderResultCache];

  return renderResultCache;
}

@end