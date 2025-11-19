@interface JFXThreadSafeDictionary
- (JFXThreadSafeDictionary)init;
- (NSArray)allKeys;
- (NSArray)allValues;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (id)valueForKey:(id)a3;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)setDictionary:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation JFXThreadSafeDictionary

- (JFXThreadSafeDictionary)init
{
  v6.receiver = self;
  v6.super_class = JFXThreadSafeDictionary;
  v2 = [(JFXThreadSafeDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(JFXThreadSafeDictionary *)v2 setDict:v3];

    v4 = dispatch_queue_create("com.apple.threadsafedictionaryconcurrentqueuelabel", MEMORY[0x277D85CD8]);
    [(JFXThreadSafeDictionary *)v2 setConcurrentQueue:v4];
  }

  return v2;
}

- (void)dealloc
{
  [(JFXThreadSafeDictionary *)self setDict:0];
  [(JFXThreadSafeDictionary *)self setConcurrentQueue:0];
  v3.receiver = self;
  v3.super_class = JFXThreadSafeDictionary;
  [(JFXThreadSafeDictionary *)&v3 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(JFXThreadSafeDictionary *)self dict];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__JFXThreadSafeDictionary_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __32__JFXThreadSafeDictionary_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (NSArray)allKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__JFXThreadSafeDictionary_allKeys__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__JFXThreadSafeDictionary_allKeys__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dict];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)allValues
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__JFXThreadSafeDictionary_allValues__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__JFXThreadSafeDictionary_allValues__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dict];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__JFXThreadSafeDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(v8, block);
}

void __44__JFXThreadSafeDictionary_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXThreadSafeDictionary_setValue_forKey___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(v8, block);
}

void __43__JFXThreadSafeDictionary_setValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setValue:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__JFXThreadSafeDictionary_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __52__JFXThreadSafeDictionary_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 addEntriesFromDictionary:*(a1 + 40)];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__JFXThreadSafeDictionary_objectForKey___block_invoke;
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

void __40__JFXThreadSafeDictionary_objectForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dict];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v8 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__JFXThreadSafeDictionary_objectsForKeys_notFoundMarker___block_invoke;
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

void __57__JFXThreadSafeDictionary_objectsForKeys_notFoundMarker___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dict];
  v2 = [v5 objectsForKeys:*(a1 + 40) notFoundMarker:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__JFXThreadSafeDictionary_valueForKey___block_invoke;
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

void __39__JFXThreadSafeDictionary_valueForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dict];
  v2 = [v5 valueForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeAllObjects
{
  v3 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXThreadSafeDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
}

void __43__JFXThreadSafeDictionary_removeAllObjects__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dict];
  [v1 removeAllObjects];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__JFXThreadSafeDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __46__JFXThreadSafeDictionary_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__JFXThreadSafeDictionary_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __48__JFXThreadSafeDictionary_removeObjectsForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 removeObjectsForKeys:*(a1 + 40)];
}

- (void)setDictionary:(id)a3
{
  v4 = a3;
  v5 = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__JFXThreadSafeDictionary_setDictionary___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __41__JFXThreadSafeDictionary_setDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setDictionary:*(a1 + 40)];
}

@end