@interface BMCache
+ (id)strongCache;
+ (id)strongCacheWithFallbackCache:(id)a3;
+ (id)weakCache;
- (id)_initWithMapTable:(id)a3 fallback:(id)a4;
- (id)cachedObjectWithKey:(id)a3 missHandler:(id)a4;
- (void)pruneCacheWithBlock:(id)a3 completion:(id)a4;
- (void)removeCachedObjectForKey:(id)a3 performWhileLocked:(id)a4;
@end

@implementation BMCache

+ (id)weakCache
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v4 = [v2 _initWithMapTable:v3 fallback:0];

  return v4;
}

- (id)_initWithMapTable:(id)a3 fallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMCache;
  v9 = [(BMCache *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_mapTable, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

+ (id)strongCache
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = [v2 _initWithMapTable:v3 fallback:0];

  return v4;
}

+ (id)strongCacheWithFallbackCache:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v7 = [v5 _initWithMapTable:v6 fallback:v4];

  return v7;
}

- (id)cachedObjectWithKey:(id)a3 missHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_mapTable objectForKey:v6];
  if (v8)
  {
    v9 = [(BMCache *)self isExpiredBlock];
    v10 = v9;
    if (!v9 || !(*(v9 + 16))(v9, v8))
    {
      v13 = v8;

      goto LABEL_14;
    }

    [(NSMapTable *)self->_mapTable removeObjectForKey:v6];
  }

  fallback = self->_fallback;
  if (fallback)
  {
    v12 = [(BMCache *)fallback cachedObjectWithKey:v6 missHandler:v7];
    goto LABEL_10;
  }

  if (v7)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = v7[2](v7);
    objc_autoreleasePoolPop(v14);
LABEL_10:
    if (v12)
    {
      mapTable = self->_mapTable;
      v16 = [v6 copyWithZone:0];
      [(NSMapTable *)mapTable setObject:v12 forKey:v16];
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:
  v13 = v12;
LABEL_14:

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (void)removeCachedObjectForKey:(id)a3 performWhileLocked:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_mapTable removeObjectForKey:v8];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v6[2](v6);
    objc_autoreleasePoolPop(v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pruneCacheWithBlock:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v25 = a4;
  if (!v7)
  {
    [BMCache pruneCacheWithBlock:a2 completion:self];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  v34 = 0;
  v9 = objc_opt_new();
  context = v8;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_mapTable;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v12 = *v31;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v30 + 1) + 8 * v13);
      v15 = [(NSMapTable *)self->_mapTable objectForKey:v14, context];
      if (!v15 || v7[2](v7, v14, v15, &v34))
      {
        [v9 addObject:v14];
      }

      v16 = v34;

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v18)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [(NSMapTable *)self->_mapTable removeObjectForKey:*(*(&v26 + 1) + 8 * i), context];
      }

      v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(context);
  v21 = v25;
  if (v25)
  {
    v22 = objc_autoreleasePoolPush();
    v21 = v25;
    (*(v25 + 2))(v25);
    objc_autoreleasePoolPop(v22);
  }

  os_unfair_lock_unlock(&self->_lock);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)pruneCacheWithBlock:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMCache.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end