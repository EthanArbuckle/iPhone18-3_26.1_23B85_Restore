@interface PKRemoteAssetManager
- (BOOL)addRemoteAssetData:(id)a3 shouldWriteData:(BOOL)a4 forManifestItem:(id)a5 error:(id *)a6;
- (BOOL)assetExistsLocally:(id)a3;
- (BOOL)hasEncryptedDeviceSpecificItemWithRelativePath:(id)a3;
- (PKRemoteAssetManager)initWithDirectoryCoordinator:(id)a3;
- (PKRemoteAssetManager)initWithFileURL:(id)a3;
- (id)deviceSpecificItems;
- (id)deviceSpecificItemsForScreenScale:(double)a3 suffix:(id)a4;
- (id)itemWithRelativePath:(id)a3;
- (id)pendingRemoteAssetsItems;
- (id)pendingRemoteAssetsItemsForScreenScale:(double)a3 suffix:(id)a4;
- (id)remoteAssetManifests;
- (id)sha1HexFromRelativeManifestWithRelativePath:(id)a3;
- (void)_callCompletionHandlersWithFinishState:(BOOL)a3 progress:(float)a4 error:(id)a5;
- (void)_downloadRemoteAssetItem:(id)a3 withCloudStoreCoordinatorDelegate:(id)a4 shouldWriteData:(BOOL)a5 completion:(id)a6;
- (void)_downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 requireRequiredAssets:(BOOL)a6 includeEncryptedAssets:(BOOL)a7 completion:(id)a8;
- (void)cacheRemoteAssetData:(id)a3 forManifestItem:(id)a4;
- (void)downloadRemoteAssetItem:(id)a3 withCloudStoreCoordinatorDelegate:(id)a4 completion:(id)a5;
- (void)downloadRemoteAssetsWithCompletion:(id)a3;
- (void)downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 ignoreRequiredAssetDownloadFailures:(BOOL)a6 includeEncryptedAssets:(BOOL)a7 completion:(id)a8;
@end

@implementation PKRemoteAssetManager

- (PKRemoteAssetManager)initWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [[PKDirectoryCoordinator alloc] initWithURL:v4];

  v6 = [(PKRemoteAssetManager *)self initWithDirectoryCoordinator:v5];
  return v6;
}

- (PKRemoteAssetManager)initWithDirectoryCoordinator:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PKRemoteAssetManager;
  v6 = [(PKRemoteAssetManager *)&v18 init];
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PKRemoteAssetManager_initWithDirectoryCoordinator___block_invoke;
    v13[3] = &unk_1E79C88C0;
    v13[4] = &v14;
    [v5 performCoordinatedAction:v13];
    if (*(v15 + 24) == 1)
    {
      objc_storeStrong(&v6->_coordinator, a3);
      p_super = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.passKitCore.remoteAssetManager", p_super);
      queue = v6->_queue;
      v6->_queue = v8;

      v6->_lock._os_unfair_lock_opaque = 0;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      completionHandlers = v6->_completionHandlers;
      v6->_completionHandlers = v10;
    }

    else
    {
      p_super = &v6->super;
      v6 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v6;
}

void __53__PKRemoteAssetManager_initWithDirectoryCoordinator___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = 0;
    [a2 getResourceValue:&v4 forKey:*MEMORY[0x1E695DB78] error:0];
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  }
}

