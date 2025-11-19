@interface HDDatabaseValueCache
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)statistics;
- (HDDatabaseValueCache)init;
- (HDDatabaseValueCache)initWithName:(id)a3 cacheScope:(int64_t)a4;
- (HDDatabaseValueCacheTransactionStorage)_storageForTransaction:(int)a3 createIfNecessary:;
- (id)_lock_objectForKey:(void *)a3 storage:;
- (id)diagnosticDescription;
- (id)fetchObjectForKey:(id)a3 transaction:(id)a4 error:(id *)a5 faultHandler:(id)a6;
- (id)objectForKey:(id)a3;
- (void)_lock_storeObject:(void *)a3 forKey:(void *)a4 transaction:;
- (void)dealloc;
- (void)removeAllObjectsWithTransaction:(id)a3;
- (void)removeObjectForKey:(id)a3 transaction:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 transaction:(id)a5;
@end

@implementation HDDatabaseValueCache

- (HDDatabaseValueCache)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseValueCache)initWithName:(id)a3 cacheScope:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HDDatabaseValueCache;
  v7 = [(HDDatabaseValueCache *)&v16 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v7->_cache;
    v7->_cache = v8;

    v10 = [v6 copy];
    name = v7->_name;
    v7->_name = v10;

    v7->_cacheScope = a4;
    v7->_lock._os_unfair_lock_opaque = 0;
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%p", objc_opt_class(), v7];
    threadLocalKey = v7->_threadLocalKey;
    v7->_threadLocalKey = v12;

    v7->_statistics.faultCount = 0;
    v7->_statistics.lookupCount = 0;
    v7->_statistics.resetCount = 0;
    v14 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v14 addObject:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4.receiver = self;
  v4.super_class = HDDatabaseValueCache;
  [(HDDatabaseValueCache *)&v4 dealloc];
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)statistics
{
  os_unfair_lock_lock(&self->_lock);
  *retstr = self->_statistics;

  os_unfair_lock_unlock(&self->_lock);
  return result;
}

- (id)fetchObjectForKey:(id)a3 transaction:(id)a4 error:(id *)a5 faultHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_21:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_22:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"handler != NULL"}];

LABEL_4:
  os_unfair_lock_lock(&self->_lock);
  v14 = [(HDDatabaseValueCache *)self _storageForTransaction:v12 createIfNecessary:0];
  v15 = [(HDDatabaseValueCache *)self _lock_objectForKey:v11 storage:v14];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
