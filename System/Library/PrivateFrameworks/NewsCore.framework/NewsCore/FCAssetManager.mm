@interface FCAssetManager
- (FCAssetManager)init;
- (FCAssetManager)initWithName:(id)name directory:(id)directory keyManager:(id)manager avAssetFactory:(id)factory resourceURLGenerator:(id)generator networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability;
- (id)_assetHandleForCKAssetURLComponents:(uint64_t)components lifetimeHint:;
- (id)_assetKeyForRemoteURL:(uint64_t)l;
- (id)_importFileAtPath:(uint64_t)path method:(void *)method key:(void *)key mimeType:(void *)type importedMetadata:(uint64_t)metadata lifetimeHint:;
- (id)assetHandleForCKAssetURL:(id)l lifetimeHint:(int64_t)hint;
- (id)assetHandleForCKAssetURLString:(id)string lifetimeHint:(int64_t)hint;
- (id)assetHandleForCKAssetURLString:(id)string prefetchedData:(id)data unzipIfNeeded:(BOOL)needed lifetimeHint:(int64_t)hint;
- (id)assetHandleForRecordID:(id)d field:(int64_t)field lifetimeHint:(int64_t)hint contentDatabase:(id)database;
- (id)assetHandleForResourceID:(id)d lifetimeHint:(int64_t)hint contentContext:(id)context;
- (id)assetHandleForURL:(id)l lifetimeHint:(int64_t)hint;
- (id)assetHandleForURL:(id)l prefetchedFileURL:(id)rL importMethod:(int64_t)method lifetimeHint:(int64_t)hint;
- (id)contentArchiveForAssetHandle:(id)handle;
- (id)importAsset:(id)asset remoteURL:(id)l fileURL:(id)rL;
- (id)interestTokenForAssetURLs:(id)ls;
- (id)operationToFetchDataProviderForAssetHandle:(id)handle completion:(id)completion;
- (int64_t)storageSize;
- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock;
- (void)_prepareForUseIfNeeded;
- (void)assetStore;
- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock;
- (void)d_resetAssetHandle:(id)handle;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold;
- (void)keyValueStore;
- (void)save;
- (void)saveWithCompletionHandler:(id)handler;
- (void)t_save;
@end

@implementation FCAssetManager

- (void)_prepareForUseIfNeeded
{
  if (self)
  {
    v1 = *(self + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FCAssetManager__prepareForUseIfNeeded__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = self;
    dispatch_sync(v1, block);
  }
}

void __40__FCAssetManager__prepareForUseIfNeeded__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 32))
  {
    if (!NSClassFromString(&cfstr_Xctest.isa) && [MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
      *v21 = 136315906;
      *&v21[4] = "[FCAssetManager _initStores]";
      *&v21[12] = 2080;
      *&v21[14] = "FCAssetManager.m";
      *&v21[22] = 1024;
      LODWORD(v22) = 731;
      WORD2(v22) = 2114;
      *(&v22 + 6) = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v21, 0x26u);
    }

    v2 = objc_alloc_init(FCKeyValueStoreClassRegistry);
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
    v3 = objc_autoreleasePoolPush();
    v4 = [FCKeyValueStore alloc];
    v5 = [*(v1 + 16) stringByAppendingString:@"-keyvaluestore"];
    v6 = [(FCKeyValueStore *)v4 initWithName:v5 directory:*(v1 + 24) version:6 options:0 classRegistry:v2];
    v7 = *(v1 + 32);
    *(v1 + 32) = v6;

    objc_autoreleasePoolPop(v3);
    v8 = objc_autoreleasePoolPush();
    v9 = [FCAssetStore alloc];
    v10 = [*(v1 + 104) path];
    v11 = [*(v1 + 32) allKeys];
    v12 = [(FCAssetStore *)v9 initWithDirectoryAtPath:v10 preferredAssetPathExtension:0 knownKeys:v11];
    v13 = *(v1 + 40);
    *(v1 + 40) = v12;

    objc_autoreleasePoolPop(v8);
    v14 = objc_autoreleasePoolPush();
    v15 = *(v1 + 32);
    *v21 = MEMORY[0x1E69E9820];
    *&v21[8] = 3221225472;
    *&v21[16] = __29__FCAssetManager__initStores__block_invoke;
    *&v22 = &unk_1E7C46318;
    *(&v22 + 1) = v1;
    [v15 enumerateKeysAndObjectsUsingBlock:v21];
    objc_autoreleasePoolPop(v14);
    v16 = [*(v1 + 40) allKeys];
    v17 = *(v1 + 48);
    v18 = [*(v1 + 32) objectForKeyedSubscript:@"cacheHints"];
    [v17 setupWithInitialKeys:v16 persistedHints:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __29__FCAssetManager__initStores__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7;
    if (([v8 hasSize] & 1) == 0 && (objc_msgSend(v8, "hasError") & 1) == 0)
    {
      [v8 setSize:{objc_msgSend(*(*(a1 + 32) + 40), "sizeOfFileForKey:", v9)}];
    }
  }
}

