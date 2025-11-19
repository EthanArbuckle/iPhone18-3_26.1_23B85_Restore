@interface _CNUILikenessImageCache
- (_CNUILikenessImageCache)initWithCapacity:(unint64_t)a3 hasContactStore:(BOOL)a4;
- (void)emptyCache:(id)a3;
- (void)invalidateCacheEntriesContainingIdentifiers:(id)a3;
- (void)touchCacheKey:(id)a3;
@end

@implementation _CNUILikenessImageCache

- (_CNUILikenessImageCache)initWithCapacity:(unint64_t)a3 hasContactStore:(BOOL)a4
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
    v12 = [v11 boundedQueueWithCapacity:a3 overflowHandler:v32];
    v13 = *(v6 + 2);
    *(v6 + 2) = v12;

    if (!a4)
    {
      v14 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A31E6000, v14, OS_LOG_TYPE_INFO, "No contact store provided, will empty cache on CNContactStoreDidChangeNotification", buf, 2u);
      }

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 addObserver:v6 selector:sel_emptyCache_ name:*MEMORY[0x1E695C3D8] object:0];
    }

    v16 = [MEMORY[0x1E69966E8] currentEnvironment];
    v17 = [v16 featureFlags];
    v18 = [v17 isFeatureEnabled:6];

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

- (void)emptyCache:(id)a3
{
  v3 = [(_CNUILikenessImageCache *)self lock];
  CNRunWithLock();
}

- (void)touchCacheKey:(id)a3
{
  v4 = MEMORY[0x1E69966E8];
  v5 = a3;
  v6 = [v4 currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:6];

  if (v8)
  {
    v9 = [(_CNUILikenessImageCache *)self lock];
    [v9 assertCurrentThreadIsOwner];
  }

  v10 = [(_CNUILikenessImageCache *)self evictionQueue];
  [v10 dequeueObject:v5];

  v11 = [(_CNUILikenessImageCache *)self evictionQueue];
  [v11 enqueue:v5];
}

- (void)invalidateCacheEntriesContainingIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(_CNUILikenessImageCache *)self lock];
  v6 = v4;
  CNRunWithLock();
}

@end