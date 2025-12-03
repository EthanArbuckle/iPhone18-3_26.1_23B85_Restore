@interface NURenderResourcePool
+ (id)shared;
- (NURenderResourcePool)init;
- (id)_checkOutResourceForKey:(id)key matching:(id)matching;
- (id)_resourceMatching:(id)matching;
- (id)checkOutResourceForKey:(id)key matching:(id)matching;
- (void)_checkInResource:(id)resource forKey:(id)key;
- (void)_evictResource:(id)resource ifNotUsedSince:(id)since;
- (void)_flush;
- (void)_scheduleEvictionOfResource:(id)resource;
- (void)checkInResource:(id)resource forKey:(id)key;
- (void)flush;
@end

@implementation NURenderResourcePool

- (void)_flush
{
  v9 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
  }

  v3 = _NULogger;
  v4 = v3;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [(NSMutableArray *)self->_resources count];
    v7 = 134217984;
    v8 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_EVENT, sid, "NURenderResourcePool.flush", "count=%lu", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_resources removeAllObjects];
}

- (void)flush
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__NURenderResourcePool_flush__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_evictResource:(id)resource ifNotUsedSince:(id)since
{
  v31 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  sinceCopy = since;
  if (([resourceCopy inUse] & 1) == 0)
  {
    lastUseTime = [resourceCopy lastUseTime];
    v9 = [lastUseTime isEqualToDate:sinceCopy];

    if (v9)
    {
      v10 = [(NSMutableArray *)self->_resources indexOfObjectIdenticalTo:resourceCopy];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->_resources removeObjectAtIndex:v10];
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
        }

        v11 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          v12 = v11;
          v13 = [resourceCopy key];
          object = [resourceCopy object];
          useCount = [resourceCopy useCount];
          v16 = [(NSMutableArray *)self->_resources count];
          v23 = 138413058;
          v24 = v13;
          v25 = 2048;
          v26 = object;
          v27 = 2048;
          v28 = useCount;
          v29 = 2048;
          v30 = v16;
          _os_log_impl(&dword_1C0184000, v12, OS_LOG_TYPE_INFO, "NURenderResource: evicted unused resource: %@ %p [%lu] (%lu remaining)", &v23, 0x2Au);

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
          }
        }

        v17 = _NULogger;
        v18 = [resourceCopy sid];
        if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = v18;
          if (os_signpost_enabled(v17))
          {
            v20 = [resourceCopy key];
            object2 = [resourceCopy object];
            useCount2 = [resourceCopy useCount];
            v23 = 138412802;
            v24 = v20;
            v25 = 2048;
            v26 = object2;
            v27 = 2048;
            v28 = useCount2;
            _os_signpost_emit_with_name_impl(&dword_1C0184000, v17, OS_SIGNPOST_EVENT, v19, "NURenderResource.evicted", "key=%@, obj=%p, count=%lu", &v23, 0x20u);
          }
        }
      }
    }
  }
}

- (void)_scheduleEvictionOfResource:(id)resource
{
  resourceCopy = resource;
  lastUseTime = [resourceCopy lastUseTime];
  +[NUGlobalSettings renderResourceEvictionDelay];
  if (v6 <= 0.0)
  {
    [(NURenderResourcePool *)self _evictResource:resourceCopy ifNotUsedSince:lastUseTime];
  }

  else
  {
    v7 = v6;
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__NURenderResourcePool__scheduleEvictionOfResource___block_invoke;
    v10[3] = &unk_1E810A1C0;
    objc_copyWeak(&v13, &location);
    v11 = resourceCopy;
    v12 = lastUseTime;
    dispatch_after(v8, queue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __52__NURenderResourcePool__scheduleEvictionOfResource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _evictResource:*(a1 + 32) ifNotUsedSince:*(a1 + 40)];
}

- (void)_checkInResource:(id)resource forKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  keyCopy = key;
  v8 = [MEMORY[0x1E695DF00] now];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __48__NURenderResourcePool__checkInResource_forKey___block_invoke;
  v22 = &unk_1E810A198;
  v9 = keyCopy;
  v23 = v9;
  v10 = resourceCopy;
  v24 = v10;
  v11 = [(NURenderResourcePool *)self _resourceMatching:&v19];
  if (!v11)
  {
    v12 = [_NURenderResource alloc];
    v11 = [(_NURenderResource *)v12 initWithResource:v10 key:v9, v19, v20, v21, v22, v23];
    [(NSMutableArray *)self->_resources addObject:v11];
  }

  [(_NURenderResource *)v11 setInUse:0, v19, v20, v21, v22];
  [(_NURenderResource *)v11 setUseCount:[(_NURenderResource *)v11 useCount]+ 1];
  [(_NURenderResource *)v11 setLastUseTime:v8];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
  }

  v13 = _NULogger;
  v14 = [(_NURenderResource *)v11 sid];
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      v16 = [(_NURenderResource *)v11 key];
      object = [(_NURenderResource *)v11 object];
      useCount = [(_NURenderResource *)v11 useCount];
      *buf = 138412802;
      v26 = v16;
      v27 = 2048;
      v28 = object;
      v29 = 2048;
      v30 = useCount;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v13, OS_SIGNPOST_INTERVAL_END, v15, "NURenderResource.use", "key=%@, obj=%p, count=%lu", buf, 0x20u);
    }
  }

  [(NURenderResourcePool *)self _scheduleEvictionOfResource:v11];
}

