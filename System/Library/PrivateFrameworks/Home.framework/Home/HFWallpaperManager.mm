@interface HFWallpaperManager
+ (id)sharedInstance;
- (HFWallpaperManager)init;
- (id)_cachedWallpaperForKey:(id)key;
- (id)_originalImageForWallpaper:(id)wallpaper forProcessingGenerator:(BOOL)generator;
- (id)_originalImageFromNamedWallpaperSourceForWallpaper:(id)wallpaper;
- (id)_wallpaperForHomeKitObject:(id)object createIfNeeded:(BOOL)needed;
- (id)allNamedWallpaperThumbnailsForWallpaperCollectionType:(int64_t)type;
- (id)allNamedWallpapersForWallpaperCollectionType:(int64_t)type;
- (id)defaultUserSelectableWallpaperForHomeKitObject:(id)object;
- (id)defaultUserSelectableWallpaperForWallpaperCollectionType:(int64_t)type;
- (id)generateProcessedImageFromWallpaper:(id)wallpaper originalImage:(id)image;
- (id)processOriginalBlurredImageFromWallpaper:(id)wallpaper originalImage:(id)image;
- (id)processOriginalImageFromWallpaper:(id)wallpaper originalImage:(id)image;
- (id)wallpaperForHomeKitObject:(id)object dispatchToMainOnComplete:(BOOL)complete;
- (id)wallpaperImageForWallpaper:(id)wallpaper variant:(int64_t)variant;
- (void)_dispatchWallpaperChangedforHomeKitObject:(id)object;
- (void)_dispatchWallpaperChangedforHomeKitObjectAsync:(id)async;
- (void)_logUserMetricsAfterSettingWallpaper;
- (void)_migrateIfNeeded;
- (void)_migrateToSunriseWallpaperIfNeeded;
- (void)_migrateWallpaperDict:(id)dict forHomeKitIdentifier:(id)identifier;
- (void)_preloadWallpaperForHomeKitObject:(id)object;
- (void)_pruneUnusedWallpapers;
- (void)_pruneUnusedWallpapersWithExistingHomeKitIdentifiers:(id)identifiers;
- (void)_setImageCacheForWallpaper:(id)wallpaper image:(id)image forHomeKitIdentifier:(id)identifier;
- (void)_setWallpaper:(id)wallpaper forHomeKitIdentifier:(id)identifier;
- (void)_setWallpaper:(id)wallpaper image:(id)image forHomeKitIdentifier:(id)identifier;
- (void)_setWallpaper:(id)wallpaper image:(id)image forHomeKitObject:(id)object;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)preheatCache;
- (void)registerWallpaperSource:(id)source processedSource:(id)processedSource;
@end

@implementation HFWallpaperManager

+ (id)sharedInstance
{
  if (qword_280E03CB8 != -1)
  {
    dispatch_once(&qword_280E03CB8, &__block_literal_global_220);
  }

  v3 = _MergedGlobals_318;

  return v3;
}

