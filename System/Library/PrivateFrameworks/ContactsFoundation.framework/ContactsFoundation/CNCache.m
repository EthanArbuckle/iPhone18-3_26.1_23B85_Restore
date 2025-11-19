@interface CNCache
+ (id)atomicCache;
+ (id)boundingStrategyWithCapacity:(unint64_t)a3;
+ (id)boundingStrategyWithTTL:(double)a3;
+ (id)boundingStrategyWithTTL:(double)a3 renewalOptions:(unint64_t)a4 timeProvider:(id)a5;
+ (id)cache;
- (CNCache)init;
- (CNCache)initWithBoundingStrategies:(id)a3 resourceScheduler:(id)a4;
- (NSArray)allKeys;
- (NSArray)allObjects;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 onCacheMiss:(id)a4;
- (id)resultWithResourceLock:(id)a3;
- (unint64_t)overestimatedCount;
- (void)addDidEvictHandler:(id)a3;
- (void)callDidEvictHandlersIfNecessary;
- (void)performWithResourceLock:(id)a3;
- (void)removeAllObjects;
- (void)resourceLock_evictObjectsForKeys:(id)a3;
- (void)resourceLock_setObject:(id)a3 forKey:(id)a4;
- (void)resourceLock_validateAllKeys;
- (void)resourceLock_validateKey:(id)a3;
- (void)resourceLock_validateKeys:(id)a3;
- (void)resourceLock_willAccessKey:(id)a3;
- (void)resourceLock_willSetObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CNCache

+ (id)atomicCache
{
  v3 = [a1 atomicCacheScheduler];
  v4 = [[a1 alloc] initWithResourceScheduler:v3];

  return v4;
}

- (void)callDidEvictHandlersIfNecessary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__1;
  v5[4] = __Block_byref_object_dispose__1;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke;
  v4[3] = &unk_1E6ED58F8;
  v4[4] = self;
  v4[5] = &v7;
  v4[6] = v5;
  [(CNCache *)self performWithResourceLock:v4];
  v2 = v8[5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke_2;
  v3[3] = &unk_1E6ED5948;
  v3[4] = v5;
  [v2 _cn_each:v3];
  _Block_object_dispose(v5, 8);

  _Block_object_dispose(&v7, 8);
}

uint64_t __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [*(a1 + 32) evictedKeysAndValues];
  v4 = [v2 arrayWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MEMORY[0x1E695DEC8];
  v8 = [*(a1 + 32) didEvictHandlers];
  v9 = [v7 arrayWithArray:v8];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 32);

  return [v12 setEvictedKeysAndValues:0];
}

- (CNCache)init
{
  v3 = +[CNScheduler immediateScheduler];
  v4 = [(CNCache *)self initWithResourceScheduler:v3];

  return v4;
}

- (NSArray)allKeys
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__CNCache_allKeys__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v3 = [(CNCache *)self resultWithResourceLock:v5];
  [(CNCache *)self callDidEvictHandlersIfNecessary];

  return v3;
}

id __18__CNCache_allKeys__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resourceLock_validateAllKeys];
  v2 = [*(a1 + 32) storage];
  v3 = [v2 allKeys];

  return v3;
}

- (void)resourceLock_validateAllKeys
{
  v3 = [(CNCache *)self storage];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  [(CNCache *)self resourceLock_validateKeys:v5];
}

- (NSArray)allObjects
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__CNCache_allObjects__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v3 = [(CNCache *)self resultWithResourceLock:v5];
  [(CNCache *)self callDidEvictHandlersIfNecessary];

  return v3;
}

id __21__CNCache_allObjects__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resourceLock_validateAllKeys];
  v2 = [*(a1 + 32) storage];
  v3 = [v2 allValues];

  return v3;
}

+ (id)cache
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CNCache)initWithBoundingStrategies:(id)a3 resourceScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CNCache;
  v8 = [(CNCache *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    boundingStrategies = v8->_boundingStrategies;
    v8->_boundingStrategies = v9;

    objc_storeStrong(&v8->_resourceScheduler, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = v8->_storage;
    v8->_storage = v11;

    if ([v6 count])
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      didEvictHandlers = v8->_didEvictHandlers;
      v8->_didEvictHandlers = v13;
    }

    v15 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(CNCache *)self allKeys];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v7 = [v3 appendName:@"count of keys" object:v6];

  v8 = [v3 build];

  return v8;
}

+ (id)boundingStrategyWithCapacity:(unint64_t)a3
{
  v3 = [[_CNCacheFixedCapacityBoundingStrategy alloc] initWithCapacity:a3];

  return v3;
}

+ (id)boundingStrategyWithTTL:(double)a3
{
  v3 = [[_CNCacheFixedTTLBoundingStrategy alloc] initWithTTL:a3];

  return v3;
}

+ (id)boundingStrategyWithTTL:(double)a3 renewalOptions:(unint64_t)a4 timeProvider:(id)a5
{
  v7 = a5;
  v8 = [[_CNCacheFixedTTLBoundingStrategy alloc] initWithTTL:a4 renewalOptions:v7 timeProvider:a3];

  return v8;
}

- (void)performWithResourceLock:(id)a3
{
  v4 = a3;
  v5 = [(CNCache *)self resourceScheduler];
  [v5 performBlock:v4];
}

