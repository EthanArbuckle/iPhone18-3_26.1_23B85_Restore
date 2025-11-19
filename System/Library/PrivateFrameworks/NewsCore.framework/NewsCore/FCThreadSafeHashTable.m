@interface FCThreadSafeHashTable
+ (FCThreadSafeHashTable)hashTableWithOptions:(unint64_t)a3;
- (BOOL)containsObject:(id)a3;
- (FCThreadSafeHashTable)initWithOptions:(unint64_t)a3 capacity:(unint64_t)a4;
- (NSArray)allObjects;
- (unint64_t)count;
- (void)addObject:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
@end

@implementation FCThreadSafeHashTable

- (FCThreadSafeHashTable)initWithOptions:(unint64_t)a3 capacity:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = FCThreadSafeHashTable;
  v6 = [(FCThreadSafeHashTable *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v6->_lock;
    v6->_lock = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:a3 capacity:a4];
    hashTable = v6->_hashTable;
    v6->_hashTable = v9;
  }

  return v6;
}

+ (FCThreadSafeHashTable)hashTableWithOptions:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithOptions:a3 capacity:0];

  return v3;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__FCThreadSafeHashTable_count__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__FCThreadSafeHashTable_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCThreadSafeHashTable_addObject___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCThreadSafeHashTable_removeObject___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeAllObjects
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__FCThreadSafeHashTable_removeAllObjects__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)lock performWithLockSync:v3];
}

- (NSArray)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__93;
  v10 = __Block_byref_object_dispose__93;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FCThreadSafeHashTable_allObjects__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__FCThreadSafeHashTable_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__FCThreadSafeHashTable_containsObject___block_invoke;
  v8[3] = &unk_1E7C37138;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __40__FCThreadSafeHashTable_containsObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

@end