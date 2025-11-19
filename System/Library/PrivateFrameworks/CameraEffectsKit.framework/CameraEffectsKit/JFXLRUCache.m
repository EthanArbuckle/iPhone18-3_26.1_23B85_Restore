@interface JFXLRUCache
- (BOOL)JT_removeLeastRecentlyUsedIfAtCapacity;
- (JFXLRUCache)initWithCapacity:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (unint64_t)capacity;
- (unint64_t)count;
- (void)JT_markRecentlyUsed:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setCapacity:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation JFXLRUCache

- (JFXLRUCache)initWithCapacity:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = JFXLRUCache;
  v4 = [(JFXLRUCache *)&v13 init];
  if (v4)
  {
    v5 = objc_opt_new();
    dictionary = v4->_dictionary;
    v4->_dictionary = v5;

    v7 = dispatch_queue_create("com.apple.cachedictionary", 0);
    cacheQueue = v4->_cacheQueue;
    v4->_cacheQueue = v7;

    v4->_capacity = a3;
    v9 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:v4->_capacity + 1];
    keys = v4->_keys;
    v4->_keys = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v4 selector:sel_highMemoryWarning name:*MEMORY[0x277D76670] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = JFXLRUCache;
  [(JFXLRUCache *)&v4 dealloc];
}

- (unint64_t)capacity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(JFXLRUCache *)self cacheQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__JFXLRUCache_capacity__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setCapacity:(unint64_t)a3
{
  if (self->_capacity != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    v7 = [(JFXLRUCache *)self cacheQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__JFXLRUCache_setCapacity___block_invoke;
    v8[3] = &unk_278D7A118;
    v8[4] = self;
    v8[5] = a3;
    dispatch_sync(v7, v8);
  }
}

uint64_t __27__JFXLRUCache_setCapacity___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 40);
  do
  {
    result = [*(a1 + 32) JT_removeLeastRecentlyUsedIfAtCapacity];
  }

  while ((result & 1) != 0);
  return result;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__15;
  v21 = __Block_byref_object_dispose__15;
  v22 = 0;
  v8 = [(JFXLRUCache *)self cacheQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__JFXLRUCache_objectsForKeys_notFoundMarker___block_invoke;
  v13[3] = &unk_278D7A900;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __45__JFXLRUCache_objectsForKeys_notFoundMarker___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dictionary];
  v3 = [v2 objectsForKeys:*(a1 + 40) notFoundMarker:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) JT_markRecentlyUsed:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(JFXLRUCache *)self cacheQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__JFXLRUCache_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __40__JFXLRUCache_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dictionary];
  [v2 addEntriesFromDictionary:*(a1 + 40)];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 40) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) JT_markRecentlyUsed:*(*(&v8 + 1) + 8 * v7)];
        [*(a1 + 32) JT_removeLeastRecentlyUsedIfAtCapacity];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(JFXLRUCache *)self cacheQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__JFXLRUCache_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __20__JFXLRUCache_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(JFXLRUCache *)self cacheQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__JFXLRUCache_setObject_forKey___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

uint64_t __32__JFXLRUCache_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  [*(a1 + 32) JT_markRecentlyUsed:*(a1 + 48)];
  v3 = *(a1 + 32);

  return [v3 JT_removeLeastRecentlyUsedIfAtCapacity];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v5 = [(JFXLRUCache *)self cacheQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__JFXLRUCache_objectForKey___block_invoke;
  block[3] = &unk_278D7A230;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __28__JFXLRUCache_objectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v6 JT_markRecentlyUsed:v7];
  }
}

- (void)removeAllObjects
{
  v3 = [(JFXLRUCache *)self cacheQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__JFXLRUCache_removeAllObjects__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __31__JFXLRUCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) keys];
  [v3 removeAllObjects];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(JFXLRUCache *)self cacheQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__JFXLRUCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __34__JFXLRUCache_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) keys];
  [v3 removeObject:*(a1 + 40)];
}

- (void)JT_markRecentlyUsed:(id)a3
{
  v4 = a3;
  v5 = [(JFXLRUCache *)self keys];
  [v5 removeObject:v4];

  v6 = [(JFXLRUCache *)self keys];
  [v6 insertObject:v4 atIndex:0];
}

- (BOOL)JT_removeLeastRecentlyUsedIfAtCapacity
{
  if (!self->_capacity)
  {
    return 0;
  }

  v3 = [(JFXLRUCache *)self keys];
  v4 = [v3 count];

  if (v4 <= self->_capacity)
  {
    return 0;
  }

  v5 = [(JFXLRUCache *)self keys];
  v6 = v4 - 1;
  v7 = [v5 objectAtIndex:v4 - 1];

  if (v7)
  {
    v8 = [(JFXLRUCache *)self dictionary];
    [v8 removeObjectForKey:v7];

    v9 = [(JFXLRUCache *)self keys];
    [v9 removeObjectAtIndex:v6];
  }

  return 1;
}

@end