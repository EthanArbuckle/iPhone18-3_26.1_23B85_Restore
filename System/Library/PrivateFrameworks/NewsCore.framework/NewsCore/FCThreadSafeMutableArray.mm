@interface FCThreadSafeMutableArray
- (FCThreadSafeMutableArray)init;
- (NSArray)readOnlyArray;
- (id)firstObject;
- (id)firstObjectPassingTest:(id)test;
- (id)lastObject;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)readWriteWithAccessor:(id)accessor;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)safelyAddObject:(id)object;
@end

@implementation FCThreadSafeMutableArray

- (FCThreadSafeMutableArray)init
{
  v8.receiver = self;
  v8.super_class = FCThreadSafeMutableArray;
  v2 = [(FCThreadSafeMutableArray *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B6920]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    array = v2->_array;
    v2->_array = v5;
  }

  return v2;
}

- (NSArray)readOnlyArray
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
  v5[2] = __41__FCThreadSafeMutableArray_readOnlyArray__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__FCThreadSafeMutableArray_readOnlyArray__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)addObject:(id)object
{
  objectCopy = object;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCThreadSafeMutableArray_addObject___block_invoke;
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
  v7[2] = __48__FCThreadSafeMutableArray_addObjectsFromArray___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)safelyAddObject:(id)object
{
  objectCopy = object;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FCThreadSafeMutableArray_safelyAddObject___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeFirstObject
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__FCThreadSafeMutableArray_removeFirstObject__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)lock performWithLockSync:v3];
}

- (void)removeAllObjects
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__FCThreadSafeMutableArray_removeAllObjects__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)lock performWithLockSync:v3];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCThreadSafeMutableArray_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)readWriteWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__FCThreadSafeMutableArray_readWriteWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __50__FCThreadSafeMutableArray_readWriteWithAccessor___block_invoke(uint64_t a1)
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
  v5[2] = __33__FCThreadSafeMutableArray_count__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__FCThreadSafeMutableArray_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)firstObject
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
  v5[2] = __39__FCThreadSafeMutableArray_firstObject__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__FCThreadSafeMutableArray_firstObject__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)lastObject
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
  v5[2] = __38__FCThreadSafeMutableArray_lastObject__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__FCThreadSafeMutableArray_lastObject__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)firstObjectPassingTest:(id)test
{
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__93;
  v16 = __Block_byref_object_dispose__93;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__FCThreadSafeMutableArray_firstObjectPassingTest___block_invoke;
  v9[3] = &unk_1E7C41A98;
  v11 = &v12;
  v9[4] = self;
  v6 = testCopy;
  v10 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__FCThreadSafeMutableArray_firstObjectPassingTest___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) fc_firstObjectPassingTest:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end