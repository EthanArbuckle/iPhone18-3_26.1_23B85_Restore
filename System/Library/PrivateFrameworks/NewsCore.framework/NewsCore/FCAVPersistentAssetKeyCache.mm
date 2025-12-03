@interface FCAVPersistentAssetKeyCache
- (NSData)keyServerCertificate;
- (id)assetKeyForURI:(id)i;
- (uint64_t)_prepareForUse;
- (void)clearKeyServerCertificate;
- (void)importAVAssetKey:(id)key;
- (void)initWithCacheDirectory:(void *)directory;
- (void)removeAllAssetKeys;
- (void)saveAssetKeyData:(id)data creationDate:(id)date expirationDate:(id)expirationDate forURI:(id)i;
- (void)saveKeyServerCertificate:(id)certificate;
@end

@implementation FCAVPersistentAssetKeyCache

- (void)initWithCacheDirectory:(void *)directory
{
  v3 = a2;
  if (directory)
  {
    v9.receiver = directory;
    v9.super_class = FCAVPersistentAssetKeyCache;
    directory = objc_msgSendSuper2(&v9, sel_init);
    if (directory)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v5 = directory[2];
      directory[2] = v4;

      v6 = [v3 copy];
      v7 = directory[1];
      directory[1] = v6;
    }
  }

  return directory;
}

- (id)assetKeyForURI:(id)i
{
  iCopy = i;
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
  absoluteString = [iCopy absoluteString];

  v8 = [(FCKeyValueStore *)v6 objectForKey:absoluteString];

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

- (void)saveAssetKeyData:(id)data creationDate:(id)date expirationDate:(id)expirationDate forURI:(id)i
{
  iCopy = i;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  dataCopy = data;
  [(FCAVPersistentAssetKeyCache *)self _prepareForUse];
  v20 = objc_alloc_init(MEMORY[0x1E69B6CD8]);
  absoluteString = [iCopy absoluteString];
  [v20 setIdentifier:absoluteString];

  [v20 setKeyData:dataCopy];
  pbDate = [dateCopy pbDate];

  [v20 setCreatedAt:pbDate];
  pbDate2 = [expirationDateCopy pbDate];

  [v20 setExpiresAt:pbDate2];
  if (self)
  {
    keyStore = self->_keyStore;
  }

  else
  {
    keyStore = 0;
  }

  v18 = keyStore;
  absoluteString2 = [iCopy absoluteString];

  [(FCKeyValueStore *)v18 setObject:v20 forKey:absoluteString2];
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

- (void)saveKeyServerCertificate:(id)certificate
{
  v14 = *MEMORY[0x1E69E9840];
  certificateCopy = certificate;
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
  v7 = [certificateCopy writeToURL:v6 options:0 error:&v11];

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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (self)
  {
    certificateFileURL = self->_certificateFileURL;
  }

  else
  {
    certificateFileURL = 0;
  }

  v5 = defaultManager;
  [defaultManager removeItemAtURL:certificateFileURL error:0];
}

- (void)importAVAssetKey:(id)key
{
  keyCopy = key;
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
  identifier = [keyCopy identifier];
  v7 = [(FCKeyValueStore *)v5 objectForKey:identifier];

  if (!v7 || ([v7 expirationDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(keyCopy, "expirationDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fc_isEarlierThan:", v9), v9, v8, v10))
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
    identifier2 = [keyCopy identifier];
    [(FCKeyValueStore *)v12 setObject:keyCopy forKey:identifier2];
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