void __36__HFWallpaperManager_sharedInstance__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[HFExecutionEnvironment isHomeApp])
  {
    v0 = objc_alloc_init(HFWallpaperManager);
    v1 = _MergedGlobals_318;
    _MergedGlobals_318 = v0;
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = +[HFExecutionEnvironment sharedInstance];
      *buf = 134217984;
      v8 = [v6 hostProcess];
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFWallpaperManager shouldn't ever be created or used outside of Home App currentProcess:%ld", buf, 0xCu);
    }

    v4 = +[HFExecutionEnvironment sharedInstance];
    NSLog(&cfstr_Hfwallpaperman.isa, [v4 hostProcess]);

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (HFWallpaperManager)init
{
  v16.receiver = self;
  v16.super_class = HFWallpaperManager;
  v2 = [(HFWallpaperManager *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Home.wallpaper"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = objc_alloc_init(HFReaderWriterCache);
    wallpapersCache = v2->_wallpapersCache;
    v2->_wallpapersCache = v5;

    v7 = [HFWallpaperImageCache alloc];
    v8 = [(HFWallpaperImageCache *)v7 initWithIdentifier:HFWallpaperImageCacheIdentifier];
    imageCache = v2->_imageCache;
    v2->_imageCache = v8;

    v10 = objc_alloc_init(HFWallpaperFileManager);
    fileManager = v2->_fileManager;
    v2->_fileManager = v10;

    v12 = objc_alloc_init(HFWallpaperLegacyFileManager);
    legacyFileManager = v2->_legacyFileManager;
    v2->_legacyFileManager = v12;

    v14 = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __HFWallpaperManagerRegisterWithDispatcher_block_invoke;
    block[3] = &unk_277DF3D38;
    v18 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v2;
}

- (id)defaultUserSelectableWallpaperForHomeKitObject:(id)object
{
  objectCopy = object;
  v5 = [(HFWallpaperManager *)self _wallpaperForHomeKitObject:objectCopy createIfNeeded:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    objc_opt_class();
    v7 = [(HFWallpaperManager *)self defaultUserSelectableWallpaperForWallpaperCollectionType:(objc_opt_isKindOfClass() & 1) == 0];
  }

  v8 = v7;

  return v8;
}

- (id)defaultUserSelectableWallpaperForWallpaperCollectionType:(int64_t)type
{
  namedWallpaperSource = [(HFWallpaperManager *)self namedWallpaperSource];
  v5 = [namedWallpaperSource defaultWallpaperForCollection:type];

  return v5;
}

- (void)registerWallpaperSource:(id)source processedSource:(id)processedSource
{
  processedSourceCopy = processedSource;
  [(HFWallpaperManager *)self setNamedWallpaperSource:source];
  imageCache = [(HFWallpaperManager *)self imageCache];
  [imageCache setProcessedWallpaperSource:processedSourceCopy];

  self->_wallpaperSourceRegistered = source != 0;
  [(HFWallpaperManager *)self _migrateIfNeeded];

  [(HFWallpaperManager *)self _migrateToSunriseWallpaperIfNeeded];
}

- (void)preheatCache
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v3 allHomesFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HFWallpaperManager_preheatCache__block_invoke;
  v6[3] = &unk_277DF9508;
  v6[4] = self;
  v5 = [allHomesFuture addSuccessBlock:v6];
}

void __34__HFWallpaperManager_preheatCache__block_invoke(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v2 home];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _preloadWallpaperForHomeKitObject:v4];
    v3 = v4;
  }
}

- (id)wallpaperForHomeKitObject:(id)object dispatchToMainOnComplete:(BOOL)complete
{
  objectCopy = object;
  wallpapersCache = [(HFWallpaperManager *)self wallpapersCache];
  uniqueIdentifier = [objectCopy uniqueIdentifier];
  v9 = [wallpapersCache tryObjectForKey:uniqueIdentifier];

  if (v9)
  {
    v10 = [MEMORY[0x277D2C900] futureWithResult:v9];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = MEMORY[0x277CCA8C8];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __73__HFWallpaperManager_wallpaperForHomeKitObject_dispatchToMainOnComplete___block_invoke;
    v21 = &unk_277E01568;
    selfCopy = self;
    v23 = objectCopy;
    completeCopy = complete;
    v13 = v11;
    v24 = v13;
    v14 = [v12 blockOperationWithBlock:&v18];
    [v14 setQueuePriority:{4, v18, v19, v20, v21, selfCopy}];
    [v14 setQualityOfService:33];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v16 = [defaultScheduler performOperation:v14];

    v10 = v13;
  }

  return v10;
}

void __73__HFWallpaperManager_wallpaperForHomeKitObject_dispatchToMainOnComplete___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 _cachedWallpaperForKey:v3];

  if (!v4)
  {
    v6 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Loading wallpaper for HomeKit object %@", buf, 0xCu);
    }

    v4 = [*(a1 + 32) _wallpaperForHomeKitObject:*(a1 + 40) createIfNeeded:1];
    if (!v4)
    {
      NSLog(&cfstr_FailedToLoadWa.isa, *(a1 + 40));
    }

    if (*(a1 + 56) == 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __73__HFWallpaperManager_wallpaperForHomeKitObject_dispatchToMainOnComplete___block_invoke_28;
      v9[3] = &unk_277DF3370;
      v10 = *(a1 + 48);
      v4 = v4;
      v11 = v4;
      dispatch_async(MEMORY[0x277D85CD0], v9);

      v5 = v10;
      goto LABEL_10;
    }

