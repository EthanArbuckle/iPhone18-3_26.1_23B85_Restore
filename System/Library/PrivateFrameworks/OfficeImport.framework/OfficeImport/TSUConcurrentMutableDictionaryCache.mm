@interface TSUConcurrentMutableDictionaryCache
- (TSUConcurrentMutableDictionaryCache)initWithName:(id)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (void)addEntriesFromDictionary:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)performSyncWriteWithUnderlyingDictionary:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3 andWait:(BOOL)a4;
- (void)removeObjectsForKeys:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSUConcurrentMutableDictionaryCache

- (TSUConcurrentMutableDictionaryCache)initWithName:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TSUConcurrentMutableDictionaryCache;
  v5 = [(TSUConcurrentMutableDictionaryCache *)&v20 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [OITSUReadWriteQueue alloc];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUConcurrentMutableDictionaryCache:%@", v4];
    v10 = [(OITSUReadWriteQueue *)v8 initWithIdentifier:v9];
    readWriteQueue = v5->_readWriteQueue;
    v5->_readWriteQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v5->_cache;
    v5->_cache = v12;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *MEMORY[0x277D76670];
    v16 = [MEMORY[0x277D75128] sharedApplication];
    [v14 addObserver:v5 selector:sel_p_didReceiveMemoryWarning_ name:v15 object:v16];

    v17 = *MEMORY[0x277D76660];
    v18 = [MEMORY[0x277D75128] sharedApplication];
    [v14 addObserver:v5 selector:sel_p_didEnterBackground_ name:v17 object:v18];
  }

  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TSUConcurrentMutableDictionaryCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsyncWrite:v7];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__TSUConcurrentMutableDictionaryCache_setObject_forKey___block_invoke;
  v11[3] = &unk_2799C7610;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performAsyncWrite:v11];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__TSUConcurrentMutableDictionaryCache_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsyncWrite:v7];
}

- (void)removeAllObjects
{
  v3 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__TSUConcurrentMutableDictionaryCache_removeAllObjects__block_invoke;
  v4[3] = &unk_2799C68D0;
  v4[4] = self;
  [v3 performAsyncWrite:v4];
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__TSUConcurrentMutableDictionaryCache_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsyncWrite:v7];
}

- (void)removeObjectForKey:(id)a3 andWait:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__TSUConcurrentMutableDictionaryCache_removeObjectForKey_andWait___block_invoke;
  v13 = &unk_2799C68A8;
  v14 = self;
  v15 = v6;
  v8 = v6;
  [v7 performAsyncWrite:&v10];

  if (v4)
  {
    v9 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue:v10];
    [v9 waitOnInFlightWriters];
  }
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__21;
  v11 = __Block_byref_object_dispose__21;
  v12 = 0;
  v3 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TSUConcurrentMutableDictionaryCache_description__block_invoke;
  v6[3] = &unk_2799C6880;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performSyncRead:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__TSUConcurrentMutableDictionaryCache_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__TSUConcurrentMutableDictionaryCache_objectForKey___block_invoke;
  v9[3] = &unk_2799C6858;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 performSyncRead:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__TSUConcurrentMutableDictionaryCache_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
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
  v20 = __Block_byref_object_copy__21;
  v21 = __Block_byref_object_dispose__21;
  v22 = 0;
  v8 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__TSUConcurrentMutableDictionaryCache_objectsForKeys_notFoundMarker___block_invoke;
  v13[3] = &unk_2799C7638;
  v16 = &v17;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  [v8 performSyncRead:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __69__TSUConcurrentMutableDictionaryCache_objectsForKeys_notFoundMarker___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectsForKeys:a1[5] notFoundMarker:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__TSUConcurrentMutableDictionaryCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_2799C6EB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performSyncRead:v7];
}

- (void)performSyncWriteWithUnderlyingDictionary:(id)a3
{
  v4 = a3;
  v5 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__TSUConcurrentMutableDictionaryCache_performSyncWriteWithUnderlyingDictionary___block_invoke;
  v7[3] = &unk_2799C6CB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performSyncWrite:v7];
}

@end