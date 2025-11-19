@interface JFXEffectPreviewDiskCache
+ (id)cachedPathForEffect:(id)a3 version:(id)a4 directoryPath:(id)a5;
+ (id)createCacheAtDirectory:(id)a3;
- (JFXEffectPreviewDiskCache)initWithDirectory:(id)a3;
- (NSString)cacheDirectoryPath;
- (id)cachedURLForEffect:(id)a3 version:(id)a4;
- (void)dealloc;
- (void)previewForEffectID:(id)a3 version:(id)a4 completion:(id)a5;
- (void)removePreviewForEffectID:(id)a3 excludingVersion:(id)a4 completion:(id)a5;
- (void)savePreviewForEffectID:(id)a3 image:(id)a4 version:(id)a5 completion:(id)a6;
@end

@implementation JFXEffectPreviewDiskCache

- (JFXEffectPreviewDiskCache)initWithDirectory:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = JFXEffectPreviewDiskCache;
  v6 = [(JFXEffectPreviewDiskCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryName, a3);
    v8 = objc_opt_new();
    diskAccessQueue = v7->_diskAccessQueue;
    v7->_diskAccessQueue = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"JFXEffectPreviewDiskCache.%@.diskAccessQ", v5];
    [(NSOperationQueue *)v7->_diskAccessQueue setName:v10];

    [(NSOperationQueue *)v7->_diskAccessQueue setMaxConcurrentOperationCount:3];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [v3 cancelAllOperations];

  v4.receiver = self;
  v4.super_class = JFXEffectPreviewDiskCache;
  [(JFXEffectPreviewDiskCache *)&v4 dealloc];
}

- (NSString)cacheDirectoryPath
{
  cacheDirectoryPath = self->_cacheDirectoryPath;
  if (!cacheDirectoryPath)
  {
    v4 = objc_opt_class();
    v5 = [(JFXEffectPreviewDiskCache *)self directoryName];
    v6 = [v4 createCacheAtDirectory:v5];
    v7 = self->_cacheDirectoryPath;
    self->_cacheDirectoryPath = v6;

    cacheDirectoryPath = self->_cacheDirectoryPath;
  }

  return cacheDirectoryPath;
}

- (void)previewForEffectID:(id)a3 version:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  objc_initWeak(&location, v11);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__JFXEffectPreviewDiskCache_previewForEffectID_version_completion___block_invoke;
  v19 = &unk_278D7D2B0;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v22 = self;
  v14 = v10;
  v23 = v14;
  objc_copyWeak(&v24, &location);
  [v11 addExecutionBlock:&v16];
  [v11 setQualityOfService:{25, v16, v17, v18, v19}];
  v15 = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [v15 addOperation:v11];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __67__JFXEffectPreviewDiskCache_previewForEffectID_version_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) cacheDirectoryPath];
  v14 = [JFXEffectPreviewDiskCache cachedPathForEffect:v2 version:v3 directoryPath:v4];

  if (v14 && ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "fileExistsAtPath:", v14), v5, (v6 & 1) != 0) && (v7 = objc_loadWeakRetained((a1 + 64)), v8 = objc_msgSend(v7, "isCancelled"), v7, !v8))
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v14];
    if (v9 && (WeakRetained = objc_loadWeakRetained((a1 + 64)), v11 = [WeakRetained isCancelled], WeakRetained, !v11))
    {
      v12 = *(a1 + 56);
      v13 = [JTImage jtImageWithUIImage:v9];
      (*(v12 + 16))(v12, v13, 0);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)savePreviewForEffectID:(id)a3 image:(id)a4 version:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  objc_initWeak(&location, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__JFXEffectPreviewDiskCache_savePreviewForEffectID_image_version_completion___block_invoke;
  v20[3] = &unk_278D7D2D8;
  v20[4] = self;
  v15 = v13;
  v24 = v15;
  v16 = v10;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  v18 = v11;
  v23 = v18;
  objc_copyWeak(&v25, &location);
  [v14 addExecutionBlock:v20];
  [v14 setQualityOfService:17];
  v19 = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [v19 addOperation:v14];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __77__JFXEffectPreviewDiskCache_savePreviewForEffectID_image_version_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheDirectoryPath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) cacheDirectoryPath];
    v18 = [JFXEffectPreviewDiskCache cachedPathForEffect:v6 version:v5 directoryPath:v7];

    if (v18)
    {
      v8 = [*(a1 + 56) image];
      v9 = UIImagePNGRepresentation(v8);

      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v11 = [WeakRetained isCancelled];

      if (v11)
      {
        v12 = *(a1 + 64);
        if (v12)
        {
          (*(v12 + 16))(v12, 0);
        }
      }

      else
      {
        v16 = [v9 writeToFile:v18 atomically:1];
        v17 = *(a1 + 64);
        if (v17)
        {
          (*(v17 + 16))(v17, v16);
        }

        if (v16)
        {
          [*(a1 + 32) removePreviewForEffectID:*(a1 + 40) excludingVersion:*(a1 + 48) completion:0];
        }
      }
    }

    else
    {
      v15 = *(a1 + 64);
      if (v15)
      {
        (*(v15 + 16))(v15, 0);
      }
    }
  }

  else
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *(v13 + 16);

      v14();
    }
  }
}

