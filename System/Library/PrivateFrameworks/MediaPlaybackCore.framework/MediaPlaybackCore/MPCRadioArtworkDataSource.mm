@interface MPCRadioArtworkDataSource
+ (id)sharedRadioArtworkDataSource;
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog;
- (MPCRadioArtworkDataSource)init;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)requestForCatalog:(id)catalog size:(CGSize)size;
- (void)_cacheArtworkRepresentation:(id)representation forKey:(id)key;
- (void)_clearCache;
- (void)_handleDidEnterBackgroundNotification:(id)notification;
- (void)_handleWillEnterForegroundNotification:(id)notification;
- (void)_setCacheSize:(unint64_t)size preserveExisting:(BOOL)existing;
- (void)dealloc;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPCRadioArtworkDataSource

- (void)_setCacheSize:(unint64_t)size preserveExisting:(BOOL)existing
{
  if (self->_cacheSize != size)
  {
    v9 = v4;
    v10 = v5;
    self->_cacheSize = size;
    cachedArtworkRepresentationsAccessQueue = self->_cachedArtworkRepresentationsAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MPCRadioArtworkDataSource__setCacheSize_preserveExisting___block_invoke;
    block[3] = &unk_1E8235A38;
    existingCopy = existing;
    block[4] = self;
    block[5] = size;
    dispatch_sync(cachedArtworkRepresentationsAccessQueue, block);
  }
}

void __60__MPCRadioArtworkDataSource__setCacheSize_preserveExisting___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    if (*(a1 + 48) == 1 && *(a1 + 40))
    {
      [v2 allKeys];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = v18 = 0u;
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        v7 = *v16;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v15 + 1) + 8 * i);
            v10 = [*(*(a1 + 32) + 160) objectForKey:v9];
            if (v10)
            {
              if (!v6)
              {
                v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v6 setObject:v10 forKey:v9];
              if ([v6 count] >= *(a1 + 40))
              {

                goto LABEL_19;
              }
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_19:
    }

    else
    {
      v6 = 0;
    }

    v11 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:*(*(a1 + 32) + 152)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
    *(v12 + 160) = v11;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__MPCRadioArtworkDataSource__setCacheSize_preserveExisting___block_invoke_2;
    v14[3] = &unk_1E8235A10;
    v14[4] = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

- (void)_clearCache
{
  cachedArtworkRepresentationsAccessQueue = self->_cachedArtworkRepresentationsAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPCRadioArtworkDataSource__clearCache__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(cachedArtworkRepresentationsAccessQueue, block);
}

- (void)_cacheArtworkRepresentation:(id)representation forKey:(id)key
{
  representationCopy = representation;
  keyCopy = key;
  cachedArtworkRepresentationsAccessQueue = self->_cachedArtworkRepresentationsAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPCRadioArtworkDataSource__cacheArtworkRepresentation_forKey___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = representationCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = representationCopy;
  dispatch_async(cachedArtworkRepresentationsAccessQueue, block);
}

uint64_t __64__MPCRadioArtworkDataSource__cacheArtworkRepresentation_forKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 160);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:*(a1[4] + 152)];
    v4 = a1[4];
    v5 = *(v4 + 160);
    *(v4 + 160) = v3;

    v2 = *(a1[4] + 160);
  }

  v6 = a1[5];
  v7 = a1[6];

  return [v2 setObject:v6 forKey:v7];
}

- (void)_handleWillEnterForegroundNotification:(id)notification
{
  if (self->_resumeToForegroundCacheSize >= 1)
  {
    [MPCRadioArtworkDataSource _setCacheSize:"_setCacheSize:preserveExisting:" preserveExisting:?];
  }
}

- (void)_handleDidEnterBackgroundNotification:(id)notification
{
  v4 = MPUIApplication();
  isSuspendedUnderLock = [v4 isSuspendedUnderLock];

  if ((isSuspendedUnderLock & 1) == 0)
  {
    self->_resumeToForegroundCacheSize = self->_cacheSize;
    backgroundCacheSize = self->_backgroundCacheSize;

    [(MPCRadioArtworkDataSource *)self _setCacheSize:backgroundCacheSize preserveExisting:1];
  }
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v9 = [token bestArtworkForPixelSize:?];
  [catalogCopy destinationScale];
  v11 = v10;
  if (v10 < 0.00000011920929)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v11 = v13;
  }

  mEMORY[0x1E69C6B60] = [MEMORY[0x1E69C6B60] sharedCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__MPCRadioArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v18[3] = &unk_1E82359E8;
  v23 = v11;
  v19 = v9;
  selfCopy = self;
  v21 = catalogCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = catalogCopy;
  v17 = v9;
  [mEMORY[0x1E69C6B60] loadImageForRadioArtwork:v17 withCompletionHandler:v18];
}

void __83__MPCRadioArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  v12 = v9;
  if (v7 && !v9)
  {
    [*(a1 + 32) pixelSize];
    v14 = v13;
    v16 = v15;
    if ([v8 isEqualToString:@"image/jpeg"])
    {
      v17 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithData:v7 immediateLoadWithMaxSize:0 scale:0 renderingIntent:v14 cache:{v16, *(a1 + 64)}];
      if ([v17 CGImage])
      {
        if (v17)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v18 = [MEMORY[0x1E69DCAB8] imageWithData:v7 scale:*(a1 + 64)];
    if (!v18)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = objc_opt_class();
      v22 = NSStringFromClass(v24);
      v12 = [v23 errorWithDomain:v22 code:0 userInfo:0];
      v11 = 0;
LABEL_13:

      goto LABEL_15;
    }

    v17 = v18;
LABEL_10:
    v19 = MEMORY[0x1E69704B0];
    v20 = [*(a1 + 48) visualIdenticalityIdentifier];
    v11 = [v19 representationForVisualIdentity:v20 withSize:v17 image:{v14, v16}];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) URL];
    [v21 _cacheArtworkRepresentation:v11 forKey:v22];
    v12 = 0;
    goto LABEL_13;
  }

