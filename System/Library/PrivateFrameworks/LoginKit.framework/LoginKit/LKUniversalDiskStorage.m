@interface LKUniversalDiskStorage
+ (id)localDictionaryPath;
+ (id)localDirectoryPath;
+ (id)sharedStorage;
- (BOOL)clearKeys:(id)a3;
- (BOOL)saveKeyValuePairs:(id)a3 error:(id *)a4;
- (LKUniversalDiskStorage)init;
- (_opaque_pthread_rwlock_t)lock;
- (id)retrieveValueForKey:(id)a3;
- (void)_refreshStorageCacheIfNeeded;
- (void)clearAllKeyValueStorage:(id)a3;
- (void)clearKeys:(id)a3 completionHandler:(id)a4;
- (void)saveKeyValuePairs:(id)a3 completionHandler:(id)a4;
- (void)setLock:(_opaque_pthread_rwlock_t *)a3;
- (void)setStorageDictionaryModified:(BOOL)a3;
@end

@implementation LKUniversalDiskStorage

+ (id)sharedStorage
{
  if (sharedStorage_onceToken != -1)
  {
    +[LKUniversalDiskStorage sharedStorage];
  }

  v3 = sharedStorage__sharedInstance;

  return v3;
}

uint64_t __39__LKUniversalDiskStorage_sharedStorage__block_invoke()
{
  sharedStorage__sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (LKUniversalDiskStorage)init
{
  v10.receiver = self;
  v10.super_class = LKUniversalDiskStorage;
  v2 = [(LKUniversalDiskStorage *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("LDTemporaryLocalStorageQueue", 0);
    storageQueue = v2->_storageQueue;
    v2->_storageQueue = v3;

    pthread_rwlock_init(&v2->_lock, 0);
    v2->_storageDictionaryModified = 1;
    v5 = [@"LKUStorageDictionaryModified" UTF8String];
    v6 = v2->_storageQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__LKUniversalDiskStorage_init__block_invoke;
    handler[3] = &unk_279826610;
    v9 = v2;
    notify_register_dispatch(v5, &init_notifyToken, v6, handler);
  }

  return v2;
}

uint64_t __30__LKUniversalDiskStorage_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = @"LKUStorageDictionaryModified";
    v6 = 1024;
    v7 = init_notifyToken;
    _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Notified with %@, token: %d", &v4, 0x12u);
  }

  pthread_rwlock_wrlock((*(a1 + 32) + 32));
  *(*(a1 + 32) + 8) = 1;
  result = pthread_rwlock_unlock((*(a1 + 32) + 32));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)saveKeyValuePairs:(id)a3 error:(id *)a4
{
  v6 = a3;
  pthread_rwlock_wrlock(&self->_lock);
  [(LKUniversalDiskStorage *)self _refreshStorageCacheIfNeeded];
  v7 = [(LKUniversalDiskStorage *)self storageDictionary];

  if (v7)
  {
    v8 = [(LKUniversalDiskStorage *)self storageDictionary];
    v9 = [v8 mutableCopy];

    [v9 addEntriesFromDictionary:v6];
    v10 = [v9 copy];
    [(LKUniversalDiskStorage *)self setStorageDictionary:v10];
  }

  else
  {
    v9 = [v6 copy];
    [(LKUniversalDiskStorage *)self setStorageDictionary:v9];
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = +[LKUniversalDiskStorage localDirectoryPath];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = +[LKUniversalDiskStorage localDirectoryPath];
  v28 = 0;
  v17 = [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v28];
  v14 = v28;

  if ((v17 & 1) == 0)
  {
    pthread_rwlock_unlock(&self->_lock);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LKUniversalDiskStorage saveKeyValuePairs:error:];
      if (a4)
      {
        goto LABEL_15;
      }
    }

    else if (a4)
    {
LABEL_15:
      v26 = v14;
      v23 = 0;
      *a4 = v14;
      goto LABEL_12;
    }

    v23 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v18 = v14;
  v19 = [(LKUniversalDiskStorage *)self storageDictionary];
  v20 = MEMORY[0x277CBEBC0];
  v21 = +[LKUniversalDiskStorage localDictionaryPath];
  v22 = [v20 fileURLWithPath:v21 isDirectory:0];
  v27 = v18;
  v23 = [v19 writeToURL:v22 error:&v27];
  v14 = v27;

  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LKUniversalDiskStorage saveKeyValuePairs:error:];
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (a4)
    {
LABEL_10:
      v24 = v14;
      *a4 = v14;
    }
  }

LABEL_11:
  [(LKUniversalDiskStorage *)self setStorageDictionaryModified:1];
  pthread_rwlock_unlock(&self->_lock);
