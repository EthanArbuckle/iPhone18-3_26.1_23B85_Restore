@interface JFXEffectPreviewDiskCache
+ (id)cachedPathForEffect:(id)effect version:(id)version directoryPath:(id)path;
+ (id)createCacheAtDirectory:(id)directory;
- (JFXEffectPreviewDiskCache)initWithDirectory:(id)directory;
- (NSString)cacheDirectoryPath;
- (id)cachedURLForEffect:(id)effect version:(id)version;
- (void)dealloc;
- (void)previewForEffectID:(id)d version:(id)version completion:(id)completion;
- (void)removePreviewForEffectID:(id)d excludingVersion:(id)version completion:(id)completion;
- (void)savePreviewForEffectID:(id)d image:(id)image version:(id)version completion:(id)completion;
@end

@implementation JFXEffectPreviewDiskCache

- (JFXEffectPreviewDiskCache)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = JFXEffectPreviewDiskCache;
  v6 = [(JFXEffectPreviewDiskCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryName, directory);
    v8 = objc_opt_new();
    diskAccessQueue = v7->_diskAccessQueue;
    v7->_diskAccessQueue = v8;

    directoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"JFXEffectPreviewDiskCache.%@.diskAccessQ", directoryCopy];
    [(NSOperationQueue *)v7->_diskAccessQueue setName:directoryCopy];

    [(NSOperationQueue *)v7->_diskAccessQueue setMaxConcurrentOperationCount:3];
  }

  return v7;
}

- (void)dealloc
{
  diskAccessQueue = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [diskAccessQueue cancelAllOperations];

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
    directoryName = [(JFXEffectPreviewDiskCache *)self directoryName];
    v6 = [v4 createCacheAtDirectory:directoryName];
    v7 = self->_cacheDirectoryPath;
    self->_cacheDirectoryPath = v6;

    cacheDirectoryPath = self->_cacheDirectoryPath;
  }

  return cacheDirectoryPath;
}

- (void)previewForEffectID:(id)d version:(id)version completion:(id)completion
{
  dCopy = d;
  versionCopy = version;
  completionCopy = completion;
  v11 = objc_opt_new();
  objc_initWeak(&location, v11);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__JFXEffectPreviewDiskCache_previewForEffectID_version_completion___block_invoke;
  v19 = &unk_278D7D2B0;
  v12 = dCopy;
  v20 = v12;
  v13 = versionCopy;
  v21 = v13;
  selfCopy = self;
  v14 = completionCopy;
  v23 = v14;
  objc_copyWeak(&v24, &location);
  [v11 addExecutionBlock:&v16];
  [v11 setQualityOfService:{25, v16, v17, v18, v19}];
  diskAccessQueue = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [diskAccessQueue addOperation:v11];

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

- (void)savePreviewForEffectID:(id)d image:(id)image version:(id)version completion:(id)completion
{
  dCopy = d;
  imageCopy = image;
  versionCopy = version;
  completionCopy = completion;
  v14 = objc_opt_new();
  objc_initWeak(&location, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__JFXEffectPreviewDiskCache_savePreviewForEffectID_image_version_completion___block_invoke;
  v20[3] = &unk_278D7D2D8;
  v20[4] = self;
  v15 = completionCopy;
  v24 = v15;
  v16 = dCopy;
  v21 = v16;
  v17 = versionCopy;
  v22 = v17;
  v18 = imageCopy;
  v23 = v18;
  objc_copyWeak(&v25, &location);
  [v14 addExecutionBlock:v20];
  [v14 setQualityOfService:17];
  diskAccessQueue = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [diskAccessQueue addOperation:v14];

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

- (void)removePreviewForEffectID:(id)d excludingVersion:(id)version completion:(id)completion
{
  dCopy = d;
  versionCopy = version;
  completionCopy = completion;
  v11 = objc_opt_new();
  objc_initWeak(&location, v11);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __82__JFXEffectPreviewDiskCache_removePreviewForEffectID_excludingVersion_completion___block_invoke;
  v19 = &unk_278D7D300;
  selfCopy = self;
  v12 = completionCopy;
  v23 = v12;
  v13 = dCopy;
  v21 = v13;
  v14 = versionCopy;
  v22 = v14;
  objc_copyWeak(&v24, &location);
  [v11 addExecutionBlock:&v16];
  [v11 setQualityOfService:{17, v16, v17, v18, v19, selfCopy}];
  diskAccessQueue = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [diskAccessQueue addOperation:v11];

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

- (id)cachedURLForEffect:(id)effect version:(id)version
{
  effectCopy = effect;
  versionCopy = version;
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
  selfCopy = self;
  v9 = effectCopy;
  v20 = v9;
  v10 = versionCopy;
  v21 = v10;
  v22 = &v23;
  v11 = [v8 blockOperationWithBlock:&v15];
  [v11 setQualityOfService:{25, v15, v16, v17, v18, selfCopy}];
  [v11 setQueuePriority:8];
  diskAccessQueue = [(JFXEffectPreviewDiskCache *)self diskAccessQueue];
  [diskAccessQueue addOperation:v11];

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

+ (id)cachedPathForEffect:(id)effect version:(id)version directoryPath:(id)path
{
  effectCopy = effect;
  versionCopy = version;
  pathCopy = path;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v11 = [preferredLanguages objectAtIndex:0];
  if (versionCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@.png", effectCopy, versionCopy, v11];
    v13 = [pathCopy stringByAppendingPathComponent:v12];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF beginswith %@) AND (SELF contains %@)", effectCopy, v11];
    v16 = [v12 filteredArrayUsingPredicate:v15];
    firstObject = [v16 firstObject];

    if (firstObject)
    {
      v13 = [pathCopy stringByAppendingPathComponent:firstObject];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)createCacheAtDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v4 lastObject];

  v6 = [lastObject stringByAppendingPathComponent:directoryCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v6];

  if (!v8)
  {
LABEL_6:
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v17 = [jfxBundle objectForInfoDictionaryKey:@"CFBundleVersion"];
    integerValue = [v17 integerValue];

    v19 = [directoryCopy stringByAppendingString:@"buildNumberKey"];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:integerValue forKey:v19];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(integerValue) = [defaultManager2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

    v22 = 0;
    if (!integerValue)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults2 BOOLForKey:@"purgePickerCacheOnLoad"];
  jfxBundle2 = [MEMORY[0x277CCA8D8] jfxBundle];
  v12 = [jfxBundle2 objectForInfoDictionaryKey:@"CFBundleVersion"];
  integerValue2 = [v12 integerValue];

  v14 = [directoryCopy stringByAppendingString:@"buildNumberKey"];
  if (integerValue2 > [standardUserDefaults2 integerForKey:v14] || v10)
  {
    [standardUserDefaults2 setInteger:integerValue2 forKey:v14];
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtPath:v6 error:0];

    goto LABEL_6;
  }

LABEL_7:
  v22 = v6;
LABEL_8:

  return v22;
}

@end