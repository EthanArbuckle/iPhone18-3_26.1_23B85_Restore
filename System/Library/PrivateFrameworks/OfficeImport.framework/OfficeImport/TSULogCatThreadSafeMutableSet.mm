@interface TSULogCatThreadSafeMutableSet
- (BOOL)containsObject:(id)object;
- (TSULogCatThreadSafeMutableSet)init;
- (TSULogCatThreadSafeMutableSet)initWithArray:(id)array;
- (id)allObjects;
- (id)description;
- (id)immutableSet;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation TSULogCatThreadSafeMutableSet

- (TSULogCatThreadSafeMutableSet)initWithArray:(id)array
{
  arrayCopy = array;
  v11.receiver = self;
  v11.super_class = TSULogCatThreadSafeMutableSet;
  v5 = [(TSULogCatThreadSafeMutableSet *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:arrayCopy];
    objects = v5->_objects;
    v5->_objects = v6;

    v8 = dispatch_queue_create("TSULogCatQueue", 0);
    logCatQueue = v5->_logCatQueue;
    v5->_logCatQueue = v8;
  }

  return v5;
}

- (TSULogCatThreadSafeMutableSet)init
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = [(TSULogCatThreadSafeMutableSet *)self initWithArray:array];

  return v4;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  logCatQueue = self->_logCatQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__TSULogCatThreadSafeMutableSet_containsObject___block_invoke;
  block[3] = &unk_2799C6858;
  v9 = objectCopy;
  v10 = &v11;
  block[4] = self;
  v6 = objectCopy;
  dispatch_sync(logCatQueue, block);
  LOBYTE(logCatQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return logCatQueue;
}

uint64_t __48__TSULogCatThreadSafeMutableSet_containsObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__TSULogCatThreadSafeMutableSet_count__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__TSULogCatThreadSafeMutableSet_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__TSULogCatThreadSafeMutableSet_allObjects__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__TSULogCatThreadSafeMutableSet_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)immutableSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__TSULogCatThreadSafeMutableSet_immutableSet__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__TSULogCatThreadSafeMutableSet_immutableSet__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithSet:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSULogCatThreadSafeMutableSet_addObject___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__TSULogCatThreadSafeMutableSet_removeObject___block_invoke;
  v7[3] = &unk_2799C68A8;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__TSULogCatThreadSafeMutableSet_description__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__TSULogCatThreadSafeMutableSet_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end