LABEL_12:

  return v23;
}

- (void)saveKeyValuePairs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LKUniversalDiskStorage *)self storageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__LKUniversalDiskStorage_saveKeyValuePairs_completionHandler___block_invoke;
  block[3] = &unk_279826588;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __62__LKUniversalDiskStorage_saveKeyValuePairs_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 saveKeyValuePairs:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

- (id)retrieveValueForKey:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  [(LKUniversalDiskStorage *)self _refreshStorageCacheIfNeeded];
  v5 = [(LKUniversalDiskStorage *)self storageDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  pthread_rwlock_unlock(&self->_lock);

  return v6;
}

- (BOOL)clearKeys:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_rwlock_wrlock(&self->_lock);
  [(LKUniversalDiskStorage *)self _refreshStorageCacheIfNeeded];
  v5 = [(LKUniversalDiskStorage *)self storageDictionary];

  if (v5)
  {
    v6 = [(LKUniversalDiskStorage *)self storageDictionary];
    v7 = [v6 mutableCopy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 setObject:0 forKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
    }

    v13 = [v7 copy];
    [(LKUniversalDiskStorage *)self setStorageDictionary:v13];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(LKUniversalDiskStorage *)self storageDictionary];
      *buf = 138543362;
      v29 = v14;
      _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Storing storage dictionary to disk... %{public}@", buf, 0xCu);
    }

    v15 = [(LKUniversalDiskStorage *)self storageDictionary];
    v16 = MEMORY[0x277CBEBC0];
    v17 = +[LKUniversalDiskStorage localDictionaryPath];
    v18 = [v16 fileURLWithPath:v17 isDirectory:0];
    v23 = 0;
    v19 = [v15 writeToURL:v18 error:&v23];
    v20 = v23;

    if ((v19 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LKUniversalDiskStorage clearKeys:];
    }

    [(LKUniversalDiskStorage *)self setStorageDictionaryModified:1];
    pthread_rwlock_unlock(&self->_lock);
  }

  else
  {
    pthread_rwlock_unlock(&self->_lock);
    v19 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)clearKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LKUniversalDiskStorage *)self storageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__LKUniversalDiskStorage_clearKeys_completionHandler___block_invoke;
  block[3] = &unk_279826588;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __54__LKUniversalDiskStorage_clearKeys_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearKeys:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clearAllKeyValueStorage:(id)a3
{
  v4 = a3;
  v5 = [(LKUniversalDiskStorage *)self storageQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__LKUniversalDiskStorage_clearAllKeyValueStorage___block_invoke;
  v7[3] = &unk_279826428;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__LKUniversalDiskStorage_clearAllKeyValueStorage___block_invoke(uint64_t a1)
{
  pthread_rwlock_wrlock((*(a1 + 32) + 32));
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[LKUniversalDiskStorage localDictionaryPath];
  v6 = 0;
  [v2 removeItemAtPath:v3 error:&v6];
  v4 = v6;

  [*(a1 + 32) setStorageDictionary:0];
  [*(a1 + 32) setStorageDictionaryModified:1];
  pthread_rwlock_unlock((*(a1 + 32) + 32));
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__LKUniversalDiskStorage_clearAllKeyValueStorage___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)setStorageDictionaryModified:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  self->_storageDictionaryModified = a3;
  if (a3)
  {
    notify_register_check([@"LKUStorageDictionaryModified" UTF8String], &setStorageDictionaryModified__token);
    if (setStorageDictionaryModified__token != -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 138412546;
        v5 = @"StorageDictionaryModified";
        v6 = 1024;
        v7 = setStorageDictionaryModified__token;
        _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Post %@ notification with token: %d", &v4, 0x12u);
      }

      notify_set_state(setStorageDictionaryModified__token, 1uLL);
      notify_post([@"LKUStorageDictionaryModified" UTF8String]);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_refreshStorageCacheIfNeeded
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(LKUniversalDiskStorage *)self isStorageDictionaryModified])
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = MEMORY[0x277CBEBC0];
    v5 = +[LKUniversalDiskStorage localDictionaryPath];
    v6 = [v4 fileURLWithPath:v5 isDirectory:0];
    v16 = 0;
    v7 = [v3 dictionaryWithContentsOfURL:v6 error:&v16];
    v8 = v16;

    if (!v8)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to read storage dictionary. Error: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x277CBEAC0];
    v10 = MEMORY[0x277CBEBC0];
    v11 = +[LKUniversalDiskStorage localDictionaryPath];
    v12 = [v10 fileURLWithPath:v11 isDirectory:0];
    v13 = [v9 dictionaryWithContentsOfURL:v12 error:0];

    v7 = v13;
    if (v13)
    {
LABEL_6:
      v14 = [v7 copy];
      [(LKUniversalDiskStorage *)self setStorageDictionary:v14];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[LKUniversalDiskStorage _refreshStorageCacheIfNeeded]";
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
      }

      [(LKUniversalDiskStorage *)self setStorageDictionaryModified:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)localDirectoryPath
{
  if (localDirectoryPath_onceToken != -1)
  {
    +[LKUniversalDiskStorage localDirectoryPath];
  }

  v3 = localDirectoryPath_path;

  return v3;
}

