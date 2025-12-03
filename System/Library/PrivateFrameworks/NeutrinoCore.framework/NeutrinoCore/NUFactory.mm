@interface NUFactory
+ (BOOL)hasSharedFactory;
+ (id)sharedFactory;
+ (void)freeAllResources:(BOOL)resources;
+ (void)reapAllStoragePools;
+ (void)reset;
+ (void)setSharedFactory:(id)factory;
+ (void)shutdownSharedFactory;
- (NUFactory)init;
- (VNSession)visionSession;
- (void)_applicationWillBecomeInactive:(id)inactive;
- (void)_evictVisionSession:(id)session;
- (void)_evictVisionSessionIfNotUsedSince:(id)since;
- (void)_scheduleEvictionOfVisionSession;
- (void)start;
@end

@implementation NUFactory

- (void)_evictVisionSession:(id)session
{
  v9 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_168);
  }

  v5 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = sessionCopy;
    _os_log_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEFAULT, "NUFactory: releasing cached VNSession resources (%{public}@)", &v7, 0xCu);
  }

  [(VNSession *)self->_visionSession releaseCachedResources];
  visionSessionLastUseTime = self->_visionSessionLastUseTime;
  self->_visionSessionLastUseTime = 0;
}

- (void)_evictVisionSessionIfNotUsedSince:(id)since
{
  if ([(NSDate *)self->_visionSessionLastUseTime isEqualToDate:since])
  {

    [(NUFactory *)self _evictVisionSession:@"timer"];
  }
}

- (void)_applicationWillBecomeInactive:(id)inactive
{
  if (self->_visionSessionLastUseTime)
  {
    [(NUFactory *)self _evictVisionSession:@"inactive"];
  }
}

- (void)_scheduleEvictionOfVisionSession
{
  v3 = [MEMORY[0x1E695DF00] now];
  +[NUGlobalSettings visionSessionEvictionDelay];
  if (v4 > 0.0)
  {
    v5 = v4;
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__NUFactory__scheduleEvictionOfVisionSession__block_invoke;
    block[3] = &unk_1E81097C8;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    dispatch_after(v6, queue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  visionSessionLastUseTime = self->_visionSessionLastUseTime;
  self->_visionSessionLastUseTime = v3;
}

void __45__NUFactory__scheduleEvictionOfVisionSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _evictVisionSessionIfNotUsedSince:*(a1 + 32)];
}

