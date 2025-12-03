@interface DDSCache
- (DDSCache)init;
- (id)objectForKey:(id)key;
- (void)cacheObject:(id)object forKey:(id)key;
- (void)clearCache;
- (void)removeEntriesWithPrefixKey:(id)key;
@end

@implementation DDSCache

- (DDSCache)init
{
  v6.receiver = self;
  v6.super_class = DDSCache;
  v2 = [(DDSCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)cacheObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  cache = [(DDSCache *)self cache];
  [cache setObject:objectCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  cache = [(DDSCache *)self cache];
  v6 = [cache objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)removeEntriesWithPrefixKey:(id)key
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  cache = [(DDSCache *)self cache];
  allKeys = [cache allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        if ([v13 hasPrefix:keyCopy])
        {
          [array addObject:v13];
          cache2 = [(DDSCache *)self cache];
          v15 = [cache2 objectForKey:v13];
          [array2 addObject:v15];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = array;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        cache3 = [(DDSCache *)self cache];
        [cache3 removeObjectForKey:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&self->_lock);
  v23 = DefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [array2 count];
    *buf = 134218498;
    v35 = v24;
    v36 = 2114;
    v37 = keyCopy;
    v38 = 2114;
    v39 = array2;
    _os_log_impl(&dword_1DF7C6000, v23, OS_LOG_TYPE_DEFAULT, "Cache evicted %lu objects with prefixKey: %{public}@, Evicted objects: %{public}@", buf, 0x20u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)clearCache
{
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Clearing cache", v5, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  cache = [(DDSCache *)self cache];
  [cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

@end