void __44__LKUniversalDiskStorage_localDirectoryPath__block_invoke()
{
  v12 = 1;
  v0 = container_create_or_lookup_system_group_paths();
  if (v0)
  {
    v1 = _CFXPCCreateCFObjectFromXPCObject();
    v2 = [v1 objectForKeyedSubscript:@"systemgroup.com.apple.userimagecache"];
    v3 = [v2 stringByAppendingPathComponent:@"LocalStorage"];
    v4 = localDirectoryPath_path;
    localDirectoryPath_path = v3;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __44__LKUniversalDiskStorage_localDirectoryPath__block_invoke_cold_1(&v12, v5, v6, v7, v8, v9, v10, v11);
  }
}

+ (id)localDictionaryPath
{
  if (localDictionaryPath_onceToken != -1)
  {
    +[LKUniversalDiskStorage localDictionaryPath];
  }

  v3 = localDictionaryPath_path;

  return v3;
}

void __45__LKUniversalDiskStorage_localDictionaryPath__block_invoke()
{
  v2 = +[LKUniversalDiskStorage localDirectoryPath];
  v0 = [v2 stringByAppendingPathComponent:@"LDTemporaryLocalStorageDict.plist"];
  v1 = localDictionaryPath_path;
  localDictionaryPath_path = v0;
}

- (_opaque_pthread_rwlock_t)lock
{
  v3 = *self[1].__opaque;
  *&retstr->__opaque[152] = *&self->__opaque[184];
  *&retstr->__opaque[168] = v3;
  *&retstr->__opaque[184] = *&self[1].__opaque[16];
  v4 = *&self->__opaque[136];
  *&retstr->__opaque[88] = *&self->__opaque[120];
  *&retstr->__opaque[104] = v4;
  v5 = *&self->__opaque[168];
  *&retstr->__opaque[120] = *&self->__opaque[152];
  *&retstr->__opaque[136] = v5;
  v6 = *&self->__opaque[72];
  *&retstr->__opaque[24] = *&self->__opaque[56];
  *&retstr->__opaque[40] = v6;
  v7 = *&self->__opaque[104];
  *&retstr->__opaque[56] = *&self->__opaque[88];
  *&retstr->__opaque[72] = v7;
  v8 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v8;
  return self;
}

- (void)setLock:(_opaque_pthread_rwlock_t *)a3
{
  *&self->_lock.__sig = *&a3->__sig;
  v3 = *&a3->__opaque[8];
  v4 = *&a3->__opaque[24];
  v5 = *&a3->__opaque[56];
  *&self->_lock.__opaque[40] = *&a3->__opaque[40];
  *&self->_lock.__opaque[56] = v5;
  *&self->_lock.__opaque[8] = v3;
  *&self->_lock.__opaque[24] = v4;
  v6 = *&a3->__opaque[72];
  v7 = *&a3->__opaque[88];
  v8 = *&a3->__opaque[120];
  *&self->_lock.__opaque[104] = *&a3->__opaque[104];
  *&self->_lock.__opaque[120] = v8;
  *&self->_lock.__opaque[72] = v6;
  *&self->_lock.__opaque[88] = v7;
  v9 = *&a3->__opaque[136];
  v10 = *&a3->__opaque[152];
  v11 = *&a3->__opaque[168];
  *&self->_lock.__opaque[184] = *&a3->__opaque[184];
  *&self->_lock.__opaque[152] = v10;
  *&self->_lock.__opaque[168] = v11;
  *&self->_lock.__opaque[136] = v9;
}

- (void)saveKeyValuePairs:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25618F000, MEMORY[0x277D86220], v0, "Can not create storage folder, error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveKeyValuePairs:error:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25618F000, MEMORY[0x277D86220], v0, "Failed to save storage file with error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearKeys:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25618F000, MEMORY[0x277D86220], v0, "Failed to save storage file, error: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__LKUniversalDiskStorage_clearAllKeyValueStorage___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25618F000, MEMORY[0x277D86220], v0, "Failed to remove the stored file, error: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__LKUniversalDiskStorage_localDirectoryPath__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_25618F000, MEMORY[0x277D86220], a3, "container_create_or_lookup_system_group_paths failed with error: %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end