LABEL_15:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MPCRadioArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2;
  block[3] = &unk_1E8239198;
  v25 = *(a1 + 56);
  v30 = v12;
  v31 = v25;
  v29 = v11;
  v26 = v12;
  v27 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)requestForCatalog:(id)catalog size:(CGSize)size
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v7 = v6;
  v9 = v8;

  v10 = [token bestArtworkForPixelSize:{v7, v9}];
  v11 = MEMORY[0x1E696AF68];
  v12 = [v10 URL];
  v13 = [v11 requestWithURL:v12];

  return v13;
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__17334;
  v46 = __Block_byref_object_dispose__17335;
  v47 = 0;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v7 = v6;
  v9 = v8;
  v10 = [token bestArtworkForPixelSize:?];
  v11 = [v10 URL];
  cachedArtworkRepresentationsAccessQueue = self->_cachedArtworkRepresentationsAccessQueue;
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __69__MPCRadioArtworkDataSource_existingRepresentationForArtworkCatalog___block_invoke;
  v34 = &unk_1E8238370;
  v39 = &v42;
  selfCopy = self;
  v13 = v11;
  v36 = v13;
  v14 = token;
  v37 = v14;
  v15 = v10;
  v38 = v15;
  v40 = v7;
  v41 = v9;
  dispatch_sync(cachedArtworkRepresentationsAccessQueue, &v31);
  v16 = v43[5];
  if (!v16)
  {
    mEMORY[0x1E69C6B60] = [MEMORY[0x1E69C6B60] sharedCache];
    v18 = [mEMORY[0x1E69C6B60] cachedImageDataForRadioArtwork:v15 MIMEType:0];
    if (v18)
    {
      [catalogCopy destinationScale];
      v20 = v19;
      if (v19 < 0.00000011920929)
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
        v20 = v22;
      }

      v23 = [MEMORY[0x1E69DCAB8] imageWithData:v18 scale:v20];
      v24 = MEMORY[0x1E69704B0];
      visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
      [v15 pixelSize];
      v26 = [v24 representationForVisualIdentity:visualIdenticalityIdentifier withSize:v23 image:?];
      v27 = v43[5];
      v43[5] = v26;

      v28 = v43[5];
      if (v28)
      {
        [(MPCRadioArtworkDataSource *)self _cacheArtworkRepresentation:v28 forKey:v13];
      }
    }

    v16 = v43[5];
  }

  v29 = v16;

  _Block_object_dispose(&v42, 8);

  return v29;
}

void __69__MPCRadioArtworkDataSource_existingRepresentationForArtworkCatalog___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v16 = [*(a1 + 48) artworks];
    v5 = [v16 count];
    v6 = [v16 indexOfObject:*(a1 + 56)];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6 + 1;
      while (v7 < v5)
      {
        v8 = [v16 objectAtIndex:v7];
        [v8 pixelSize];
        if (v10 > *(a1 + 72) + *(a1 + 72) || v9 > *(a1 + 80) + *(a1 + 80))
        {

          break;
        }

        v11 = [v8 URL];
        v12 = [*(*(a1 + 32) + 160) objectForKey:v11];
        v13 = *(*(a1 + 64) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v15 = *(*(*(a1 + 64) + 8) + 40);
        ++v7;
        if (v15)
        {
          break;
        }
      }
    }
  }
}

- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog
{
  representationCopy = representation;
  if (representation)
  {
    catalogCopy = catalog;
    v6 = representationCopy;
    token = [catalogCopy token];
    [catalogCopy scaledFittingSize];
    v9 = v8;
    v11 = v10;

    v12 = [token bestArtworkForPixelSize:{v9, v11}];
    [v6 representationSize];
    v14 = v13;
    v16 = v15;

    [v12 pixelSize];
    LOBYTE(representationCopy) = v16 == v18 && v14 == v17;
  }

  return representationCopy;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  token = [catalog token];
  artworks = [token artworks];
  v5 = [artworks count] != 0;

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = MPCRadioArtworkDataSource;
  [(MPAbstractNetworkArtworkDataSource *)&v4 dealloc];
}

- (MPCRadioArtworkDataSource)init
{
  v8.receiver = self;
  v8.super_class = MPCRadioArtworkDataSource;
  v2 = [(MPAbstractNetworkArtworkDataSource *)&v8 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(2, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.MediaPlaybackCore.MPCRadioArtworkDataSouce.cachedArtworkRepresentationsAccessQueue", 0, v3);
    cachedArtworkRepresentationsAccessQueue = v2->_cachedArtworkRepresentationsAccessQueue;
    v2->_cachedArtworkRepresentationsAccessQueue = v4;

    v2->_backgroundCacheSize = 1;
    v2->_cacheSize = 50;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleDidReceiveMemoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v2;
}

+ (id)sharedRadioArtworkDataSource
{
  if (sharedRadioArtworkDataSource_sRadioArtworkDataSourceOnceToken != -1)
  {
    dispatch_once(&sharedRadioArtworkDataSource_sRadioArtworkDataSourceOnceToken, &__block_literal_global_17347);
  }

  v3 = sharedRadioArtworkDataSource_sRadioArtworkDataSource;

  return v3;
}

uint64_t __57__MPCRadioArtworkDataSource_sharedRadioArtworkDataSource__block_invoke()
{
  v0 = objc_alloc_init(MPCRadioArtworkDataSource);
  v1 = sharedRadioArtworkDataSource_sRadioArtworkDataSource;
  sharedRadioArtworkDataSource_sRadioArtworkDataSource = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end