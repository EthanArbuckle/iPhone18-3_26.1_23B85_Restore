@interface MCManagedDomainsCache
+ (id)sharedCache;
- (BOOL)isURLManaged:(id)managed;
- (MCManagedDomainsCache)init;
- (void)memberQueueRereadCache;
- (void)rereadCache;
@end

@implementation MCManagedDomainsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[MCManagedDomainsCache sharedCache];
  }

  v3 = sharedCache_cache_0;

  return v3;
}

uint64_t __36__MCManagedDomainsCache_sharedCache__block_invoke()
{
  sharedCache_cache_0 = objc_alloc_init(MCManagedDomainsCache);

  return MEMORY[0x1EEE66BB8]();
}

- (MCManagedDomainsCache)init
{
  v16.receiver = self;
  v16.super_class = MCManagedDomainsCache;
  v2 = [(MCManagedDomainsCache *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCManagedDomainsCache member queue", MEMORY[0x1E69E96A8]);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memberQueueCache = v2->_memberQueueCache;
    v2->_memberQueueCache = v5;

    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29__MCManagedDomainsCache_init__block_invoke;
    v13[3] = &unk_1E77D1E38;
    objc_copyWeak(&v14, &location);
    v8 = [defaultCenter addObserverForName:@"com.apple.managedconfiguration.effectivesettingschanged" object:0 queue:0 usingBlock:v13];

    v9 = v2->_memberQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MCManagedDomainsCache_init__block_invoke_2;
    block[3] = &unk_1E77D0180;
    v12 = v2;
    dispatch_barrier_sync(v9, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__MCManagedDomainsCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rereadCache];
}

- (BOOL)isURLManaged:(id)managed
{
  managedCopy = managed;
  if (managedCopy)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 0;
    memberQueue = [(MCManagedDomainsCache *)self memberQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MCManagedDomainsCache_isURLManaged___block_invoke;
    block[3] = &unk_1E77D1FE8;
    block[4] = self;
    v10 = managedCopy;
    v11 = buf;
    dispatch_sync(memberQueue, block);

    v6 = v13[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "URL isn't managed since it's nil", buf, 2u);
    }

    v6 = 0;
  }

  return v6 & 1;
}

void __38__MCManagedDomainsCache_isURLManaged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) memberQueueCache];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) matchesURL:*(a1 + 40)])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)rereadCache
{
  memberQueue = [(MCManagedDomainsCache *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MCManagedDomainsCache_rereadCache__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);
}

- (void)memberQueueRereadCache
{
  v19 = *MEMORY[0x1E69E9840];
  memberQueueCache = [(MCManagedDomainsCache *)self memberQueueCache];
  [memberQueueCache removeAllObjects];

  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveUnionValuesForSetting:@"managedWebDomains"];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[MCDomainsCacheEntry alloc] initWithPattern:*(*(&v14 + 1) + 8 * v10)];
        memberQueueCache2 = [(MCManagedDomainsCache *)self memberQueueCache];
        [memberQueueCache2 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __47__MCManagedDomainsCache_memberQueueRereadCache__block_invoke(uint64_t a1, void *a2, void *a3)
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