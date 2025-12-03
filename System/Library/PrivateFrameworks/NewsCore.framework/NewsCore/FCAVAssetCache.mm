@interface FCAVAssetCache
- (BOOL)containsAssetWithIdentifier:(id)identifier;
- (FCAVAssetCache)init;
- (id)cachedFileURLForAssetIdentifier:(id)identifier;
- (id)contentArchiveForAssetIdentifier:(id)identifier;
- (id)contentKeyIdentifiersForAllAssets;
- (id)contentKeyIdentifiersForAssetIdentifier:(id)identifier;
- (id)importAVAsset:(id)asset;
- (id)interestTokenForAssetIdentifier:(id)identifier;
- (id)interestTokenForAssetIdentifiers:(id)identifiers;
- (int64_t)storageSize;
- (uint64_t)_prepareForUse;
- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock;
- (void)adoptFileAtURL:(id)l forAssetIdentifier:(id)identifier remoteURL:(id)rL contentKeyIdentifiers:(id)identifiers extension:(id)extension;
- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold;
- (void)initWithCacheDirectory:(void *)directory;
@end

@implementation FCAVAssetCache

- (FCAVAssetCache)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetCache init]";
    v10 = 2080;
    v11 = "FCAVAssetCache.m";
    v12 = 1024;
    v13 = 47;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetCache init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)initWithCacheDirectory:(void *)directory
{
  v3 = a2;
  if (directory)
  {
    v9.receiver = directory;
    v9.super_class = FCAVAssetCache;
    directory = objc_msgSendSuper2(&v9, sel_init);
    if (directory)
    {
      v4 = [v3 copy];
      v5 = directory[1];
      directory[1] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v7 = directory[2];
      directory[2] = v6;
    }
  }

  return directory;
}

- (id)interestTokenForAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(FCAVAssetCache *)self _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKey:identifierCopy];

  return v6;
}

- (uint64_t)_prepareForUse
{
  if (result)
  {
    v1 = *(result + 16);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __32__FCAVAssetCache__prepareForUse__block_invoke;
    v2[3] = &unk_1E7C36EA0;
    v2[4] = result;
    return [v1 performWithLockSync:v2];
  }

  return result;
}

- (id)interestTokenForAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(FCAVAssetCache *)self _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKeys:identifiersCopy];

  return v6;
}

- (BOOL)containsAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(FCAVAssetCache *)self _prepareForUse];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__FCAVAssetCache_containsAssetWithIdentifier___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = identifierCopy;
  v11 = v7;
  [(FCCacheCoordinator *)v6 performCacheRead:v10];

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__FCAVAssetCache_containsAssetWithIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = a1[5];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = [v4 containsObjectForKey:v3];
}

- (id)cachedFileURLForAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(FCAVAssetCache *)self _prepareForUse];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__90;
  v17 = __Block_byref_object_dispose__90;
  v18 = 0;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FCAVAssetCache_cachedFileURLForAssetIdentifier___block_invoke;
  v10[3] = &unk_1E7C37408;
  v10[4] = self;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [(FCCacheCoordinator *)v6 performCacheRead:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __50__FCAVAssetCache_cachedFileURLForAssetIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:a1[5]];
  if (v4)
  {
    v8 = v4;
    v5 = [(NTPBAVAsset *)v4 resolvedCacheURL];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }
}

- (id)contentKeyIdentifiersForAllAssets
{
  [(FCAVAssetCache *)self _prepareForUse];
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__FCAVAssetCache_contentKeyIdentifiersForAllAssets__block_invoke;
  v11 = &unk_1E7C36C58;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [(FCCacheCoordinator *)cacheCoordinator performCacheRead:&v8];
  allObjects = [v5 allObjects];

  return allObjects;
}

