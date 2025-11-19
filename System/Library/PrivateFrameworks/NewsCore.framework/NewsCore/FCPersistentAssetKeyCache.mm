@interface FCPersistentAssetKeyCache
+ (id)_persistenceCoder;
- (id)initWithCacheDirectory:(void *)a3 cacheName:(void *)a4 backgroundTaskable:;
- (id)interestTokenForWrappingKeyIDs:(id)a3;
- (id)wrappingKeyForWrappingKeyID:(id)a3;
- (void)_loadFromDisk;
- (void)_saveToDisk;
- (void)activityObservingApplicationDidEnterBackground;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3;
- (void)removeAllWrappingKeys;
- (void)setWrappingKey:(id)a3 forWrappingKeyID:(id)a4;
@end

@implementation FCPersistentAssetKeyCache

- (id)initWithCacheDirectory:(void *)a3 cacheName:(void *)a4 backgroundTaskable:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = FCPersistentAssetKeyCache;
    a1 = objc_msgSendSuper2(&v19, sel_init);
    if (a1)
    {
      v10 = [v7 stringByAppendingPathComponent:v8];
      v11 = a1[2];
      a1[2] = v10;

      v12 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v13 = a1[4];
      a1[4] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v15 = a1[5];
      a1[5] = v14;

      v16 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
      v17 = a1[6];
      a1[6] = v16;

      objc_storeStrong(a1 + 7, a4);
    }
  }

  return a1;
}

- (void)_saveToDisk
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__69;
  v13 = __Block_byref_object_dispose__69;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke;
  v8[3] = &unk_1E7C3A3A0;
  v8[4] = a1;
  v8[5] = &v9;
  [v2 performWithLockSync:v8];

  v3 = +[FCPersistentAssetKeyCache _persistenceCoder];
  v4 = [(FCPersistenceCoder *)v3 encodeData:?];

  v5 = *(a1 + 16);
  v6 = [v4 writeToFile:v5 atomically:1];

  if (v6)
  {
    v7 = *(a1 + 16);
    setxattr([v7 fileSystemRepresentation], "com.apple.newscore.storeVersion", &FCPersistentAssetKeyCacheVersion, 2uLL, 0, 0);
  }

  _Block_object_dispose(&v9, 8);
}

- (id)wrappingKeyForWrappingKeyID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__69;
  v17 = __Block_byref_object_dispose__69;
  v18 = 0;
  if (self)
  {
    cacheEntriesLock = self->_cacheEntriesLock;
  }

  else
  {
    cacheEntriesLock = 0;
  }

  v6 = cacheEntriesLock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__FCPersistentAssetKeyCache_wrappingKeyForWrappingKeyID___block_invoke;
  v10[3] = &unk_1E7C37408;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [(NFUnfairLock *)v6 performWithLockSync:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__FCPersistentAssetKeyCache_wrappingKeyForWrappingKeyID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    goto LABEL_5;
  }

  [(FCPersistentAssetKeyCache *)v2 _loadFromDisk];
  v4 = a1[4];
  if (v4)
  {
    v3 = *(v4 + 24);
  }

  else
  {
LABEL_8:
    v3 = 0;
  }

LABEL_5:
  v9 = [v3 objectForKey:a1[5]];
  v5 = [MEMORY[0x1E695DF00] date];
  [v9 setLastAccessed:{objc_msgSend(v5, "fc_millisecondTimeIntervalSince1970")}];

  v6 = [v9 value];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)interestTokenForWrappingKeyIDs:(id)a3
{
  v4 = a3;
  if (self)
  {
    interestLock = self->_interestLock;
  }

  else
  {
    interestLock = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke;
  v12[3] = &unk_1E7C36C58;
  v12[4] = self;
  v6 = v4;
  v13 = v6;
  [(NFUnfairLock *)interestLock performWithLockSync:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke_2;
  v10[3] = &unk_1E7C36C58;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [FCInterestToken interestTokenWithRemoveInterestBlock:v10];

  return v8;
}

uint64_t __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[5];
  }

  return [v1 addObjectsFromArray:*(a1 + 40)];
}

void __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke_3;
  v3[3] = &unk_1E7C36C58;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v2 performWithLockSync:v3];
}

uint64_t __60__FCPersistentAssetKeyCache_interestTokenForWrappingKeyIDs___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[5];
  }

  return [v1 fc_removeObjectsFromArray:*(a1 + 40)];
}

- (void)setWrappingKey:(id)a3 forWrappingKeyID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    cacheEntriesLock = self->_cacheEntriesLock;
  }

  else
  {
    cacheEntriesLock = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__FCPersistentAssetKeyCache_setWrappingKey_forWrappingKeyID___block_invoke;
  v14[3] = &unk_1E7C376A0;
  v14[4] = self;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  v16 = v10;
  [(NFUnfairLock *)cacheEntriesLock performWithLockSync:v14];
  if (self)
  {
    self->_needsSave = 1;
  }

  v11 = dispatch_time(0, 5000000000);
  v12 = FCPersistenceQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__FCPersistentAssetKeyCache_setWrappingKey_forWrappingKeyID___block_invoke_2;
  v13[3] = &unk_1E7C36EA0;
  v13[4] = self;
  dispatch_after(v11, v12, v13);
}

void __61__FCPersistentAssetKeyCache_setWrappingKey_forWrappingKeyID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    goto LABEL_5;
  }

  [(FCPersistentAssetKeyCache *)v2 _loadFromDisk];
  v4 = a1[4];
  if (v4)
  {
    v3 = *(v4 + 24);
  }

  else
  {
LABEL_12:
    v3 = 0;
  }

