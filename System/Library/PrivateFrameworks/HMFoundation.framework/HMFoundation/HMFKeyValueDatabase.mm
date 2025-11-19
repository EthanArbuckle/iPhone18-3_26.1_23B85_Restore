@interface HMFKeyValueDatabase
- (BOOL)_syncWithoutTimerHandling:(id *)a3;
- (BOOL)containsKey:(id)a3;
- (BOOL)removeAllEntriesWithError:(id *)a3;
- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)sync:(id *)a3;
- (HMFKeyValueDatabase)init;
- (id)dictionary;
- (id)keys;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (id)values;
- (void)_cancelSyncTimer;
- (void)_startDelayedSyncTimerIfNeeded;
- (void)dealloc;
- (void)memoryMonitor:(id)a3 didReceiveMemoryEvent:(int64_t)a4;
@end

@implementation HMFKeyValueDatabase

- (HMFKeyValueDatabase)init
{
  v12.receiver = self;
  v12.super_class = HMFKeyValueDatabase;
  v2 = [(HMFKeyValueDatabase *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.HMFoundation.HMFKeyValueDatabase", v3);
    v5 = *(v2 + 2);
    *(v2 + 2) = v4;

    dispatch_queue_set_specific(*(v2 + 2), &kHMFKeyValueDatabaseQueueSpecificKey, &kHMFKeyValueDatabaseQueueSpecificKey, 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = 0;

    v7 = *(v2 + 4);
    *(v2 + 4) = 0;

    v8 = *(v2 + 5);
    *(v2 + 5) = 0;

    *(v2 + 1) = 0x4024000000000000;
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283ED0420, &unk_283ED0438, 0}];
    v10 = +[HMFMemoryMonitor memoryMonitor];
    [v10 addObserver:v2 debounceInterval:v9 events:1.0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[HMFMemoryMonitor memoryMonitor];
  [v3 removeObserver:self];

  v4 = self->_syncTimer;
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HMFKeyValueDatabase_dealloc__block_invoke;
    block[3] = &unk_2786E6C80;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v6.receiver = self;
  v6.super_class = HMFKeyValueDatabase;
  [(HMFKeyValueDatabase *)&v6 dealloc];
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(HMFKeyValueDatabase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMFKeyValueDatabase_setValue_forKey_error___block_invoke;
  block[3] = &unk_2786E73A0;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);

  return 1;
}

uint64_t __45__HMFKeyValueDatabase_setValue_forKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryDictionary];

  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setInMemoryDictionary:v3];
  }

  v4 = [*(a1 + 32) inMemoryDictionary];
  [v4 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  [*(a1 + 32) syncDelayInSeconds];
  v5 = *(a1 + 32);
  if (v6 <= 0.0)
  {

    return [v5 _syncWithoutTimerHandling:0];
  }

  else
  {

    return [v5 _startDelayedSyncTimerIfNeeded];
  }
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [(HMFKeyValueDatabase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMFKeyValueDatabase_valueForKey_error___block_invoke;
  block[3] = &unk_2786E7CB0;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__HMFKeyValueDatabase_valueForKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryDictionary];

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [*(a1 + 32) inMemoryDictionary];
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_9:
    v7 = [*(a1 + 32) diskRepresentation];

    if (v7)
    {
      v11 = [*(a1 + 32) diskRepresentation];
      v8 = [v11 hmf_objectForKey:*(a1 + 40)];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (BOOL)containsKey:(id)a3
{
  v6 = 0;
  v3 = [(HMFKeyValueDatabase *)self valueForKey:a3 error:&v6];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)removeAllEntriesWithError:(id *)a3
{
  v4 = [(HMFKeyValueDatabase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMFKeyValueDatabase_removeAllEntriesWithError___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_sync(v4, block);

  return 1;
}

uint64_t __49__HMFKeyValueDatabase_removeAllEntriesWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelSyncTimer];
  [*(a1 + 32) setInMemoryDictionary:0];
  v2 = *(a1 + 32);

  return [v2 setDiskRepresentation:0];
}

- (BOOL)sync:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v5 = [(HMFKeyValueDatabase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HMFKeyValueDatabase_sync___block_invoke;
  block[3] = &unk_2786E7CD8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __28__HMFKeyValueDatabase_sync___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelSyncTimer];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _syncWithoutTimerHandling:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (BOOL)_syncWithoutTimerHandling:(id *)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (dispatch_get_specific(&kHMFKeyValueDatabaseQueueSpecificKey) != &kHMFKeyValueDatabaseQueueSpecificKey)
  {
    _HMFPreconditionFailure(@"Must be called on database serial queue");
  }

  v5 = [(HMFKeyValueDatabase *)self inMemoryDictionary];

  if (v5)
  {
    v6 = [(HMFKeyValueDatabase *)self diskRepresentation];

    if (v6)
    {
      v7 = [(HMFKeyValueDatabase *)self diskRepresentation];
      v8 = [v7 hmf_readObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v11 = [v10 mutableCopy];
        v12 = [(HMFKeyValueDatabase *)self inMemoryDictionary];
        [v11 addEntriesFromDictionary:v12];

        [(HMFKeyValueDatabase *)self setInMemoryDictionary:v11];
      }
    }

    v13 = [(HMFKeyValueDatabase *)self inMemoryDictionary];
    v14 = [MEMORY[0x277CBEB68] null];
    v15 = [v13 allKeysForObject:v14];

    if ([v15 count])
    {
      v16 = [(HMFKeyValueDatabase *)self inMemoryDictionary];
      [v16 removeObjectsForKeys:v15];
    }

    v17 = [(HMFKeyValueDatabase *)self inMemoryDictionary];
    v18 = [v17 hmf_copyAsMemoryMappedData];

    v19 = v18 != 0;
    if (v18)
    {
      [(HMFKeyValueDatabase *)self setDiskRepresentation:v18];
      [(HMFKeyValueDatabase *)self setInMemoryDictionary:0];
      v20 = 0;
      v21 = 0;
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"Failed to create memory-mapped data";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v22 errorWithDomain:@"HMFKeyValueDatabaseErrorDomain" code:1 userInfo:v23];

      if (!a3)
      {
LABEL_21:

        goto LABEL_22;
      }

      v24 = v21;
      v20 = v21;
    }

    *a3 = v20;
    v21 = v20;
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v19 = 1;
LABEL_22:
  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_startDelayedSyncTimerIfNeeded
{
  v3 = [(HMFKeyValueDatabase *)self syncTimer];
  if (!v3 || (v4 = v3, -[HMFKeyValueDatabase syncTimer](self, "syncTimer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isValid], v5, v4, (v6 & 1) == 0))
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke;
    v7[3] = &unk_2786E6CA8;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CBEBB8];
    [WeakRetained syncDelayInSeconds];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_2;
    v9[3] = &unk_2786E7D00;
    v9[4] = v2;
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v9 block:?];
    v5 = [v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_4;
    block[3] = &unk_2786E6D18;
    block[4] = v2;
    v8 = v4;
    v6 = v4;
    dispatch_sync(v5, block);
  }
}

void __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_3;
  block[3] = &unk_2786E6C80;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _cancelSyncTimer];
  v2 = *(a1 + 32);

  return [v2 _syncWithoutTimerHandling:0];
}

uint64_t __53__HMFKeyValueDatabase__startDelayedSyncTimerIfNeeded__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _cancelSyncTimer];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setSyncTimer:v3];
}

