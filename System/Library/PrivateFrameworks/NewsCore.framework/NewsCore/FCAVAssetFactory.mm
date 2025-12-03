@interface FCAVAssetFactory
- (FCAVAssetFactory)init;
- (id)assetWithIdentifier:(id)identifier remoteURL:(id)l overrideMIMEType:(id)type;
- (id)initWithAssetCache:(void *)cache assetKeyCache:(void *)keyCache assetKeyManager:(void *)manager assetResourceLoader:;
@end

@implementation FCAVAssetFactory

- (FCAVAssetFactory)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetFactory init]";
    v10 = 2080;
    v11 = "FCAVAssetFactory.m";
    v12 = 1024;
    v13 = 32;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetFactory init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithAssetCache:(void *)cache assetKeyCache:(void *)keyCache assetKeyManager:(void *)manager assetResourceLoader:
{
  v10 = a2;
  cacheCopy = cache;
  keyCacheCopy = keyCache;
  managerCopy = manager;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = FCAVAssetFactory;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, cache);
      objc_storeStrong(self + 3, keyCache);
      objc_storeStrong(self + 4, manager);
      v15 = +[FCMapTable strongToWeakObjectsMapTable];
      v16 = self[5];
      self[5] = v15;

      v17 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
      v18 = self[6];
      self[6] = v17;
    }
  }

  return self;
}

- (id)assetWithIdentifier:(id)identifier remoteURL:(id)l overrideMIMEType:(id)type
{
  identifierCopy = identifier;
  lCopy = l;
  typeCopy = type;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__96;
  v27 = __Block_byref_object_dispose__96;
  v28 = 0;
  if (self)
  {
    assetsLock = self->_assetsLock;
  }

  else
  {
    assetsLock = 0;
  }

  v12 = assetsLock;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__FCAVAssetFactory_assetWithIdentifier_remoteURL_overrideMIMEType___block_invoke;
  v18[3] = &unk_1E7C47998;
  v18[4] = self;
  v13 = identifierCopy;
  v19 = v13;
  v22 = &v23;
  v14 = lCopy;
  v20 = v14;
  v15 = typeCopy;
  v21 = v15;
  [(NFUnfairLock *)v12 performWithLockSync:v18];

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __67__FCAVAssetFactory_assetWithIdentifier_remoteURL_overrideMIMEType___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v24 = a1[8];
    v23 = v5;
    objc_storeStrong((*(v24 + 8) + 40), v5);
  }

  else
  {
    v6 = [FCAVAsset alloc];
    v8 = a1[5];
    v7 = a1[6];
    v9 = a1[4];
    if (v9)
    {
      v11 = v9[1];
      v10 = v9[2];
      v12 = v9[3];
      v9 = v9[4];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v10 = 0;
    }

    v13 = a1[7];
    v14 = v9;
    v15 = v12;
    v16 = v10;
    v17 = v11;
    v18 = [(FCAVAsset *)&v6->super.isa initWithIdentifier:v8 remoteURL:v7 assetCache:v17 assetKeyCache:v16 assetKeyManager:v15 assetResourceLoader:v14 overrideMIMEType:v13];
    v19 = *(a1[8] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = a1[4];
    if (v21)
    {
      v22 = *(v21 + 40);
    }

    else
    {
      v22 = 0;
    }

    [v22 setObject:*(*(a1[8] + 8) + 40) forKey:a1[5]];
  }
}

@end