- (void)assetStore
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[5];
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetStore"];
        *buf = 136315906;
        v7 = "[FCAssetManager assetStore]";
        v8 = 2080;
        v9 = "FCAssetManager.m";
        v10 = 1024;
        v11 = 882;
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

        v2 = selfCopy[5];
      }

      else
      {
        v2 = 0;
      }
    }

    self = v2;
  }

  v3 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)keyValueStore
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[4];
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_keyValueStore"];
        *buf = 136315906;
        v7 = "[FCAssetManager keyValueStore]";
        v8 = 2080;
        v9 = "FCAssetManager.m";
        v10 = 1024;
        v11 = 876;
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

        v2 = selfCopy[4];
      }

      else
      {
        v2 = 0;
      }
    }

    self = v2;
  }

  v3 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)assetHandleForRecordID:(id)d field:(int64_t)field lifetimeHint:(int64_t)hint contentDatabase:(id)database
{
  v8 = [database permanentURLForRecordID:d field:field];
  if (v8)
  {
    v9 = [(FCAssetManager *)self assetHandleForURL:v8 lifetimeHint:hint];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (FCAssetManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAssetManager init]";
    v10 = 2080;
    v11 = "FCAssetManager.m";
    v12 = 1024;
    v13 = 99;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAssetManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAssetManager)initWithName:(id)name directory:(id)directory keyManager:(id)manager avAssetFactory:(id)factory resourceURLGenerator:(id)generator networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability
{
  v62 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  directoryCopy = directory;
  managerCopy = manager;
  factoryCopy = factory;
  generatorCopy = generator;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  if (!nameCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    monitorCopy2 = monitor;
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "name != nil"];
    *buf = 136315906;
    v55 = "[FCAssetManager initWithName:directory:keyManager:avAssetFactory:resourceURLGenerator:networkBehaviorMonitor:networkReachability:]";
    v56 = 2080;
    v57 = "FCAssetManager.m";
    v58 = 1024;
    v59 = 110;
    v60 = 2114;
    v61 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    monitor = monitorCopy2;
    if (directoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    monitorCopy3 = monitor;
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "directory != nil"];
    *buf = 136315906;
    v55 = "[FCAssetManager initWithName:directory:keyManager:avAssetFactory:resourceURLGenerator:networkBehaviorMonitor:networkReachability:]";
    v56 = 2080;
    v57 = "FCAssetManager.m";
    v58 = 1024;
    v59 = 111;
    v60 = 2114;
    v61 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    monitor = monitorCopy3;
  }

LABEL_6:
  v51 = reachabilityCopy;
  if (!reachabilityCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    monitorCopy4 = monitor;
    v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability != nil"];
    *buf = 136315906;
    v55 = "[FCAssetManager initWithName:directory:keyManager:avAssetFactory:resourceURLGenerator:networkBehaviorMonitor:networkReachability:]";
    v56 = 2080;
    v57 = "FCAssetManager.m";
    v58 = 1024;
    v59 = 112;
    v60 = 2114;
    v61 = v44;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    monitor = monitorCopy4;
  }

  v53.receiver = self;
  v53.super_class = FCAssetManager;
  v20 = [(FCAssetManager *)&v53 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [directoryCopy copy];
    parentDirectory = v20->_parentDirectory;
    v20->_parentDirectory = v23;

    [nameCopy stringByAppendingString:@"-assetstore"];
    v50 = factoryCopy;
    generatorCopy2 = generator;
    v26 = v25 = managerCopy;
    [directoryCopy stringByAppendingPathComponent:v26];
    v28 = v27 = monitor;

    v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28 isDirectory:0];
    directoryURLForCachedAssets = v20->_directoryURLForCachedAssets;
    v20->_directoryURLForCachedAssets = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.news.assetmanager.init", v31);
    initQueue = v20->_initQueue;
    v20->_initQueue = v32;

    managerCopy = v25;
    v34 = objc_alloc_init(FCCacheCoordinator);
    cacheCoordinator = v20->_cacheCoordinator;
    v20->_cacheCoordinator = v34;

    [(FCCacheCoordinator *)v20->_cacheCoordinator setDelegate:v20];
    v36 = +[FCMapTable strongToWeakObjectsMapTable];
    assetHandles = v20->_assetHandles;
    v20->_assetHandles = v36;

    v38 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    assetHandlesLock = v20->_assetHandlesLock;
    v20->_assetHandlesLock = v38;

    objc_storeStrong(&v20->_networkBehaviorMonitor, v27);
    objc_storeStrong(&v20->_networkReachability, reachability);
    objc_storeStrong(&v20->_keyManager, manager);
    objc_storeStrong(&v20->_avAssetFactory, factory);
    factoryCopy = v50;
    objc_storeStrong(&v20->_resourceURLGenerator, generatorCopy2);
  }

  v40 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)assetHandleForURL:(id)l lifetimeHint:(int64_t)hint
{
  lCopy = l;
  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__81;
  v72 = __Block_byref_object_dispose__81;
  v73 = 0;
  v7 = [(FCAssetManager *)self _assetKeyForRemoteURL:lCopy];
  if (self)
  {
    assetHandlesLock = self->_assetHandlesLock;
  }

  else
  {
    assetHandlesLock = 0;
  }

  v9 = assetHandlesLock;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke;
  v65[3] = &unk_1E7C37138;
  v67 = &v68;
  v65[4] = self;
  v10 = v7;
  v66 = v10;
  [(NFUnfairLock *)v9 performWithLockSync:v65];

  v11 = v69[5];
  if (!v11)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__81;
    v63 = __Block_byref_object_dispose__81;
    v64 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__81;
    v57 = __Block_byref_object_dispose__81;
    v58 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__81;
    v51 = __Block_byref_object_dispose__81;
    v52 = 0;
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v13 = cacheCoordinator;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_2;
    v40[3] = &unk_1E7C460E8;
    v44 = &v59;
    v14 = v13;
    v41 = v14;
    v15 = v10;
    v42 = v15;
    selfCopy = self;
    v45 = &v53;
    v46 = &v47;
    [(FCCacheCoordinator *)v14 performCacheRead:v40];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_3;
    v39[3] = &unk_1E7C46110;
    v39[6] = &v53;
    v39[7] = &v59;
    v39[4] = self;
    v39[5] = &v47;
    v16 = __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_3(v39);
    v17 = [[FCAssetHandle alloc] initWithDataProvider:v16];
    v18 = v69[5];
    v69[5] = v17;

    v19 = v69[5];
    if (v19)
    {
      objc_storeWeak((v19 + 80), self);
      v20 = v69[5];
    }

    else
    {
      v20 = 0;
    }

    [(FCAssetHandle *)v20 setRemoteURL:lCopy];
    [(FCAssetHandle *)v69[5] setHoldToken:?];
    v22 = v69[5];
    if (v22)
    {
      objc_setProperty_atomic_copy(v22, v21, v54[5], 112);
      v24 = v69[5];
      if (v24)
      {
        objc_setProperty_atomic(v24, v23, v48[5], 120);
        v26 = v69[5];
        if (v26)
        {
          objc_setProperty_nonatomic_copy(v26, v25, v15, 96);
          v27 = v69[5];
          if (v27)
          {
            *(v27 + 104) = hint;
          }
        }
      }
    }

    if (!v16)
    {
      v32 = v48[5];
      if (v32)
      {
        if ([v32 error] && objc_msgSend(v48[5], "error") == 1)
        {
          v34 = [MEMORY[0x1E696ABC0] fc_HTTPErrorWithURL:lCopy statusCode:404 requestUUID:0 additionalUserInfo:0];
          v35 = v69[5];
          if (v35)
          {
            objc_setProperty_atomic(v35, v33, v34, 16);
          }
        }
      }
    }

    if (self)
    {
      v28 = self->_assetHandlesLock;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_6;
    v36[3] = &unk_1E7C37408;
    v36[4] = self;
    v37 = v15;
    v38 = &v68;
    [(NFUnfairLock *)v29 performWithLockSync:v36];

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v53, 8);

    _Block_object_dispose(&v59, 8);
    v11 = v69[5];
  }

  v30 = v11;

  _Block_object_dispose(&v68, 8);

  return v30;
}