- (void)_cancelSyncTimer
{
  if (dispatch_get_specific(&kHMFKeyValueDatabaseQueueSpecificKey) != &kHMFKeyValueDatabaseQueueSpecificKey)
  {
    _HMFPreconditionFailure(@"Must be called on database serial queue");
  }

  v3 = [(HMFKeyValueDatabase *)self syncTimer];

  if (v3)
  {
    v4 = [(HMFKeyValueDatabase *)self syncTimer];
    [v4 invalidate];

    [(HMFKeyValueDatabase *)self setSyncTimer:0];
  }
}

- (void)memoryMonitor:(id)a3 didReceiveMemoryEvent:(int64_t)a4
{
  v5 = [(HMFKeyValueDatabase *)self queue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMFKeyValueDatabase_memoryMonitor_didReceiveMemoryEvent___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v5, block);
}

void __59__HMFKeyValueDatabase_memoryMonitor_didReceiveMemoryEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryDictionary];

  if (v2)
  {
    [*(a1 + 32) _cancelSyncTimer];
    v3 = *(a1 + 32);

    [v3 _syncWithoutTimerHandling:0];
  }
}

- (id)keys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [(HMFKeyValueDatabase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__HMFKeyValueDatabase_keys__block_invoke;
  v6[3] = &unk_2786E7D28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__HMFKeyValueDatabase_keys__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskRepresentation];

  if (v2)
  {
    v3 = [*(a1 + 32) diskRepresentation];
    v4 = [v3 hmf_keysForDictionary];

    if (v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v4];
    }
  }

  v5 = [*(a1 + 32) inMemoryDictionary];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v6 inMemoryDictionary];
    v8 = [v9 allKeys];
    [v7 addObjectsFromArray:v8];
  }
}

- (id)values
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [(HMFKeyValueDatabase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__HMFKeyValueDatabase_values__block_invoke;
  v6[3] = &unk_2786E7D28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] allValues];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__HMFKeyValueDatabase_values__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) diskRepresentation];

  if (v2)
  {
    v3 = [*(a1 + 32) diskRepresentation];
    v4 = [v3 hmf_keysForDictionary];

    if (v4)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        do
        {
          v9 = 0;
          do
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v18 + 1) + 8 * v9);
            v11 = [*(a1 + 32) diskRepresentation];
            v12 = [v11 hmf_objectForKey:v10];

            if (v12)
            {
              [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:v10];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }
    }
  }

  v13 = [*(a1 + 32) inMemoryDictionary];

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [v14 inMemoryDictionary];
    [v15 addEntriesFromDictionary:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)dictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [(HMFKeyValueDatabase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HMFKeyValueDatabase_dictionary__block_invoke;
  v6[3] = &unk_2786E7D28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__HMFKeyValueDatabase_dictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskRepresentation];

  if (v2)
  {
    v3 = [*(a1 + 32) diskRepresentation];
    v4 = [v3 hmf_readObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v6];
    }
  }

  v7 = [*(a1 + 32) inMemoryDictionary];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v8 inMemoryDictionary];
    [v9 addEntriesFromDictionary:v10];
  }
}

@end