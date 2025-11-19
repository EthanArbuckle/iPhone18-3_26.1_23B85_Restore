@interface FCCacheCoordinator
- (BOOL)cacheContainsKey:(id)a3;
- (FCCacheCoordinator)init;
- (FCCacheCoordinatorDelegate)delegate;
- (NSSet)allKeys;
- (NSSet)keysWithNonZeroInterest;
- (NSSet)keysWithZeroInterest;
- (id)addInterestInKeys:(id *)a1;
- (id)holdTokenForKey:(id)a3;
- (id)holdTokenForKeys:(id)a3;
- (id)holdTokensForKeys:(id)a3;
- (id)persistableHints;
- (void)_flushKeys:(id *)a1;
- (void)_modifyCacheHintForKeys:(void *)a3 withBlock:;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)didInsertKeyIntoCache:(id)a3 withLifetimeHint:(int64_t)a4;
- (void)didInsertKeysIntoCache:(id)a3 withLifetimeHints:(id)a4;
- (void)didRemoveKeysFromCache:(id)a3;
- (void)enableFlushingWithPolicy:(id)a3;
- (void)operationThrottlerPerformOperation:(id)a3;
- (void)performCacheRead:(id)a3;
- (void)performCacheWrite:(id)a3;
- (void)pruneToMaxCount:(unint64_t)a3;
- (void)removeInterestInKeys:(uint64_t)a1;
- (void)setupWithInitialKeys:(id)a3 persistedHints:(id)a4;
@end

@implementation FCCacheCoordinator

- (FCCacheCoordinator)init
{
  v19.receiver = self;
  v19.super_class = FCCacheCoordinator;
  v2 = [(FCCacheCoordinator *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    storedKeys = v2->_storedKeys;
    v2->_storedKeys = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
    interestedKeys = v2->_interestedKeys;
    v2->_interestedKeys = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableDictionary);
    cacheHintsByKey = v2->_cacheHintsByKey;
    v2->_cacheHintsByKey = v7;

    v9 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    interestLock = v2->_interestLock;
    v2->_interestLock = v9;

    v11 = [FCThreadSafeHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v11;

    v13 = [[FCTimedOperationThrottler alloc] initWithDelegate:v2];
    [(FCTimedOperationThrottler *)v13 setCooldownTime:5.0];
    [(FCTimedOperationThrottler *)v13 setSuspended:1];
    flushThrottler = v2->_flushThrottler;
    v2->_flushThrottler = v13;
    v15 = v13;

    v2->_flushingEnabled = 0;
    v16 = objc_opt_new();
    underlyingLock = v2->_underlyingLock;
    v2->_underlyingLock = v16;
  }

  return v2;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_flushThrottler;
  }

  [(FCCacheCoordinator *)self setSuspended:0];
  v3.receiver = v2;
  v3.super_class = FCCacheCoordinator;
  [(FCCacheCoordinator *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  if (self)
  {
    self = self->_observers;
  }

  [(FCCacheCoordinator *)self addObject:a3];
}

- (void)setupWithInitialKeys:(id)a3 persistedHints:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self)
  {
    storedKeys = self->_storedKeys;
  }

  else
  {
    storedKeys = 0;
  }

  v8 = storedKeys;
  v9 = a4;
  if ([(NSMutableSet *)v8 count])
  {
  }

  else
  {
    if (self)
    {
      interestedKeys = self->_interestedKeys;
    }

    else
    {
      interestedKeys = 0;
    }

    v11 = [(NSCountedSet *)interestedKeys count];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"initial keys should be added before anything else"];
    *buf = 136315906;
    v26 = "[FCCacheCoordinator setupWithInitialKeys:persistedHints:]";
    v27 = 2080;
    v28 = "FCCacheCoordinator.m";
    v29 = 1024;
    v30 = 131;
    v31 = 2114;
    v32 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_9:
  if (self)
  {
LABEL_10:
    v12 = self->_storedKeys;
    goto LABEL_11;
  }

LABEL_25:
  v12 = 0;
LABEL_11:
  [(NSMutableSet *)v12 addObjectsFromArray:v6];
  objc_opt_class();
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14 && [v14 version] == 2)
  {
    v15 = [v14 cacheHints];
    v16 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_59];

    v17 = MEMORY[0x1E695DF20];
    v18 = [v14 cacheHints];
    v19 = [v17 dictionaryWithObjects:v18 forKeys:v16];

    if (self)
    {
      [(FCThreadSafeMutableDictionary *)self->_cacheHintsByKey addEntriesFromDictionary:v19];
      cacheHintsByKey = self->_cacheHintsByKey;
    }

    else
    {
      [0 addEntriesFromDictionary:v19];
      cacheHintsByKey = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__FCCacheCoordinator_setupWithInitialKeys_persistedHints___block_invoke_2;
    v24[3] = &unk_1E7C36EC8;
    v24[4] = self;
    [(FCThreadSafeMutableDictionary *)cacheHintsByKey readWriteWithAccessor:v24];
  }

  if (self)
  {
    flushThrottler = self->_flushThrottler;
  }

  else
  {
    flushThrottler = 0;
  }

  [(FCOperationThrottler *)flushThrottler setSuspended:0];

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __58__FCCacheCoordinator_setupWithInitialKeys_persistedHints___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  return [a2 fc_removeObjectsForKeysNotInSet:v3];
}