- (id)_assetKeyForRemoteURL:(uint64_t)l
{
  v3 = a2;
  if (l)
  {
    v4 = objc_autoreleasePoolPush();
    scheme = [v3 scheme];
    if (([scheme isEqualToString:@"http"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"https"))
    {
      path = [v3 path];
      v7 = [path stringByReplacingOccurrencesOfString:@"/" withString:@":"];
      v8 = [v7 copy];
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      path = [v3 absoluteString];
      v8 = [v9 stringWithFormat:@"%lu", objc_msgSend(path, "hash")];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) holdTokenForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [(FCAssetManager *)*(a1 + 48) assetStore];
  v6 = [v5 filePathForKey:*(a1 + 40)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v12 = [(FCAssetManager *)*(a1 + 48) keyValueStore];
  v9 = [v12 objectForKey:*(a1 + 40)];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

FCANEFFileDataProvider *__49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_3(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2 && *(*(a1[6] + 8) + 40))
  {
    v3 = [v2 wrappingKeyID];

    if (v3)
    {
      v4 = a1[4];
      if (v4)
      {
        v4 = v4[11];
      }

      v5 = *(*(a1[5] + 8) + 40);
      v6 = v4;
      v7 = [v5 wrappingKeyID];
      v8 = [v6 cachedWrappingKeyWithID:v7];

      if (v8)
      {
        v9 = v8;
        v10 = [[FCANEFFileDataProvider alloc] initWithFilePath:*(*(a1[6] + 8) + 40) wrappingKey:v9 options:a1[4] != 0 holdToken:*(*(a1[7] + 8) + 40)];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [[FCRawFileDataProvider alloc] initWithFilePath:*(*(a1[6] + 8) + 40) holdToken:*(*(a1[7] + 8) + 40)];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __49__FCAssetManager_assetHandleForURL_lifetimeHint___block_invoke_6(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = a1[5];
  v4 = v2;
  obj = [v4 objectForKey:v3];

  if (obj)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), obj);
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = *(v5 + 56);
    }

    else
    {
      v6 = 0;
    }

    [v6 setObject:*(*(a1[6] + 8) + 40) forKey:a1[5]];
  }
}

- (id)_assetHandleForCKAssetURLComponents:(uint64_t)components lifetimeHint:
{
  if (self)
  {
    v5 = a2;
    FCUpdateAssetURLHostIfNeeded(v5);
    v6 = [v5 URL];

    v7 = [self assetHandleForURL:v6 lifetimeHint:components];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetHandleForCKAssetURLString:(id)string lifetimeHint:(int64_t)hint
{
  if (string)
  {
    v6 = [MEMORY[0x1E696AF20] componentsWithString:?];
    v7 = [(FCAssetManager *)self _assetHandleForCKAssetURLComponents:v6 lifetimeHint:hint];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetHandleForCKAssetURL:(id)l lifetimeHint:(int64_t)hint
{
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  v7 = [(FCAssetManager *)self _assetHandleForCKAssetURLComponents:v6 lifetimeHint:hint];

  return v7;
}

- (id)assetHandleForCKAssetURLString:(id)string prefetchedData:(id)data unzipIfNeeded:(BOOL)needed lifetimeHint:(int64_t)hint
{
  stringCopy = string;
  dataCopy = data;
  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v12 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__81;
  v29[4] = __Block_byref_object_dispose__81;
  v30 = 0;
  if (dataCopy)
  {
    v13 = [(FCAssetManager *)self _assetKeyForRemoteURL:v12];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v15 = cacheCoordinator;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __91__FCAssetManager_assetHandleForCKAssetURLString_prefetchedData_unzipIfNeeded_lifetimeHint___block_invoke;
    v22 = &unk_1E7C46138;
    selfCopy = self;
    v16 = v13;
    v24 = v16;
    neededCopy = needed;
    v25 = dataCopy;
    v26 = v29;
    hintCopy = hint;
    [(FCCacheCoordinator *)v15 performCacheWrite:&v19];
  }

  selfCopy = [(FCAssetManager *)self assetHandleForCKAssetURLString:stringCopy lifetimeHint:hint, v19, v20, v21, v22, selfCopy];
  _Block_object_dispose(v29, 8);

  return selfCopy;
}

void __91__FCAssetManager_assetHandleForCKAssetURLString_prefetchedData_unzipIfNeeded_lifetimeHint___block_invoke(uint64_t a1)
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

  if (([v3 cacheContainsKey:*(a1 + 40)] & 1) == 0)
  {
    v19 = *(a1 + 48);
    if (*(a1 + 72) == 1 && [*(a1 + 48) fc_isGzipped])
    {
      v4 = [*(a1 + 48) fc_gzipInflate];

      v19 = v4;
    }

    v5 = [(FCAssetManager *)*(a1 + 32) assetStore];
    v6 = [v5 copyData:v19 withKey:*(a1 + 40)];

    if (v6)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 48);
      }

      else
      {
        v8 = 0;
      }

      [v8 didInsertKeyIntoCache:*(a1 + 40) withLifetimeHint:*(a1 + 64)];
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = v9[6];
      }

      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v11 holdTokenForKey:v10];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = *(v15 + 48);
      }

      else
      {
        v16 = 0;
      }

      v17 = [v16 persistableHints];
      if (v17)
      {
        v18 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
        [v18 setObject:v17 forKey:@"cacheHints"];
      }
    }
  }
}

