@interface EMUbiquitouslyPersistedDictionary
+ (OS_os_log)log;
+ (id)sharedDictionaryWithIdentifier:(id)identifier;
- (EMUbiquitouslyPersistedDictionary)initWithPlistPath:(id)path identifier:(id)identifier encrypted:(BOOL)encrypted delegate:(id)delegate;
- (EMUbiquitouslyPersistedDictionaryDelegate)delegate;
- (id)_mergeChangesForRemotelyChangedKeys:(id)keys;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)count;
- (void)_ensureStoredObjectsAreInKVStore;
- (void)_mergeKVStoreChangedKeys:(id)keys;
- (void)_purgeOldestEntries;
- (void)_resetKVStore;
- (void)_storeChangedExternally:(id)externally;
- (void)_synchronize;
- (void)_writeToPlist;
- (void)notifyDelegateOfChangedItems:(id)items deletedItems:(id)deletedItems;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation EMUbiquitouslyPersistedDictionary

void __40__EMUbiquitouslyPersistedDictionary_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_40;
  log_log_40 = v1;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EMUbiquitouslyPersistedDictionary_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_40 != -1)
  {
    dispatch_once(&log_onceToken_40, block);
  }

  v2 = log_log_40;

  return v2;
}

+ (id)sharedDictionaryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (sharedDictionaryWithIdentifier__onceToken != -1)
  {
    +[EMUbiquitouslyPersistedDictionary sharedDictionaryWithIdentifier:];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v4 = sharedDictionaryWithIdentifier__sharedDictionaryQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__EMUbiquitouslyPersistedDictionary_sharedDictionaryWithIdentifier___block_invoke_35;
  v8[3] = &unk_1E826F128;
  v9 = identifierCopy;
  v10 = &v11;
  v5 = identifierCopy;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__EMUbiquitouslyPersistedDictionary_sharedDictionaryWithIdentifier___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.EMUbiquitouslyPersistedDictionary.singletons", 0);
  v1 = sharedDictionaryWithIdentifier__sharedDictionaryQueue;
  sharedDictionaryWithIdentifier__sharedDictionaryQueue = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = sharedDictionaryWithIdentifier__sharedDictionaries;
  sharedDictionaryWithIdentifier__sharedDictionaries = v2;
}

void __68__EMUbiquitouslyPersistedDictionary_sharedDictionaryWithIdentifier___block_invoke_35(uint64_t a1)
{
  v2 = [sharedDictionaryWithIdentifier__sharedDictionaries objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[EMUbiquitouslyPersistedDictionary alloc] initWithIdentifier:*(a1 + 32) encrypted:0 delegate:0];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = sharedDictionaryWithIdentifier__sharedDictionaries;

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (EMUbiquitouslyPersistedDictionary)initWithPlistPath:(id)path identifier:(id)identifier encrypted:(BOOL)encrypted delegate:(id)delegate
{
  encryptedCopy = encrypted;
  pathCopy = path;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v36.receiver = self;
  v36.super_class = EMUbiquitouslyPersistedDictionary;
  v15 = [(EMUbiquitouslyPersistedDictionary *)&v36 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [objc_alloc(MEMORY[0x1E696AFB8]) initWithStoreIdentifier:v15->_identifier type:encryptedCopy];
    kvStore = v15->_kvStore;
    v15->_kvStore = v18;

    objc_storeStrong(&v15->_plistPath, path);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v20 = dispatch_queue_create([(NSString *)v15->_identifier UTF8String], 0);
    mutationQueue = v15->_mutationQueue;
    v15->_mutationQueue = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v15->_plistPath];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 objectForKeyedSubscript:@"version"];
      v25 = [v24 isEqual:&unk_1F461CDF8];

      if ((v25 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v15 file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:104 description:@"Unsupported version"];
      }
    }

    v27 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EMUbiquitouslyPersistedDictionary.delegateScheduler" qualityOfService:17];
    delegateScheduler = v15->_delegateScheduler;
    v15->_delegateScheduler = v27;

    v29 = [v23 objectForKeyedSubscript:@"data"];

    if (v29)
    {
      v30 = [v23 objectForKeyedSubscript:@"data"];
      v31 = [v30 mutableCopy];
      storedObjects = v15->_storedObjects;
      v15->_storedObjects = v31;
    }

    else
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v30 = v15->_storedObjects;
      v15->_storedObjects = v33;
    }

    [(EMUbiquitouslyPersistedDictionary *)v15 _mergeKVStoreChangedKeys:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__storeChangedExternally_ name:*MEMORY[0x1E696A9E8] object:v15->_kvStore];
  }

  return v15;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__EMUbiquitouslyPersistedDictionary_count__block_invoke;
  v6[3] = &unk_1E826F128;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mutationQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__EMUbiquitouslyPersistedDictionary_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storedObjects];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"[key isKindOfClass:[NSString class]]"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EMUbiquitouslyPersistedDictionary_objectForKey___block_invoke;
  block[3] = &unk_1E826FBE8;
  v12 = keyCopy;
  v13 = &v14;
  block[4] = self;
  v7 = keyCopy;
  dispatch_sync(mutationQueue, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __50__EMUbiquitouslyPersistedDictionary_objectForKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) storedObjects];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:@"value"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(EMUbiquitouslyPersistedDictionary *)self objectForKey:subscript];

  return v3;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"[(id)key isKindOfClass:[NSString class]]"}];
  }

  v9 = keyCopy;
  if (![v9 length] || (v10 = objc_msgSend(v9, "length"), -[EMUbiquitouslyPersistedDictionary kvStore](self, "kvStore"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "maximumKeyLength"), v11, v10 > v12))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"keyString.length > 0 && keyString.length <= self.kvStore.maximumKeyLength"}];
  }

  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EMUbiquitouslyPersistedDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_1E826D498;
  v19 = objectCopy;
  selfCopy = self;
  v15 = v9;
  v21 = v15;
  v22 = v15;
  v16 = objectCopy;
  dispatch_async(mutationQueue, block);
}