LABEL_11:
    [*(a1 + 48) finishWithResult:v4];
    goto LABEL_12;
  }

  if (*(a1 + 56) != 1)
  {
    goto LABEL_11;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HFWallpaperManager_wallpaperForHomeKitObject_dispatchToMainOnComplete___block_invoke_2;
  block[3] = &unk_277DF3370;
  v13 = *(a1 + 48);
  v4 = v4;
  v14 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v5 = v13;
LABEL_10:

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

- (id)wallpaperImageForWallpaper:(id)wallpaper variant:(int64_t)variant
{
  v26 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  v7 = HFLogForCategory(0x35uLL);
  v8 = os_signpost_id_generate(v7);

  v9 = HFLogForCategory(0x35uLL);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    assetIdentifier = [wallpaperCopy assetIdentifier];
    *buf = 138412802;
    v21 = assetIdentifier;
    v22 = 2048;
    type = [wallpaperCopy type];
    v24 = 2048;
    variantCopy = variant;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LoadDashboardWallpaper", "wallpaperImageForWallpaper: Loading asset %@ of type %ld variant %ld", buf, 0x20u);
  }

  if (variant)
  {
    imageCache = [(HFWallpaperManager *)self imageCache];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HFWallpaperManager_wallpaperImageForWallpaper_variant___block_invoke;
    v18[3] = &unk_277E01590;
    v18[4] = self;
    v19 = wallpaperCopy;
    v13 = [imageCache imageForVariant:variant wallpaper:v19 withOriginalImageGenerator:v18];
  }

  else
  {
    v13 = [(HFWallpaperManager *)self _originalImageForWallpaper:wallpaperCopy forProcessingGenerator:0];
  }

  v14 = HFLogForCategory(0x35uLL);
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 134217984;
    v21 = v13;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v15, OS_SIGNPOST_INTERVAL_END, v8, "LoadDashboardWallpaper", "Resulted in %p", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)generateProcessedImageFromWallpaper:(id)wallpaper originalImage:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  type = [wallpaperCopy type];
  if (imageCopy && type == 6)
  {
    imageCache = [(HFWallpaperManager *)self imageCache];
    processedWallpaperSource = [imageCache processedWallpaperSource];
    v11 = [processedWallpaperSource generateFilteredImageForWallpaper:wallpaperCopy image:imageCopy];

    imageCopy = v11;
  }

  imageCache2 = [(HFWallpaperManager *)self imageCache];
  processedWallpaperSource2 = [imageCache2 processedWallpaperSource];
  v14 = [processedWallpaperSource2 processedImageForVariant:1 wallpaper:wallpaperCopy image:imageCopy];

  return v14;
}

- (id)processOriginalImageFromWallpaper:(id)wallpaper originalImage:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  type = [wallpaperCopy type];
  if (imageCopy && type == 1)
  {
    imageCache = [(HFWallpaperManager *)self imageCache];
    processedWallpaperSource = [imageCache processedWallpaperSource];
    v11 = [processedWallpaperSource generateFilteredImageForWallpaper:wallpaperCopy image:imageCopy];
  }

  else
  {
    v11 = imageCopy;
  }

  return v11;
}

- (id)processOriginalBlurredImageFromWallpaper:(id)wallpaper originalImage:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  type = [wallpaperCopy type];
  v9 = 0;
  if (imageCopy && type == 6)
  {
    imageCache = [(HFWallpaperManager *)self imageCache];
    processedWallpaperSource = [imageCache processedWallpaperSource];
    v9 = [processedWallpaperSource generateFilteredImageForWallpaper:wallpaperCopy image:imageCopy];
  }

  return v9;
}

- (id)allNamedWallpapersForWallpaperCollectionType:(int64_t)type
{
  namedWallpaperSource = [(HFWallpaperManager *)self namedWallpaperSource];

  if (!namedWallpaperSource)
  {
    NSLog(&cfstr_MustRegisterNa.isa);
  }

  namedWallpaperSource2 = [(HFWallpaperManager *)self namedWallpaperSource];
  v7 = [namedWallpaperSource2 allWallpapersForCollection:type];

  return v7;
}

- (id)allNamedWallpaperThumbnailsForWallpaperCollectionType:(int64_t)type
{
  namedWallpaperSource = [(HFWallpaperManager *)self namedWallpaperSource];

  if (!namedWallpaperSource)
  {
    NSLog(&cfstr_MustRegisterNa.isa);
  }

  namedWallpaperSource2 = [(HFWallpaperManager *)self namedWallpaperSource];
  v7 = [namedWallpaperSource2 allWallpaperThumbnailsForCollection:type];

  return v7;
}