- (id)remoteAssetManifests
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  coordinator = self->_coordinator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKRemoteAssetManager_remoteAssetManifests__block_invoke;
  v9[3] = &unk_1E79D9108;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __44__PKRemoteAssetManager_remoteAssetManifests__block_invoke(uint64_t a1, void *a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v23 = a1;
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E695DB78];
    v34[0] = *MEMORY[0x1E695DB50];
    v34[1] = v5;
    v26 = v5;
    v6 = *MEMORY[0x1E695DBC8];
    v34[2] = *MEMORY[0x1E695DBC8];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
    v24 = v3;
    v8 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:0 errorHandler:0];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          v14 = [v13 getResourceValue:&v28 forKey:v6 error:0];
          v15 = v28;
          v16 = v15;
          if (v14 && ([v15 BOOLValue] & 1) != 0)
          {
            v17 = 0;
          }

          else
          {
            v27 = 0;
            v18 = [v13 getResourceValue:&v27 forKey:v26 error:0];
            v19 = v27;
            v17 = v19;
            if (!v18 || ([v19 BOOLValue] & 1) == 0)
            {
              v20 = [v13 pathExtension];
              v21 = [v20 isEqualToString:@"urls"];

              if (v21)
              {
                v22 = [[PKRemoteAssetManifest alloc] initWithFileURL:v13 passURL:v24 deviceSEIDs:*(*(v23 + 32) + 56) error:0];
                if (v22)
                {
                  [*(v23 + 40) addObject:v22];
                }
              }
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v3 = v24;
  }
}

- (id)deviceSpecificItems
{
  v3 = PKScreenScale();

  return [(PKRemoteAssetManager *)self deviceSpecificItemsForScreenScale:0 suffix:v3];
}

- (id)deviceSpecificItemsForScreenScale:(double)a3 suffix:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PKRemoteAssetManager *)self remoteAssetManifests];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) deviceSpecificAssetForScreenScale:v6 suffix:{a3, v19}];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 seid];
          if (!v16 || (seids = self->_seids) == 0 || [(NSArray *)seids containsObject:v16])
          {
            [v8 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)pendingRemoteAssetsItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKRemoteAssetManager *)self pendingRemoteAssetsItemsForScreenScale:0 suffix:PKScreenScale()];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)pendingRemoteAssetsItemsForScreenScale:(double)a3 suffix:(id)a4
{
  v5 = [(PKRemoteAssetManager *)self deviceSpecificItemsForScreenScale:a4 suffix:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKRemoteAssetManager_pendingRemoteAssetsItemsForScreenScale_suffix___block_invoke;
  v8[3] = &unk_1E79D9130;
  v8[4] = self;
  v6 = [v5 pk_objectsPassingTest:v8];

  return v6;
}

- (id)itemWithRelativePath:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  manifestItemsByRelativeURL = self->_manifestItemsByRelativeURL;
  if (!manifestItemsByRelativeURL)
  {
    v21 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_manifestItemsByRelativeURL;
    self->_manifestItemsByRelativeURL = v6;

    [(PKRemoteAssetManager *)self remoteAssetManifests];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v28 + 1) + 8 * i) remoteAssets];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [v11 objectForKey:*(*(&v24 + 1) + 8 * j)];
                v17 = [v16 relativeLocalPath];
                if (v17)
                {
                  [(NSMutableDictionary *)self->_manifestItemsByRelativeURL setObject:v16 forKey:v17];
                }

                v18 = [v16 relativeEncryptedContentsLocalPath];
                if (v18)
                {
                  [(NSMutableDictionary *)self->_manifestItemsByRelativeURL setObject:v16 forKey:v18];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    manifestItemsByRelativeURL = self->_manifestItemsByRelativeURL;
    v4 = v21;
  }

  v19 = [(NSMutableDictionary *)manifestItemsByRelativeURL objectForKey:v4];

  return v19;
}

- (id)sha1HexFromRelativeManifestWithRelativePath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sha1HexFromRelativeManifest = self->_sha1HexFromRelativeManifest;
  if (!sha1HexFromRelativeManifest)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_sha1HexFromRelativeManifest;
    self->_sha1HexFromRelativeManifest = v6;

    v8 = [(PKRemoteAssetManager *)self remoteAssetManifests];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) remoteAssets];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __68__PKRemoteAssetManager_sha1HexFromRelativeManifestWithRelativePath___block_invoke;
          v16[3] = &unk_1E79D9180;
          v16[4] = self;
          [v13 enumerateKeysAndObjectsUsingBlock:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    sha1HexFromRelativeManifest = self->_sha1HexFromRelativeManifest;
  }

  v14 = [(NSMutableDictionary *)sha1HexFromRelativeManifest objectForKey:v4];

  return v14;
}

