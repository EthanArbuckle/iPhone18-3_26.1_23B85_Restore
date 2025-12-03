@interface MURouteSnapshotManager
+ (id)cacheDirectory;
+ (id)sharedInstance;
- (MURouteSnapshotManager)init;
- (id)_optionsFromKey:(id)key route:(id)route;
- (void)_generateSnapshotForRoute:(id)route key:(id)key completion:(id)completion;
- (void)getSnapshotForKey:(id)key route:(id)route completion:(id)completion;
- (void)purgeSnapshotsWithCompletionBlock:(id)block;
@end

@implementation MURouteSnapshotManager

- (void)purgeSnapshotsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "purging snapshots!", buf, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSMutableArray *)self->_pendingSnapshotters removeAllObjects];
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MURouteSnapshotManager_purgeSnapshotsWithCompletionBlock___block_invoke;
  v8[3] = &unk_1E821A618;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_barrier_async(workQueue, v8);
}

void __60__MURouteSnapshotManager_purgeSnapshotsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_INFO, "removing in-memory snapshots", buf, 2u);
  }

  [*(*(a1 + 32) + 8) removeAllObjects];
  v3 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "removing on-disk snapshots", buf, 2u);
  }

  v4 = +[MURouteSnapshotManager cacheDirectory];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  [v5 removeItemAtURL:v4 error:&v15];
  v6 = v15;

  v7 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "re-creating on-disk snapshots directory, deleteError: %{public}@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  [v8 createDirectoryAtURL:v4 withIntermediateDirectories:0 attributes:0 error:&v14];
  v9 = v14;

  v10 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_INFO, "completed snapshot purge, createError: %{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"MURouteSnapshotManagerDidPurgeNotification" object:*(a1 + 32)];

  v12 = *(a1 + 40);
  if (v12)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_generateSnapshotForRoute:(id)route key:(id)key completion:(id)completion
{
  routeCopy = route;
  keyCopy = key;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke;
  v14[3] = &unk_1E8218FA8;
  v14[4] = self;
  v15 = keyCopy;
  v16 = routeCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = routeCopy;
  v13 = keyCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _optionsFromKey:*(a1 + 40) route:*(a1 + 48)];
  v3 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v2];
  [*(*(a1 + 32) + 24) addObject:v3];
  v4 = MUGetMURouteSnapshotManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_INFO, "starting snapshot request for key: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke_26;
  v9[3] = &unk_1E8218F80;
  v9[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  [v7 startWithCompletionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke_2;
  block[3] = &unk_1E821A820;
  v8 = *(a1 + 48);
  v14 = v6;
  v15 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) image];
  v5 = [v4 imageWithRenderingMode:1];
  (*(v2 + 16))(v2, v3, v5);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MURouteSnapshotManager__generateSnapshotForRoute_key_completion___block_invoke_3;
  v7[3] = &unk_1E821A870;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (id)_optionsFromKey:(id)key route:(id)route
{
  v38[2] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  routeCopy = route;
  keyCopy = key;
  _MKCartographicConfigurationForMapType();
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696F458]) initWithCartographicConfiguration:v32];
  [v7 setShowsHiking:1];
  [v7 setShowsTopographicFeatures:1];
  v8 = objc_opt_new();
  [v8 setPreferredConfiguration:v7];
  [keyCopy width];
  v10 = v9;
  [keyCopy height];
  [v8 setSize:{v10, v11}];
  [v8 _setComposedRouteForRouteLine:routeCopy];
  boundingMapRegion = [routeCopy boundingMapRegion];

  GEOMapRectForMapRegion();
  [v8 size];
  [keyCopy padding];
  v30 = v13;
  v31 = v14;
  v28 = v15;
  v29 = v16;
  _MKMapRectThatFits();
  [v8 setMapRect:{v28, v29, v30, v31}];

  filterExcludingAllCategories = [MEMORY[0x1E696F350] filterExcludingAllCategories];
  [v8 setPointOfInterestFilter:filterExcludingAllCategories];

  [v8 _setShowsPointLabels:0];
  [v8 _setShowsAppleLogo:0];
  if ([keyCopy darkMode])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v18];
  v38[0] = v19;
  v20 = MEMORY[0x1E69DD1B8];
  [keyCopy scale];
  v22 = v21;

  v23 = [v20 traitCollectionWithDisplayScale:v22];
  v38[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  v25 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v24];
  [v8 setTraitCollection:v25];

  v26 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)getSnapshotForKey:(id)key route:(id)route completion:(id)completion
{
  keyCopy = key;
  routeCopy = route;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5692;
  v22 = __Block_byref_object_dispose__5693;
  v23 = [(NSCache *)self->_cache objectForKey:keyCopy];
  if (v19[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke;
    block[3] = &unk_1E8218F58;
    v17 = &v18;
    v13 = keyCopy;
    selfCopy = self;
    v16 = completionCopy;
    v15 = routeCopy;
    dispatch_async(workQueue, block);
  }

  _Block_object_dispose(&v18, 8);
}

void __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke(uint64_t a1)
{
  v2 = +[MURouteSnapshotManager cacheDirectory];
  v3 = [*(a1 + 32) fileName];
  v4 = [v2 URLByAppendingPathComponent:v3];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 contentsAtPath:v6];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x1E69DCAB8];
  [*(a1 + 32) scale];
  v9 = [v8 imageWithData:v7 scale:?];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 64) + 8) + 40);
  if (v12)
  {
    [*(*(a1 + 40) + 8) setObject:v12 forKey:*(a1 + 32)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke_2;
    block[3] = &unk_1E8219870;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v24 = v13;
    v25 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v15 = v24;
  }

  else
  {
LABEL_4:
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke_3;
    v19[3] = &unk_1E8218F30;
    v19[4] = v17;
    v20 = v18;
    v21 = v4;
    v22 = *(a1 + 56);
    [v17 _generateSnapshotForRoute:v16 key:v20 completion:v19];

    v15 = v20;
  }
}