void __54__EMUbiquitouslyPersistedDictionary_setObject_forKey___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 ef_dateWithTruncatedSeconds];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = *(a1 + 32);
  v12[0] = @"value";
  v12[1] = @"updatedAt";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [*(a1 + 40) storedObjects];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 48)];

  v10 = [*(a1 + 40) kvStore];
  [v10 setObject:v8 forKey:*(a1 + 56)];

  [*(a1 + 40) _synchronize];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (objectCopy)
  {
    [(EMUbiquitouslyPersistedDictionary *)self setObject:objectCopy forKey:subscriptCopy];
  }

  else
  {
    [(EMUbiquitouslyPersistedDictionary *)self removeObjectForKey:subscriptCopy];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"[(id)key isKindOfClass:[NSString class]]"}];
  }

  v6 = keyCopy;
  if (![v6 length] || (v7 = objc_msgSend(v6, "length"), -[EMUbiquitouslyPersistedDictionary kvStore](self, "kvStore"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "maximumKeyLength"), v8, v7 > v9))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"keyString.length > 0 && keyString.length <= self.kvStore.maximumKeyLength"}];
  }

  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EMUbiquitouslyPersistedDictionary_removeObjectForKey___block_invoke;
  block[3] = &unk_1E826C230;
  block[4] = self;
  v15 = v6;
  v16 = v6;
  v12 = v6;
  dispatch_async(mutationQueue, block);
}

uint64_t __56__EMUbiquitouslyPersistedDictionary_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storedObjects];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 32) kvStore];
  [v3 removeObjectForKey:*(a1 + 48)];

  v4 = *(a1 + 32);

  return [v4 _synchronize];
}

- (void)removeAllObjects
{
  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EMUbiquitouslyPersistedDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_1E826C098;
  block[4] = self;
  dispatch_sync(mutationQueue, block);
}

uint64_t __53__EMUbiquitouslyPersistedDictionary_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storedObjects];
  [v2 removeAllObjects];

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [*(a1 + 32) plistPath];
  [v3 removeItemAtPath:v4 error:0];

  v5 = *(a1 + 32);

  return [v5 _resetKVStore];
}

- (void)_writeToPlist
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "_writeToPlist failed with error %{public}@", buf, 0xCu);
}

- (void)_ensureStoredObjectsAreInKVStore
{
  storedObjects = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__EMUbiquitouslyPersistedDictionary__ensureStoredObjectsAreInKVStore__block_invoke;
  v4[3] = &unk_1E826FC10;
  v4[4] = self;
  [storedObjects enumerateKeysAndObjectsUsingBlock:v4];
}

void __69__EMUbiquitouslyPersistedDictionary__ensureStoredObjectsAreInKVStore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) kvStore];
  v7 = [v6 objectForKey:v9];

  if (!v7)
  {
    v8 = [*(a1 + 32) kvStore];
    [v8 setObject:v5 forKey:v9];
  }
}