void __68__PKRemoteAssetManager_sha1HexFromRelativeManifestWithRelativePath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 manifest];
  if ([v6 count])
  {
    v7 = [v5 stringByDeletingPathExtension];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__PKRemoteAssetManager_sha1HexFromRelativeManifestWithRelativePath___block_invoke_2;
    v10[3] = &unk_1E79D9158;
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v9 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __68__PKRemoteAssetManager_sha1HexFromRelativeManifestWithRelativePath___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  if (v5)
  {
    [*(*(a1 + 40) + 32) setObject:v6 forKey:v5];
  }
}

- (BOOL)hasEncryptedDeviceSpecificItemWithRelativePath:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKRemoteAssetManager *)self remoteAssetManifests];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__42;
  v38 = __Block_byref_object_dispose__42;
  v39 = 0;
  coordinator = self->_coordinator;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__PKRemoteAssetManager_hasEncryptedDeviceSpecificItemWithRelativePath___block_invoke;
  v33[3] = &unk_1E79C88C0;
  v33[4] = &v34;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v8)
  {
    v24 = *v30;
    do
    {
      v23 = v8;
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = v35[5];
        v12 = [v10 fileURL];
        v13 = [v12 URLByDeletingLastPathComponent];
        v14 = PKRelativePathAfterResolvingSymlinks(v11, v13);

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = [v10 encryptedDeviceSpecificRemoteAssetFilenames];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v40 count:16];
        if (v16)
        {
          v17 = *v26;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = [v14 stringByAppendingString:*(*(&v25 + 1) + 8 * j)];
              v20 = [v4 isEqualToString:v19];

              if (v20)
              {

                v21 = 1;
                goto LABEL_19;
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v25 objects:v40 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
      v21 = 0;
    }

    while (v8);
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  _Block_object_dispose(&v34, 8);
  return v21;
}

- (BOOL)assetExistsLocally:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  coordinator = self->_coordinator;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PKRemoteAssetManager_assetExistsLocally___block_invoke;
  v8[3] = &unk_1E79C87C0;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v8];
  LOBYTE(coordinator) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return coordinator;
}

void __43__PKRemoteAssetManager_assetExistsLocally___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = v3;
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [*(a1 + 32) localURL];
    v6 = [v5 path];
    v7 = [v4 fileExistsAtPath:v6];

    v3 = v15;
    if (v7)
    {
      v8 = MEMORY[0x1E695DEF0];
      v9 = [*(a1 + 32) localURL];
      v10 = [v8 dataWithContentsOfURL:v9];

      if (v10)
      {
        v11 = [v10 SHA1Hash];
        v12 = [v11 hexEncoding];
        v13 = [*(a1 + 32) sha1Hex];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }

      v3 = v15;
    }
  }
}

- (void)downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 ignoreRequiredAssetDownloadFailures:(BOOL)a6 includeEncryptedAssets:(BOOL)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  os_unfair_lock_lock(&self->_lock);
  v17 = [(NSMutableArray *)self->_completionHandlers count];
  if (v16)
  {
    completionHandlers = self->_completionHandlers;
    v19 = _Block_copy(v16);
    [(NSMutableArray *)completionHandlers addObject:v19];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!v17)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __167__PKRemoteAssetManager_downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_ignoreRequiredAssetDownloadFailures_includeEncryptedAssets_completion___block_invoke;
    v22[3] = &unk_1E79D91A8;
    v22[4] = self;
    v26 = a3;
    v23 = v14;
    v24 = v15;
    v27 = a6;
    v28 = a7;
    v25 = v16;
    v20 = _Block_copy(v22);
    if (PKPaymentPassArtDownloadDelayEnabled())
    {
      v21 = dispatch_time(0, 30000000000);
      dispatch_after(v21, self->_queue, v20);
    }

    else
    {
      dispatch_async(self->_queue, v20);
    }
  }
}

