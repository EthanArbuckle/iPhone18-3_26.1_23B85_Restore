@interface FCThreadSafeMutableSet
- (BOOL)containsObject:(id)object;
- (FCThreadSafeMutableSet)init;
- (NSArray)allObjects;
- (NSSet)readOnlySet;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)readWithAccessor:(id)accessor;
- (void)readWriteWithAccessor:(id)accessor;
- (void)removeObject:(id)object;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation FCThreadSafeMutableSet

- (FCThreadSafeMutableSet)init
{
  v8.receiver = self;
  v8.super_class = FCThreadSafeMutableSet;
  v2 = [(FCThreadSafeMutableSet *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B6920]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    set = v2->_set;
    v2->_set = v5;
  }

  return v2;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCThreadSafeMutableSet_addObject___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__FCThreadSafeMutableSet_addObjectsFromArray___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FCThreadSafeMutableSet_removeObject___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeObjectsInSet:(id)set
{
  setCopy = set;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCThreadSafeMutableSet_removeObjectsInSet___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v8 = setCopy;
  selfCopy = self;
  v6 = setCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

void __45__FCThreadSafeMutableSet_removeObjectsInSet___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 16) removeObject:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsInArray:(id)array
{
  arrayCopy = array;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__FCThreadSafeMutableSet_removeObjectsInArray___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v8 = arrayCopy;
  selfCopy = self;
  v6 = arrayCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

void __47__FCThreadSafeMutableSet_removeObjectsInArray___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 16) removeObject:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unionSet:(id)set
{
  setCopy = set;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCThreadSafeMutableSet_unionSet___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__FCThreadSafeMutableSet_containsObject___block_invoke;
  v8[3] = &unk_1E7C37138;
  v10 = &v11;
  v8[4] = self;
  v6 = objectCopy;
  v9 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __41__FCThreadSafeMutableSet_containsObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__FCThreadSafeMutableSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)readWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__FCThreadSafeMutableSet_readWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __43__FCThreadSafeMutableSet_readWithAccessor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
}

- (void)readWriteWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__FCThreadSafeMutableSet_readWriteWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __48__FCThreadSafeMutableSet_readWriteWithAccessor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
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
  v5[2] = __31__FCThreadSafeMutableSet_count__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__FCThreadSafeMutableSet_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
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
  v5[2] = __36__FCThreadSafeMutableSet_allObjects__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__FCThreadSafeMutableSet_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSSet)readOnlySet
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
  v5[2] = __37__FCThreadSafeMutableSet_readOnlySet__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__FCThreadSafeMutableSet_readOnlySet__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end