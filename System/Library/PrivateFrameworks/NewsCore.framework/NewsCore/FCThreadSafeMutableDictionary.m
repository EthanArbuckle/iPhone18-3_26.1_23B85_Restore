@interface FCThreadSafeMutableDictionary
- (FCThreadSafeMutableDictionary)init;
- (FCThreadSafeMutableDictionary)initWithDictionary:(id)a3;
- (NSArray)allKeys;
- (NSArray)allValues;
- (NSDictionary)readOnlyDictionary;
- (id)objectForKey:(id)a3;
- (id)subdictionaryForKeys:(id)a3;
- (id)subdictionaryForKeys:(id)a3 passingTest:(id)a4;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)readWithAccessor:(id)a3;
- (void)readWriteWithAccessor:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FCThreadSafeMutableDictionary

- (FCThreadSafeMutableDictionary)init
{
  v8.receiver = self;
  v8.super_class = FCThreadSafeMutableDictionary;
  v2 = [(FCThreadSafeMutableDictionary *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v5;
  }

  return v2;
}

uint64_t __42__FCThreadSafeMutableDictionary_allValues__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __38__FCThreadSafeMutableDictionary_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)allValues
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
  v5[2] = __42__FCThreadSafeMutableDictionary_allValues__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)allKeys
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
  v5[2] = __40__FCThreadSafeMutableDictionary_allKeys__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

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
  v5[2] = __38__FCThreadSafeMutableDictionary_count__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__FCThreadSafeMutableDictionary_allKeys__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)readOnlyDictionary
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
  v5[2] = __51__FCThreadSafeMutableDictionary_readOnlyDictionary__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)lock performWithLockSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __51__FCThreadSafeMutableDictionary_readOnlyDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FCThreadSafeMutableDictionary)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(FCThreadSafeMutableDictionary *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_dictionary addEntriesFromDictionary:v4];
  }

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCThreadSafeMutableDictionary_setObject_forKey___block_invoke;
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
  v7[2] = __58__FCThreadSafeMutableDictionary_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FCThreadSafeMutableDictionary_removeObjectForKey___block_invoke;
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
  v3[2] = __49__FCThreadSafeMutableDictionary_removeAllObjects__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)lock performWithLockSync:v3];
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FCThreadSafeMutableDictionary_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
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
  v9[2] = __46__FCThreadSafeMutableDictionary_objectForKey___block_invoke;
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

uint64_t __46__FCThreadSafeMutableDictionary_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)subdictionaryForKeys:(id)a3
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
  v9[2] = __54__FCThreadSafeMutableDictionary_subdictionaryForKeys___block_invoke;
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

uint64_t __54__FCThreadSafeMutableDictionary_subdictionaryForKeys___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) fc_subdictionaryForKeys:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)subdictionaryForKeys:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__FCThreadSafeMutableDictionary_subdictionaryForKeys_passingTest___block_invoke;
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

void __66__FCThreadSafeMutableDictionary_subdictionaryForKeys_passingTest___block_invoke(uint64_t a1)
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
        v8 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:{v7, v10}];
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

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__FCThreadSafeMutableDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

- (void)readWithAccessor:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__FCThreadSafeMutableDictionary_readWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __50__FCThreadSafeMutableDictionary_readWithAccessor___block_invoke(uint64_t a1)
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
  v7[2] = __55__FCThreadSafeMutableDictionary_readWriteWithAccessor___block_invoke;
  v7[3] = &unk_1E7C37778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NFUnfairLock *)lock performWithLockSync:v7];
}

uint64_t __55__FCThreadSafeMutableDictionary_readWriteWithAccessor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
}

@end