- (void)_downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 requireRequiredAssets:(BOOL)a6 includeEncryptedAssets:(BOOL)a7 completion:(id)a8
{
  v59 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v35 = a5;
  v32 = v13;
  v33 = a8;
  v36 = self;
  v34 = [(PKRemoteAssetManager *)self pendingRemoteAssetsItemsForScreenScale:v13 suffix:a3];
  v14 = v34;
  if ([v34 count])
  {
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v56[3] = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v55[3] = [v34 count];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = v34;
    v17 = 0;
    v18 = [v16 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v18)
    {
      v19 = *v52;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v51 + 1) + 8 * i) size];
          v22 = [v21 unsignedIntegerValue];

          v17 += v22;
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v18);
    }

    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__42;
    v49[4] = __Block_byref_object_dispose__42;
    v50 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke;
    aBlock[3] = &unk_1E79D91D0;
    v48 = a6;
    aBlock[6] = v56;
    aBlock[7] = v49;
    aBlock[8] = v17;
    aBlock[4] = v36;
    aBlock[5] = v55;
    v23 = _Block_copy(aBlock);
    v24 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v43 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v26)
    {
      v27 = *v44;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v43 + 1) + 8 * j);
          if (a7 || ![*(*(&v43 + 1) + 8 * j) encryptionSource])
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke_45;
            v39[3] = &unk_1E79D9220;
            v39[4] = v36;
            v39[5] = v29;
            v40 = v35;
            v41 = v23;
            v42 = v49;
            [(PKAsyncUnaryOperationComposer *)v24 addOperation:v39];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v26);
    }

    v30 = [MEMORY[0x1E695DFB0] null];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke_3;
    v38[3] = &unk_1E79D9248;
    v38[4] = v36;
    v38[5] = v49;
    v31 = [(PKAsyncUnaryOperationComposer *)v24 evaluateWithInput:v30 completion:v38];

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v56, 8);
    v14 = v34;
  }

  else
  {
    LODWORD(v15) = 1.0;
    [(PKRemoteAssetManager *)self _callCompletionHandlersWithFinishState:1 progress:0 error:v15];
  }
}

void __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  --*(*(*(a1 + 40) + 8) + 24);
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error downloading remote asset - %@", &v15, 0xCu);
    }

    if (*(a1 + 72) == 1)
    {
      if ([v7 isRequired])
      {
        v12 = *(*(a1 + 56) + 8);
        v14 = *(v12 + 40);
        v13 = (v12 + 40);
        if (!v14)
        {
          objc_storeStrong(v13, a4);
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += [v8 length];
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *&v11 = *(*(*(a1 + 48) + 8) + 24) / *(a1 + 64);
    [*(a1 + 32) _callCompletionHandlersWithFinishState:0 progress:*(*(*(a1 + 56) + 8) + 40) error:v11];
  }

LABEL_11:
}

void __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke_45(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke_2;
  v15[3] = &unk_1E79D91F8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v17 = v11;
  v18 = v7;
  v15[4] = v12;
  v16 = v6;
  v19 = *(a1 + 64);
  v13 = v6;
  v14 = v7;
  [v8 _downloadRemoteAssetItem:v9 withCloudStoreCoordinatorDelegate:v10 shouldWriteData:1 completion:v15];
}

uint64_t __154__PKRemoteAssetManager__downloadRemoteAssetsWithScreenScale_suffix_cloudStoreCoordinatorDelegate_requireRequiredAssets_includeEncryptedAssets_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)downloadRemoteAssetItem:(id)a3 withCloudStoreCoordinatorDelegate:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKRemoteAssetManager_downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_completion___block_invoke;
  v10[3] = &unk_1E79C5240;
  v11 = v8;
  v9 = v8;
  [(PKRemoteAssetManager *)self _downloadRemoteAssetItem:a3 withCloudStoreCoordinatorDelegate:a4 shouldWriteData:1 completion:v10];
}

uint64_t __93__PKRemoteAssetManager_downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v4 = a3 == 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    return (*(result + 16))(result, v5);
  }

  return result;
}