- (VNSession)visionSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3020;
  v10 = __Block_byref_object_dispose__3021;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__NUFactory_visionSession__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__NUFactory_visionSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _scheduleEvictionOfVisionSession];
  v2 = *(*(a1 + 32) + 16);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)start
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self->_schemaRegistry)
  {
    v3 = objc_alloc_init(NUSchemaRegistry);
    schemaRegistry = self->_schemaRegistry;
    self->_schemaRegistry = v3;
  }

  if (!self->_renderPipelineRegistry)
  {
    v5 = objc_alloc_init(NURenderPipelineRegistry);
    renderPipelineRegistry = self->_renderPipelineRegistry;
    self->_renderPipelineRegistry = v5;
  }

  if (!self->_defaultNamespace)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      if (NSClassFromString(&cfstr_Xctestprobe.isa))
      {
        bundleIdentifier = @"com.apple.test";
      }

      else
      {
        bundleIdentifier = @"com.apple.Photos";
      }
    }

    defaultNamespace = self->_defaultNamespace;
    self->_defaultNamespace = &bundleIdentifier->isa;
  }

  if (!self->_scheduler)
  {
    v10 = [[NUScheduler alloc] initWithName:@"shared"];
    scheduler = self->_scheduler;
    self->_scheduler = v10;
  }

  if (!self->_bufferStoragePool)
  {
    v12 = [[NUPurgeableStoragePool alloc] initWithStorageClass:objc_opt_class()];
    bufferStoragePool = self->_bufferStoragePool;
    self->_bufferStoragePool = v12;
  }

  if (!self->_surfaceStoragePool)
  {
    v14 = [[NUPurgeableStoragePool alloc] initWithStorageClass:objc_opt_class()];
    surfaceStoragePool = self->_surfaceStoragePool;
    self->_surfaceStoragePool = v14;
  }

  if (!self->_bufferFactory)
  {
    v16 = +[NUGlobalSettings bufferStorageFactoryUsePool];
    v17 = [NUPurgeableStorageFactory alloc];
    if (v16)
    {
      v18 = [(NUPurgeableStorageFactory *)v17 initWithStoragePool:self->_bufferStoragePool];
    }

    else
    {
      v18 = [(NUPurgeableStorageFactory *)v17 initWithStorageClass:objc_opt_class()];
    }

    bufferFactory = self->_bufferFactory;
    self->_bufferFactory = v18;
  }

  if (!self->_surfaceFactory)
  {
    v20 = +[NUGlobalSettings surfaceStorageFactoryUsePool];
    v21 = [NUPurgeableStorageFactory alloc];
    if (v20)
    {
      v22 = [(NUPurgeableStorageFactory *)v21 initWithStoragePool:self->_surfaceStoragePool];
    }

    else
    {
      v22 = [(NUPurgeableStorageFactory *)v21 initWithStorageClass:objc_opt_class()];
    }

    surfaceFactory = self->_surfaceFactory;
    self->_surfaceFactory = v22;
  }

  if (!self->_renderNodeCache)
  {
    v24 = objc_alloc_init(NURenderNodeCache);
    renderNodeCache = self->_renderNodeCache;
    self->_renderNodeCache = v24;
  }

  if (!self->_renderResultCache)
  {
    v26 = objc_alloc_init(NURenderResultCache);
    renderResultCache = self->_renderResultCache;
    self->_renderResultCache = v26;
  }

  if (!self->_platform)
  {
    v28 = objc_alloc_init(NUPlatform_iOS);
    platform = self->_platform;
    self->_platform = &v28->super;
  }

  if (!self->_cacheNodeRegistry)
  {
    v30 = objc_alloc_init(NUCacheNodeRegistry);
    cacheNodeRegistry = self->_cacheNodeRegistry;
    self->_cacheNodeRegistry = v30;
  }

  if (!self->_visionSession)
  {
    v32 = objc_alloc_init(MEMORY[0x1E6984688]);
    visionSession = self->_visionSession;
    self->_visionSession = v32;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__applicationWillBecomeInactive_ name:@"UIApplicationWillResignActiveNotification" object:0];
  }

  if (!self->_renderResourcePool)
  {
    v35 = objc_alloc_init(NURenderResourcePool);
    renderResourcePool = self->_renderResourcePool;
    self->_renderResourcePool = v35;
  }

  v37 = +[NUGlobalSettings debugSoftMemoryLimit];
  if (v37 >= 1)
  {
    v38 = v37;
    getpid();
    v39 = memorystatus_control();
    if (v39)
    {
      v40 = v39;
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_168);
      }

      v41 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v46) = v40;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Failed to set soft memory limit (%d)", buf, 8u);
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_168);
      }

      v42 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = v38;
        _os_log_impl(&dword_1C0184000, v42, OS_LOG_TYPE_DEFAULT, "Successfully set soft memory limit to %ld MB", buf, 0xCu);
      }
    }
  }

  if (!self->_modelRegistry)
  {
    v43 = objc_alloc_init(NUMLModelRegistry);
    modelRegistry = self->_modelRegistry;
    self->_modelRegistry = v43;
  }
}

- (NUFactory)init
{
  v7.receiver = self;
  v7.super_class = NUFactory;
  v2 = [(NUFactory *)&v7 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NUFactory", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  return v2;
}

+ (void)freeAllResources:(BOOL)resources
{
  resourcesCopy = resources;
  if ([self hasSharedFactory])
  {
    [NUPurgeableStoragePool purge:0];
    v5 = +[NUPlatform currentPlatform];
    [v5 clearCaches];

    if (resourcesCopy)
    {

      [self shutdownSharedFactory];
    }
  }
}

+ (BOOL)hasSharedFactory
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sCurrentFactory != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)reapAllStoragePools
{
  +[NUPurgeableStoragePool reapAllPurged];

  +[NUPurgeableStoragePool reapAllVolatile];
}

+ (void)reset
{
  v3 = objc_alloc_init(NUFactory);
  [self setSharedFactory:v3];
}

+ (void)setSharedFactory:(id)factory
{
  v41 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  if (!factoryCopy)
  {
    v6 = NUAssertLogger_3063();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "factory != nil"];
      *buf = 138543362;
      v38 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_3063();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v20;
        v39 = 2114;
        v40 = v24;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUFactory setSharedFactory:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUFactory.m", 86, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "factory != nil");
  }

  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (sCurrentFactory == factoryCopy)
  {
    v13 = NUAssertLogger_3063();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot call [NUFactory setSharedFactory:] with itself. self:%@", self];
      *buf = 138543362;
      v38 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_3063();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v17)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v31 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v29;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUFactory setSharedFactory:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUFactory.m", 88, @"Cannot call [NUFactory setSharedFactory:] with itself. self:%@", v32, v33, v34, v35, self);
  }

  objc_storeStrong(&sCurrentFactory, factory);
  [sCurrentFactory start];
  objc_sync_exit(v5);
}

+ (void)shutdownSharedFactory
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = sCurrentFactory;
  sCurrentFactory = 0;

  objc_sync_exit(obj);
}

+ (id)sharedFactory
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = sCurrentFactory;
  if (!sCurrentFactory)
  {
    v4 = objc_alloc_init(NUFactory);
    v5 = sCurrentFactory;
    sCurrentFactory = v4;

    [sCurrentFactory start];
    v3 = sCurrentFactory;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

@end