- (void)_migrateIfNeeded
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__HFWallpaperManager__migrateIfNeeded__block_invoke;
  v5[3] = &unk_277DF3D38;
  v5[4] = self;
  v2 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v2 setQueuePriority:4];
  [v2 setQualityOfService:17];
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v4 = [defaultScheduler performOperation:v2];
}

void __38__HFWallpaperManager__migrateIfNeeded__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userDefaults];
  v3 = [v2 integerForKey:@"Version"];

  v4 = HFLogForCategory(0x4EuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 2)
  {
    if (v5)
    {
      *buf = 134217984;
      v11 = 2;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Wallpaper cache up-to-date (v%ld)", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Migrating wallpaper cache...", buf, 2u);
    }

    v6 = [*(a1 + 32) legacyFileManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__HFWallpaperManager__migrateIfNeeded__block_invoke_34;
    v9[3] = &unk_277E015B8;
    v9[4] = *(a1 + 32);
    [v6 migrateCache:v9];

    v7 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Wallpaper cache migration complete", buf, 2u);
    }

    v4 = [*(a1 + 32) userDefaults];
    [v4 setInteger:2 forKey:@"Version"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_migrateToSunriseWallpaperIfNeeded
{
  userDefaults = [(HFWallpaperManager *)self userDefaults];
  if ([userDefaults BOOLForKey:@"hasUpdatedToSunrise"])
  {
  }

  else
  {
    v3 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v3 homeManager];
    homes = [homeManager homes];
    v6 = [homes count];

    if (v6)
    {
      v7 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager2 = [v7 homeManager];
      homes2 = [homeManager2 homes];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __56__HFWallpaperManager__migrateToSunriseWallpaperIfNeeded__block_invoke;
      v12[3] = &unk_277E01608;
      v12[4] = self;
      [homes2 na_each:v12];

      userDefaults2 = [(HFWallpaperManager *)self userDefaults];
      [userDefaults2 setBool:1 forKey:@"hasUpdatedToSunrise"];
    }
  }
}

void __56__HFWallpaperManager__migrateToSunriseWallpaperIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  v6 = [*(a1 + 32) userDefaults];
  v7 = [v6 dictionaryForKey:v5];

  [*(a1 + 32) _migrateWallpaperDict:v7 forHomeKitIdentifier:v5];
  v8 = [v3 hf_allRooms];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HFWallpaperManager__migrateToSunriseWallpaperIfNeeded__block_invoke_2;
  v9[3] = &unk_277E015E0;
  v9[4] = *(a1 + 32);
  [v8 na_each:v9];
}

void __56__HFWallpaperManager__migrateToSunriseWallpaperIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v6 = [v3 UUIDString];

  v4 = [*(a1 + 32) userDefaults];
  v5 = [v4 dictionaryForKey:v6];

  [*(a1 + 32) _migrateWallpaperDict:v5 forHomeKitIdentifier:v6];
}

- (void)_migrateWallpaperDict:(id)dict forHomeKitIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (dict)
  {
    dictCopy = dict;
    v8 = [[HFWallpaper alloc] initWithDictionary:dictCopy];

    if (![(HFWallpaper *)v8 isCustomType])
    {
      v9 = HFLogForCategory(0x4EuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = identifierCopy;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Remove old default wallpaper: %@ for homeKitIdentifier: %@", &v12, 0x16u);
      }

      userDefaults = [(HFWallpaperManager *)self userDefaults];
      [userDefaults removeObjectForKey:identifierCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setWallpaper:(id)wallpaper image:(id)image forHomeKitObject:(id)object
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  objectCopy = object;
  v11 = MEMORY[0x277CCA8C8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __59__HFWallpaperManager__setWallpaper_image_forHomeKitObject___block_invoke;
  v21 = &unk_277DF3398;
  selfCopy = self;
  v23 = wallpaperCopy;
  v24 = imageCopy;
  v25 = objectCopy;
  v12 = objectCopy;
  v13 = imageCopy;
  v14 = wallpaperCopy;
  v15 = [v11 blockOperationWithBlock:&v18];
  [v15 setQueuePriority:{4, v18, v19, v20, v21, selfCopy}];
  [v15 setQualityOfService:17];
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v17 = [defaultScheduler performOperation:v15];
}

uint64_t __59__HFWallpaperManager__setWallpaper_image_forHomeKitObject___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) uniqueIdentifier];
  [v2 _setWallpaper:v3 image:v4 forHomeKitIdentifier:v5];

  [*(a1 + 32) _dispatchWallpaperChangedforHomeKitObjectAsync:*(a1 + 56)];
  result = +[HFUtilities isAMac];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);

    return [v7 _pruneUnusedWallpapers];
  }

  return result;
}