void __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (v6)
  {
    [v7 setObject:v6 forKey:*(a1 + 40)];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [*(a1 + 48) path];
    v10 = UIImagePNGRepresentation(v6);
    [v8 createFileAtPath:v9 contents:v10 attributes:0];

    v11 = MUGetMURouteSnapshotManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v28 = v12;
      v13 = "got snapshot for key: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
LABEL_6:
      _os_log_impl(&dword_1C5620000, v14, v15, v13, buf, v16);
    }
  }

  else
  {
    [v7 removeObjectForKey:*(a1 + 40)];
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    [v17 removeItemAtURL:*(a1 + 48) error:0];

    v11 = MUGetMURouteSnapshotManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138412546;
      v28 = v18;
      v29 = 2114;
      v30 = v5;
      v13 = "Failed to generate image for key: %@, with error %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
      goto LABEL_6;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MURouteSnapshotManager_getSnapshotForKey_route_completion___block_invoke_18;
  block[3] = &unk_1E821B8D8;
  v19 = *(a1 + 56);
  v25 = v6;
  v26 = v19;
  v24 = v5;
  v20 = v6;
  v21 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v22 = *MEMORY[0x1E69E9840];
}

- (MURouteSnapshotManager)init
{
  v11.receiver = self;
  v11.super_class = MURouteSnapshotManager;
  v2 = [(MURouteSnapshotManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.MapsUI.MURouteSnapshotManager.work", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = objc_opt_new();
    pendingSnapshotters = v2->_pendingSnapshotters;
    v2->_pendingSnapshotters = v8;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_12);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __40__MURouteSnapshotManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)cacheDirectory
{
  if (cacheDirectory_onceToken != -1)
  {
    dispatch_once(&cacheDirectory_onceToken, &__block_literal_global_5706);
  }

  v3 = cacheDirectory__cacheDirectory;

  return v3;
}

void __40__MURouteSnapshotManager_cacheDirectory__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 URLsForDirectory:13 inDomains:1];
  v9 = [v1 firstObject];

  v2 = [v9 URLByAppendingPathComponent:@"RouteSnapshots"];
  v3 = [v2 absoluteURL];
  v4 = cacheDirectory__cacheDirectory;
  cacheDirectory__cacheDirectory = v3;

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [cacheDirectory__cacheDirectory path];
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 createDirectoryAtURL:cacheDirectory__cacheDirectory withIntermediateDirectories:0 attributes:0 error:0];
  }
}

@end