LABEL_11:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_12;
  }

  ++self->_statistics.faultCount;
  v18 = objc_autoreleasePoolPush();
  v25 = 0;
  v16 = v13[2](v13, v12, &v25);
  v17 = v25;
  objc_autoreleasePoolPop(v18);
  if (v16)
  {
    if (v14 || ([(HDDatabaseValueCache *)self _storageForTransaction:v12 createIfNecessary:1], v19 = objc_claimAutoreleasedReturnValue(), (v14 = v19) != 0))
    {
      v19 = v14[2];
    }

    [v19 setObject:v16 forKeyedSubscript:v11];
    goto LABEL_11;
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = v17;
  if (v17)
  {
    if (a5)
    {
      v21 = v17;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (HDDatabaseValueCacheTransactionStorage)_storageForTransaction:(int)a3 createIfNecessary:
{
  v5 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x277CCACC8] currentThread];
    v7 = [v6 threadDictionary];

    v8 = [v7 objectForKeyedSubscript:*(a1 + 16)];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3 == 0;
    }

    if (!v9)
    {
      if (!v5)
      {
        v19 = [MEMORY[0x277CCA890] currentHandler];
        [v19 handleFailureInMethod:sel__storageForTransaction_createIfNecessary_ object:a1 file:@"HDDatabaseValueCache.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];
      }

      v10 = objc_alloc_init(HDDatabaseValueCacheTransactionStorage);
      v11 = v5;
      v12 = v11;
      v13 = *(a1 + 24);
      if (!v13)
      {
        if (v5 && [v11 cacheScope])
        {
          v13 = [v12 cacheScope];
        }

        else
        {
          v14 = [MEMORY[0x277CCDD30] sharedBehavior];
          v15 = [v14 features];
          v16 = [v15 databaseStateCacheTransactionScoped];

          if (v16)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }
        }
      }

      if (!v10 || (v10->_cacheScope = v13) == 0)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:sel__storageForTransaction_createIfNecessary_ object:a1 file:@"HDDatabaseValueCache.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"storage.cacheScope != HDDatabaseTransactionCacheScopeUnspecified"}];
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __65__HDDatabaseValueCache__storageForTransaction_createIfNecessary___block_invoke;
      v24[3] = &unk_278613830;
      v24[4] = a1;
      v8 = v10;
      v25 = v8;
      v26 = v7;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__HDDatabaseValueCache__storageForTransaction_createIfNecessary___block_invoke_2;
      v21[3] = &unk_278619460;
      v17 = v26;
      v22 = v17;
      v23 = a1;
      [v12 onCommit:v24 orRollback:v21];
      [v17 setObject:v8 forKeyedSubscript:*(a1 + 16)];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_lock_objectForKey:(void *)a3 storage:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 8);
    ++*(a1 + 6);
    if (v6)
    {
      v7 = v6[2];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [MEMORY[0x277CBEB68] null];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      goto LABEL_5;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      if (v6 && (v6[1] & 1) != 0)
      {
LABEL_5:
        a1 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v11 = [*(a1 + 1) objectForKeyedSubscript:v5];
    }

    a1 = v11;
    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDDatabaseValueCache *)self _storageForTransaction:0 createIfNecessary:?];
  v6 = [(HDDatabaseValueCache *)self _lock_objectForKey:v4 storage:v5];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_lock_storeObject:(void *)a3 forKey:(void *)a4 transaction:
{
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    os_unfair_lock_assert_owner(a1 + 8);
    v11 = [(HDDatabaseValueCache *)a1 _storageForTransaction:v7 createIfNecessary:1];

    v10 = v11;
    if (v11)
    {
      v10 = v11[2];
    }

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (void)setObject:(id)a3 forKey:(id)a4 transaction:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  [(HDDatabaseValueCache *)self _lock_storeObject:v12 forKey:v9 transaction:v10];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectForKey:(id)a3 transaction:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [MEMORY[0x277CBEB68] null];
  [(HDDatabaseValueCache *)self _lock_storeObject:v8 forKey:v10 transaction:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllObjectsWithTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v5 = v4;
    os_unfair_lock_assert_owner(&self->_lock);
    v6 = [(HDDatabaseValueCache *)self _storageForTransaction:v5 createIfNecessary:1];

    if (v6)
    {
      [*(v6 + 16) removeAllObjects];
      *(v6 + 8) = 1;
    }

    else
    {
      [0 removeAllObjects];
    }

    ++self->_statistics.resetCount;
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __65__HDDatabaseValueCache__storageForTransaction_createIfNecessary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    os_unfair_lock_lock((v2 + 32));
    if (v3)
    {
      if (v3[8] == 1)
      {
        [*(v2 + 8) removeAllObjects];
      }

      v4 = *(v3 + 3);
      if (!v4)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:sel__commitTransactionStorage_ object:v2 file:@"HDDatabaseValueCache.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"transactionStorage.cacheScope != HDDatabaseTransactionCacheScopeUnspecified"}];

        v4 = *(v3 + 3);
      }

      v5 = v4 != 1;
    }

    else
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:sel__commitTransactionStorage_ object:v2 file:@"HDDatabaseValueCache.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"transactionStorage.cacheScope != HDDatabaseTransactionCacheScopeUnspecified"}];

      v5 = 1;
    }

    v6 = [MEMORY[0x277CBEB68] null];
    if (v3)
    {
      v7 = *(v3 + 2);
    }

    else
    {
      v7 = 0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__HDDatabaseValueCache__commitTransactionStorage___block_invoke;
    v14[3] = &unk_27862DB80;
    v15 = v6;
    v16 = v2;
    v17 = v5;
    v8 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];
    os_unfair_lock_unlock((v2 + 32));
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 32) + 16);

  return [v9 removeObjectForKey:v10];
}

void __50__HDDatabaseValueCache__commitTransactionStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isEqual:*(a1 + 32)])
  {
    [*(*(a1 + 40) + 8) removeObjectForKey:v6];
  }

  else if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 40) + 8) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)diagnosticDescription
{
  os_unfair_lock_lock(&self->_lock);
  lookupCount = self->_statistics.lookupCount;
  if (lookupCount < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = (self->_statistics.faultCount / lookupCount * 100.0);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HDDatabaseValueCache *)self name];
  v7 = [v5 stringWithFormat:@"%@: %lu values, %d%% fault rate (%ld/%ld), %ld resets", v6, -[NSMutableDictionary count](self->_cache, "count"), v4, self->_statistics.faultCount, self->_statistics.lookupCount, self->_statistics.resetCount, 0];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end