- (void)_synchronize
{
  [(EMUbiquitouslyPersistedDictionary *)self _writeToPlist];
  [(EMUbiquitouslyPersistedDictionary *)self _ensureStoredObjectsAreInKVStore];
  kvStore = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
  synchronize = [kvStore synchronize];

  if ((synchronize & 1) == 0)
  {
    v5 = +[EMUbiquitouslyPersistedDictionary log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(EMUbiquitouslyPersistedDictionary *)v5 _synchronize];
    }
  }
}

- (void)_purgeOldestEntries
{
  storedObjects = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
  allKeys = [storedObjects allKeys];
  v5 = [allKeys mutableCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__EMUbiquitouslyPersistedDictionary__purgeOldestEntries__block_invoke;
  v13[3] = &unk_1E826FC38;
  v13[4] = self;
  [v5 sortUsingComparator:v13];
  for (i = 0; ; ++i)
  {
    v7 = [v5 count];
    v8 = v7 >= 0xA ? 10 : v7;
    if (i >= v8)
    {
      break;
    }

    storedObjects2 = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
    v10 = [v5 objectAtIndexedSubscript:i];
    [storedObjects2 removeObjectForKey:v10];

    kvStore = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
    v12 = [v5 objectAtIndexedSubscript:i];
    [kvStore removeObjectForKey:v12];
  }

  [(EMUbiquitouslyPersistedDictionary *)self _synchronize];
}

uint64_t __56__EMUbiquitouslyPersistedDictionary__purgeOldestEntries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) storedObjects];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"updatedAt"];

  v10 = [*(a1 + 32) storedObjects];
  v11 = [v10 objectForKeyedSubscript:v6];
  v12 = [v11 objectForKeyedSubscript:@"updatedAt"];

  v13 = [v9 compare:v12];
  return v13;
}

- (void)_resetKVStore
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[EMUbiquitouslyPersistedDictionary log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v21 = identifier;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "resetting kv store for %@", buf, 0xCu);
  }

  kvStore = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
  dictionaryRepresentation = [kvStore dictionaryRepresentation];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [dictionaryRepresentation allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        kvStore2 = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
        [kvStore2 removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  kvStore3 = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
  [kvStore3 synchronize];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_mergeKVStoreChangedKeys:(id)keys
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if ([keysCopy count])
  {
    delegate = [(EMUbiquitouslyPersistedDictionary *)self delegate];
    v6 = [delegate conformsToProtocol:&unk_1F4642808];

    if (!v6)
    {
      goto LABEL_4;
    }

    delegate2 = [(EMUbiquitouslyPersistedDictionary *)self delegate];
    storedObjects = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
    kvStore = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
    v10 = [delegate2 mergeChangesForRemotelyChangedKeys:keysCopy localStore:storedObjects cloudStore:kvStore];

    if (!v10)
    {
LABEL_4:
      v10 = [(EMUbiquitouslyPersistedDictionary *)self _mergeChangesForRemotelyChangedKeys:keysCopy];
    }

    changedItems = [v10 changedItems];
    deletedItems = [v10 deletedItems];
    if ([changedItems count] || objc_msgSend(deletedItems, "count"))
    {
      *(v21 + 24) = 1;
      [(EMUbiquitouslyPersistedDictionary *)self notifyDelegateOfChangedItems:changedItems deletedItems:deletedItems];
    }

    if ([v10 requiresSynchronizing])
    {
      [(EMUbiquitouslyPersistedDictionary *)self _synchronize];
    }
  }

  else
  {
    kvStore2 = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
    dictionaryRepresentation = [kvStore2 dictionaryRepresentation];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__EMUbiquitouslyPersistedDictionary__mergeKVStoreChangedKeys___block_invoke;
    v19[3] = &unk_1E826FC60;
    v19[4] = self;
    v19[5] = &v20;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v19];
  }

  if (*(v21 + 24) == 1)
  {
    v15 = +[EMUbiquitouslyPersistedDictionary log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      storedObjects2 = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
      *buf = 138412290;
      v25 = storedObjects2;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "after merging changes: %@", buf, 0xCu);
    }

    [(EMUbiquitouslyPersistedDictionary *)self _writeToPlist];
  }

  else
  {
    v17 = +[EMUbiquitouslyPersistedDictionary log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "no changes, all in sync already", buf, 2u);
    }
  }

  _Block_object_dispose(&v20, 8);

  v18 = *MEMORY[0x1E69E9840];
}