- (void)_downloadRemoteAssetItem:(id)a3 withCloudStoreCoordinatorDelegate:(id)a4 shouldWriteData:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 localURL];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__42;
  v38 = __Block_byref_object_dispose__42;
  v39 = 0;
  coordinator = self->_coordinator;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke;
  v30[3] = &unk_1E79D92C0;
  v15 = v13;
  v31 = v15;
  v16 = v10;
  v32 = v16;
  v33 = &v34;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v30];
  if (v35[5])
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 remoteURL];
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Not downloading: %@ since the asset already exists in the pass directory", buf, 0xCu);
    }

    [(PKRemoteAssetManager *)self addRemoteAssetData:v35[5] shouldWriteData:0 forManifestItem:v16 error:0];
    v12[2](v12, v35[5], 0);
  }

  else
  {
    v19 = [v16 sha1Hex];
    v20 = PKCachedFileForSHA1(v19);

    if (v20)
    {
      v21 = [v16 sha1Hex];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke_50;
      v28[3] = &unk_1E79C8898;
      v22 = v16;
      v29 = v22;
      PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v21, v28);

      if (v7)
      {
        v27 = 0;
        [(PKRemoteAssetManager *)self addRemoteAssetData:v20 forManifestItem:v22 error:&v27];
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }

      (v12)[2](v12, v20, v23);
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke_51;
      v24[3] = &unk_1E79D9270;
      v24[4] = self;
      v25 = v16;
      v26 = v12;
      [v25 downloadAssetWithCloudStoreCoordinatorDelegate:v11 completion:v24];
    }
  }

  _Block_object_dispose(&v34, 8);
}

void __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v18 = v3;
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [*(a1 + 32) path];
    v6 = [v4 fileExistsAtPath:v5];

    v3 = v18;
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [*(a1 + 40) sha1Hex];
      v9 = [v8 pk_decodeHexadecimal];

      if (v9)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(a1 + 32)];
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = [*(*(*(a1 + 48) + 8) + 40) SHA1Hash];
        if (!v13 || (v14 = v13, v15 = [v9 isEqual:v13], v14, (v15 & 1) == 0))
        {
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = 0;
        }
      }

      objc_autoreleasePoolPop(v7);
      v3 = v18;
    }
  }
}

void __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 localURL];

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using cached copy of %@ at %@", &v8, 0x16u);
  }
}

void __110__PKRemoteAssetManager__downloadRemoteAssetItem_withCloudStoreCoordinatorDelegate_shouldWriteData_completion___block_invoke_51(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if (a3)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = v8;
      [v9 addRemoteAssetData:v7 forManifestItem:v10 error:&v12];
      v11 = v12;

      v8 = v11;
    }

    [*(a1 + 32) cacheRemoteAssetData:v7 forManifestItem:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)cacheRemoteAssetData:(id)a3 forManifestItem:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 SHA1Hash];
  v7 = [v6 hexEncoding];

  v8 = [v5 itemType];
  if (v8 != 1 && (PKCachedFileForSHA1Exists(v7) & 1) == 0)
  {
    PKCacheFile(v9, v7);
  }
}

- (void)_callCompletionHandlersWithFinishState:(BOOL)a3 progress:(float)a4 error:(id)a5
{
  v6 = a3;
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableArray *)self->_completionHandlers copy];
  if (v6)
  {
    [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKRemoteAssetManager__callCompletionHandlersWithFinishState_progress_error___block_invoke;
  block[3] = &unk_1E79D9298;
  v17 = v6;
  v16 = a4;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, block);
}