- (id)assetHandleForURL:(id)l prefetchedFileURL:(id)rL importMethod:(int64_t)method lifetimeHint:(int64_t)hint
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "remoteURL"];
    *buf = 136315906;
    *&buf[4] = "[FCAssetManager assetHandleForURL:prefetchedFileURL:importMethod:lifetimeHint:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCAssetManager.m";
    *&buf[22] = 1024;
    LODWORD(v38) = 308;
    WORD2(v38) = 2114;
    *(&v38 + 6) = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!rLCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "prefetchedFileURL"];
    *buf = 136315906;
    *&buf[4] = "[FCAssetManager assetHandleForURL:prefetchedFileURL:importMethod:lifetimeHint:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCAssetManager.m";
    *&buf[22] = 1024;
    LODWORD(v38) = 309;
    WORD2(v38) = 2114;
    *(&v38 + 6) = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v12 = [(FCAssetManager *)self _assetKeyForRemoteURL:lCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v38 = __Block_byref_object_copy__81;
  *(&v38 + 1) = __Block_byref_object_dispose__81;
  v39 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__81;
  v35 = __Block_byref_object_dispose__81;
  v36 = 0;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v14 = cacheCoordinator;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__FCAssetManager_assetHandleForURL_prefetchedFileURL_importMethod_lifetimeHint___block_invoke;
  v24[3] = &unk_1E7C46160;
  v24[4] = self;
  v15 = rLCopy;
  v25 = v15;
  methodCopy = method;
  v16 = v12;
  v26 = v16;
  v27 = buf;
  hintCopy = hint;
  v28 = &v31;
  [(FCCacheCoordinator *)v14 performCacheWrite:v24];

  v17 = [(FCAssetManager *)self assetHandleForURL:lCopy lifetimeHint:hint];
  v19 = v17;
  if (v17)
  {
    objc_setProperty_atomic_copy(v17, v18, v32[5], 112);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __80__FCAssetManager_assetHandleForURL_prefetchedFileURL_importMethod_lifetimeHint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  v4 = [(FCAssetManager *)v2 _importFileAtPath:v3 method:*(a1 + 72) key:*(a1 + 48) mimeType:0 importedMetadata:0 lifetimeHint:*(a1 + 80)];

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[6];
  }

  v6 = *(a1 + 48);
  v7 = v5;
  v8 = [v7 holdTokenForKey:v6];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
}