- (id)holdTokenForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(FCCacheCoordinator *)self holdTokenForKeys:v6, v10, v11];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)holdTokenForKeys:(id)a3
{
  v4 = [(FCCacheCoordinator *)&self->super.isa addInterestInKeys:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__FCCacheCoordinator_holdTokenForKeys___block_invoke;
  v8[3] = &unk_1E7C36C58;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [FCInterestToken interestTokenWithRemoveInterestBlock:v8];

  return v6;
}

- (id)addInterestInKeys:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__30;
    v21 = __Block_byref_object_dispose__30;
    v22 = 0;
    v4 = a1[6];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __40__FCCacheCoordinator_addInterestInKeys___block_invoke;
    v13 = &unk_1E7C37138;
    v16 = &v17;
    v14 = v3;
    v15 = a1;
    [v4 performWithLockSync:&v10];

    v5 = v18[5];
    if ([v5 count])
    {
      v6 = [MEMORY[0x1E695DF00] date];
      [v6 timeIntervalSince1970];
      v8 = v7;

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __36__FCCacheCoordinator_didAccessKeys___block_invoke;
      v23[3] = &__block_descriptor_40_e23_v16__0__NTPBCacheHint_8l;
      v23[4] = v8;
      [(FCCacheCoordinator *)a1 _modifyCacheHintForKeys:v5 withBlock:v23];
    }

    a1 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  return a1;
}

- (void)removeInterestInKeys:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 48);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __43__FCCacheCoordinator_removeInterestInKeys___block_invoke;
    v9 = &unk_1E7C36C58;
    v10 = a1;
    v11 = v3;
    [v5 performWithLockSync:&v6];
    if (*(a1 + 8))
    {
      [*(a1 + 64) tickle];
    }
  }
}

- (id)holdTokensForKeys:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v14 = v4;
  [(FCCacheCoordinator *)&self->super.isa addInterestInKeys:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __40__FCCacheCoordinator_holdTokensForKeys___block_invoke;
        v16[3] = &unk_1E7C36C58;
        v16[4] = self;
        v16[5] = v10;
        v11 = [FCInterestToken interestTokenWithRemoveInterestBlock:v16, v14];
        [v5 setObject:v11 forKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

void __40__FCCacheCoordinator_holdTokensForKeys___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(FCCacheCoordinator *)v1 removeInterestInKeys:v2];

  v3 = *MEMORY[0x1E69E9840];
}

- (NSSet)allKeys
{
  if (self)
  {
    self = self->_storedKeys;
  }

  v2 = [(FCCacheCoordinator *)self copy];

  return v2;
}

