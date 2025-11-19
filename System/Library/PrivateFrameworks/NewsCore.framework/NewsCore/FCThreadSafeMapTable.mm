@interface FCThreadSafeMapTable
+ (FCThreadSafeMapTable)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4;
+ (id)strongToWeakObjectsMapTable;
- (FCThreadSafeMapTable)init;
- (FCThreadSafeMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5;
- (id)objectForKey:(id)a3;
- (id)subdictionaryForKeys:(id)a3 passingTest:(id)a4;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)readWithAccessor:(id)a3;
- (void)readWriteWithAccessor:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FCThreadSafeMapTable

+ (id)strongToWeakObjectsMapTable
{
  v2 = [[a1 alloc] initWithKeyOptions:0 valueOptions:5 capacity:0];

  return v2;
}

- (FCThreadSafeMapTable)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCThreadSafeMapTable init]";
    v10 = 2080;
    v11 = "FCThreadSafeCollections.m";
    v12 = 1024;
    v13 = 555;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCThreadSafeMapTable init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCThreadSafeMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = FCThreadSafeMapTable;
  v8 = [(FCThreadSafeMapTable *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v8->_lock;
    v8->_lock = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:a3 valueOptions:a4 capacity:a5];
    mapTable = v8->_mapTable;
    v8->_mapTable = v11;
  }

  return v8;
}

+ (FCThreadSafeMapTable)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithKeyOptions:a3 valueOptions:a4 capacity:0];

  return v4;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__93;
  v16 = __Block_byref_object_dispose__93;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FCThreadSafeMapTable_objectForKey___block_invoke;
  v9[3] = &unk_1E7C37138;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __37__FCThreadSafeMapTable_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__FCThreadSafeMapTable_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__FCThreadSafeMapTable_setObject_forKey___block_invoke;
  v11[3] = &unk_1E7C376A0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v11];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCThreadSafeMapTable_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __49__FCThreadSafeMapTable_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__FCThreadSafeMapTable_addEntriesFromDictionary___block_invoke_2;
  v3[3] = &unk_1E7C3F200;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
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
  v5[2] = __29__FCThreadSafeMapTable_count__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__FCThreadSafeMapTable_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)removeAllObjects
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__FCThreadSafeMapTable_removeAllObjects__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)lock performWithLockSync:v3];
}

- (id)subdictionaryForKeys:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__FCThreadSafeMapTable_subdictionaryForKeys_passingTest___block_invoke;
  v16[3] = &unk_1E7C42998;
  v17 = v6;
  v18 = self;
  v20 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  [(NFUnfairLock *)lock performWithLockSync:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __57__FCThreadSafeMapTable_subdictionaryForKeys_passingTest___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 16) objectForKey:{v7, v10}];
        if (v8 && (*(*(a1 + 56) + 16))())
        {
          [*(a1 + 48) setObject:v8 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)readWithAccessor:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__FCThreadSafeMapTable_readWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __41__FCThreadSafeMapTable_readWithAccessor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
}

- (void)readWriteWithAccessor:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__FCThreadSafeMapTable_readWriteWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __46__FCThreadSafeMapTable_readWriteWithAccessor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
}

@end