- (id)_importFileAtPath:(uint64_t)path method:(void *)method key:(void *)key mimeType:(void *)type importedMetadata:(uint64_t)metadata lifetimeHint:
{
  v64 = *MEMORY[0x1E69E9840];
  v13 = a2;
  methodCopy = method;
  keyCopy = key;
  typeCopy = type;
  if (self)
  {
    assetStore = [(FCAssetManager *)self assetStore];
    v18 = [assetStore filePathForKey:methodCopy];

    if (v18)
    {
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke;
      v60 = &unk_1E7C36F98;
      v61 = v18;
      self = v61;
    }

    else
    {
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x3032000000;
      v55[3] = __Block_byref_object_copy__81;
      v55[4] = __Block_byref_object_dispose__81;
      v56 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_2;
      v50[3] = &unk_1E7C46340;
      pathCopy = path;
      v50[4] = self;
      v19 = v13;
      v20 = v13;
      v51 = v20;
      v21 = methodCopy;
      v52 = v21;
      v53 = v55;
      v22 = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_2(v50);
      v36 = v22;
      if (v22)
      {
        v23 = v22;
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_102;
        v40 = &unk_1E7C46390;
        v41 = typeCopy;
        selfCopy = self;
        v24 = v21;
        v43 = v24;
        v44 = keyCopy;
        v35 = v23;
        v45 = v35;
        __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_102(&v37);
        v25 = v13 = v19;
        keyValueStore = [(FCAssetManager *)self keyValueStore];
        [keyValueStore setObject:v25 forKey:v24];

        v27 = self[6];
        [v27 didInsertKeyIntoCache:v24 withLifetimeHint:metadata];

        v28 = self[6];
        persistableHints = [v28 persistableHints];

        if (persistableHints)
        {
          keyValueStore2 = [(FCAssetManager *)self keyValueStore];
          [keyValueStore2 setObject:persistableHints forKey:{@"cacheHints", v35, v36, v37, v38, v39, v40, v41, selfCopy, v43, v44}];
        }

        v31 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v63 = v24;
          _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "asset manager successfully imported %{public}@", buf, 0xCu);
        }

        self = v35;

        v32 = &v41;
      }

      else
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_3;
        v46[3] = &unk_1E7C46368;
        v47 = v21;
        v48 = v20;
        v49 = v55;
        self = __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_3(v46);

        v32 = &v47;
      }

      _Block_object_dispose(v55, 8);
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)importAsset:(id)asset remoteURL:(id)l fileURL:(id)rL
{
  v38 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lCopy = l;
  rLCopy = rL;
  if (!assetCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetMetadata"];
    *buf = 136315906;
    *&buf[4] = "[FCAssetManager importAsset:remoteURL:fileURL:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCAssetManager.m";
    *&buf[22] = 1024;
    LODWORD(v36) = 345;
    WORD2(v36) = 2114;
    *(&v36 + 6) = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "remoteURL"];
    *buf = 136315906;
    *&buf[4] = "[FCAssetManager importAsset:remoteURL:fileURL:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCAssetManager.m";
    *&buf[22] = 1024;
    LODWORD(v36) = 346;
    WORD2(v36) = 2114;
    *(&v36 + 6) = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!rLCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    *&buf[4] = "[FCAssetManager importAsset:remoteURL:fileURL:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCAssetManager.m";
    *&buf[22] = 1024;
    LODWORD(v36) = 347;
    WORD2(v36) = 2114;
    *(&v36 + 6) = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v11 = [(FCAssetManager *)self _assetKeyForRemoteURL:lCopy];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v13 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKey:v11];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v36 = __Block_byref_object_copy__81;
  *(&v36 + 1) = __Block_byref_object_dispose__81;
  v37 = 0;
  if (self)
  {
    assetHandlesLock = self->_assetHandlesLock;
  }

  else
  {
    assetHandlesLock = 0;
  }

  v15 = assetHandlesLock;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__FCAssetManager_importAsset_remoteURL_fileURL___block_invoke;
  v32[3] = &unk_1E7C37138;
  v34 = buf;
  v32[4] = self;
  v16 = v11;
  v33 = v16;
  [(NFUnfairLock *)v15 performWithLockSync:v32];

  if (self)
  {
    v17 = self->_cacheCoordinator;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__FCAssetManager_importAsset_remoteURL_fileURL___block_invoke_2;
  v27[3] = &unk_1E7C46188;
  v27[4] = self;
  v19 = rLCopy;
  v28 = v19;
  v20 = v16;
  v29 = v20;
  v21 = assetCopy;
  v30 = v21;
  v31 = buf;
  [(FCCacheCoordinator *)v18 performCacheWrite:v27];

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v13;
}

void __48__FCAssetManager_importAsset_remoteURL_fileURL___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __48__FCAssetManager_importAsset_remoteURL_fileURL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  newValue = [(FCAssetManager *)v2 _importFileAtPath:v3 method:0 key:*(a1 + 48) mimeType:0 importedMetadata:*(a1 + 56) lifetimeHint:0];

  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (v5)
  {
    objc_setProperty_atomic_copy(v5, v4, newValue, 112);
  }

  v6 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  v8 = [v6 objectForKey:*(a1 + 48)];
  v9 = *(*(*(a1 + 64) + 8) + 40);
  if (v9)
  {
    objc_setProperty_atomic(v9, v7, v8, 120);
  }
}

- (id)interestTokenForAssetURLs:(id)ls
{
  lsCopy = ls;
  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__FCAssetManager_interestTokenForAssetURLs___block_invoke;
  v9[3] = &unk_1E7C461B0;
  v9[4] = self;
  v5 = [lsCopy fc_arrayByTransformingWithBlock:v9];

  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v7 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKeys:v5];

  return v7;
}

- (id)operationToFetchDataProviderForAssetHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  objc_initWeak(&location, handleCopy);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__FCAssetManager_operationToFetchDataProviderForAssetHandle_completion___block_invoke;
  v26[3] = &unk_1E7C461D8;
  v8 = completionCopy;
  v27 = v8;
  objc_copyWeak(&v28, &location);
  v26[4] = self;
  v9 = handleCopy;
  v11 = v26;
  if (self)
  {
    if (v9)
    {
      Property = objc_getProperty(v9, v10, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = Property;

    if (v13)
    {
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke;
      v33 = &unk_1E7C46200;
      selfCopy = v11;
      v14 = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke(&v30);
      v15 = selfCopy;
LABEL_15:

      goto LABEL_16;
    }

    if (v9)
    {
      v16 = v9[12];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    remoteURL = [v9 remoteURL];
    host = [remoteURL host];
    v20 = [host isEqualToString:@"news-record"];

    if (v20)
    {
      goto LABEL_9;
    }

    scheme = [remoteURL scheme];
    if ([scheme isEqualToString:@"http"])
    {
    }

    else
    {
      scheme2 = [remoteURL scheme];
      v24 = [scheme2 isEqualToString:@"https"];

      if (!v24)
      {
LABEL_9:
        v21 = 0;
LABEL_14:
        v14 = [[FCAssetDownloadOperation alloc] initWithNetworkReachability:self->_networkReachability];
        [(FCAssetDownloadOperation *)v14 setURL:remoteURL];
        [(FCAssetDownloadOperation *)v14 setLoggingKey:v17];
        [(FCAssetDownloadOperation *)v14 setNetworkEventType:v21];
        [(FCAssetDownloadOperation *)v14 setNetworkBehaviorMonitor:self->_networkBehaviorMonitor];
        objc_initWeak(from, v9);
        v30 = MEMORY[0x1E69E9820];
        v31 = 3221225472;
        v32 = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_3;
        v33 = &unk_1E7C46250;
        selfCopy = self;
        v15 = v17;
        v35 = v15;
        objc_copyWeak(&v38, from);
        v36 = v9;
        v37 = v11;
        [(FCAssetDownloadOperation *)v14 setFileDownloadCompletionHandler:&v30];

        objc_destroyWeak(&v38);
        objc_destroyWeak(from);

        goto LABEL_15;
      }
    }

    v21 = 15;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_16:

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v14;
}

void __72__FCAssetManager_operationToFetchDataProviderForAssetHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v31 = v5;
    if (v4)
    {
      v4[2](v4, 0, v5);
      v5 = v31;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v4 = WeakRetained;
      v10 = v7;
      if (v8)
      {
        v11 = objc_getProperty(v4, v9, 112, 1);

        if (v11)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_63;
          aBlock[3] = &unk_1E7C37BC0;
          v12 = &v45;
          v13 = v4;
          v45 = v13;
          v14 = v10;
          v46 = v14;
          v15 = _Block_copy(aBlock);
          v38 = MEMORY[0x1E69E9820];
          v39 = 3221225472;
          v40 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_2;
          v41 = &unk_1E7C46278;
          v16 = v13;
          v42[0] = v16;
          v42[1] = v8;
          v17 = v14;
          v43 = v17;
          v18 = _Block_copy(&v38);
          v19 = v8[11];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
            v23 = objc_getProperty(v16, v22, 120, 1);
            v24 = [v23 wrappingKeyID];

            v29 = v15;
            if (v24)
            {
              v25 = v24;
              v26 = [v21 cachedWrappingKeyWithID:v25];
              if (v26)
              {
                v18[2](v18, v26);
              }

              else
              {
                v32 = MEMORY[0x1E69E9820];
                v33 = 3221225472;
                v34 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_5;
                v35 = &unk_1E7C462A0;
                v36 = v17;
                v37 = v18;
                [v21 fetchWrappingKeyWithID:v25 completionHandler:&v32];
              }
            }

            else
            {
              v32 = MEMORY[0x1E69E9820];
              v33 = 3221225472;
              v34 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_4;
              v35 = &unk_1E7C379C8;
              v36 = v15;
              (*(v36 + 2))();
              v25 = v36;
            }

            v15 = v29;
            v12 = &v45;
          }

          else
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_3;
            v35 = &unk_1E7C379C8;
            v36 = v15;
            (*(v36 + 2))();
            v21 = v36;
          }
        }

        else
        {
          v38 = MEMORY[0x1E69E9820];
          v39 = 3221225472;
          v40 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke;
          v41 = &unk_1E7C379C8;
          v12 = v42;
          v42[0] = v10;
          __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke(&v38);
        }
      }
    }

    else
    {
      v27 = *(a1 + 40);
      v30 = v27;
      if (v27)
      {
        (*(v27 + 2))(v27, 0, 0);
        v28 = v30;
      }

      else
      {
        v28 = 0;
      }

      v4 = 0;
    }
  }
}

uint64_t __72__FCAssetManager_operationToFetchDataProviderForAssetHandle_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t __72__FCAssetManager_operationToFetchDataProviderForAssetHandle_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (id)contentArchiveForAssetHandle:(id)handle
{
  handleCopy = handle;
  v5 = MEMORY[0x1E695DEC8];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__FCAssetManager_contentArchiveForAssetHandle___block_invoke;
  v13 = &unk_1E7C3B110;
  v14 = handleCopy;
  selfCopy = self;
  v6 = handleCopy;
  v7 = [v5 fc_array:&v10];
  v8 = [FCContentArchive archiveWithChildArchives:v7, v10, v11, v12, v13];

  return v8;
}

void __47__FCAssetManager_contentArchiveForAssetHandle___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 120, 1);
  }

  v5 = Property;
  v7 = [*(a1 + 32) remoteURL];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v6, 112, 1);
  }

  v9 = v8;
  v10 = [FCContentArchive archiveWithAsset:v5 remoteURL:v7 filePath:v9];
  [v19 fc_safelyAddObject:v10];

  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 120, 1);
  }

  v13 = v12;
  v14 = [v13 wrappingKeyID];

  if (v14)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(v15 + 88);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 cachedWrappingKeyWithID:v14];
    if (v17)
    {
      v18 = [FCContentArchive archiveWithAssetWrappingKey:v17 wrappingKeyID:v14];
      [v19 fc_safelyAddObject:v18];
    }
  }
}

uint64_t __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_2;
    block[3] = &unk_1E7C379C8;
    v5 = v1;
    dispatch_async(v2, block);
  }

  return 0;
}