- (NSSet)keysWithZeroInterest
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  if (self)
  {
    interestLock = self->_interestLock;
  }

  else
  {
    interestLock = 0;
  }

  v4 = interestLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FCCacheCoordinator_keysWithZeroInterest__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__FCCacheCoordinator_keysWithZeroInterest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[3];
    v2 = v2[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = v2;
  v9 = v3;
  v5 = [v9 fc_setByMinusingSet:v4];
  v6 = [v5 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (NSSet)keysWithNonZeroInterest
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  if (self)
  {
    interestLock = self->_interestLock;
  }

  else
  {
    interestLock = 0;
  }

  v4 = interestLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCCacheCoordinator_keysWithNonZeroInterest__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __45__FCCacheCoordinator_keysWithNonZeroInterest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[3];
    v2 = v2[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = v2;
  v9 = v3;
  v5 = [v9 fc_setByIntersectingSet:v4];
  v6 = [v5 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)performCacheRead:(id)a3
{
  if (self)
  {
    [(FCCacheCoordinatorLocking *)self->_underlyingLock performReadSync:a3];
  }
}

- (void)performCacheWrite:(id)a3
{
  if (self)
  {
    [(FCCacheCoordinatorLocking *)self->_underlyingLock performWriteSync:a3];
  }
}

- (BOOL)cacheContainsKey:(id)a3
{
  if (self)
  {
    self = self->_storedKeys;
  }

  return [(FCCacheCoordinator *)self containsObject:a3];
}

- (void)didInsertKeyIntoCache:(id)a3 withLifetimeHint:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    storedKeys = self->_storedKeys;
  }

  else
  {
    storedKeys = 0;
  }

  v7 = a3;
  [(NSMutableSet *)storedKeys addObject:v7];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__FCCacheCoordinator_didInsertKeyIntoCache_withLifetimeHint___block_invoke;
  v10[3] = &__block_descriptor_40_e23_v16__0__NTPBCacheHint_8l;
  v10[4] = a4;
  [(FCCacheCoordinator *)self _modifyCacheHintForKeys:v8 withBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __61__FCCacheCoordinator_didInsertKeyIntoCache_withLifetimeHint___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  return [a2 setLifetime:v3];
}

- (void)_modifyCacheHintForKeys:(void *)a3 withBlock:
{
  v5 = a2;
  v6 = a3;
  if (a1 && (FCProcessIsMemoryConstrained() & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__FCCacheCoordinator__modifyCacheHintForKeys_withBlock___block_invoke_2;
    v8[3] = &unk_1E7C3F430;
    v9 = v5;
    v10 = v6;
    [v7 readWriteWithAccessor:v8];
  }
}

- (void)didInsertKeysIntoCache:(id)a3 withLifetimeHints:(id)a4
{
  v6 = a4;
  if (self)
  {
    storedKeys = self->_storedKeys;
  }

  else
  {
    storedKeys = 0;
  }

  [(NSMutableSet *)storedKeys addObjectsFromArray:a3];
  v8 = [v6 allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__FCCacheCoordinator_didInsertKeysIntoCache_withLifetimeHints___block_invoke;
  v10[3] = &unk_1E7C3F340;
  v11 = v6;
  v9 = v6;
  [(FCCacheCoordinator *)self _modifyCacheHintForKeys:v8 withBlock:v10];
}

void __63__FCCacheCoordinator_didInsertKeysIntoCache_withLifetimeHints___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 key];
  v7 = [v2 objectForKeyedSubscript:v4];

  v5 = [v7 integerValue];
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 1;
  }

  [v3 setLifetime:v6];
}

- (void)didRemoveKeysFromCache:(id)a3
{
  if (self)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = self->_storedKeys;
    v6 = [v4 setWithArray:a3];
    [(NSMutableSet *)v5 minusSet:v6];

    cacheHintsByKey = self->_cacheHintsByKey;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:a3];
    [0 minusSet:v8];

    cacheHintsByKey = 0;
  }

  [(FCThreadSafeMutableDictionary *)cacheHintsByKey removeObjectsForKeys:a3];
}

- (void)pruneToMaxCount:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__FCCacheCoordinator_pruneToMaxCount___block_invoke;
  v3[3] = &unk_1E7C3C970;
  v3[4] = self;
  v3[5] = a3;
  if (self)
  {
    [(FCCacheCoordinatorLocking *)self->_underlyingLock performWriteSync:v3];
  }
}