void __62__EMUbiquitouslyPersistedDictionary__mergeKVStoreChangedKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) storedObjects];
  v7 = [v6 objectForKeyedSubscript:v12];

  if (!v7 || ([v7 objectForKeyedSubscript:@"value"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", @"value"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) == 0))
  {
    v11 = [*(a1 + 32) storedObjects];
    [v11 setObject:v5 forKeyedSubscript:v12];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)_mergeChangesForRemotelyChangedKeys:(id)keys
{
  v30 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = keysCopy;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        kvStore = [(EMUbiquitouslyPersistedDictionary *)self kvStore];
        v9 = [kvStore objectForKey:v7];

        storedObjects = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
        v11 = [storedObjects objectForKeyedSubscript:v7];

        if (!v9)
        {
          if (v11)
          {
            [v20 addObject:v7];
            storedObjects2 = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
            [storedObjects2 removeObjectForKey:v7];
          }

          else
          {
            storedObjects2 = +[EMUbiquitouslyPersistedDictionary log];
            if (os_log_type_enabled(storedObjects2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = obj;
              _os_log_impl(&dword_1C6655000, storedObjects2, OS_LOG_TYPE_DEFAULT, "no changes detected, changed keys=%@", buf, 0xCu);
            }
          }

          goto LABEL_14;
        }

        if (!v11 || ([v11 objectForKeyedSubscript:@"value"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"value"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) == 0))
        {
          [v21 setObject:v9 forKeyedSubscript:v7];
          storedObjects2 = [(EMUbiquitouslyPersistedDictionary *)self storedObjects];
          [storedObjects2 setObject:v9 forKeyedSubscript:v7];
LABEL_14:
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  if ([v21 count] || objc_msgSend(v20, "count"))
  {
    v16 = [[EMUbiquitouslyPersistedDictionaryMergeResult alloc] initWithChangedItems:v21 deletedItems:v20 requiresSynchronizing:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_storeChangedExternally:(id)externally
{
  externallyCopy = externally;
  mutationQueue = [(EMUbiquitouslyPersistedDictionary *)self mutationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EMUbiquitouslyPersistedDictionary__storeChangedExternally___block_invoke;
  block[3] = &unk_1E826CB80;
  v9 = externallyCopy;
  selfCopy = self;
  v11 = a2;
  v7 = externallyCopy;
  dispatch_async(mutationQueue, block);
}

void __61__EMUbiquitouslyPersistedDictionary__storeChangedExternally___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) kvStore];

  if (v3 != v2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EMUbiquitouslyPersistedDictionary.m" lineNumber:338 description:@"This is not the store we were looking for!"];
  }

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v8 = +[EMUbiquitouslyPersistedDictionary log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", v6];
    }

    else
    {
      v9 = off_1E826FC80[v6];
    }

    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "received external KVS change event: %@, changed keys=%@", buf, 0x16u);
  }

  if (v6 < 2)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    [*(a1 + 40) _purgeOldestEntries];
    goto LABEL_16;
  }

  if (v6 == 3)
  {
LABEL_11:
    [*(a1 + 40) _mergeKVStoreChangedKeys:v7];
  }

  else
  {
    v10 = +[EMUbiquitouslyPersistedDictionary log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = _NSU9ChangeReasonString(v6);
      __61__EMUbiquitouslyPersistedDictionary__storeChangedExternally___block_invoke_cold_1(v11, buf, v10);
    }
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfChangedItems:(id)items deletedItems:(id)deletedItems
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v8 = [itemsCopy ef_mapValues:&__block_literal_global_134];
  delegate = [(EMUbiquitouslyPersistedDictionary *)self delegate];
  if (delegate)
  {
    delegateScheduler = [(EMUbiquitouslyPersistedDictionary *)self delegateScheduler];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__EMUbiquitouslyPersistedDictionary_notifyDelegateOfChangedItems_deletedItems___block_invoke_2;
    v11[3] = &unk_1E826C230;
    v12 = delegate;
    v13 = v8;
    v14 = deletedItemsCopy;
    [delegateScheduler performBlock:v11];
  }
}

id __79__EMUbiquitouslyPersistedDictionary_notifyDelegateOfChangedItems_deletedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"value"];

  return v2;
}

- (EMUbiquitouslyPersistedDictionaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__EMUbiquitouslyPersistedDictionary__storeChangedExternally___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "unhandled change reason: %@", buf, 0xCu);
}

@end