- (id)resultWithResourceLock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = [(CNCache *)self resourceScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__CNCache_resultWithResourceLock___block_invoke;
  v9[3] = &unk_1E6ED5140;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __34__CNCache_resultWithResourceLock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __24__CNCache_objectForKey___block_invoke;
  v11 = &unk_1E6ED5190;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = [(CNCache *)self resultWithResourceLock:&v8];
  [(CNCache *)self callDidEvictHandlersIfNecessary:v8];

  return v6;
}

id __24__CNCache_objectForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resourceLock_validateKey:*(a1 + 40)];
  [*(a1 + 32) resourceLock_willAccessKey:*(a1 + 40)];
  v2 = [*(a1 + 32) storage];
  v3 = [v2 objectForKey:*(a1 + 40)];

  return v3;
}

- (id)objectForKey:(id)a3 onCacheMiss:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__CNCache_objectForKey_onCacheMiss___block_invoke;
  v12[3] = &unk_1E6ED57B8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(CNCache *)self resultWithResourceLock:v12];
  [(CNCache *)self callDidEvictHandlersIfNecessary];

  return v10;
}

id __36__CNCache_objectForKey_onCacheMiss___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resourceLock_validateKey:*(a1 + 40)];
  [*(a1 + 32) resourceLock_willAccessKey:*(a1 + 40)];
  v2 = [*(a1 + 32) storage];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v4 = *(a1 + 40);
    v3 = (*(*(a1 + 48) + 16))();
    if (v3)
    {
      [*(a1 + 32) resourceLock_setObject:v3 forKey:*(a1 + 40)];
    }
  }

  v5 = v3;

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__CNCache_setObject_forKey___block_invoke;
  v10[3] = &unk_1E6ED57E0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CNCache *)self performWithResourceLock:v10];
  [(CNCache *)self callDidEvictHandlersIfNecessary];
}

- (void)resourceLock_setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(CNCache *)self resourceLock_willSetObject:v9 forKey:v6];
  v7 = [(CNCache *)self storage];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (unint64_t)overestimatedCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__CNCache_overestimatedCount__block_invoke;
  v4[3] = &unk_1E6ED5808;
  v4[4] = self;
  v4[5] = &v5;
  [(CNCache *)self performWithResourceLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__CNCache_overestimatedCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)removeAllObjects
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __27__CNCache_removeAllObjects__block_invoke;
  v2[3] = &unk_1E6ED5830;
  v2[4] = self;
  [(CNCache *)self performWithResourceLock:v2];
}

void __27__CNCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) storage];
  [v1 removeAllObjects];
}

- (void)addDidEvictHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNCache *)self boundingStrategies];
  v6 = [v5 count];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__CNCache_addDidEvictHandler___block_invoke;
    v7[3] = &unk_1E6ED5858;
    v7[4] = self;
    v8 = v4;
    [(CNCache *)self performWithResourceLock:v7];
  }
}

void __30__CNCache_addDidEvictHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) didEvictHandlers];
  v2 = [*(a1 + 40) copy];
  v3 = _Block_copy(v2);
  [v4 addObject:v3];
}

- (void)resourceLock_willSetObject:(id)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(CNCache *)self boundingStrategies];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = a3 != 0;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v16 = 0;
        [v13 willUpdateCacheBy:v11 forKey:v6 keysToEvict:&v16];
        v14 = v16;
        if (v14)
        {
          [(CNCache *)self resourceLock_evictObjectsForKeys:v14];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resourceLock_willAccessKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CNCache *)self boundingStrategies];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) willAccessKey:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resourceLock_validateKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v8 count:1];

    [(CNCache *)self resourceLock_validateKeys:v6, v8, v9];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resourceLock_validateKeys:(id)a3
{
  v4 = a3;
  v5 = [(CNCache *)self boundingStrategies];
  v6 = [v5 count];

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__CNCache_resourceLock_validateKeys___block_invoke;
    v9[3] = &unk_1E6ED58A8;
    v9[4] = self;
    v7 = [v4 indexesOfObjectsPassingTest:v9];
    if ([v7 count])
    {
      v8 = [v4 objectsAtIndexes:v7];
      [(CNCache *)self resourceLock_evictObjectsForKeys:v8];
    }
  }
}

uint64_t __37__CNCache_resourceLock_validateKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) boundingStrategies];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CNCache_resourceLock_validateKeys___block_invoke_2;
  v8[3] = &unk_1E6ED5880;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_any:v8];

  return v6;
}

- (void)resourceLock_evictObjectsForKeys:(id)a3
{
  v4 = a3;
  v5 = [(CNCache *)self boundingStrategies];
  v6 = [v5 count];

  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CNCache_resourceLock_evictObjectsForKeys___block_invoke;
    v10[3] = &unk_1E6ED58D0;
    v10[4] = self;
    v7 = [v4 _cn_map:v10];
    v8 = [v7 _cn_filter:CNPairNeitherElementIsNil];

    if ([v8 count])
    {
      [(CNCache *)self setEvictedKeysAndValues:v8];
    }
  }

  v9 = [(CNCache *)self storage];
  [v9 removeObjectsForKeys:v4];
}

id __44__CNCache_resourceLock_evictObjectsForKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storage];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [CNPair pairWithFirst:v3 second:v5];

  return v6;
}

void __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke_3;
  v6[3] = &unk_1E6ED5920;
  v7 = v3;
  v5 = v3;
  [v4 _cn_each:v6];
}

void __42__CNCache_callDidEvictHandlersIfNecessary__block_invoke_3(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 first];
  v6 = [*(a1 + 32) second];
  (a2)[2](v5, v7, v6);
}

@end