void __38__FCCacheCoordinator_pruneToMaxCount___block_invoke(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__30;
  v17[4] = __Block_byref_object_dispose__30;
  v18 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = v2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_2;
  v16[3] = &unk_1E7C37160;
  v16[4] = *(a1 + 32);
  v16[5] = v17;
  [v3 performWithLockSync:v16];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__30;
  v14 = __Block_byref_object_dispose__30;
  v15 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[5];
  }

  v5 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_4;
  v9[3] = &unk_1E7C3F3B8;
  v9[4] = &v10;
  v9[5] = v17;
  [v5 readWithAccessor:v9];

  v6 = [v11[5] fc_subarrayFromCount:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  [(FCCacheCoordinator *)v7 _flushKeys:v8];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v17, 8);
}

void __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_3;
  v8[3] = &unk_1E7C3F368;
  v8[4] = v2;
  v4 = v3;
  v5 = [v4 fc_setOfObjectsPassingTest:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 containsObject:a2] ^ 1;
}

void __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_5;
  v9[3] = &unk_1E7C3F390;
  v10 = v3;
  v5 = v3;
  v6 = [v4 sortedArrayUsingComparator:v9];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __38__FCCacheCoordinator_pruneToMaxCount___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [v7 accessTime];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 accessTime];
  if (v8 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v8 > v10;
  }

  return v11;
}

- (void)_flushKeys:(id *)a1
{
  v6 = a2;
  if (a1 && [v6 count])
  {
    v3 = a1[5];
    v4 = [v6 allObjects];
    [v3 removeObjectsForKeys:v4];

    v5 = [a1 delegate];
    [v5 cacheCoordinator:a1 flushKeysWithWriteLock:v6];

    [a1[3] minusSet:v6];
  }
}

- (id)persistableHints
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6DD8]);
  [v3 setVersion:2];
  if (self)
  {
    cacheHintsByKey = self->_cacheHintsByKey;
  }

  else
  {
    cacheHintsByKey = 0;
  }

  v5 = [(FCThreadSafeMutableDictionary *)cacheHintsByKey allValues];
  v6 = [v5 mutableCopy];
  [v3 setCacheHints:v6];

  return v3;
}

- (void)enableFlushingWithPolicy:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    if (self)
    {
      objc_setProperty_atomic(self, v4, v4, 72);
      self->_flushingEnabled = 1;
      flushThrottler = self->_flushThrottler;
    }

    else
    {
      flushThrottler = 0;
    }

    v4 = [(FCOperationThrottler *)flushThrottler tickle];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)operationThrottlerPerformOperation:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke;
  v27[3] = &unk_1E7C3F3E0;
  v27[4] = self;
  v8 = v7;
  v28 = v8;
  v29 = &v35;
  v30 = &v31;
  if (self && ([(FCCacheCoordinatorLocking *)self->_underlyingLock performReadSync:v27], (v36[3] & 1) != 0) || *(v32 + 24) == 1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__30;
    v25 = __Block_byref_object_dispose__30;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_4;
    v20[3] = &unk_1E7C3F408;
    v20[4] = self;
    v20[5] = &v21;
    v20[6] = &v31;
    if (self)
    {
      [(FCCacheCoordinatorLocking *)self->_underlyingLock performWriteSync:v20];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      observers = self->_observers;
    }

    else
    {
      observers = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
    }

    v10 = observers;
    v11 = [(FCThreadSafeHashTable *)v10 allObjects];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v39 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * i) cacheCoordinator:self didFlushKeys:v22[5]];
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v39 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v21, 8);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 cacheCoordinatorCurrentSizeWithReadLock:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4)
  {
    if (([*(a1 + 40) alwaysFlushKeysWithZeroInterest] & 1) != 0 || objc_msgSend(v4, "highWaterMark") <= v3 || (v5 = *(a1 + 40)) != 0 && (objc_msgSend(*(a1 + 40), "alwaysFlushKeysWithZeroInterest") & 1) == 0 && objc_msgSend(v5, "highWaterMark") > v3 && objc_msgSend(v5, "lowWaterMark") <= v3)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[6];
      }

      v7 = v6;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_2;
      v12[3] = &unk_1E7C37160;
      v12[4] = *(a1 + 32);
      v12[5] = &v13;
      [v7 performWithLockSync:v12];

      v9 = *(v14 + 24) == 1 && (v8 = *(a1 + 40)) != 0 && (([*(a1 + 40) alwaysFlushKeysWithZeroInterest] & 1) != 0 || objc_msgSend(v8, "highWaterMark") <= v3);
      *(*(*(a1 + 48) + 8) + 24) = v9;
      v11 = *(v14 + 24) == 1 && (v10 = *(a1 + 40)) != 0 && ([*(a1 + 40) alwaysFlushKeysWithZeroInterest] & 1) == 0 && objc_msgSend(v10, "highWaterMark") > v3 && objc_msgSend(v10, "lowWaterMark") <= v3;
      *(*(*(a1 + 56) + 8) + 24) = v11;
      _Block_object_dispose(&v13, 8);
    }
  }
}