- (void)_setWallpaper:(id)wallpaper image:(id)image forHomeKitIdentifier:(id)identifier
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  identifierCopy = identifier;
  [(HFWallpaperManager *)self _setWallpaper:wallpaperCopy forHomeKitIdentifier:identifierCopy];
  if (imageCopy)
  {
    [(HFWallpaperManager *)self _setImageCacheForWallpaper:wallpaperCopy image:imageCopy forHomeKitIdentifier:identifierCopy];
  }
}

- (void)_setWallpaper:(id)wallpaper forHomeKitIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  identifierCopy = identifier;
  v8 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = wallpaperCopy;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Setting wallpaper %@ for HomeKit object %@", &v14, 0x16u);
  }

  wallpapersCache = [(HFWallpaperManager *)self wallpapersCache];
  [wallpapersCache setObject:wallpaperCopy forKey:identifierCopy];

  userDefaults = [(HFWallpaperManager *)self userDefaults];
  dictionaryRepresentation = [wallpaperCopy dictionaryRepresentation];
  uUIDString = [identifierCopy UUIDString];
  [userDefaults setObject:dictionaryRepresentation forKey:uUIDString];

  [(HFWallpaperManager *)self _logUserMetricsAfterSettingWallpaper];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setImageCacheForWallpaper:(id)wallpaper image:(id)image forHomeKitIdentifier:(id)identifier
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  imageCache = [(HFWallpaperManager *)self imageCache];
  [imageCache saveVariantsForWallpaper:wallpaperCopy originalImage:imageCopy];

  v10 = MEMORY[0x277CCA8C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HFWallpaperManager__setImageCacheForWallpaper_image_forHomeKitIdentifier___block_invoke;
  v16[3] = &unk_277DF32A8;
  v16[4] = self;
  v17 = imageCopy;
  v18 = wallpaperCopy;
  v11 = wallpaperCopy;
  v12 = imageCopy;
  v13 = [v10 blockOperationWithBlock:v16];
  [v13 setQueuePriority:0];
  [v13 setQualityOfService:17];
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v15 = [defaultScheduler performOperation:v13];
}

void __76__HFWallpaperManager__setImageCacheForWallpaper_image_forHomeKitIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileManager];
  [v2 saveOriginalImage:*(a1 + 40) forWallpaper:*(a1 + 48)];
}

- (void)_logUserMetricsAfterSettingWallpaper
{
  v18[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  userDefaults = [(HFWallpaperManager *)self userDefaults];
  v3 = [userDefaults persistentDomainForName:@"com.apple.Home.wallpaper"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HFWallpaperManager__logUserMetricsAfterSettingWallpaper__block_invoke;
  v8[3] = &unk_277E01630;
  v8[4] = &v13;
  v8[5] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];

  v17[0] = @"NamedWallpaperCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v14[3]];
  v17[1] = @"CustomWallpaperCount";
  v18[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v10[3]];
  v18[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  [HFAnalytics sendEvent:32 withData:v6];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__HFWallpaperManager__logUserMetricsAfterSettingWallpaper__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v10 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [[HFWallpaper alloc] initWithDictionary:v6];
    v8 = [(HFWallpaper *)v7 type];
    if (v8 <= 6)
    {
      v9 = *(*(a1 + qword_20DD97900[v8]) + 8);
      ++*(v9 + 24);
    }
  }
}

- (void)_dispatchWallpaperChangedforHomeKitObjectAsync:(id)async
{
  asyncCopy = async;
  if (+[HFUtilities isInternalTest])
  {
    [(HFWallpaperManager *)self _dispatchWallpaperChangedforHomeKitObject:asyncCopy];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__HFWallpaperManager__dispatchWallpaperChangedforHomeKitObjectAsync___block_invoke;
    v5[3] = &unk_277DF3370;
    v5[4] = self;
    v6 = asyncCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)_dispatchWallpaperChangedforHomeKitObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HFWallpaperManager__dispatchWallpaperChangedforHomeKitObject___block_invoke;
    v16[3] = &unk_277DF2CB8;
    v6 = &v17;
    v17 = v4;
    v7 = v4;
    v8 = v16;
LABEL_5:
    [v5 dispatchHomeObserverMessage:v8 sender:{0, v11, v12, v13, v14}];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __64__HFWallpaperManager__dispatchWallpaperChangedforHomeKitObject___block_invoke_2;
    v14 = &unk_277DF2CB8;
    v6 = &v15;
    v15 = v9;
    v10 = v9;
    v8 = &v11;
    goto LABEL_5;
  }

LABEL_6:
}