LABEL_5:
  v8 = [v3 objectForKey:a1[5]];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B6E88]);
    [v8 setKey:a1[5]];
  }

  v5 = [MEMORY[0x1E695DF00] date];
  [v8 setLastAccessed:{objc_msgSend(v5, "fc_millisecondTimeIntervalSince1970")}];

  [v8 setValue:a1[6]];
  v6 = a1[4];
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  [v7 setObject:v8 forKey:a1[5]];
}

void __61__FCPersistentAssetKeyCache_setWrappingKey_forWrappingKeyID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 9))
    {
      [(FCPersistentAssetKeyCache *)*(a1 + 32) _saveToDisk];
      *(v1 + 9) = 0;
    }
  }
}

- (void)removeAllWrappingKeys
{
  v2 = self;
  if (self)
  {
    self = self->_cacheEntriesLock;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__FCPersistentAssetKeyCache_removeAllWrappingKeys__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = v2;
  [(FCPersistentAssetKeyCache *)self performWithLockSync:v3];
  if (v2)
  {
    v2->_needsSave = 1;
  }
}

uint64_t __50__FCPersistentAssetKeyCache_removeAllWrappingKeys__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      [(FCPersistentAssetKeyCache *)v2 _loadFromDisk];
      v5 = *(a1 + 32);
      if (v5)
      {
        v4 = *(v5 + 24);
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return [v4 removeAllObjects];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3
{
  if (self)
  {
    self->_flushingEnabled = 1;
  }
}

- (void)activityObservingApplicationDidEnterBackground
{
  v2 = self;
  if (self)
  {
    self = self->_backgroundTaskable;
  }

  v3 = [(FCPersistentAssetKeyCache *)self fc_beginBackgroundTaskWithName:@"save-asset-key-cache" expirationHandler:0];
  v4 = FCPersistenceQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__FCPersistentAssetKeyCache_activityObservingApplicationDidEnterBackground__block_invoke;
  v5[3] = &unk_1E7C3C970;
  v5[4] = v2;
  v5[5] = v3;
  FCDispatchAsyncWithQualityOfService(v4, 25, v5);
}

uint64_t __75__FCPersistentAssetKeyCache_activityObservingApplicationDidEnterBackground__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ((*(v2 + 9) & 1) == 0 || ([(FCPersistentAssetKeyCache *)*(a1 + 32) _saveToDisk], *(v2 + 9) = 0, (v2 = *(a1 + 32)) != 0)))
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);

  return [v3 fc_endBackgroundTask:v4];
}

- (void)_loadFromDisk
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 16)];

  if (v3)
  {
    LOWORD(value) = 0;
    getxattr([*(a1 + 16) fileSystemRepresentation], "com.apple.newscore.storeVersion", &value, 2uLL, 0, 0);
    if (value != 1)
    {
      v4 = [MEMORY[0x1E696AC08] defaultManager];
      [v4 removeItemAtPath:*(a1 + 16) error:0];
    }
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(a1 + 16)];
  v6 = +[FCPersistentAssetKeyCache _persistenceCoder];
  v27 = v5;
  v7 = [(FCPersistenceCoder *)v6 encodeData:v5];

  v26 = v7;
  v8 = [objc_alloc(MEMORY[0x1E69B6E80]) initWithData:v7];
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v10 = [v8 entries];
  v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];
  v12 = *(a1 + 24);
  *(a1 + 24) = v11;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v8;
  v13 = [v8 entries];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x1E69E9C10];
    v17 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v19 key];

        if (!v20 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: the persisted asset key cache should never contain an entry without a key"];
          value = 136315906;
          v33 = "[FCPersistentAssetKeyCache _loadFromDisk]";
          v34 = 2080;
          v35 = "FCAssetKeyCache.m";
          v36 = 1024;
          v37 = 199;
          v38 = 2114;
          v39 = v23;
          _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &value, 0x26u);
        }

        v21 = *(a1 + 24);
        v22 = [v19 key];
        [v21 fc_safelySetObject:v19 forKey:v22];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)_persistenceCoder
{
  objc_opt_self();
  if (qword_1EDB277C0 != -1)
  {
    dispatch_once(&qword_1EDB277C0, &__block_literal_global_22_1);
  }

  v0 = _MergedGlobals_189;

  return v0;
}

void __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 8) & 1) != 0)
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
    v4 = [v3 fc_millisecondTimeIntervalSince1970];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 48);
    }

    else
    {
      v6 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke_2;
    v14[3] = &unk_1E7C3C970;
    v14[4] = v5;
    v14[5] = v4;
    [v6 performWithLockSync:v14];
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B6E80]);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 allValues];
  [v7 setEntries:v10];

  v11 = [v7 data];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke_3;
  v5[3] = &unk_1E7C44E00;
  v3 = *(a1 + 40);
  v5[4] = v1;
  v5[5] = v3;
  return [v2 fc_removeObjectsForKeysPassingTest:v5];
}

BOOL __40__FCPersistentAssetKeyCache__saveToDisk__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = ([v7 containsObject:a2] & 1) == 0 && objc_msgSend(v5, "lastAccessed") < *(a1 + 40);

  return v8;
}

void __46__FCPersistentAssetKeyCache__persistenceCoder__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = xmmword_1B681B4A0;
  v7 = xmmword_1B681B490;
  v5[0] = 0;
  v5[1] = 0;
  v0 = FCDeviceUUIDForVendor();
  [v0 getUUIDBytes:v5];

  v1 = [MEMORY[0x1E695DF88] dataWithLength:64];
  ccsha512_di();
  [v1 length];
  [v1 mutableBytes];
  cchkdf();
  v2 = [[FCPersistenceCoder alloc] initWithKey:v1];
  v3 = _MergedGlobals_189;
  _MergedGlobals_189 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end