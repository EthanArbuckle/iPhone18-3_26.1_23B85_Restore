@interface JFXThreadSafeDictionary
- (JFXThreadSafeDictionary)init;
- (NSArray)allKeys;
- (NSArray)allValues;
- (id)description;
- (id)objectForKey:(id)key;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (id)valueForKey:(id)key;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setDictionary:(id)dictionary;
- (void)setObject:(id)object forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
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
  dict = [(JFXThreadSafeDictionary *)self dict];
  v4 = [v2 stringWithFormat:@"%@", dict];

  return v4;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__JFXThreadSafeDictionary_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(concurrentQueue, v6);

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
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__JFXThreadSafeDictionary_allKeys__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(concurrentQueue, v6);

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
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__JFXThreadSafeDictionary_allValues__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(concurrentQueue, v6);

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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__JFXThreadSafeDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_barrier_sync(concurrentQueue, block);
}

void __44__JFXThreadSafeDictionary_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXThreadSafeDictionary_setValue_forKey___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_barrier_sync(concurrentQueue, block);
}

void __43__JFXThreadSafeDictionary_setValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setValue:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__JFXThreadSafeDictionary_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_barrier_sync(concurrentQueue, v7);
}

void __52__JFXThreadSafeDictionary_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 addEntriesFromDictionary:*(a1 + 40)];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__JFXThreadSafeDictionary_objectForKey___block_invoke;
  block[3] = &unk_278D7A230;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(concurrentQueue, block);

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

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  keysCopy = keys;
  markerCopy = marker;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__JFXThreadSafeDictionary_objectsForKeys_notFoundMarker___block_invoke;
  v13[3] = &unk_278D7A900;
  v13[4] = self;
  v14 = keysCopy;
  v15 = markerCopy;
  v16 = &v17;
  v9 = markerCopy;
  v10 = keysCopy;
  dispatch_sync(concurrentQueue, v13);

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

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__JFXThreadSafeDictionary_valueForKey___block_invoke;
  block[3] = &unk_278D7A230;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(concurrentQueue, block);

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
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXThreadSafeDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_sync(concurrentQueue, block);
}

void __43__JFXThreadSafeDictionary_removeAllObjects__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dict];
  [v1 removeAllObjects];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__JFXThreadSafeDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_sync(concurrentQueue, v7);
}

void __46__JFXThreadSafeDictionary_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__JFXThreadSafeDictionary_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_barrier_sync(concurrentQueue, v7);
}

void __48__JFXThreadSafeDictionary_removeObjectsForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 removeObjectsForKeys:*(a1 + 40)];
}

- (void)setDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  concurrentQueue = [(JFXThreadSafeDictionary *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__JFXThreadSafeDictionary_setDictionary___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_barrier_sync(concurrentQueue, v7);
}

void __41__JFXThreadSafeDictionary_setDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dict];
  [v2 setDictionary:*(a1 + 40)];
}

@end