@interface JFXThreadSafeArray
- (BOOL)containsObject:(id)a3;
- (JFXThreadSafeArray)init;
- (id)copyOfArray;
- (id)description;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)sortedArrayUsingComparator:(id)a3;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)a3;
- (void)addObject:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsInArray:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)sortUsingSelector:(SEL)a3;
@end

@implementation JFXThreadSafeArray

- (JFXThreadSafeArray)init
{
  v6.receiver = self;
  v6.super_class = JFXThreadSafeArray;
  v2 = [(JFXThreadSafeArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JFXThreadSafeArray *)v2 setArray:v3];

    v4 = dispatch_queue_create("com.apple.threadsafearrayconcurrentqueuelabel", MEMORY[0x277D85CD8]);
    [(JFXThreadSafeArray *)v2 setConcurrentQueue:v4];
  }

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(JFXThreadSafeArray *)self array];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(JFXThreadSafeArray *)self concurrentQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__JFXThreadSafeArray_addObject___block_invoke;
    v6[3] = &unk_278D79C88;
    v6[4] = self;
    v7 = v4;
    dispatch_barrier_sync(v5, v6);
  }
}

void __32__JFXThreadSafeArray_addObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 addObject:*(a1 + 40)];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__JFXThreadSafeArray_objectAtIndex___block_invoke;
  block[3] = &unk_278D7B418;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__JFXThreadSafeArray_objectAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  v3 = [v2 count];
  v4 = *(a1 + 48);

  if (v3 > v4)
  {
    v8 = [*(a1 + 32) array];
    v5 = [v8 objectAtIndex:*(a1 + 48)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__JFXThreadSafeArray_indexOfObject___block_invoke;
  block[3] = &unk_278D7A230;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __36__JFXThreadSafeArray_indexOfObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  *(*(*(a1 + 48) + 8) + 24) = [v2 indexOfObject:*(a1 + 40)];
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__JFXThreadSafeArray_objectsAtIndexes___block_invoke;
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

void __39__JFXThreadSafeArray_objectsAtIndexes___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) array];
  v2 = [v5 objectsAtIndexes:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(JFXThreadSafeArray *)self objectAtIndex:?];
  if (a4 <= a3)
  {
    [(JFXThreadSafeArray *)self insertObject:v7 atIndex:a4];
    [(JFXThreadSafeArray *)self removeObjectAtIndex:a3 + 1];
  }

  else
  {
    [(JFXThreadSafeArray *)self removeObjectAtIndex:a3];
    [(JFXThreadSafeArray *)self insertObject:v7 atIndex:a4];
  }
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXThreadSafeArray_insertObject_atIndex___block_invoke;
  block[3] = &unk_278D7A458;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_barrier_sync(v7, block);
}

void __43__JFXThreadSafeArray_insertObject_atIndex___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) array];
    [v2 insertObject:*(a1 + 32) atIndex:*(a1 + 48)];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__JFXThreadSafeArray_removeObjectAtIndex___block_invoke;
  v6[3] = &unk_278D7A118;
  v6[4] = self;
  v6[5] = a3;
  dispatch_barrier_sync(v5, v6);
}

void __42__JFXThreadSafeArray_removeObjectAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) array];
  v4 = [v3 count];

  if (v2 < v4)
  {
    v5 = [*(a1 + 32) array];
    [v5 removeObjectAtIndex:*(a1 + 40)];
  }
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__JFXThreadSafeArray_replaceObjectAtIndex_withObject___block_invoke;
  block[3] = &unk_278D7A458;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_barrier_sync(v7, block);
}

void __54__JFXThreadSafeArray_replaceObjectAtIndex_withObject___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 40) array];
    v4 = [v3 count];

    if (v2 < v4)
    {
      v5 = [*(a1 + 40) array];
      [v5 replaceObjectAtIndex:*(a1 + 48) withObject:*(a1 + 32)];
    }
  }
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__JFXThreadSafeArray_containsObject___block_invoke;
  block[3] = &unk_278D7A230;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __37__JFXThreadSafeArray_containsObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(JFXThreadSafeArray *)self concurrentQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__JFXThreadSafeArray_removeObject___block_invoke;
    v6[3] = &unk_278D79C88;
    v6[4] = self;
    v7 = v4;
    dispatch_barrier_sync(v5, v6);
  }
}

void __35__JFXThreadSafeArray_removeObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 removeObject:*(a1 + 40)];
}

- (void)removeAllObjects
{
  v3 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__JFXThreadSafeArray_removeAllObjects__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
}

void __38__JFXThreadSafeArray_removeAllObjects__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) array];
  [v1 removeAllObjects];
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(JFXThreadSafeArray *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__JFXThreadSafeArray_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __27__JFXThreadSafeArray_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)sortUsingSelector:(SEL)a3
{
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__JFXThreadSafeArray_sortUsingSelector___block_invoke;
  v6[3] = &unk_278D7A118;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __40__JFXThreadSafeArray_sortUsingSelector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 sortUsingSelector:*(a1 + 40)];
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__JFXThreadSafeArray_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __49__JFXThreadSafeArray_enumerateObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 enumerateObjectsUsingBlock:*(a1 + 40)];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXThreadSafeArray_enumerateObjectsWithOptions_usingBlock___block_invoke;
  block[3] = &unk_278D7B440;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_barrier_sync(v7, block);
}

void __61__JFXThreadSafeArray_enumerateObjectsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 enumerateObjectsWithOptions:*(a1 + 48) usingBlock:*(a1 + 40)];
}

- (void)removeObjectsInArray:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(JFXThreadSafeArray *)self concurrentQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__JFXThreadSafeArray_removeObjectsInArray___block_invoke;
    v6[3] = &unk_278D79C88;
    v6[4] = self;
    v7 = v4;
    dispatch_barrier_sync(v5, v6);
  }
}

void __43__JFXThreadSafeArray_removeObjectsInArray___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  [v2 removeObjectsInArray:*(a1 + 40)];
}

- (id)copyOfArray
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v3 = [(JFXThreadSafeArray *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__JFXThreadSafeArray_copyOfArray__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__JFXThreadSafeArray_copyOfArray__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) array];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sortedArrayUsingComparator:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v5 = [(JFXThreadSafeArray *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__JFXThreadSafeArray_sortedArrayUsingComparator___block_invoke;
  block[3] = &unk_278D7B468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__JFXThreadSafeArray_sortedArrayUsingComparator___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) array];
  v2 = [v5 sortedArrayUsingComparator:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end