- (void)removePreviewForEffectID:(id)a3 excludingVersion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  objc_initWeak(&location, v11);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __82__JFXEffectPreviewDiskCache_removePreviewForEffectID_excludingVersion_completion___block_invoke;
  v19 = &unk_278D7D300;
  v20 = self;
  v12 = v10;
  v23 = v12;
  v13 = v8;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  objc_copyWeak(&v24, &location);
  [v11 addExecutionBlock:&v16];
  [v11 setQualityOfService:{17, v16, v17, v18, v19, v20}];
  v15 = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [v15 addOperation:v11];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __82__JFXEffectPreviewDiskCache_removePreviewForEffectID_excludingVersion_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheDirectoryPath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v27 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = [v27 objectAtIndex:0];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [*(a1 + 32) cacheDirectoryPath];
    v8 = [v6 contentsOfDirectoryAtPath:v7 error:0];

    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF beginswith %@) AND (SELF contains %@)", *(a1 + 40), v5];
    v26 = v8;
    v9 = [v8 filteredArrayUsingPredicate:?];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@.png", *(a1 + 40), *(a1 + 48), v5];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if (([v16 isEqualToString:v10] & 1) == 0)
          {
            v17 = [*(a1 + 32) cacheDirectoryPath];
            v18 = [v17 stringByAppendingPathComponent:v16];

            v19 = [MEMORY[0x277CCAA00] defaultManager];
            [v19 removeItemAtPath:v18 error:0];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v21 = [WeakRetained isCancelled];

    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, v21 ^ 1u);
    }
  }

  else
  {
    v23 = *(a1 + 56);
    if (v23)
    {
      v24 = *(v23 + 16);

      v24();
    }
  }
}

- (id)cachedURLForEffect:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__27;
  v27 = __Block_byref_object_dispose__27;
  v28 = 0;
  v8 = MEMORY[0x277CCA8C8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __56__JFXEffectPreviewDiskCache_cachedURLForEffect_version___block_invoke;
  v18 = &unk_278D7D328;
  v19 = self;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v22 = &v23;
  v11 = [v8 blockOperationWithBlock:&v15];
  [v11 setQualityOfService:{25, v15, v16, v17, v18, v19}];
  [v11 setQueuePriority:8];
  v12 = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [v12 addOperation:v11];

  [v11 waitUntilFinished];
  v13 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __56__JFXEffectPreviewDiskCache_cachedURLForEffect_version___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) cacheDirectoryPath];
  v10 = [v2 cachedPathForEffect:v4 version:v3 directoryPath:v5];

  v6 = v10;
  if (v10)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
  }
}

+ (id)cachedPathForEffect:(id)a3 version:(id)a4 directoryPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v11 = [v10 objectAtIndex:0];
  if (v8)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@.png", v7, v8, v11];
    v13 = [v9 stringByAppendingPathComponent:v12];
  }

  else
  {
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v14 contentsOfDirectoryAtPath:v9 error:0];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF beginswith %@) AND (SELF contains %@)", v7, v11];
    v16 = [v12 filteredArrayUsingPredicate:v15];
    v17 = [v16 firstObject];

    if (v17)
    {
      v13 = [v9 stringByAppendingPathComponent:v17];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)createCacheAtDirectory:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v5 = [v4 lastObject];

  v6 = [v5 stringByAppendingPathComponent:v3];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (!v8)
  {
LABEL_6:
    v16 = [MEMORY[0x277CCA8D8] jfxBundle];
    v17 = [v16 objectForInfoDictionaryKey:@"CFBundleVersion"];
    v18 = [v17 integerValue];

    v19 = [v3 stringByAppendingString:@"buildNumberKey"];
    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v20 setInteger:v18 forKey:v19];

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(v18) = [v21 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

    v22 = 0;
    if (!v18)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"purgePickerCacheOnLoad"];
  v11 = [MEMORY[0x277CCA8D8] jfxBundle];
  v12 = [v11 objectForInfoDictionaryKey:@"CFBundleVersion"];
  v13 = [v12 integerValue];

  v14 = [v3 stringByAppendingString:@"buildNumberKey"];
  if (v13 > [v9 integerForKey:v14] || v10)
  {
    [v9 setInteger:v13 forKey:v14];
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    [v15 removeItemAtPath:v6 error:0];

    goto LABEL_6;
  }

LABEL_7:
  v22 = v6;
LABEL_8:

  return v22;
}

@end