@interface FCAVAsset
- (AVURLAsset)asset;
- (BOOL)isEqual:(id)a3;
- (FCAVAsset)init;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (id)initWithIdentifier:(void *)a3 remoteURL:(void *)a4 assetCache:(void *)a5 assetKeyCache:(void *)a6 assetKeyManager:(void *)a7 assetResourceLoader:(void *)a8 overrideMIMEType:;
- (uint64_t)isHLS;
- (unint64_t)hash;
- (void)_resetUnderlyingAsset;
@end

@implementation FCAVAsset

- (FCAVAsset)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAsset init]";
    v10 = 2080;
    v11 = "FCAVAsset.m";
    v12 = 1024;
    v13 = 52;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAsset init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithIdentifier:(void *)a3 remoteURL:(void *)a4 assetCache:(void *)a5 assetKeyCache:(void *)a6 assetKeyManager:(void *)a7 assetResourceLoader:(void *)a8 overrideMIMEType:
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (a1)
  {
    v35.receiver = a1;
    v35.super_class = FCAVAsset;
    a1 = objc_msgSendSuper2(&v35, sel_init);
    if (a1)
    {
      v22 = [v15 copy];
      v23 = a1[2];
      a1[2] = v22;

      objc_storeWeak(a1 + 5, v17);
      objc_storeWeak(a1 + 6, v18);
      objc_storeWeak(a1 + 8, v19);
      objc_storeWeak(a1 + 7, v20);
      v24 = MEMORY[0x1E695DF20];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __120__FCAVAsset_initWithIdentifier_remoteURL_assetCache_assetKeyCache_assetKeyManager_assetResourceLoader_overrideMIMEType___block_invoke;
      v33[3] = &unk_1E7C36EC8;
      v34 = v21;
      v25 = [v24 fc_dictionary:v33];
      v26 = a1[3];
      a1[3] = v25;

      v27 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v28 = a1[4];
      a1[4] = v27;

      v29 = [v16 copy];
      v30 = a1[9];
      a1[9] = v29;

      v31 = [MEMORY[0x1E696AD88] defaultCenter];
      [v31 addObserver:a1 selector:sel__resetUnderlyingAsset name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return a1;
}

void __120__FCAVAsset_initWithIdentifier_remoteURL_assetCache_assetKeyCache_assetKeyManager_assetResourceLoader_overrideMIMEType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6987BA8];
  v4 = a2;
  [v4 fc_safelySetObjectAllowingNil:v2 forKey:v3];
  [v4 fc_safelySetObjectAllowingNil:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6987BE0]];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(FCAVAsset *)self identifier];
    v8 = [v6 identifier];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCAVAsset *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (AVURLAsset)asset
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__86;
  v12 = __Block_byref_object_dispose__86;
  v13 = 0;
  if (self)
  {
    assetLock = self->_assetLock;
  }

  else
  {
    assetLock = 0;
  }

  v4 = assetLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __18__FCAVAsset_asset__block_invoke;
  v7[3] = &unk_1E7C3A3A0;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __18__FCAVAsset_asset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_4;
  }

  if ([v3 statusOfValueForKey:@"duration" error:0] != 3)
  {
    goto LABEL_17;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = 0;
    WeakRetained = 0;
  }

  else
  {
LABEL_4:
    WeakRetained = objc_loadWeakRetained((v2 + 40));
    v5 = *(a1 + 32);
  }

  v6 = [v5 identifier];
  v7 = [WeakRetained interestTokenForAssetIdentifier:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_loadWeakRetained((v8 + 40));
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = [v10 identifier];
  v12 = [v9 cachedFileURLForAssetIdentifier:v11];

  v13 = MEMORY[0x1E6988168];
  v14 = *(a1 + 32);
  if (v12)
  {
    if (v14)
    {
      v14 = v14[3];
    }

    v15 = v14;
    v16 = [v13 URLAssetWithURL:v12 options:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 8);
    *(v17 + 8) = v16;

    v19 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v19 registerAVURLAssetForAutomaticKeyManagement:*(*(a1 + 32) + 8)];
  }

  else
  {
    if (v14)
    {
      v20 = v14[9];
      v14 = v14[3];
    }

    else
    {
      v20 = 0;
    }

    v21 = v14;
    v22 = v20;
    v23 = [v13 URLAssetWithURL:v22 options:v21];
    v24 = *(a1 + 32);
    v25 = *(v24 + 8);
    *(v24 + 8) = v23;

    v26 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v26 registerAVURLAssetForAutomaticKeyManagement:*(*(a1 + 32) + 8)];

    v19 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v19 registerAVURLAssetForAutomaticResourceManagement:*(*(a1 + 32) + 8)];
  }

  v27 = *(*(a1 + 32) + 8);
  if (v27)
  {
    objc_setAssociatedObject(v27, FCAVURLAssetInterestTokenKey, v7, 0x301);
  }

LABEL_17:
  v28 = *(*(a1 + 32) + 8);
  v29 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v29, v28);
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__FCAVAsset_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __27__FCAVAsset_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 40));
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
    WeakRetained = 0;
  }

  v7 = [v6 identifier];
  v8 = [WeakRetained contentArchiveForAssetIdentifier:v7];
  [v3 fc_safelyAddObject:v8];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_loadWeakRetained((v9 + 40));
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = [v11 identifier];
  v13 = [v10 contentKeyIdentifiersForAssetIdentifier:v12];

  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        v19 = *(a1 + 32);
        if (v19)
        {
          v20 = objc_loadWeakRetained((v19 + 48));
        }

        else
        {
          v20 = 0;
        }

        v21 = [MEMORY[0x1E695DFF8] URLWithString:v18];
        v22 = [v20 assetKeyForURI:v21];

        v23 = [v22 contentArchive];
        [v3 fc_safelyAddObject:v23];

        ++v17;
      }

      while (v15 != v17);
      v24 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v15 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (FCContentManifest)contentManifest
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  v4 = [(FCAVAsset *)self identifier];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_assetCache);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(FCAVAsset *)self identifier];
  v8 = [WeakRetained contentKeyIdentifiersForAssetIdentifier:v7];
  v9 = [(FCContentManifest *)v3 initWithAVAssetIDs:v5 avAssetKeyIDs:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (uint64_t)isHLS
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 72);
    v3 = [v2 pathExtension];
    if ([v3 isEqualToString:@"m3u"])
    {
      v1 = 1;
    }

    else
    {
      v4 = [*(v1 + 72) pathExtension];
      v1 = [v4 isEqualToString:@"m3u8"];
    }
  }

  return v1;
}

- (void)_resetUnderlyingAsset
{
  if (self)
  {
    assetLock = self->_assetLock;
  }

  else
  {
    assetLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__FCAVAsset__resetUnderlyingAsset__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFUnfairLock *)assetLock performWithLockSync:v3];
}

void __34__FCAVAsset__resetUnderlyingAsset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

@end