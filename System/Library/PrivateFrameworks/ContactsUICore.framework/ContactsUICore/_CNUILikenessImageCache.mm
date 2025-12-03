@interface _CNUILikenessImageCache
- (_CNUILikenessImageCache)initWithCapacity:(unint64_t)capacity hasContactStore:(BOOL)store;
- (void)emptyCache:(id)cache;
- (void)invalidateCacheEntriesContainingIdentifiers:(id)identifiers;
- (void)touchCacheKey:(id)key;
@end

@implementation _CNUILikenessImageCache

- (_CNUILikenessImageCache)initWithCapacity:(unint64_t)capacity hasContactStore:(BOOL)store
{
  v35.receiver = self;
  v35.super_class = _CNUILikenessImageCache;
  v6 = [(_CNUILikenessImageCache *)&v35 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6996660]);
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E6996878]);
    v10 = *(v6 + 3);
    *(v6 + 3) = v9;

    objc_initWeak(&location, v6);
    v11 = MEMORY[0x1E69967F0];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke;
    v32[3] = &unk_1E76EA360;
    objc_copyWeak(&v33, &location);
    v12 = [v11 boundedQueueWithCapacity:capacity overflowHandler:v32];
    v13 = *(v6 + 2);
    *(v6 + 2) = v12;

    if (!store)
    {
      v14 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A31E6000, v14, OS_LOG_TYPE_INFO, "No contact store provided, will empty cache on CNContactStoreDidChangeNotification", buf, 2u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel_emptyCache_ name:*MEMORY[0x1E695C3D8] object:0];
    }

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v18 = [featureFlags isFeatureEnabled:6];

    if (v18)
    {
      v19 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, 0);
      v20 = *(v6 + 4);
      *(v6 + 4) = v19;

      v21 = *(v6 + 4);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_8;
      v29[3] = &unk_1E76E8280;
      v22 = &v30;
      objc_copyWeak(&v30, &location);
      v23 = v29;
    }

    else
    {
      v24 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, MEMORY[0x1E69E96A0]);
      v25 = *(v6 + 4);
      *(v6 + 4) = v24;

      v21 = *(v6 + 4);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_3;
      v27[3] = &unk_1E76E8280;
      v22 = &v28;
      objc_copyWeak(&v28, &location);
      v23 = v27;
    }

    dispatch_source_set_event_handler(v21, v23);
    dispatch_resume(*(v6 + 4));
    objc_destroyWeak(v22);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)emptyCache:(id)cache
{
  lock = [(_CNUILikenessImageCache *)self lock];
  CNRunWithLock();
}

- (void)touchCacheKey:(id)key
{
  v4 = MEMORY[0x1E69966E8];
  keyCopy = key;
  currentEnvironment = [v4 currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:6];

  if (v8)
  {
    lock = [(_CNUILikenessImageCache *)self lock];
    [lock assertCurrentThreadIsOwner];
  }

  evictionQueue = [(_CNUILikenessImageCache *)self evictionQueue];
  [evictionQueue dequeueObject:keyCopy];

  evictionQueue2 = [(_CNUILikenessImageCache *)self evictionQueue];
  [evictionQueue2 enqueue:keyCopy];
}

- (void)invalidateCacheEntriesContainingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  lock = [(_CNUILikenessImageCache *)self lock];
  v6 = identifiersCopy;
  CNRunWithLock();
}

@end