void __51__FCAVAssetCache_contentKeyIdentifiersForAllAssets__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        objc_opt_class();
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 24);
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 objectForKeyedSubscript:v9];
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
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

        v15 = *(a1 + 40);
        v16 = [v14 contentKeyIdentifiers];
        [v15 fc_safelyAddObjects:v16];

        ++v8;
      }

      while (v6 != v8);
      v17 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)adoptFileAtURL:(id)l forAssetIdentifier:(id)identifier remoteURL:(id)rL contentKeyIdentifiers:(id)identifiers extension:(id)extension
{
  lCopy = l;
  identifierCopy = identifier;
  rLCopy = rL;
  identifiersCopy = identifiers;
  v29 = 0;
  v15 = [lCopy bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v29];
  v16 = v29;
  if (v15)
  {
    v17 = v15;
    [(FCAVAssetCache *)self _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __94__FCAVAssetCache_adoptFileAtURL_forAssetIdentifier_remoteURL_contentKeyIdentifiers_extension___block_invoke_16;
    v20[3] = &unk_1E7C3C310;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = rLCopy;
    v23 = identifiersCopy;
    v24 = v17;
    v25 = lCopy;
    v19 = v17;
    [(FCCacheCoordinator *)cacheCoordinator performCacheWrite:v20];
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__FCAVAssetCache_adoptFileAtURL_forAssetIdentifier_remoteURL_contentKeyIdentifiers_extension___block_invoke;
    v26[3] = &unk_1E7C36C58;
    v27 = identifierCopy;
    v28 = v16;
    __94__FCAVAssetCache_adoptFileAtURL_forAssetIdentifier_remoteURL_contentKeyIdentifiers_extension___block_invoke(v26);

    v19 = v27;
  }
}

void __94__FCAVAssetCache_adoptFileAtURL_forAssetIdentifier_remoteURL_contentKeyIdentifiers_extension___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset cache failed to generate bookmark for asset %{public}@ with error: %{public}@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __94__FCAVAssetCache_adoptFileAtURL_forAssetIdentifier_remoteURL_contentKeyIdentifiers_extension___block_invoke_16(uint64_t a1)
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

  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B6CD0]);
  }

  v15 = v7;

  [v15 setIdentifier:*(a1 + 40)];
  v8 = [*(a1 + 48) absoluteString];
  [v15 setRemoteURL:v8];

  v9 = [*(a1 + 56) mutableCopy];
  [v15 setContentKeyIdentifiers:v9];

  [v15 setBookmark:*(a1 + 64)];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v15 setSize:{objc_msgSend(v10, "fc_sizeOfItemAtURL:error:", *(a1 + 72), 0)}];

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  [v12 setObject:v15 forKey:*(a1 + 40)];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 40);
  }

  else
  {
    v14 = 0;
  }

  [v14 didInsertKeyIntoCache:*(a1 + 40) withLifetimeHint:0];
}

- (id)contentKeyIdentifiersForAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(FCAVAssetCache *)self _prepareForUse];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__90;
  v18 = __Block_byref_object_dispose__90;
  v19 = 0;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__FCAVAssetCache_contentKeyIdentifiersForAssetIdentifier___block_invoke;
  v11[3] = &unk_1E7C37408;
  v11[4] = self;
  v7 = identifierCopy;
  v12 = v7;
  v13 = &v14;
  [(FCCacheCoordinator *)v6 performCacheRead:v11];

  v8 = v15[5];
  if (!v8)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __58__FCAVAssetCache_contentKeyIdentifiersForAssetIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:a1[5]];
  if (v4)
  {
    v9 = v4;
    v5 = [v4 contentKeyIdentifiers];
    v6 = [v5 copy];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v4 = v9;
  }
}