void __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_3;
  v5[3] = &unk_1E7C3F368;
  v5[4] = v2;
  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = [v4 fc_containsObjectPassingTest:v5];
}

uint64_t __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 containsObject:a2] ^ 1;
}

void __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_5;
  v9[3] = &unk_1E7C37160;
  v4 = *(a1 + 40);
  v9[4] = v2;
  v9[5] = v4;
  [v3 performWithLockSync:v9];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 40);
    }

    else
    {
      v6 = 0;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_7;
    v8[3] = &unk_1E7C3C158;
    v7 = *(a1 + 40);
    v8[4] = v5;
    v8[5] = v7;
    [v6 readWithAccessor:v8];
  }

  [(FCCacheCoordinator *)*(a1 + 32) _flushKeys:?];
}

void __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_6;
  v8[3] = &unk_1E7C3F368;
  v8[4] = v2;
  v4 = v3;
  v5 = [v4 fc_setOfObjectsPassingTest:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 containsObject:a2] ^ 1;
}

void __57__FCCacheCoordinator_operationThrottlerPerformOperation___block_invoke_7(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a2;
  if (v4)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          if ([v14 lifetime] != 1)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([v7 count] >= 2)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__FCCacheCoordinator_filterKeysForPreemptiveFlush_cacheHints___block_invoke;
      v20[3] = &unk_1E7C3F390;
      v21 = v6;
      [v7 sortUsingComparator:v20];
      v15 = [v7 count] >> 1;
      [v7 removeObjectsInRange:{v15, objc_msgSend(v7, "count") - v15}];
    }

    v16 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __40__FCCacheCoordinator_addInterestInKeys___block_invoke(void *a1)
{
  v2 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__FCCacheCoordinator_addInterestInKeys___block_invoke_2;
  v9[3] = &unk_1E7C38D38;
  v9[4] = a1[5];
  v3 = [v2 fc_arrayByTransformingWithBlock:v9];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[5];
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  return [v7 addObjectsFromArray:*(*(a1[6] + 8) + 40)];
}

void *__40__FCCacheCoordinator_addInterestInKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = a2;
  v5 = [v3 member:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

uint64_t __43__FCCacheCoordinator_removeInterestInKeys___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[4];
  }

  return [v1 fc_removeObjectsFromArray:*(a1 + 40)];
}

uint64_t __62__FCCacheCoordinator_filterKeysForPreemptiveFlush_cacheHints___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 lifetime];
  if (v9 == [v8 lifetime])
  {
    v10 = [v7 accessTime];
    v11 = [v8 accessTime];
    v12 = -1;
    if (v10 >= v11)
    {
      v12 = 1;
    }

    if (v10 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else if (v9 == 2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void __56__FCCacheCoordinator__modifyCacheHintForKeys_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v3 objectForKeyedSubscript:{v9, v13}];
          v11 = [v10 copy];

          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E69B6DE0]);
            [v11 setKey:v9];
          }

          [v3 setObject:v11 forKeyedSubscript:v9];
          (*(*(a1 + 40) + 16))();
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (FCCacheCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end