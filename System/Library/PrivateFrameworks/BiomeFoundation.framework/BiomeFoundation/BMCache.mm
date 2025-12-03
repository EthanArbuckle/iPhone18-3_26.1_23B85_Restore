@interface BMCache
+ (id)strongCache;
+ (id)strongCacheWithFallbackCache:(id)cache;
+ (id)weakCache;
- (id)_initWithMapTable:(id)table fallback:(id)fallback;
- (id)cachedObjectWithKey:(id)key missHandler:(id)handler;
- (void)pruneCacheWithBlock:(id)block completion:(id)completion;
- (void)removeCachedObjectForKey:(id)key performWhileLocked:(id)locked;
@end

@implementation BMCache

+ (id)weakCache
{
  v2 = [self alloc];
  strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v4 = [v2 _initWithMapTable:strongToWeakObjectsMapTable fallback:0];

  return v4;
}

- (id)_initWithMapTable:(id)table fallback:(id)fallback
{
  tableCopy = table;
  fallbackCopy = fallback;
  v12.receiver = self;
  v12.super_class = BMCache;
  v9 = [(BMCache *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_mapTable, table);
    objc_storeStrong(p_isa + 3, fallback);
  }

  return p_isa;
}

+ (id)strongCache
{
  v2 = [self alloc];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = [v2 _initWithMapTable:strongToStrongObjectsMapTable fallback:0];

  return v4;
}

+ (id)strongCacheWithFallbackCache:(id)cache
{
  cacheCopy = cache;
  v5 = [self alloc];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v7 = [v5 _initWithMapTable:strongToStrongObjectsMapTable fallback:cacheCopy];

  return v7;
}

- (id)cachedObjectWithKey:(id)key missHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_mapTable objectForKey:keyCopy];
  if (v8)
  {
    isExpiredBlock = [(BMCache *)self isExpiredBlock];
    v10 = isExpiredBlock;
    if (!isExpiredBlock || !(*(isExpiredBlock + 16))(isExpiredBlock, v8))
    {
      v13 = v8;

      goto LABEL_14;
    }

    [(NSMapTable *)self->_mapTable removeObjectForKey:keyCopy];
  }

  fallback = self->_fallback;
  if (fallback)
  {
    v12 = [(BMCache *)fallback cachedObjectWithKey:keyCopy missHandler:handlerCopy];
    goto LABEL_10;
  }

  if (handlerCopy)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = handlerCopy[2](handlerCopy);
    objc_autoreleasePoolPop(v14);
LABEL_10:
    if (v12)
    {
      mapTable = self->_mapTable;
      v16 = [keyCopy copyWithZone:0];
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

- (void)removeCachedObjectForKey:(id)key performWhileLocked:(id)locked
{
  keyCopy = key;
  lockedCopy = locked;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_mapTable removeObjectForKey:keyCopy];
  if (lockedCopy)
  {
    v7 = objc_autoreleasePoolPush();
    lockedCopy[2](lockedCopy);
    objc_autoreleasePoolPop(v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pruneCacheWithBlock:(id)block completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionCopy = completion;
  if (!blockCopy)
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
      context = [(NSMapTable *)self->_mapTable objectForKey:v14, context];
      if (!context || blockCopy[2](blockCopy, v14, context, &v34))
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
  v21 = completionCopy;
  if (completionCopy)
  {
    v22 = objc_autoreleasePoolPush();
    v21 = completionCopy;
    (*(completionCopy + 2))(completionCopy);
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