void __64__HFWallpaperManager__dispatchWallpaperChangedforHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidUpdateWallpaper:*(a1 + 32)];
  }
}

void __64__HFWallpaperManager__dispatchWallpaperChangedforHomeKitObject___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateWallpaperForRoom:*(a1 + 32)];
  }
}

- (void)_pruneUnusedWallpapers
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v3 allHomesFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke;
  v6[3] = &unk_277DF9508;
  v6[4] = self;
  v5 = [allHomesFuture addSuccessBlock:v6];
}

void __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a2;
  v5 = [v3 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_2;
  v14[3] = &unk_277E01608;
  v6 = v5;
  v15 = v6;
  [v4 na_each:v14];

  v7 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_4;
  v12[3] = &unk_277DF3370;
  v12[4] = *(a1 + 32);
  v13 = v6;
  v8 = v6;
  v9 = [v7 blockOperationWithBlock:v12];
  [v9 setQueuePriority:-8];
  [v9 setQualityOfService:9];
  v10 = [MEMORY[0x277D0F8F0] defaultScheduler];
  v11 = [v10 performOperation:v9];
}

void __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v6 copy];
  [v3 addObject:v7];

  v8 = [v4 hf_allRooms];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_3;
  v9[3] = &unk_277E015E0;
  v10 = *(a1 + 32);
  [v8 na_each:v9];
}

void __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 uniqueIdentifier];
  v3 = [v5 UUIDString];
  v4 = [v3 copy];
  [v2 addObject:v4];
}

uint64_t __44__HFWallpaperManager__pruneUnusedWallpapers__block_invoke_4(uint64_t a1)
{
  v2 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Pruning unused wallpapers...", v4, 2u);
  }

  return [*(a1 + 32) _pruneUnusedWallpapersWithExistingHomeKitIdentifiers:*(a1 + 40)];
}

- (void)_pruneUnusedWallpapersWithExistingHomeKitIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  userDefaults = [(HFWallpaperManager *)self userDefaults];
  v7 = [userDefaults persistentDomainForName:@"com.apple.Home.wallpaper"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HFWallpaperManager__pruneUnusedWallpapersWithExistingHomeKitIdentifiers___block_invoke;
  v12[3] = &unk_277E01658;
  v13 = identifiersCopy;
  v14 = array;
  selfCopy = self;
  v8 = array;
  v9 = identifiersCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];

  fileManager = [(HFWallpaperManager *)self fileManager];
  [fileManager pruneUnusedOriginalWallpaperImages:v8];

  imageCache = [(HFWallpaperManager *)self imageCache];
  [imageCache pruneUnusedWallpaperVariants:v8];
}

void __75__HFWallpaperManager__pruneUnusedWallpapersWithExistingHomeKitIdentifiers___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  if (v7)
  {
    if ([a1[4] containsObject:v5])
    {
      objc_opt_class();
      v8 = v6;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v11 = [[HFWallpaper alloc] initWithDictionary:v10];
        [a1[5] na_safeAddObject:v11];
      }
    }

    else
    {
      v12 = [a1[6] wallpapersCache];
      v13 = [v12 objectForKey:v7];

      if (v13)
      {
        v14 = [a1[6] wallpapersCache];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __75__HFWallpaperManager__pruneUnusedWallpapersWithExistingHomeKitIdentifiers___block_invoke_2;
        v17[3] = &unk_277DFCC78;
        v18 = v7;
        v15 = v5;
        v16 = a1[6];
        v19 = v15;
        v20 = v16;
        [v14 performBlockWithWriteLock:v17];
      }
    }
  }
}