void __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v38 = a4;
  v9 = [v8 responseMIMEType];
  v10 = [v7 path];
  v11 = *(a1 + 32);
  v12 = [v8 URL];
  v13 = v10;
  v14 = v9;
  v15 = 0;
  if (v11 && v13)
  {
    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
    if ([v16 fc_isGzippedWithMIMETypeHint:v14])
    {
      v15 = +[FCGzipAssetTransformer sharedInstance];
    }

    else
    {
      v15 = 0;
    }
  }

  if (v13 && v15)
  {
    v17 = NSTemporaryDirectory();
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    v20 = [v17 stringByAppendingString:v19];

    v47 = 0;
    LODWORD(v19) = [v15 transformAssetDataFromFilePath:v13 toFilePath:v20 error:&v47];
    v21 = v47;
    if (v19)
    {
      v22 = v20;

      v23 = @"application/octet-stream";
      v13 = v22;
      v14 = v23;
    }

    else
    {

      v24 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 40);
        *buf = 138543618;
        v49 = v37;
        v50 = 2114;
        v51 = v21;
        _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "failed to transform asset %{public}@ with error: %{public}@", buf, 0x16u);
      }

      v13 = 0;
    }
  }

  if (v13)
  {
    v25 = [MEMORY[0x1E696ADC8] currentQueue];
    v26 = +[FCAssetDownloadOperation sharedURLSession];
    v27 = [v26 delegateQueue];
    v28 = v25 == v27;

    if (!v28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"successful asset downloads must be handled on URL session queue"];
      *buf = 136315906;
      v49 = "[FCAssetManager _populateRawFilePathForAssetHandle:completion:]_block_invoke";
      v50 = 2080;
      v51 = "FCAssetManager.m";
      v52 = 1024;
      v53 = 488;
      v54 = 2114;
      v55 = v36;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v29 = *(a1 + 32);
    if (v29)
    {
      v29 = v29[6];
    }

    v30 = v29;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_56;
    v41[3] = &unk_1E7C46228;
    v41[4] = *(a1 + 32);
    v42 = v13;
    v43 = *(a1 + 40);
    v44 = v14;
    objc_copyWeak(&v46, (a1 + 64));
    v45 = *(a1 + 48);
    [v30 performCacheWrite:v41];

    v31 = *(a1 + 56);
    if (v31)
    {
      (*(v31 + 16))(v31, 0);
    }

    objc_destroyWeak(&v46);
  }

  else
  {
    if (v38 && [v38 fc_isHTTPNotFoundError])
    {
      v32 = *(a1 + 32);
      if (v32)
      {
        v33 = *(v32 + 48);
      }

      else
      {
        v33 = 0;
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_2_57;
      v39[3] = &unk_1E7C36C58;
      v39[4] = v32;
      v40 = *(a1 + 40);
      [v33 performCacheWrite:v39];
    }

    v34 = *(a1 + 56);
    if (v34)
    {
      (*(v34 + 16))(v34, v38);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_56(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[13];
  }

  else
  {
    v8 = 0;
  }

  newValue = [(FCAssetManager *)v2 _importFileAtPath:v3 method:1 key:v4 mimeType:v5 importedMetadata:0 lifetimeHint:v8];

  v10 = *(a1 + 64);
  if (v10)
  {
    objc_setProperty_atomic_copy(v10, v9, newValue, 112);
  }

  v11 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  v13 = [v11 objectForKey:*(a1 + 48)];
  v14 = *(a1 + 64);
  if (v14)
  {
    objc_setProperty_atomic(v14, v12, v13, 120);
  }
}

void __64__FCAssetManager__populateRawFilePathForAssetHandle_completion___block_invoke_2_57(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6D08]);
  [v3 setError:1];
  v2 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

uint64_t __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must fetch asset's raw file before fetching the data provider"];
    v5 = 136315906;
    v6 = "[FCAssetManager _fetchDataProviderForAssetHandle:completion:]_block_invoke";
    v7 = 2080;
    v8 = "FCAssetManager.m";
    v9 = 1024;
    v10 = 529;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0, 0);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_63(uint64_t a1)
{
  v3 = [FCRawFileDataProvider alloc];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 112, 1);
  }

  v5 = Property;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[11];
  }

  v7 = v6;
  v9 = [(FCRawFileDataProvider *)v3 initWithFilePath:v5 holdToken:v7];

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, 0);
  }
}

void __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v5 = [FCANEFFileDataProvider alloc];
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 112, 1);
  }

  v7 = Property;
  v8 = a1[4];
  v9 = a1[5] != 0;
  if (v8)
  {
    v8 = v8[11];
  }

  v10 = v8;
  v12 = [(FCANEFFileDataProvider *)v5 initWithFilePath:v7 wrappingKey:v3 options:v9 holdToken:v10];

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, v12, 0);
  }
}

void __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_6;
    v15 = &unk_1E7C37778;
    v7 = *(a1 + 32);
    v17 = v7;
    v8 = v6;
    v16 = v8;
    if (v7)
    {
      v7[2](v7, 0, v8);
      v8 = v16;
    }

    v9 = v17;
  }

  else
  {
    if (v5)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_8;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_7;
    v10[3] = &unk_1E7C379C8;
    v11 = *(a1 + 32);
    __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_7(v10);
    v9 = v11;
  }

LABEL_8:
}

uint64_t __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __62__FCAssetManager__fetchDataProviderForAssetHandle_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x1E696ABC0] fc_missingAssetKeyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock
{
  v26 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__FCAssetManager_cacheCoordinatorCurrentSizeWithReadLock___block_invoke;
  aBlock[3] = &unk_1E7C462F0;
  aBlock[4] = self;
  lockCopy = lock;
  v4 = _Block_copy(aBlock);
  keysWithZeroInterest = [lockCopy keysWithZeroInterest];
  v6 = v4[2](v4, keysWithZeroInterest);
  keysWithNonZeroInterest = [lockCopy keysWithNonZeroInterest];

  v8 = v4[2](v4, keysWithNonZeroInterest);
  v9 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [keysWithNonZeroInterest count];
    v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:v8 countStyle:0];
    v13 = [keysWithZeroInterest count];
    v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:v6 countStyle:0];
    *buf = 134218754;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "asset manager contains %lu held assets (size=%{public}@) and %lu non-held assets (size=%{public}@)", buf, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __58__FCAssetManager_cacheCoordinatorCurrentSizeWithReadLock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__FCAssetManager_cacheCoordinatorCurrentSizeWithReadLock___block_invoke_2;
  v7[3] = &unk_1E7C462C8;
  v7[4] = &v8;
  [v4 enumerateKeysAndObjectsForKeys:v3 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __58__FCAssetManager_cacheCoordinatorCurrentSizeWithReadLock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 size];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock
{
  v30 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  lockCopy = lock;
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134218242;
    v27 = [lockCopy count];
    v28 = 2112;
    v29 = lockCopy;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "asset manager is flushing %lu files with keys: %@", buf, 0x16u);
  }

  keyValueStore = [(FCAssetManager *)self keyValueStore];
  allObjects = [lockCopy allObjects];
  [keyValueStore removeObjectsForKeys:allObjects];

  persistableHints = [coordinatorCopy persistableHints];
  [keyValueStore setObject:persistableHints forKey:@"cacheHints"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = lockCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        assetStore = [(FCAssetManager *)self assetStore];
        [assetStore removeFileWithKey:{v18, v21}];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)saveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__81;
  v12 = __Block_byref_object_dispose__81;
  v13 = 0;
  initQueue = self->_initQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FCAssetManager_saveWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(initQueue, v7);
  if (v9[5])
  {
    keyValueStore = [(FCAssetManager *)self keyValueStore];
    [keyValueStore saveWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)save
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__81;
  v8 = __Block_byref_object_dispose__81;
  v9 = 0;
  initQueue = self->_initQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__FCAssetManager_save__block_invoke;
  v3[3] = &unk_1E7C37160;
  v3[4] = self;
  v3[5] = &v4;
  dispatch_sync(initQueue, v3);
  [v5[5] save];
  _Block_object_dispose(&v4, 8);
}

