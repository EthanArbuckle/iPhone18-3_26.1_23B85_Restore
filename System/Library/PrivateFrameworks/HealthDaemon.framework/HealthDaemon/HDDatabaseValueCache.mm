@interface HDDatabaseValueCache
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)statistics;
- (HDDatabaseValueCache)init;
- (HDDatabaseValueCache)initWithName:(id)name cacheScope:(int64_t)scope;
- (HDDatabaseValueCacheTransactionStorage)_storageForTransaction:(int)transaction createIfNecessary:;
- (id)_lock_objectForKey:(void *)key storage:;
- (id)diagnosticDescription;
- (id)fetchObjectForKey:(id)key transaction:(id)transaction error:(id *)error faultHandler:(id)handler;
- (id)objectForKey:(id)key;
- (void)_lock_storeObject:(void *)object forKey:(void *)key transaction:;
- (void)dealloc;
- (void)removeAllObjectsWithTransaction:(id)transaction;
- (void)removeObjectForKey:(id)key transaction:(id)transaction;
- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction;
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

- (HDDatabaseValueCache)initWithName:(id)name cacheScope:(int64_t)scope
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = HDDatabaseValueCache;
  v7 = [(HDDatabaseValueCache *)&v16 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v7->_cache;
    v7->_cache = v8;

    v10 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v10;

    v7->_cacheScope = scope;
    v7->_lock._os_unfair_lock_opaque = 0;
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%p", objc_opt_class(), v7];
    threadLocalKey = v7->_threadLocalKey;
    v7->_threadLocalKey = v12;

    v7->_statistics.faultCount = 0;
    v7->_statistics.lookupCount = 0;
    v7->_statistics.resetCount = 0;
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v7];
  }

  return v7;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

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

- (id)fetchObjectForKey:(id)key transaction:(id)transaction error:(id *)error faultHandler:(id)handler
{
  keyCopy = key;
  transactionCopy = transaction;
  handlerCopy = handler;
  if (keyCopy)
  {
    if (transactionCopy)
    {
      goto LABEL_3;
    }

LABEL_21:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  if (!transactionCopy)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_22:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"handler != NULL"}];

LABEL_4:
  os_unfair_lock_lock(&self->_lock);
  v14 = [(HDDatabaseValueCache *)self _storageForTransaction:transactionCopy createIfNecessary:0];
  v15 = [(HDDatabaseValueCache *)self _lock_objectForKey:keyCopy storage:v14];
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
  v16 = handlerCopy[2](handlerCopy, transactionCopy, &v25);
  v17 = v25;
  objc_autoreleasePoolPop(v18);
  if (v16)
  {
    if (v14 || ([(HDDatabaseValueCache *)self _storageForTransaction:transactionCopy createIfNecessary:1], v19 = objc_claimAutoreleasedReturnValue(), (v14 = v19) != 0))
    {
      v19 = v14[2];
    }

    [v19 setObject:v16 forKeyedSubscript:keyCopy];
    goto LABEL_11;
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = v17;
  if (v17)
  {
    if (error)
    {
      v21 = v17;
      *error = v17;
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

- (HDDatabaseValueCacheTransactionStorage)_storageForTransaction:(int)transaction createIfNecessary:
{
  v5 = a2;
  if (self)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v8 = [threadDictionary objectForKeyedSubscript:*(self + 16)];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = transaction == 0;
    }

    if (!v9)
    {
      if (!v5)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__storageForTransaction_createIfNecessary_ object:self file:@"HDDatabaseValueCache.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];
      }

      v10 = objc_alloc_init(HDDatabaseValueCacheTransactionStorage);
      v11 = v5;
      v12 = v11;
      cacheScope = *(self + 24);
      if (!cacheScope)
      {
        if (v5 && [v11 cacheScope])
        {
          cacheScope = [v12 cacheScope];
        }

        else
        {
          mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
          features = [mEMORY[0x277CCDD30] features];
          databaseStateCacheTransactionScoped = [features databaseStateCacheTransactionScoped];

          if (databaseStateCacheTransactionScoped)
          {
            cacheScope = 1;
          }

          else
          {
            cacheScope = 2;
          }
        }
      }

      if (!v10 || (v10->_cacheScope = cacheScope) == 0)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__storageForTransaction_createIfNecessary_ object:self file:@"HDDatabaseValueCache.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"storage.cacheScope != HDDatabaseTransactionCacheScopeUnspecified"}];
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __65__HDDatabaseValueCache__storageForTransaction_createIfNecessary___block_invoke;
      v24[3] = &unk_278613830;
      v24[4] = self;
      v8 = v10;
      v25 = v8;
      v26 = threadDictionary;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__HDDatabaseValueCache__storageForTransaction_createIfNecessary___block_invoke_2;
      v21[3] = &unk_278619460;
      v17 = v26;
      v22 = v17;
      selfCopy = self;
      [v12 onCommit:v24 orRollback:v21];
      [v17 setObject:v8 forKeyedSubscript:*(self + 16)];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_lock_objectForKey:(void *)key storage:
{
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    os_unfair_lock_assert_owner(self + 8);
    ++*(self + 6);
    if (keyCopy)
    {
      v7 = keyCopy[2];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 objectForKeyedSubscript:v5];
    null = [MEMORY[0x277CBEB68] null];
    v10 = [v8 isEqual:null];

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
      if (keyCopy && (keyCopy[1] & 1) != 0)
      {
LABEL_5:
        self = 0;
LABEL_12:

        goto LABEL_13;
      }

      v11 = [*(self + 1) objectForKeyedSubscript:v5];
    }

    self = v11;
    goto LABEL_12;
  }

LABEL_13:

  return self;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDDatabaseValueCache *)self _storageForTransaction:0 createIfNecessary:?];
  v6 = [(HDDatabaseValueCache *)self _lock_objectForKey:keyCopy storage:v5];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_lock_storeObject:(void *)object forKey:(void *)key transaction:
{
  if (self)
  {
    keyCopy = key;
    objectCopy = object;
    v9 = a2;
    os_unfair_lock_assert_owner(self + 8);
    v11 = [(HDDatabaseValueCache *)self _storageForTransaction:keyCopy createIfNecessary:1];

    v10 = v11;
    if (v11)
    {
      v10 = v11[2];
    }

    [v10 setObject:v9 forKeyedSubscript:objectCopy];
  }
}

- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction
{
  objectCopy = object;
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  [(HDDatabaseValueCache *)self _lock_storeObject:objectCopy forKey:keyCopy transaction:transactionCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectForKey:(id)key transaction:(id)transaction
{
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseValueCache.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  null = [MEMORY[0x277CBEB68] null];
  [(HDDatabaseValueCache *)self _lock_storeObject:null forKey:keyCopy transaction:transactionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllObjectsWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v5 = transactionCopy;
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
  name = [(HDDatabaseValueCache *)self name];
  v7 = [v5 stringWithFormat:@"%@: %lu values, %d%% fault rate (%ld/%ld), %ld resets", name, -[NSMutableDictionary count](self->_cache, "count"), v4, self->_statistics.faultCount, self->_statistics.lookupCount, self->_statistics.resetCount, 0];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end