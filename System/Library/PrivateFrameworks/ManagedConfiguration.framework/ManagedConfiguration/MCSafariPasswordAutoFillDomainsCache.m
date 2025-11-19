@interface MCSafariPasswordAutoFillDomainsCache
+ (id)sharedCache;
- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)a3;
- (MCSafariPasswordAutoFillDomainsCache)init;
- (void)memberQueueRereadCache;
- (void)rereadCache;
@end

@implementation MCSafariPasswordAutoFillDomainsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[MCSafariPasswordAutoFillDomainsCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

uint64_t __51__MCSafariPasswordAutoFillDomainsCache_sharedCache__block_invoke()
{
  sharedCache_cache = objc_alloc_init(MCSafariPasswordAutoFillDomainsCache);

  return MEMORY[0x1EEE66BB8]();
}

- (MCSafariPasswordAutoFillDomainsCache)init
{
  v14.receiver = self;
  v14.super_class = MCSafariPasswordAutoFillDomainsCache;
  v2 = [(MCSafariPasswordAutoFillDomainsCache *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCSafariPasswordAutoFillDomainsCache member queue", MEMORY[0x1E69E96A8]);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;

    objc_initWeak(&location, v2);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__MCSafariPasswordAutoFillDomainsCache_init__block_invoke;
    v11[3] = &unk_1E77D1E38;
    objc_copyWeak(&v12, &location);
    v6 = [v5 addObserverForName:@"com.apple.managedconfiguration.effectivesettingschanged" object:0 queue:0 usingBlock:v11];

    v7 = v2->_memberQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__MCSafariPasswordAutoFillDomainsCache_init__block_invoke_2;
    block[3] = &unk_1E77D0180;
    v10 = v2;
    dispatch_barrier_async(v7, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __44__MCSafariPasswordAutoFillDomainsCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rereadCache];
}

- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = [(MCSafariPasswordAutoFillDomainsCache *)self memberQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__MCSafariPasswordAutoFillDomainsCache_isSafariPasswordAutoFillAllowedForURL___block_invoke;
    block[3] = &unk_1E77D1E60;
    block[4] = self;
    v11 = buf;
    v10 = v4;
    dispatch_sync(v5, block);

    v6 = v13[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Safari Password Auto Fill isn't allowed since the URL is nil", buf, 2u);
    }

    v6 = 0;
  }

  return v6 & 1;
}

void __78__MCSafariPasswordAutoFillDomainsCache_isSafariPasswordAutoFillAllowedForURL___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) memberQueueCache];

  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(a1 + 32) memberQueueCache];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v11 + 1) + 8 * i) matchesURL:*(a1 + 40)])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = [MEMORY[0x1E69AD420] sharedConfiguration];
    *(*(*(a1 + 48) + 8) + 24) = [v10 userMode] != 1;
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)rereadCache
{
  v3 = [(MCSafariPasswordAutoFillDomainsCache *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MCSafariPasswordAutoFillDomainsCache_rereadCache__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_barrier_async(v3, block);
}

- (void)memberQueueRereadCache
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[MCRestrictionManager sharedManager];
  v4 = [v3 effectiveUnionValuesForSetting:@"allowedSafariPasswordAutoFillDomains"];

  if (v4)
  {
    v5 = [(MCSafariPasswordAutoFillDomainsCache *)self memberQueueCache];

    if (v5)
    {
      v6 = [(MCSafariPasswordAutoFillDomainsCache *)self memberQueueCache];
      [v6 removeAllObjects];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [(MCSafariPasswordAutoFillDomainsCache *)self setMemberQueueCache:v6];
    }

    v7 = [v4 sortedArrayUsingComparator:&__block_literal_global_9];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[MCDomainsCacheEntry alloc] initWithPattern:*(*(&v15 + 1) + 8 * v11)];
          v13 = [(MCSafariPasswordAutoFillDomainsCache *)self memberQueueCache];
          [v13 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(MCSafariPasswordAutoFillDomainsCache *)self setMemberQueueCache:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __62__MCSafariPasswordAutoFillDomainsCache_memberQueueRereadCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 length];
  v6 = [v4 length];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

@end