- (id)contentArchiveForAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__90;
  v17 = __Block_byref_object_dispose__90;
  v18 = 0;
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__FCAVAssetCache_contentArchiveForAssetIdentifier___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = identifierCopy;
  v11 = v7;
  [(FCCacheCoordinator *)v6 performCacheRead:v10];

  v8 = [FCContentArchive archiveWithAVAsset:v14[5]];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __51__FCAVAssetCache_contentArchiveForAssetIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)importAVAsset:(id)asset
{
  assetCopy = asset;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__90;
  v17 = __Block_byref_object_dispose__90;
  v18 = 0;
  [(FCAVAssetCache *)self _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = cacheCoordinator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__FCAVAssetCache_importAVAsset___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = assetCopy;
  v11 = v7;
  [(FCCacheCoordinator *)v6 performCacheWrite:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __32__FCAVAssetCache_importAVAsset___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = [v3 identifier];
  v6 = [v4 holdTokenForKey:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[3];
  }

  v10 = *(a1 + 40);
  v11 = v9;
  v12 = [v10 identifier];
  v13 = [v11 containsObjectForKey:v12];

  if (v13)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __32__FCAVAssetCache_importAVAsset___block_invoke_2;
    v50[3] = &unk_1E7C36EA0;
    v51 = *(a1 + 40);
    __32__FCAVAssetCache_importAVAsset___block_invoke_2(v50);
    v14 = v51;
  }

  else
  {
    v15 = [(NTPBAVAsset *)*(a1 + 40) resolvedCacheURL];
    if (v15)
    {
      v14 = v15;
      v16 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = v16;
        v19 = [v17 identifier];
        v20 = [v14 path];
        *buf = 138543618;
        v53 = v19;
        v54 = 2114;
        v55 = v20;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "AV asset cache will copy external AV asset %{public}@, path=%{public}@", buf, 0x16u);
      }

      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = v21[4];
      }

      v22 = v21;
      v23 = [v14 lastPathComponent];
      v24 = [v22 URLByAppendingPathComponent:v23];

      v25 = [MEMORY[0x1E696AC08] defaultManager];
      v47 = 0;
      v26 = [v25 copyItemAtURL:v14 toURL:v24 error:&v47];
      v27 = v47;

      if (v26)
      {
        v44 = 0;
        v28 = [v24 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v44];
        v29 = v44;
        if (v28)
        {
          v30 = v28;
          v31 = [*(a1 + 40) copy];
          [v31 setBookmark:v30];
          v32 = *(a1 + 32);
          if (v32)
          {
            v32 = v32[3];
          }

          v33 = *(a1 + 40);
          v34 = v32;
          v35 = [v33 identifier];
          [v34 setObject:v31 forKey:v35];

          v36 = *(a1 + 32);
          if (v36)
          {
            v36 = v36[5];
          }

          v37 = *(a1 + 40);
          v38 = v36;
          v39 = [v37 identifier];
          [v38 didInsertKeyIntoCache:v39 withLifetimeHint:0];
        }

        else
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __32__FCAVAssetCache_importAVAsset___block_invoke_23;
          v41[3] = &unk_1E7C36C58;
          v42 = *(a1 + 40);
          v43 = v29;
          __32__FCAVAssetCache_importAVAsset___block_invoke_23(v41);

          v30 = v42;
        }
      }

      else
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __32__FCAVAssetCache_importAVAsset___block_invoke_22;
        v45[3] = &unk_1E7C36EA0;
        v46 = v27;
        __32__FCAVAssetCache_importAVAsset___block_invoke_22(v45);
        v29 = v46;
      }
    }

    else
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __32__FCAVAssetCache_importAVAsset___block_invoke_21;
      v48[3] = &unk_1E7C36EA0;
      v49 = *(a1 + 40);
      __32__FCAVAssetCache_importAVAsset___block_invoke_21(v48);

      v14 = 0;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __32__FCAVAssetCache_importAVAsset___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "skipping AV asset import because the asset already lives in the cache, identifier=%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __32__FCAVAssetCache_importAVAsset___block_invoke_21(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 identifier];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "skipping AV asset import because the asset URL could not be resolved, identifier=%{public}@", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __32__FCAVAssetCache_importAVAsset___block_invoke_22(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset cache failed to copy external AV asset with error: %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __32__FCAVAssetCache_importAVAsset___block_invoke_23(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 identifier];
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "AV asset cache failed to generate bookmark for copied asset %{public}@ with error: %{public}@", &v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)storageSize
{
  [(FCAVAssetCache *)self _prepareForUse];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  if (self)
  {
    storeSize = [(FCKeyValueStore *)self->_metadataStore storeSize];
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    storeSize = [0 storeSize];
    cacheCoordinator = 0;
  }

  v12 = storeSize;
  v5 = cacheCoordinator;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__FCAVAssetCache_storageSize__block_invoke;
  v8[3] = &unk_1E7C3A3A0;
  v8[4] = self;
  v8[5] = &v9;
  [(FCCacheCoordinator *)v5 performCacheRead:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __29__FCAVAssetCache_storageSize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[3];
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__FCAVAssetCache_storageSize__block_invoke_2;
  v3[3] = &unk_1E7C476C8;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __29__FCAVAssetCache_storageSize__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 size];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold
{
  v4 = [[FCCacheCoordinatorFlushPolicy alloc] initWithLowWaterMark:0 highWaterMark:0 alwaysFlushKeysWithZeroInterest:1];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = v4;
  [(FCCacheCoordinator *)cacheCoordinator enableFlushingWithPolicy:v4];
}

- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock
{
  v37 = *MEMORY[0x1E69E9840];
  keysWithZeroInterest = [lock keysWithZeroInterest];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (self)
  {
    metadataStore = self->_metadataStore;
  }

  else
  {
    metadataStore = 0;
  }

  allKeys = [(FCKeyValueStore *)metadataStore allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        if (self)
        {
          v14 = self->_metadataStore;
        }

        else
        {
          v14 = 0;
        }

        v15 = [(FCKeyValueStore *)v14 objectForKey:*(*(&v28 + 1) + 8 * v12)];
        v16 = [keysWithZeroInterest containsObject:v13];
        v17 = [v15 size];
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        v9 += v18;
        if (v16)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        v10 += v19;

        ++v12;
      }

      while (v8 != v12);
      v20 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
      v8 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v21 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = MEMORY[0x1E696AAF0];
    v23 = v21;
    v24 = [v22 stringFromByteCount:v9 countStyle:0];
    v25 = [MEMORY[0x1E696AAF0] stringFromByteCount:v10 countStyle:0];
    *buf = 138543618;
    v33 = v24;
    v34 = 2114;
    v35 = v25;
    _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "AV asset cache contains %{public}@ of held assets and %{public}@ of non-held assets", buf, 0x16u);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock
{
  v40 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  lockCopy = lock;
  v7 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134218242;
    v32 = [lockCopy count];
    v33 = 2114;
    v34 = lockCopy;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "AV asset cache is flushing %lu assets, identifiers=%{public}@", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = lockCopy;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        if (self)
        {
          metadataStore = self->_metadataStore;
        }

        else
        {
          metadataStore = 0;
        }

        v15 = [(FCKeyValueStore *)metadataStore objectForKey:*(*(&v27 + 1) + 8 * v12)];
        resolvedCacheURL = [(NTPBAVAsset *)v15 resolvedCacheURL];
        if (resolvedCacheURL)
        {
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v26 = 0;
          v18 = [defaultManager removeItemAtURL:resolvedCacheURL error:&v26];
          v19 = v26;

          if ((v18 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AV asset cache failed to remove asset %@ with error: %@", v13, v19];
            *buf = 136315906;
            v32 = "[FCAVAssetCache cacheCoordinator:flushKeysWithWriteLock:]";
            v33 = 2080;
            v34 = "FCAVAssetCache.m";
            v35 = 1024;
            v36 = 321;
            v37 = 2114;
            v38 = v21;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: AVAssetFlushFailed) : %s %s:%d %{public}@", buf, 0x26u);
          }

          goto LABEL_14;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AV asset cache failed to resolve cache URL for asset %@", v13];
          *buf = 136315906;
          v32 = "[FCAVAssetCache cacheCoordinator:flushKeysWithWriteLock:]";
          v33 = 2080;
          v34 = "FCAVAssetCache.m";
          v35 = 1024;
          v36 = 314;
          v37 = 2114;
          v38 = v19;
          _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: AVAssetFlushNoURL) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_14:
        }

        if (self)
        {
          v20 = self->_metadataStore;
        }

        else
        {
          v20 = 0;
        }

        [(FCKeyValueStore *)v20 removeObjectForKey:v13];

        ++v12;
      }

      while (v10 != v12);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      v10 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __32__FCAVAssetCache__prepareForUse__block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 24))
  {
    v2 = objc_alloc_init(FCKeyValueStoreClassRegistry);
    [(FCKeyValueStoreClassRegistry *)v2 registerClass:objc_opt_class()];
    v3 = [FCKeyValueStore alloc];
    v4 = *(v1 + 8);
    v54 = v2;
    v5 = [(FCKeyValueStore *)v3 initWithName:@"metadata" directory:v4 version:4 options:0 classRegistry:v2];
    v6 = *(v1 + 24);
    *(v1 + 24) = v5;

    v7 = MEMORY[0x1E695DFF8];
    v8 = *(v1 + 8);
    v9 = [v8 stringByAppendingPathComponent:@"content"];
    v10 = [v7 fileURLWithPath:v9 isDirectory:1];
    v11 = *(v1 + 32);
    *(v1 + 32) = v10;

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    [v12 createDirectoryAtURL:*(v1 + 32) withIntermediateDirectories:1 attributes:0 error:0];

    v13 = objc_alloc_init(FCCacheCoordinator);
    v14 = *(v1 + 40);
    *(v1 + 40) = v13;

    [*(v1 + 40) setDelegate:v1];
    v15 = [*(v1 + 24) allKeys];
    [*(v1 + 40) setupWithInitialKeys:v15];
    v16 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v84 = v15;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "AV asset cache loaded with cached assets: %{public}@", buf, 0xCu);
    }

    v56 = [MEMORY[0x1E695DFA8] set];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
    v57 = *MEMORY[0x1E695DB00];
    if (v17)
    {
      v18 = v17;
      v19 = *v66;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v65 + 1) + 8 * i);
          v22 = [*(v1 + 24) objectForKey:v21];
          v23 = v22;
          if (!v22)
          {
            goto LABEL_17;
          }

          v24 = [(NTPBAVAsset *)v22 resolvedCacheURL];
          if (!v24)
          {
            goto LABEL_17;
          }

          v25 = v24;
          *&v61 = 0;
          *v69 = 0;
          v26 = [v25 getResourceValue:&v61 forKey:v57 error:v69];
          v27 = v61;
          v28 = *v69;
          if (v26)
          {
            v29 = v27;
          }

          else
          {
            *&v77 = MEMORY[0x1E69E9820];
            *(&v77 + 1) = 3221225472;
            v78 = __47__NTPBAVAsset_Bookmark__resolvedFileResourceID__block_invoke_2;
            v79 = &unk_1E7C40070;
            v80 = v23;
            v81 = v25;
            v82 = v28;
            v29 = __47__NTPBAVAsset_Bookmark__resolvedFileResourceID__block_invoke_2(&v77);
          }

          if (v29)
          {
            [v56 addObject:v29];
          }

          else
          {
LABEL_17:
            v30 = FCAVAssetLog;
            if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v77) = 138543362;
              *(&v77 + 4) = v21;
              _os_log_error_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_ERROR, "AV asset cache will remove missing asset from metadata store: %{public}@", &v77, 0xCu);
            }

            [*(v1 + 24) removeObjectForKey:v21];
            v29 = 0;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
      }

      while (v18);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v31 = [MEMORY[0x1E696AC08] defaultManager];
    v32 = *(v1 + 32);
    v76 = v57;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v34 = [v31 contentsOfDirectoryAtURL:v32 includingPropertiesForKeys:v33 options:5 error:0];

    v35 = [v34 countByEnumeratingWithState:&v61 objects:&v77 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v62;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v62 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v61 + 1) + 8 * j);
          v59 = 0;
          v60 = 0;
          v40 = [v39 getResourceValue:&v60 forKey:v57 error:&v59];
          v41 = v60;
          v42 = v59;
          if (v40)
          {
            if (([v56 containsObject:v41] & 1) == 0)
            {
              v43 = FCAVAssetLog;
              if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
              {
                v50 = v43;
                v51 = [v39 lastPathComponent];
                *v69 = 138543362;
                *&v69[4] = v51;
                _os_log_error_impl(&dword_1B63EF000, v50, OS_LOG_TYPE_ERROR, "AV asset cache will remove unknown file from asset store: %{public}@", v69, 0xCu);
              }

              v44 = [MEMORY[0x1E696AC08] defaultManager];
              v58 = 0;
              v45 = [v44 removeItemAtURL:v39 error:&v58];
              v46 = v58;

              if ((v45 & 1) == 0)
              {
                v47 = [v46 underlyingErrors];
                v48 = [v47 fc_containsObjectPassingTest:&__block_literal_global_40_2];

                if ((v48 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                {
                  v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AV asset cache failed to remove unknown file with error: %@", v46];
                  *v69 = 136315906;
                  *&v69[4] = "[FCAVAssetCache _initStores]";
                  v70 = 2080;
                  v71 = "FCAVAssetCache.m";
                  v72 = 1024;
                  v73 = 406;
                  v74 = 2114;
                  v75 = v52;
                  _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: AVAssetCleanupFailed) : %s %s:%d %{public}@", v69, 0x26u);
                }
              }
            }
          }

          else
          {
            v49 = FCAVAssetLog;
            if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
            {
              *v69 = 138543618;
              *&v69[4] = v39;
              v70 = 2114;
              v71 = v42;
              _os_log_error_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_ERROR, "AV asset cache failed to look up resource ID, url=%{public}@, error=%{public}@", v69, 0x16u);
            }
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v61 objects:&v77 count:16];
      }

      while (v36);
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

BOOL __29__FCAVAssetCache__initStores__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = v3 == *MEMORY[0x1E696A798] && [v2 code] == 2;

  return v4;
}

@end