BOOL __48__NURenderResourcePool__checkInResource_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 key];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 object];
    v6 = v5 == *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)checkInResource:(id)resource forKey:(id)key
{
  v50 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  keyCopy = key;
  if (!resourceCopy)
  {
    v11 = NUAssertLogger_12301();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v47 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_12301();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v25;
        v48 = 2114;
        v49 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResourcePool checkInResource:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResourcePool.m", 78, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "object != nil");
  }

  if (!keyCopy)
  {
    v18 = NUAssertLogger_12301();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_12301();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v34;
        v48 = 2114;
        v49 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResourcePool checkInResource:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResourcePool.m", 79, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "key != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NURenderResourcePool_checkInResource_forKey___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v44 = resourceCopy;
  v45 = keyCopy;
  v9 = keyCopy;
  v10 = resourceCopy;
  dispatch_sync(queue, block);
}

- (id)_resourceMatching:(id)matching
{
  matchingCopy = matching;
  resources = self->_resources;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__NURenderResourcePool__resourceMatching___block_invoke;
  v10[3] = &unk_1E810A170;
  v6 = matchingCopy;
  v11 = v6;
  v7 = [(NSMutableArray *)resources indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_resources objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (id)_checkOutResourceForKey:(id)key matching:(id)matching
{
  keyCopy = key;
  matchingCopy = matching;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __57__NURenderResourcePool__checkOutResourceForKey_matching___block_invoke;
  v15 = &unk_1E810A148;
  v16 = keyCopy;
  v17 = matchingCopy;
  v8 = matchingCopy;
  v9 = keyCopy;
  v10 = [(NURenderResourcePool *)self _resourceMatching:&v12];
  [v10 setInUse:{1, v12, v13, v14, v15}];

  return v10;
}

uint64_t __57__NURenderResourcePool__checkOutResourceForKey_matching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 inUse])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 key];
    if ([v5 isEqualToString:*(a1 + 32)])
    {
      v6 = *(a1 + 40);
      v7 = [v3 object];
      v4 = (*(v6 + 16))(v6, v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)checkOutResourceForKey:(id)key matching:(id)matching
{
  v64 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  matchingCopy = matching;
  if (!keyCopy)
  {
    v20 = NUAssertLogger_12301();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *v60 = 138543362;
      *&v60[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v60, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_12301();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v60 = 138543618;
        *&v60[4] = v34;
        *&v60[12] = 2114;
        *&v60[14] = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v60, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v60 = 138543362;
      *&v60[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v60, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResourcePool checkOutResourceForKey:matching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResourcePool.m", 47, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "key != nil");
  }

  v8 = matchingCopy;
  if (!matchingCopy)
  {
    v27 = NUAssertLogger_12301();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "predicate != nil"];
      *v60 = 138543362;
      *&v60[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v60, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_12301();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v60 = 138543618;
        *&v60[4] = v43;
        *&v60[12] = 2114;
        *&v60[14] = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v60, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v60 = 138543362;
      *&v60[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v60, 0xCu);
    }

    _NUAssertFailHandler("[NURenderResourcePool checkOutResourceForKey:matching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderResourcePool.m", 48, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "predicate != nil");
  }

  *v60 = 0;
  *&v60[8] = v60;
  *&v60[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__12343;
  v62 = __Block_byref_object_dispose__12344;
  v63 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NURenderResourcePool_checkOutResourceForKey_matching___block_invoke;
  block[3] = &unk_1E810A120;
  v55 = v60;
  block[4] = self;
  v10 = keyCopy;
  v53 = v10;
  v11 = v8;
  v54 = v11;
  dispatch_sync(queue, block);
  if (*(*&v60[8] + 40))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
    }

    v12 = _NULogger;
    v13 = [*(*&v60[8] + 40) sid];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = [*(*&v60[8] + 40) key];
      object = [*(*&v60[8] + 40) object];
      *buf = 138412546;
      v57 = v14;
      v58 = 2048;
      v59 = object;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "NURenderResource.use", "key=%@, obj=%p", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
    }

    v16 = _NULogger;
    v12 = v16;
    sid = self->_sid;
    if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138412290;
      v57 = v10;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v12, OS_SIGNPOST_EVENT, sid, "NURenderResource.miss", "key=%@", buf, 0xCu);
    }
  }

  object2 = [*(*&v60[8] + 40) object];

  _Block_object_dispose(v60, 8);

  return object2;
}

uint64_t __56__NURenderResourcePool_checkOutResourceForKey_matching___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _checkOutResourceForKey:*(a1 + 40) matching:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (NURenderResourcePool)init
{
  v9.receiver = self;
  v9.super_class = NURenderResourcePool;
  v2 = [(NURenderResourcePool *)&v9 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NURenderResourcePool", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  resources = v2->_resources;
  v2->_resources = v6;

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_12245);
  }

  v2->_sid = os_signpost_id_make_with_pointer(_NULogger, v2);
  return v2;
}

+ (id)shared
{
  v2 = +[NUFactory sharedFactory];
  renderResourcePool = [v2 renderResourcePool];

  return renderResourcePool;
}

@end