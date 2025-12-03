@interface GKThreadsafeDictionary
- (GKThreadsafeDictionary)initWithName:(id)name;
- (id)allKeys;
- (id)allObjects;
- (id)description;
- (id)dictionaryCopy;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key objectProducerBlock:(id)block;
- (id)objectForKeyWillReplace:(id)replace objectProducerBlock:(id)block;
- (void)asyncWriteToDictionary:(id)dictionary;
- (void)readFromDictionary:(id)dictionary;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setObject:(id)object forKey:(id)key;
- (void)writeToDictionary:(id)dictionary;
@end

@implementation GKThreadsafeDictionary

- (GKThreadsafeDictionary)initWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = GKThreadsafeDictionary;
  v5 = [(GKThreadsafeDictionary *)&v12 init];
  if (v5)
  {
    uTF8String = [nameCopy UTF8String];
    v7 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = v5->_dictionary;
    v5->_dictionary = v9;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = GKThreadsafeDictionary;
  v4 = [(GKThreadsafeDictionary *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@ %@", v4, self->_queue, self->_dictionary];

  return v5;
}

- (id)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__GKThreadsafeDictionary_allObjects__block_invoke;
  v5[3] = &unk_2785DEA90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__GKThreadsafeDictionary_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__GKThreadsafeDictionary_objectForKey___block_invoke;
  block[3] = &unk_2785E0DC0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __39__GKThreadsafeDictionary_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)objectForKey:(id)key objectProducerBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GKThreadsafeDictionary_objectForKey_objectProducerBlock___block_invoke;
  block[3] = &unk_2785E0DC0;
  v20 = &v21;
  block[4] = self;
  v9 = keyCopy;
  v19 = v9;
  dispatch_sync(queue, block);
  v10 = v22[5];
  if (blockCopy && !v10)
  {
    v11 = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__GKThreadsafeDictionary_objectForKey_objectProducerBlock___block_invoke_2;
    v14[3] = &unk_2785E0DE8;
    v17 = &v21;
    v14[4] = self;
    v15 = v9;
    v16 = blockCopy;
    dispatch_barrier_sync(v11, v14);

    v10 = v22[5];
  }

  v12 = v10;

  _Block_object_dispose(&v21, 8);

  return v12;
}

uint64_t __59__GKThreadsafeDictionary_objectForKey_objectProducerBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __59__GKThreadsafeDictionary_objectForKey_objectProducerBlock___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = (*(a1[6] + 16))();
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(a1[7] + 8) + 40))
    {
      v8 = a1[5];
      v9 = *(a1[4] + 16);

      [v9 setObject:? forKeyedSubscript:?];
    }
  }
}

- (id)objectForKeyWillReplace:(id)replace objectProducerBlock:(id)block
{
  replaceCopy = replace;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__12;
  v18[4] = __Block_byref_object_dispose__12;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__GKThreadsafeDictionary_objectForKeyWillReplace_objectProducerBlock___block_invoke;
  block[3] = &unk_2785E0E10;
  block[4] = self;
  v14 = replaceCopy;
  v15 = blockCopy;
  v16 = &v20;
  v17 = v18;
  v9 = blockCopy;
  v10 = replaceCopy;
  dispatch_barrier_sync(queue, block);
  v11 = v21[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __70__GKThreadsafeDictionary_objectForKeyWillReplace_objectProducerBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[7] + 8) + 40))
  {
    v5 = a1[6];
    if (v5)
    {
      v6 = (*(v5 + 16))();
      v7 = *(a1[8] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(*(a1[8] + 8) + 40);
      if (v9)
      {
        [*(a1[4] + 16) setObject:v9 forKeyedSubscript:a1[5]];
      }
    }
  }

  if (!*(*(a1[7] + 8) + 40))
  {
    v10 = a1[6];
    if (v10)
    {
      v11 = (*(v10 + 16))(v10, 0);
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (*(*(a1[7] + 8) + 40))
      {
        v14 = a1[5];
        v15 = *(a1[4] + 16);

        [v15 setObject:? forKeyedSubscript:?];
      }
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GKThreadsafeDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_2785DDB40;
  block[4] = self;
  v12 = keyCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = keyCopy;
  dispatch_barrier_async(queue, block);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__GKThreadsafeDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_async(queue, v7);
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__GKThreadsafeDictionary_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_barrier_async(queue, v7);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__GKThreadsafeDictionary_removeObject___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_barrier_async(queue, v7);
}

void __39__GKThreadsafeDictionary_removeObject___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__GKThreadsafeDictionary_removeObject___block_invoke_2;
  v6[3] = &unk_2785E0E38;
  v7 = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v6];
  if ([v3 count])
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = [v3 allObjects];
    [v4 removeObjectsForKeys:v5];
  }
}

- (void)removeAllObjects
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__GKThreadsafeDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

- (void)readFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__GKThreadsafeDictionary_readFromDictionary___block_invoke;
  v7[3] = &unk_2785DDC10;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_sync(queue, v7);
}

- (void)writeToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__GKThreadsafeDictionary_writeToDictionary___block_invoke;
  v7[3] = &unk_2785DDC10;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_barrier_sync(queue, v7);
}

- (void)asyncWriteToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__GKThreadsafeDictionary_asyncWriteToDictionary___block_invoke;
  v7[3] = &unk_2785DDC10;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_barrier_async(queue, v7);
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__GKThreadsafeDictionary_allKeys__block_invoke;
  v5[3] = &unk_2785DEA90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__GKThreadsafeDictionary_allKeys__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)dictionaryCopy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__GKThreadsafeDictionary_dictionaryCopy__block_invoke;
  v5[3] = &unk_2785DEA90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__GKThreadsafeDictionary_dictionaryCopy__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end