void __78__PKRemoteAssetManager__callCompletionHandlersWithFinishState_progress_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))(*(a1 + 48));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)addRemoteAssetData:(id)a3 shouldWriteData:(BOOL)a4 forManifestItem:(id)a5 error:(id *)a6
{
  v8 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v12 = [v10 SHA1Hash];
    v13 = [v12 hexEncoding];

    v14 = [v11 encryptedContentsLocalURL];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v11 localURL];
    }

    v18 = v16;

    v19 = [v11 sha1Hex];
    v20 = [v19 isEqualToString:v13];

    if ((v20 & 1) == 0)
    {
      v24 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v11 sha1Hex];
        *v55 = 138412802;
        *&v55[4] = v18;
        *&v55[12] = 2112;
        *&v55[14] = v25;
        *&v55[22] = 2112;
        v56 = v13;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "SHA1 Invalid Hash: For file %@, manifest's listed SHA1 hash %@ doesn't match computed hash, %@. Please file a radar and include this faulty pass", v55, 0x20u);
      }

      if (a6)
      {
        v44 = [v11 sha1Hex];
        *a6 = PKSignatureErrorWithReason(@"For file %@, manifest's listed SHA1 hash %@ doesn't match computed hash, %@", v26, v27, v28, v29, v30, v31, v32, v18);
      }

      v17 = 0;
      goto LABEL_28;
    }

    *v55 = 0;
    *&v55[8] = v55;
    *&v55[16] = 0x2020000000;
    LOBYTE(v56) = 0;
    if (v8)
    {
      v21 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v18;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Writing %@", buf, 0xCu);
      }

      coordinator = self->_coordinator;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __81__PKRemoteAssetManager_addRemoteAssetData_shouldWriteData_forManifestItem_error___block_invoke;
      v49[3] = &unk_1E79D92C0;
      v52 = v55;
      v50 = v10;
      v51 = v18;
      [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v49];
      v23 = *(*&v55[8] + 24);

      if ((*(*&v55[8] + 24) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
      LOBYTE(v56) = 1;
    }

    if ([v11 isZipFile])
    {
      v33 = [v11 localURL];
      v34 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v33 lastPathComponent];
        *buf = 138412290;
        v54 = v35;
        _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Unpacking zip file %@.", buf, 0xCu);
      }

      v36 = [v33 URLByDeletingPathExtension];
      v37 = [v36 lastPathComponent];

      v38 = [v11 passURL];
      v39 = [v38 URLByAppendingPathComponent:v37];

      v40 = self->_coordinator;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __81__PKRemoteAssetManager_addRemoteAssetData_shouldWriteData_forManifestItem_error___block_invoke_56;
      v45[3] = &unk_1E79C8748;
      v41 = v39;
      v46 = v41;
      v48 = v55;
      v47 = v10;
      [(PKDirectoryCoordinator *)v40 performCoordinatedAction:v45];
      if (v23)
      {
      }

      else
      {
        v42 = *(*&v55[8] + 24);

        if ((v42 & 1) == 0)
        {
LABEL_27:
          v17 = *(*&v55[8] + 24);
          _Block_object_dispose(v55, 8);
LABEL_28:

          goto LABEL_29;
        }
      }

LABEL_26:
      [(PKRemoteAssetManager *)self _flushBundleCaches];
      goto LABEL_27;
    }

LABEL_23:
    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v17 = 0;
LABEL_29:

  return v17 & 1;
}

uint64_t __81__PKRemoteAssetManager_addRemoteAssetData_shouldWriteData_forManifestItem_error___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = [*(result + 32) writeToURL:*(result + 40) atomically:1];
    *(*(*(v2 + 48) + 8) + 24) = result;
  }

  else
  {
    *(*(*(result + 48) + 8) + 24) = 0;
  }

  return result;
}

void __81__PKRemoteAssetManager_addRemoteAssetData_shouldWriteData_forManifestItem_error___block_invoke_56(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [*(a1 + 32) path];
    v5 = [v3 fileExistsAtPath:v4];

    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v12 = 0;
      v7 = [v3 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
      v8 = v12;
      v9 = v8;
      if ((v7 & 1) == 0 && v8)
      {
        v10 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *buf = 138412290;
          v14 = v11;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Could not create directory at %@", buf, 0xCu);
        }
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = PKUnarchiverZip(*(a1 + 40), *(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __42__PKRemoteAssetManager__flushBundleCaches__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E696AAE8];
    v3 = a2;
    v5 = [[v2 alloc] initWithURL:v3];

    v4 = v5;
    if (v5)
    {
      [v5 _cfBundle];
      _CFBundleFlushBundleCaches();
      v4 = v5;
    }
  }
}

- (void)downloadRemoteAssetsWithCompletion:(id)a3
{
  v4 = a3;
  [(PKRemoteAssetManager *)self downloadRemoteAssetsWithScreenScale:0 suffix:v4 completion:PKScreenScale()];
}

@end