void __75__HFWallpaperManager__pruneUnusedWallpapersWithExistingHomeKitIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Pruning wallpaper data for unknown HomeKit identifier %@", &v9, 0xCu);
  }

  v7 = [*(a1 + 48) userDefaults];
  [v7 removeObjectForKey:*(a1 + 40)];

  if (v4)
  {
    [v3 removeObjectForKey:*(a1 + 32)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_cachedWallpaperForKey:(id)key
{
  keyCopy = key;
  wallpapersCache = [(HFWallpaperManager *)self wallpapersCache];
  v6 = [wallpapersCache objectForKey:keyCopy];

  return v6;
}

- (id)_wallpaperForHomeKitObject:(id)object createIfNeeded:(BOOL)needed
{
  objectCopy = object;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__25;
  v22 = __Block_byref_object_dispose__25;
  wallpapersCache = [(HFWallpaperManager *)self wallpapersCache];
  uniqueIdentifier = [objectCopy uniqueIdentifier];
  v23 = [wallpapersCache tryObjectForKey:uniqueIdentifier];

  v9 = v19[5];
  if (!v9)
  {
    wallpapersCache2 = [(HFWallpaperManager *)self wallpapersCache];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__HFWallpaperManager__wallpaperForHomeKitObject_createIfNeeded___block_invoke;
    v13[3] = &unk_277E01680;
    v16 = &v18;
    v14 = objectCopy;
    selfCopy = self;
    neededCopy = needed;
    [wallpapersCache2 performBlockWithWriteLock:v13];

    v9 = v19[5];
  }

  v11 = v9;
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __64__HFWallpaperManager__wallpaperForHomeKitObject_createIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_24;
  }

  v7 = [*(a1 + 40) userDefaults];
  v8 = [*(a1 + 32) uniqueIdentifier];
  v9 = [v8 UUIDString];
  v10 = [v7 dictionaryForKey:v9];

  if (v10)
  {
    v11 = [[HFWallpaper alloc] initWithDictionary:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_10;
    }

    v14 = [*(a1 + 40) fileManager];
    v15 = [v14 originalImageExistsForWallpaper:*(*(*(a1 + 48) + 8) + 40)];

    if (v15)
    {
      goto LABEL_14;
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = HFLogForCategory(0x4EuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(*(a1 + 48) + 8) + 40);
        v48 = 138412290;
        v49 = v17;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Unable to locate original image for wallpaper %@", &v48, 0xCu);
      }
    }

    else
    {
LABEL_10:
      v16 = HFLogForCategory(0x4EuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v46 = [*(a1 + 32) uniqueIdentifier];
        v47 = [v46 UUIDString];
        v48 = 138412546;
        v49 = v47;
        v50 = 2112;
        v51 = v10;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Failed to create wallpaper for HomeKit identifier %@ from dict %@", &v48, 0x16u);
      }
    }

    v23 = [*(a1 + 40) userDefaults];
    v24 = [*(a1 + 32) uniqueIdentifier];
    v25 = [v24 UUIDString];
    [v23 removeObjectForKey:v25];

    v26 = *(*(a1 + 48) + 8);
    v18 = *(v26 + 40);
    *(v26 + 40) = 0;
  }

  else
  {
    v18 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) uniqueIdentifier];
      v20 = [v19 UUIDString];
      v21 = [*(a1 + 40) userDefaults];
      v22 = [v21 dictionaryRepresentation];
      v48 = 138412546;
      v49 = v20;
      v50 = 2112;
      v51 = v22;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "No content in user default for HomeKit identifier %@. \nCurrent Content of user default %@", &v48, 0x16u);
    }
  }

LABEL_14:
  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
  {
    v27 = *(a1 + 32);
    objc_opt_class();
    v28 = [*(a1 + 40) defaultWallpaperForCollectionType:(objc_opt_isKindOfClass() & 1) == 0];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 48) + 8) + 40);
      v33 = *(a1 + 32);
      v48 = 138412546;
      v49 = v32;
      v50 = 2112;
      v51 = v33;
      _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Using default wallpaper %@ for HomeKit object %@", &v48, 0x16u);
    }

    v34 = [*(a1 + 40) userDefaults];
    v35 = [*(*(*(a1 + 48) + 8) + 40) dictionaryRepresentation];
    v36 = [*(a1 + 32) uniqueIdentifier];
    v37 = [v36 UUIDString];
    [v34 setObject:v35 forKey:v37];

    if ([*(*(*(a1 + 48) + 8) + 40) type] != 1 && objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "type") != 6)
    {
      v38 = [*(a1 + 40) namedWallpaperSource];
      v39 = [v38 imageForWallpaper:*(*(*(a1 + 48) + 8) + 40)];

      v40 = *(a1 + 40);
      v41 = *(*(*(a1 + 48) + 8) + 40);
      v42 = [*(a1 + 32) uniqueIdentifier];
      [v40 _setImageCacheForWallpaper:v41 image:v39 forHomeKitIdentifier:v42];
    }

    [*(a1 + 40) _dispatchWallpaperChangedforHomeKitObjectAsync:*(a1 + 32)];
    if (!+[HFUtilities isAMac])
    {
      [*(a1 + 40) _pruneUnusedWallpapers];
    }
  }

  v43 = *(*(*(a1 + 48) + 8) + 40);
  v44 = [*(a1 + 32) uniqueIdentifier];
  [v3 na_safeSetObject:v43 forKey:v44];

