@interface FCAVPersistentAssetKeyCache
- (NSData)keyServerCertificate;
- (id)assetKeyForURI:(id)a3;
- (uint64_t)_prepareForUse;
- (void)clearKeyServerCertificate;
- (void)importAVAssetKey:(id)a3;
- (void)initWithCacheDirectory:(void *)a1;
- (void)removeAllAssetKeys;
- (void)saveAssetKeyData:(id)a3 creationDate:(id)a4 expirationDate:(id)a5 forURI:(id)a6;
- (void)saveKeyServerCertificate:(id)a3;
@end

@implementation FCAVPersistentAssetKeyCache

- (void)initWithCacheDirectory:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = FCAVPersistentAssetKeyCache;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v5 = a1[2];
      a1[2] = v4;

      v6 = [v3 copy];
      v7 = a1[1];
      a1[1] = v6;
    }
  }

  return a1;
}

- (id)assetKeyForURI:(id)a3
{
  v4 = a3;
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  if (self)
  {
    keyStore = self->_keyStore;
  }

  else
  {
    keyStore = 0;
  }

  v6 = keyStore;
  v7 = [v4 absoluteString];

  v8 = [(FCKeyValueStore *)v6 objectForKey:v7];

  return v8;
}

- (uint64_t)_prepareForUse
{
  if (result)
  {
    v1 = *(result + 16);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __45__FCAVPersistentAssetKeyCache__prepareForUse__block_invoke;
    v2[3] = &unk_1E7C36EA0;
    v2[4] = result;
    return [v1 performWithLockSync:v2];
  }

  return result;
}

- (void)saveAssetKeyData:(id)a3 creationDate:(id)a4 expirationDate:(id)a5 forURI:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  v20 = objc_alloc_init(MEMORY[0x1E69B6CD8]);
  v14 = [v10 absoluteString];
  [v20 setIdentifier:v14];

  [v20 setKeyData:v13];
  v15 = [v12 pbDate];

  [v20 setCreatedAt:v15];
  v16 = [v11 pbDate];

  [v20 setExpiresAt:v16];
  if (self)
  {
    keyStore = self->_keyStore;
  }

  else
  {
    keyStore = 0;
  }

  v18 = keyStore;
  v19 = [v10 absoluteString];

  [(FCKeyValueStore *)v18 setObject:v20 forKey:v19];
}

- (void)removeAllAssetKeys
{
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  if (self)
  {
    keyStore = self->_keyStore;
  }

  else
  {
    keyStore = 0;
  }

  [(FCKeyValueStore *)keyStore removeAllObjects];
}

- (NSData)keyServerCertificate
{
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  v3 = MEMORY[0x1E695DEF0];
  if (self)
  {
    certificateFileURL = self->_certificateFileURL;
  }

  else
  {
    certificateFileURL = 0;
  }

  return [v3 dataWithContentsOfURL:certificateFileURL];
}

- (void)saveKeyServerCertificate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  if (self)
  {
    certificateFileURL = self->_certificateFileURL;
  }

  else
  {
    certificateFileURL = 0;
  }

  v11 = 0;
  v6 = certificateFileURL;
  v7 = [v4 writeToURL:v6 options:0 error:&v11];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "AV asset key cache failed to save certificate with error: %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearKeyServerCertificate
{
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (self)
  {
    certificateFileURL = self->_certificateFileURL;
  }

  else
  {
    certificateFileURL = 0;
  }

  v5 = v3;
  [v3 removeItemAtURL:certificateFileURL error:0];
}

- (void)importAVAssetKey:(id)a3
{
  v14 = a3;
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  if (self)
  {
    keyStore = self->_keyStore;
  }

  else
  {
    keyStore = 0;
  }

  v5 = keyStore;
  v6 = [v14 identifier];
  v7 = [(FCKeyValueStore *)v5 objectForKey:v6];

  if (!v7 || ([v7 expirationDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "expirationDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fc_isEarlierThan:", v9), v9, v8, v10))
  {
    if (self)
    {
      v11 = self->_keyStore;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v14 identifier];
    [(FCKeyValueStore *)v12 setObject:v14 forKey:v13];
  }
}

void __45__FCAVPersistentAssetKeyCache__prepareForUse__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 24))
  {
    v2 = MEMORY[0x1E695DFF8];
    v3 = *(v1 + 8);
    v4 = [v2 fileURLWithPath:v3 isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"cert"];
    v6 = *(v1 + 32);
    *(v1 + 32) = v5;

    v7 = objc_alloc_init(FCKeyValueStoreClassRegistry);
    [(FCKeyValueStoreClassRegistry *)v7 registerClass:objc_opt_class()];
    v8 = [FCKeyValueStore alloc];
    v9 = *(v1 + 8);
    v10 = [(FCKeyValueStore *)v8 initWithName:@"lru" directory:v9 version:1 options:8 classRegistry:v7];
    v11 = *(v1 + 24);
    *(v1 + 24) = v10;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [*(v1 + 24) allKeys];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          v18 = [*(v1 + 24) objectForKey:v17];
          if (v18)
          {
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          if (v20 && [v20 isExpired])
          {
            [*(v1 + 24) removeObjectForKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    v21 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v1 + 24);
      v23 = v21;
      v24 = [v22 allKeys];
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "AV asset key cache loaded with cached keys: %{public}@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end