- (int64_t)storageSize
{
  [(FCAssetManager *)self _prepareForUseIfNeeded];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  keyValueStore = [(FCAssetManager *)self keyValueStore];
  storeSize = [keyValueStore storeSize];

  v13 = storeSize;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__FCAssetManager_storageSize__block_invoke;
  v9[3] = &unk_1E7C3A3A0;
  v9[4] = self;
  v9[5] = &v10;
  [(FCCacheCoordinator *)v6 performCacheRead:v9];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __29__FCAssetManager_storageSize__block_invoke(uint64_t a1)
{
  v2 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[6];
  }

  v4 = v3;
  v5 = [v4 allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FCAssetManager_storageSize__block_invoke_2;
  v7[3] = &unk_1E7C462C8;
  v6 = *(a1 + 40);

  v7[4] = v6;
  [v2 enumerateKeysAndObjectsForKeys:v5 usingBlock:v7];
}

uint64_t __29__FCAssetManager_storageSize__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 size];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)d_resetAssetHandle:(id)handle
{
  handleCopy = handle;
  remoteURL = [handleCopy remoteURL];
  v6 = [(FCAssetManager *)self _assetKeyForRemoteURL:remoteURL];

  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCAssetManager_d_resetAssetHandle___block_invoke;
  v10[3] = &unk_1E7C376A0;
  v10[4] = self;
  v11 = v6;
  v12 = handleCopy;
  v8 = handleCopy;
  v9 = v6;
  [(FCCacheCoordinator *)cacheCoordinator performCacheWrite:v10];
}

void __37__FCAssetManager_d_resetAssetHandle___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(FCAssetManager *)*(a1 + 32) assetStore];
  [v2 removeFileWithKey:*(a1 + 40)];

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[6];
  }

  v11 = *(a1 + 40);
  v4 = MEMORY[0x1E695DEC8];
  v5 = v3;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  [v5 didRemoveKeysFromCache:{v6, v11, v12}];

  v7 = [(FCAssetManager *)*(a1 + 32) keyValueStore];
  [v7 removeObjectForKey:*(a1 + 40)];

  v9 = *(a1 + 48);
  if (v9)
  {
    objc_setProperty_atomic_copy(v9, v8, 0, 112);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold
{
  v4 = 10000000;
  v5 = 5000000;
  v6 = threshold == 0;
  if (threshold == 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
  }

  if (threshold != 1)
  {
    v4 = 0;
  }

  if (threshold == 2)
  {
    v7 = 200000000;
  }

  else
  {
    v7 = v5;
  }

  v8 = threshold != 2 && v6;
  if (threshold == 2)
  {
    v9 = 300000000;
  }

  else
  {
    v9 = v4;
  }

  v10 = [[FCCacheCoordinatorFlushPolicy alloc] initWithLowWaterMark:v7 highWaterMark:v9 alwaysFlushKeysWithZeroInterest:v8];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v12 = v10;
  [(FCCacheCoordinator *)cacheCoordinator enableFlushingWithPolicy:v10];
}

id __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 64);
  if (v3 == 1)
  {
    v4 = [(FCAssetManager *)*(a1 + 32) assetStore];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    v8 = (v13 + 40);
    v18 = v14;
    v1 = [v4 moveFileAtPath:v11 withKey:v12 error:&v18];
    v10 = v18;
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [(FCAssetManager *)*(a1 + 32) assetStore];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    v19 = v9;
    v1 = [v4 copyFileAtPath:v5 withKey:v6 error:&v19];
    v10 = v19;
  }

  v15 = v10;
  v16 = *v8;
  *v8 = v15;

LABEL_6:

  return v1;
}

uint64_t __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "asset manager failed to import %{public}@ from %{public}@, error=%{public}@", &v8, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

id __86__FCAssetManager__importFileAtPath_method_key_mimeType_importedMetadata_lifetimeHint___block_invoke_102(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E69B6D08]);
    v4 = [(FCAssetManager *)*(a1 + 40) assetStore];
    [v2 setSize:{objc_msgSend(v4, "sizeOfFileForKey:", *(a1 + 48))}];

    v6 = *(a1 + 56);
    if (!v6 || FCMIMETypeIsANEF(v6, v5))
    {
      v7 = [[FCANEFHeader alloc] initWithFilePath:?];
      v8 = v7;
      if (v7)
      {
        v9 = v7[1];
        [v2 setWrappingKeyID:v9];
      }
    }
  }

  return v2;
}

- (void)t_save
{
  keyValueStore = [(FCAssetManager *)self keyValueStore];
  [keyValueStore save];
}

- (id)assetHandleForResourceID:(id)d lifetimeHint:(int64_t)hint contentContext:(id)context
{
  dCopy = d;
  internalContentContext = [context internalContentContext];
  contentDatabase = [internalContentContext contentDatabase];
  v11 = [(FCAssetManager *)self assetHandleForRecordID:dCopy field:3 lifetimeHint:hint contentDatabase:contentDatabase];

  return v11;
}

@end