LABEL_24:
  v45 = *MEMORY[0x277D85DE8];
}

- (void)_preloadWallpaperForHomeKitObject:(id)object
{
  objectCopy = object;
  v5 = MEMORY[0x277CCA8C8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__HFWallpaperManager__preloadWallpaperForHomeKitObject___block_invoke;
  v13 = &unk_277DF3370;
  v14 = objectCopy;
  selfCopy = self;
  v6 = objectCopy;
  v7 = [v5 blockOperationWithBlock:&v10];
  [v7 setQueuePriority:{4, v10, v11, v12, v13}];
  [v7 setQualityOfService:33];
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v9 = [defaultScheduler performOperation:v7];
}

void __56__HFWallpaperManager__preloadWallpaperForHomeKitObject___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uniqueIdentifier];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Preloading wallpaper slices for key: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) wallpaperForHomeKitObject:*(a1 + 32) dispatchToMainOnComplete:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HFWallpaperManager__preloadWallpaperForHomeKitObject___block_invoke_54;
  v7[3] = &unk_277E016A8;
  v7[4] = *(a1 + 40);
  v5 = [v4 addSuccessBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_originalImageForWallpaper:(id)wallpaper forProcessingGenerator:(BOOL)generator
{
  wallpaperCopy = wallpaper;
  v7 = wallpaperCopy;
  if (!generator && [wallpaperCopy type] == 6)
  {
    v8 = [HFWallpaper alloc];
    assetIdentifier = [v7 assetIdentifier];
    cropInfo = [v7 cropInfo];
    v11 = [(HFWallpaper *)v8 initWithType:1 assetIdentifier:assetIdentifier cropInfo:cropInfo];

    v7 = v11;
  }

  fileManager = [(HFWallpaperManager *)self fileManager];
  v13 = [fileManager originalImageExistsForWallpaper:v7];

  if (v13)
  {
    fileManager2 = [(HFWallpaperManager *)self fileManager];
    v15 = [fileManager2 originalImageForWallpaper:v7];

    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (![v7 type] || objc_msgSend(v7, "type") == 2 || objc_msgSend(v7, "type") == 3 || objc_msgSend(v7, "type") == 4 || objc_msgSend(v7, "type") == 5)
  {
LABEL_12:
    v15 = [(HFWallpaperManager *)self _originalImageFromNamedWallpaperSourceForWallpaper:v7];
    goto LABEL_13;
  }

  NSLog(&cfstr_UnableToLoadOr_0.isa, v7);
  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_originalImageFromNamedWallpaperSourceForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  namedWallpaperSource = [(HFWallpaperManager *)self namedWallpaperSource];
  v6 = [namedWallpaperSource imageForWallpaper:wallpaperCopy];

  assetIdentifier = [wallpaperCopy assetIdentifier];
  v8 = [assetIdentifier containsString:@"_Thumbnail"];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCA8C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HFWallpaperManager__originalImageFromNamedWallpaperSourceForWallpaper___block_invoke;
    v14[3] = &unk_277DF32A8;
    v14[4] = self;
    v15 = v6;
    v16 = wallpaperCopy;
    v10 = [v9 blockOperationWithBlock:v14];
    [v10 setQueuePriority:4];
    [v10 setQualityOfService:17];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v12 = [defaultScheduler performOperation:v10];
  }

  return v6;
}

void __73__HFWallpaperManager__originalImageFromNamedWallpaperSourceForWallpaper___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileManager];
  [v2 saveOriginalImage:*(a1 + 40) forWallpaper:*(a1 + 48)];
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v4 home];

  if (home)
  {
    [(HFWallpaperManager *)self _migrateToSunriseWallpaperIfNeeded];
    [(HFWallpaperManager *)self _preloadWallpaperForHomeKitObject:home];
  }
}

@end