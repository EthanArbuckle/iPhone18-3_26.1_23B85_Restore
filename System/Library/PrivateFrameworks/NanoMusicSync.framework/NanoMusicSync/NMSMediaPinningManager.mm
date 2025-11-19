@interface NMSMediaPinningManager
+ (BOOL)_playlistPIDValidForPinning:(id)a3;
+ (id)_cachedAlbumIdentifiersFilePath;
+ (id)_cachedAudiobookIdentifiersFilePath;
+ (id)_cachedIdentifiersDirectoryPath;
+ (id)_cachedPlaylistIdentifiersFilePath;
+ (id)_fetchMusicRecommendations;
+ (id)_tokenForInstance:(id)a3;
+ (id)sharedManager;
+ (unint64_t)_mediaStorageSizeForCurrentDevice;
+ (void)_mediaStorageSizeForCurrentDevice;
+ (void)_persistNewClientToken;
- (BOOL)_deviceSupportsPodcastsPinningSettingsV2;
- (BOOL)_isAlbumPinned:(id)a3;
- (BOOL)_isAudiobookPinned:(id)a3;
- (BOOL)_isPlaylistPinned:(id)a3;
- (BOOL)_legacy_musicIsOutOfSpace;
- (BOOL)_shouldCalculateCachedIdentifiers;
- (BOOL)_shouldSkipQuotaManagerEvaluation;
- (BOOL)isAlbumPinned:(id)a3;
- (BOOL)isAudiobookPinned:(id)a3;
- (BOOL)isItemGroupWithinQuota:(id)a3;
- (BOOL)isPlaylistPinned:(id)a3;
- (BOOL)isReadingNowEnabled;
- (BOOL)isWantToReadEnabled;
- (BOOL)pinnedPodcastsAreUserSet;
- (BOOL)savedEpisodesEnabled;
- (NMSMediaDownloadInfo)downloadInfo;
- (NMSMediaPinningManager)init;
- (NMSPodcastsDownloadSettings)podcastsSavedEpisodesDownloadSettings;
- (NMSPodcastsDownloadSettings)podcastsUpNextDownloadSettings;
- (NSArray)albumIdentifiers;
- (NSArray)audiobookIdentifiers;
- (NSArray)pinnedAlbums;
- (NSArray)pinnedPlaylists;
- (NSArray)playlistIdentifiers;
- (NSArray)podcastFeedURLs;
- (NSArray)podcastStationUUIDs;
- (NSNumber)workoutPlaylistID;
- (NSOrderedSet)pinnedAudiobooks;
- (NSOrderedSet)readingNowAudiobooks;
- (NSOrderedSet)wantToReadAudiobooks;
- (NSSet)podcastsSelectedShowFeedURLs;
- (NSSet)podcastsSelectedStationUUIDs;
- (double)_audiobookDownloadLimit;
- (double)audiobookDownloadLimit;
- (id)_newAudiobooksEnumeratorWithDownloadedItemsOnly:(BOOL)a3;
- (id)_newMusicEnumeratorWithDownloadedItemsOnly:(BOOL)a3;
- (id)downloadInfoForBundleIdentifier:(id)a3;
- (id)downloadInfoWithinAvailableSpace:(unint64_t)a3;
- (id)podcastsDownloadSettingsForShowFeedURL:(id)a3;
- (id)podcastsDownloadSettingsForStationUUID:(id)a3;
- (unint64_t)_mediaQuota;
- (void)_fetchAudiobooksIdentifiers;
- (void)_fetchMusicIdentifiers;
- (void)_handleAudiobooksPinningSelectionsDidChangeNotification:(id)a3;
- (void)_handleAudiobooksRecommendationsDidChangeNotification:(id)a3;
- (void)_handleICAgeVerificationStateDidChangeNotification:(id)a3;
- (void)_handleMediaLibraryDidChangeNotification:(id)a3;
- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)a3;
- (void)_handleMediaPinningAudiobooksContentsInvalidatedNotification:(id)a3;
- (void)_handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification:(id)a3;
- (void)_handleMediaPinningManagerMusicIdentifiersDidChangeNotification:(id)a3;
- (void)_handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification:(id)a3;
- (void)_handleMediaPinningMusicContentsInvalidatedNotification:(id)a3;
- (void)_handleMediaPinningPodcastsContentsInvalidatedNotification:(id)a3;
- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)a3;
- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)a3;
- (void)_handlePodcastSizeInfoDidChangeNotification:(id)a3;
- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)a3;
- (void)_handleRecommendationLibraryContentsDidChangeNotification:(id)a3;
- (void)_handleRecommendationSelectionsDidChangeNotification:(id)a3;
- (void)_handleRecommendationsDidUpdateNotification:(id)a3;
- (void)_invalidateAddedItemsCache;
- (void)_invalidateMediaCacheForAppIdentifiers:(unint64_t)a3;
- (void)_legacy_refreshAudiobooksIdentifiers;
- (void)_legacy_refreshMusicIdentifiers;
- (void)_legacy_refreshPodcastsIdentifiers;
- (void)_notePinningSettingsChangedLocally;
- (void)_refreshAudiobooksIdentifiers;
- (void)_refreshMusicIdentifiers;
- (void)_refreshPodcastsIdentifiers;
- (void)_setWorkoutPlaylistID:(id)a3;
- (void)_updateWorkoutSettingsPlaylistPIDTo:(id)a3;
- (void)dealloc;
- (void)downloadableContentProviderDidChangeContent:(id)a3;
- (void)extensionAccessDidChange;
- (void)invalidateAudiobooksCache;
- (void)invalidateMusicCache;
- (void)invalidatePodcastsCache;
- (void)pinAlbum:(id)a3 completionHandler:(id)a4;
- (void)pinAudiobook:(id)a3;
- (void)pinPlaylist:(id)a3 completionHandler:(id)a4;
- (void)pinPodcastStationWithUUID:(id)a3;
- (void)pinPodcastWithFeedURL:(id)a3;
- (void)podcastsDownloadableContentControllerContentDidChange:(id)a3;
- (void)setAudiobookDownloadLimit:(double)a3;
- (void)setAvailableSpace:(unint64_t)a3;
- (void)setPinnedPodcastsAreUserSet:(BOOL)a3;
- (void)setPodcastsDownloadSettings:(id)a3 forShowFeedURL:(id)a4;
- (void)setPodcastsDownloadSettings:(id)a3 forStationUUID:(id)a4;
- (void)setPodcastsSavedEpisodesDownloadSettings:(id)a3;
- (void)setPodcastsUpNextDownloadSettings:(id)a3;
- (void)setReadingNowAudiobooks:(id)a3;
- (void)setReadingNowEnabled:(BOOL)a3;
- (void)setSavedEpisodesEnabled:(BOOL)a3;
- (void)setWantToReadAudiobooks:(id)a3;
- (void)setWantToReadEnabled:(BOOL)a3;
- (void)setWorkoutPlaylistID:(id)a3;
- (void)unpinAlbum:(id)a3 completionHandler:(id)a4;
- (void)unpinAudiobook:(id)a3;
- (void)unpinPlaylist:(id)a3 completionHandler:(id)a4;
- (void)unpinPodcastStationWithUUID:(id)a3;
- (void)unpinPodcastWithFeedURL:(id)a3;
@end

@implementation NMSMediaPinningManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NMSMediaPinningManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager___sharedMananger;

  return v2;
}

uint64_t __39__NMSMediaPinningManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager___sharedMananger = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NMSMediaPinningManager)init
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = NMSMediaPinningManager;
  v2 = [(NMSMediaPinningManager *)&v25 init];
  if (v2)
  {
    v3 = +[NMSyncDefaults sharedDefaults];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.NanoMusicSync.MediaPinning", v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    if ([(NMSMediaPinningManager *)v2 _shouldCalculateCachedIdentifiers]|| ![(NMSMediaPinningManager *)v2 _shouldSkipQuotaManagerEvaluation])
    {
      if ([(NMSMediaPinningManager *)v2 _deviceSupportsPodcastsPinningSettingsV2])
      {
        v12 = objc_alloc_init(NMSPodcastsDownloadableContentProvider);
        podcastsDownloadableContentProvider = v2->_podcastsDownloadableContentProvider;
        v2->_podcastsDownloadableContentProvider = v12;

        [(NMSPodcastsDownloadableContentProvider *)v2->_podcastsDownloadableContentProvider setDelegate:v2];
LABEL_10:
        [v8 addObserver:v2 selector:sel__handlePodcastsPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.podcasts-pinning-selections" object:0];
        [v8 addObserver:v2 selector:sel__handleMusicPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.music-pinning-selections" object:0];
        [v8 addObserver:v2 selector:sel__handleRecommendationLibraryContentsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-library" object:0];
        [v8 addObserver:v2 selector:sel__handleRecommendationsDidUpdateNotification_ name:@"NMSMusicRecommendationsDidUpdateNotification" object:0];
        [v8 addObserver:v2 selector:sel__handleAudiobooksPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.audiobooks-pinning-selections" object:0];
        [v8 addObserver:v2 selector:sel__handleAudiobooksRecommendationsDidChangeNotification_ name:@"com.apple.nanomusicsync.audiobooks-recommendations" object:0];
        [v8 addObserver:v2 selector:sel__handleICAgeVerificationStateDidChangeNotification_ name:*MEMORY[0x277D7F8D0] object:0];
        [v8 addObserver:v2 selector:sel__handleRecommendationSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-selections" object:0];
        [v8 addObserver:v2 selector:sel__handlePairedDeviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
        [v8 addObserver:v2 selector:sel__handleMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
        [v8 addObserver:v2 selector:sel__handleMediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
        v16 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        [v16 beginGeneratingLibraryChangeNotifications];

        v17 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v17 addObserver:v2 selector:sel__handleMediaPinningMusicContentsInvalidatedNotification_ name:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:0];

        v18 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v18 addObserver:v2 selector:sel__handleMediaPinningPodcastsContentsInvalidatedNotification_ name:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:0];

        v19 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v19 addObserver:v2 selector:sel__handleMediaPinningAudiobooksContentsInvalidatedNotification_ name:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:0];

        v20 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v20 addObserver:v2 selector:sel__handleMediaPinningManagerMusicIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:0];

        v21 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v21 addObserver:v2 selector:sel__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];

        v22 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v22 addObserver:v2 selector:sel__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:0];

        goto LABEL_11;
      }

      v14 = objc_alloc_init(NMSPodcastsDownloadableContentController_Legacy);
      legacy_podcastsDownloadableContentController = v2->_legacy_podcastsDownloadableContentController;
      v2->_legacy_podcastsDownloadableContentController = v14;

      [(NMSPodcastsDownloadableContentController_Legacy *)v2->_legacy_podcastsDownloadableContentController setDelegate:v2];
      v9 = [MEMORY[0x277D3DAF0] sharedInstance];
      [v9 addObserver:v2];
    }

    else
    {
      v9 = NMLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NMSMediaPinningManager *)v2 _shouldCalculateCachedIdentifiers];
        v11 = [(NMSMediaPinningManager *)v2 _shouldSkipQuotaManagerEvaluation];
        *buf = 67109376;
        v27 = v10;
        v28 = 1024;
        v29 = v11;
        _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "Not creating NMSPodcastsDownloadableContentProvider. _shouldCalculateCachedIdentifiers %x _shouldSkipQuotaManagerEvaluation %x", buf, 0xEu);
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NMSMediaPinningManager;
  [(NMSMediaPinningManager *)&v5 dealloc];
}

- (id)downloadInfoWithinAvailableSpace:(unint64_t)a3
{
  [(NMSMediaPinningManager *)self setAvailableSpace:a3];

  return [(NMSMediaPinningManager *)self downloadInfo];
}

- (void)setAvailableSpace:(unint64_t)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__NMSMediaPinningManager_setAvailableSpace___block_invoke;
  v4[3] = &unk_27993E520;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(internalQueue, v4);
}

uint64_t __44__NMSMediaPinningManager_setAvailableSpace___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _mediaStorageSizeForCurrentDevice];
  v4 = *(a1 + 32);
  if (v3 >= *(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = v3;
  }

  result = [*(a1 + 32) _mediaQuota];
  if (result - v5 >= 0x4C4B41)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);

    return [v10 _invalidateAddedItemsCache];
  }

  return result;
}

- (NMSMediaDownloadInfo)downloadInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__NMSMediaPinningManager_downloadInfo__block_invoke_2;
    v7[3] = &unk_27993E410;
    v7[4] = self;
    v7[5] = &v9;
    v4 = v7;
  }

  else
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__NMSMediaPinningManager_downloadInfo__block_invoke;
    block[3] = &unk_27993E410;
    block[4] = self;
    block[5] = &v9;
    v4 = block;
  }

  dispatch_sync(internalQueue, v4);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __38__NMSMediaPinningManager_downloadInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  v7 = [v2 _legacy_quotaManagerWithDownloadedItemsOnly:{objc_msgSend(v3, "isCharging") ^ 1}];

  v4 = [v7 downloadInfoWithinQuota];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __38__NMSMediaPinningManager_downloadInfo__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  v7 = [v2 _quotaManagerWithDownloadedItemsOnly:{objc_msgSend(v3, "isCharging") ^ 1}];

  v4 = [v7 downloadInfoWithinQuota];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)downloadInfoForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  internalQueue = self->_internalQueue;
  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke_2;
    v11[3] = &unk_27993E548;
    v12 = v4;
    v13 = &v17;
    v11[4] = self;
    v7 = v4;
    dispatch_sync(internalQueue, v11);
    v8 = v18[5];
    v9 = v12;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke;
    block[3] = &unk_27993E548;
    v15 = v4;
    v16 = &v17;
    block[4] = self;
    v7 = v4;
    dispatch_sync(internalQueue, block);
    v8 = v18[5];
    v9 = v15;
  }

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v5 downloadInfoWithinQuotaForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) _quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v5 downloadInfoWithinQuotaForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isItemGroupWithinQuota:(id)a3
{
  v4 = a3;
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v5 = [(NMSMediaPinningManager *)self _quotaManagerWithDownloadedItemsOnly:0];
    v6 = [v5 downloadInfoWithinQuota];

    v7 = [[NMSItemGroupEnumerator alloc] initWithItemGroup:v4];
    v8 = [(NMSItemGroupEnumerator *)v7 nextItem];
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = [v6 containsItem:v9];
        v11 = v10;
        if (!v10)
        {
          break;
        }

        v12 = [(NMSItemGroupEnumerator *)v7 nextItem];

        v9 = v12;
      }

      while (v12);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NMSMediaPinningManager_isItemGroupWithinQuota___block_invoke;
    block[3] = &unk_27993E548;
    v17 = &v18;
    block[4] = self;
    v16 = v4;
    dispatch_sync(internalQueue, block);
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v11 & 1;
}

void __49__NMSMediaPinningManager_isItemGroupWithinQuota___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isItemGroupWithinQuota:*(a1 + 40)];
}

- (void)invalidateMusicCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NMSMediaPinningManager_invalidateMusicCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __46__NMSMediaPinningManager_invalidateMusicCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Music cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:1];
}

- (NSNumber)workoutPlaylistID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) workoutPlaylistID];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ((*(*(a1 + 32) + 113) & 1) == 0)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) longLongValue])
    {
      v6 = *(a1 + 32);
      if (([objc_opt_class() _playlistPIDValidForPinning:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
      {
        v7 = NMLogForCategory(5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke_cold_1(a1 + 40, v7, v8, v9, v10, v11, v12, v13);
        }

        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

        [*(a1 + 32) _setWorkoutPlaylistID:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    *(*(a1 + 32) + 113) = 1;
  }
}

- (void)invalidatePodcastsCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NMSMediaPinningManager_invalidatePodcastsCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __49__NMSMediaPinningManager_invalidatePodcastsCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Podcasts cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NMSPodcastsDownloadSettings)podcastsUpNextDownloadSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NMSMediaPinningManager_podcastsUpNextDownloadSettings__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__NMSMediaPinningManager_podcastsUpNextDownloadSettings__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsUpNextDownloadSettings"];
  v2 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:0 dictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPodcastsUpNextDownloadSettings:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NMSMediaPinningManager_setPodcastsUpNextDownloadSettings___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __60__NMSMediaPinningManager_setPodcastsUpNextDownloadSettings___block_invoke(uint64_t a1)
{
  v4 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:0 legacyDownloadSettings:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = [(NMSPodcastsDownloadSettings *)v4 dictionaryRepresentation];
  [v2 setObject:v3 forKey:@"PodcastsUpNextDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NMSPodcastsDownloadSettings)podcastsSavedEpisodesDownloadSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__NMSMediaPinningManager_podcastsSavedEpisodesDownloadSettings__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__NMSMediaPinningManager_podcastsSavedEpisodesDownloadSettings__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
  v2 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:1 dictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPodcastsSavedEpisodesDownloadSettings:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NMSMediaPinningManager_setPodcastsSavedEpisodesDownloadSettings___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __67__NMSMediaPinningManager_setPodcastsSavedEpisodesDownloadSettings___block_invoke(uint64_t a1)
{
  v4 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:1 legacyDownloadSettings:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = [(NMSPodcastsDownloadSettings *)v4 dictionaryRepresentation];
  [v2 setObject:v3 forKey:@"PodcastsSavedEpisodesDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (id)podcastsDownloadSettingsForStationUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NMSMediaPinningManager_podcastsDownloadSettingsForStationUUID___block_invoke;
  block[3] = &unk_27993E598;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__NMSMediaPinningManager_podcastsDownloadSettingsForStationUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v6 = [v2 objectForKey:a1[5]];

  v3 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setPodcastsDownloadSettings:(id)a3 forStationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forStationUUID___block_invoke;
  block[3] = &unk_27993E5C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forStationUUID___block_invoke(uint64_t a1)
{
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 legacyDownloadSettings:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = [(NMSPodcastsDownloadSettings *)v10 dictionaryRepresentation];
  [v6 setObject:v7 forKey:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  v9 = [v6 copy];
  [v8 setObject:v9 forKey:@"PodcastsStationDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NSSet)podcastsSelectedStationUUIDs
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    internalQueue = self->_internalQueue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_2;
    v12 = &unk_27993E570;
    v13 = self;
    v14 = v3;
    v5 = v3;
    dispatch_sync(internalQueue, &v9);
    v6 = [v5 copy];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = [MEMORY[0x277CBEB98] set];
    v7 = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke;
    block[3] = &unk_27993DCA8;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(v7, block);
    v6 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) pinnedPodcastStationUUIDs];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_3;
  v3[3] = &unk_27993E5E8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)podcastsDownloadSettingsForShowFeedURL:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NMSMediaPinningManager_podcastsDownloadSettingsForShowFeedURL___block_invoke;
  block[3] = &unk_27993E598;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__NMSMediaPinningManager_podcastsDownloadSettingsForShowFeedURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v6 = [v2 objectForKey:a1[5]];

  v3 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setPodcastsDownloadSettings:(id)a3 forShowFeedURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forShowFeedURL___block_invoke;
  block[3] = &unk_27993E5C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forShowFeedURL___block_invoke(uint64_t a1)
{
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 legacyDownloadSettings:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = [(NMSPodcastsDownloadSettings *)v10 dictionaryRepresentation];
  [v6 setObject:v7 forKey:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  v9 = [v6 copy];
  [v8 setObject:v9 forKey:@"PodcastsShowDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NSSet)podcastsSelectedShowFeedURLs
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    internalQueue = self->_internalQueue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_2;
    v12 = &unk_27993E570;
    v13 = self;
    v14 = v3;
    v5 = v3;
    dispatch_sync(internalQueue, &v9);
    v6 = [v5 copy];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = [MEMORY[0x277CBEB98] set];
    v7 = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke;
    block[3] = &unk_27993DCA8;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(v7, block);
    v6 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) pinnedPodcastFeedURLs];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_3;
  v3[3] = &unk_27993E5E8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (BOOL)pinnedPodcastsAreUserSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NMSMediaPinningManager_pinnedPodcastsAreUserSet__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__NMSMediaPinningManager_pinnedPodcastsAreUserSet__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPinnedPodcastsAreUserSet:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NMSMediaPinningManager_setPinnedPodcastsAreUserSet___block_invoke;
  v4[3] = &unk_27993E610;
  v5 = a3;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

uint64_t __54__NMSMediaPinningManager_setPinnedPodcastsAreUserSet___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new pinned podcasts are user set value %x", v7, 8u);
    }

    [*(*(a1 + 32) + 8) setPinnedPodcastsAreUserSet:*(a1 + 40)];
    result = [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)savedEpisodesEnabled
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v3 = [(NMSMediaPinningManager *)self podcastsSavedEpisodesDownloadSettings];
    v4 = [v3 isEnabled];

    return v4;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    internalQueue = self->_internalQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__NMSMediaPinningManager_savedEpisodesEnabled__block_invoke;
    v8[3] = &unk_27993E410;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(internalQueue, v8);
    v7 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v7;
  }
}

uint64_t __46__NMSMediaPinningManager_savedEpisodesEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  if (result)
  {
    result = [*(*(a1 + 32) + 8) savedEpisodesEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setSavedEpisodesEnabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NMSMediaPinningManager_setSavedEpisodesEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  v5 = a3;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

uint64_t __50__NMSMediaPinningManager_setSavedEpisodesEnabled___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) savedEpisodesEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new saved episodes enabled value %x", v7, 8u);
    }

    [*(*(a1 + 32) + 8) setSavedEpisodesEnabled:*(a1 + 40)];
    result = [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)podcastFeedURLs
{
  v2 = [(NMSMediaPinningManager *)self podcastsSelectedShowFeedURLs];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)podcastStationUUIDs
{
  v2 = [(NMSMediaPinningManager *)self podcastsSelectedStationUUIDs];
  v3 = [v2 allObjects];

  return v3;
}

- (void)_refreshPodcastsIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    obj = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsUpNextDownloadSettings"];
    v3 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
    v4 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsStationDownloadSettings"];
    v5 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsShowDownloadSettings"];
    p_cachedUpNextDownloadSettings = &self->_cachedUpNextDownloadSettings;
    v7 = self->_cachedUpNextDownloadSettings;
    v8 = v7;
    if (v7 == obj)
    {
      HIDWORD(v22) = 0;
    }

    else
    {
      HIDWORD(v22) = [(NSDictionary *)v7 isEqual:?]^ 1;
    }

    p_cachedSavedEpisodesDownloadSettings = &self->_cachedSavedEpisodesDownloadSettings;
    v10 = self->_cachedSavedEpisodesDownloadSettings;
    v11 = v10;
    if (v10 == v3)
    {
      LODWORD(v22) = 0;
    }

    else
    {
      LODWORD(v22) = [(NSDictionary *)v10 isEqual:v3]^ 1;
    }

    p_cachedStationDownloadSettings = &self->_cachedStationDownloadSettings;
    v13 = self->_cachedStationDownloadSettings;
    v14 = v13;
    if (v13 == v4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(NSDictionary *)v13 isEqual:v4]^ 1;
    }

    cachedShowDownloadSettings = self->_cachedShowDownloadSettings;
    p_cachedShowDownloadSettings = &self->_cachedShowDownloadSettings;
    v18 = cachedShowDownloadSettings;
    v19 = v18;
    if (v18 == v5)
    {
      v20 = 0;
    }

    else
    {
      v20 = [(NSDictionary *)v18 isEqual:v5]^ 1;
    }

    objc_storeStrong(p_cachedUpNextDownloadSettings, obj);
    objc_storeStrong(p_cachedSavedEpisodesDownloadSettings, v3);
    objc_storeStrong(p_cachedStationDownloadSettings, v4);
    objc_storeStrong(p_cachedShowDownloadSettings, v5);
    if (((HIDWORD(v22) | v22 | v15) & 1) != 0 || v20)
    {
      v21 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v21 postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];
    }
  }

  else
  {

    [(NMSMediaPinningManager *)self _legacy_refreshPodcastsIdentifiers];
  }
}

- (void)pinPodcastWithFeedURL:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NMSMediaPinningManager_pinPodcastWithFeedURL___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __48__NMSMediaPinningManager_pinPodcastWithFeedURL___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning podcast <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastFeedURLs];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastFeedURLs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unpinPodcastWithFeedURL:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_unpinPodcastWithFeedURL___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_unpinPodcastWithFeedURL___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning podcast <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastFeedURLs];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastFeedURLs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pinPodcastStationWithUUID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NMSMediaPinningManager_pinPodcastStationWithUUID___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __52__NMSMediaPinningManager_pinPodcastStationWithUUID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning podcast station <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastStationUUIDs];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastStationUUIDs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unpinPodcastStationWithUUID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NMSMediaPinningManager_unpinPodcastStationWithUUID___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __54__NMSMediaPinningManager_unpinPodcastStationWithUUID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning podcast station <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastStationUUIDs];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastStationUUIDs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAudiobooksCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NMSMediaPinningManager_invalidateAudiobooksCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __51__NMSMediaPinningManager_invalidateAudiobooksCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Audiobooks cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
}

- (NSArray)audiobookIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_audiobookIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_audiobookIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[13])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshAudiobooksIdentifiers];
    }

    else
    {
      [v4 _fetchAudiobooksIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 104);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)_fetchAudiobooksIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Failed to unarchive cached audiobookIdentifiers due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_refreshAudiobooksIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Failed to archive audiobookIdentifiers due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWantToReadEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_isWantToReadEnabled__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__NMSMediaPinningManager_isWantToReadEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) wantToReadEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setWantToReadEnabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSMediaPinningManager_setWantToReadEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  v5 = a3;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

uint64_t __47__NMSMediaPinningManager_setWantToReadEnabled___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) wantToReadEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new wantToReadEnabled value: %x", v7, 8u);
    }

    [*(*(a1 + 32) + 8) setWantToReadEnabled:*(a1 + 40)];
    result = [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSOrderedSet)wantToReadAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_wantToReadAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_wantToReadAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) wantToReadAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setWantToReadAudiobooks:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_setWantToReadAudiobooks___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_setWantToReadAudiobooks___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) array];
  v3 = [*(*(a1 + 40) + 8) wantToReadAudiobooks];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting wantToReadAudiobooks %{public}@", &v9, 0xCu);
      }

      [*(*(a1 + 40) + 8) setWantToReadAudiobooks:v2];
      if ([*(*(a1 + 40) + 8) wantToReadEnabled])
      {
        [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadingNowEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_isReadingNowEnabled__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__NMSMediaPinningManager_isReadingNowEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) readingNowEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setReadingNowEnabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSMediaPinningManager_setReadingNowEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  v5 = a3;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

uint64_t __47__NMSMediaPinningManager_setReadingNowEnabled___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) readingNowEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new readingNowEnabled value: %x", v7, 8u);
    }

    [*(*(a1 + 32) + 8) setReadingNowEnabled:*(a1 + 40)];
    result = [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSOrderedSet)readingNowAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_readingNowAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_readingNowAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) readingNowAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setReadingNowAudiobooks:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_setReadingNowAudiobooks___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_setReadingNowAudiobooks___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) array];
  v3 = [*(*(a1 + 40) + 8) readingNowAudiobooks];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting readingNowAudiobooks %{public}@", &v9, 0xCu);
      }

      [*(*(a1 + 40) + 8) setReadingNowAudiobooks:v2];
      if ([*(*(a1 + 40) + 8) readingNowEnabled])
      {
        [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSOrderedSet)pinnedAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSMediaPinningManager_pinnedAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__NMSMediaPinningManager_pinnedAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) pinnedAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isAudiobookPinned:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NMSMediaPinningManager_isAudiobookPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __44__NMSMediaPinningManager_isAudiobookPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAudiobookPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)pinAudiobook:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NMSMediaPinningManager_pinAudiobook___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __39__NMSMediaPinningManager_pinAudiobook___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning audiobook <%{public}@>", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAudiobooks];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  v6 = [v5 copy];
  [*(*(a1 + 40) + 8) setPinnedAudiobooks:v6];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)unpinAudiobook:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NMSMediaPinningManager_unpinAudiobook___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __41__NMSMediaPinningManager_unpinAudiobook___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning audiobook <%{public}@>", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAudiobooks];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  v6 = [v5 copy];
  [*(*(a1 + 40) + 8) setPinnedAudiobooks:v6];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
  v7 = *MEMORY[0x277D85DE8];
}

- (double)audiobookDownloadLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NMSMediaPinningManager_audiobookDownloadLimit__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__NMSMediaPinningManager_audiobookDownloadLimit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _audiobookDownloadLimit];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setAudiobookDownloadLimit:(double)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__NMSMediaPinningManager_setAudiobookDownloadLimit___block_invoke;
  v4[3] = &unk_27993E520;
  *&v4[5] = a3;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void __52__NMSMediaPinningManager_setAudiobookDownloadLimit___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) audiobookDownloadLimit];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v9 = 134217984;
        v10 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting new audiobookDownloadLimit value: %f", &v9, 0xCu);
      }

      [*(*(a1 + 32) + 8) setAudiobookDownloadLimit:v2];
      [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_tokenForInstance:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Instance";
  v9[1] = @"Date";
  v10[0] = a3;
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)_persistNewClientToken
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[NMSyncDefaults sharedDefaults];
  v4 = [v3 clientPinningSettingsToken];

  v5 = [v4 objectForKeyedSubscript:@"Instance"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "unsignedLongLongValue") + 1}];
  v7 = [a1 _tokenForInstance:v6];
  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Generated new syncState stateToken: %{public}@", &v11, 0xCu);
  }

  v9 = +[NMSyncDefaults sharedDefaults];
  [v9 setClientPinningSettingsToken:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notePinningSettingsChangedLocally
{
  v2 = objc_opt_class();

  [v2 _persistNewClientToken];
}

- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NMSMediaPinningManager__handleMusicPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __77__NMSMediaPinningManager__handleMusicPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v11, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    result = [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    result = [v8 _invalidateMediaCacheForAppIdentifiers:1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NMSMediaPinningManager__handlePodcastsPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __80__NMSMediaPinningManager__handlePodcastsPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v9, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _notePinningSettingsChangedLocally];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudiobooksPinningSelectionsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__NMSMediaPinningManager__handleAudiobooksPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __82__NMSMediaPinningManager__handleAudiobooksPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v11, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    result = [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    result = [v8 _invalidateMediaCacheForAppIdentifiers:4];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleAudiobooksRecommendationsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NMSMediaPinningManager__handleAudiobooksRecommendationsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __80__NMSMediaPinningManager__handleAudiobooksRecommendationsDidChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v11, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    result = [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    result = [v8 _invalidateMediaCacheForAppIdentifiers:4];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleRecommendationLibraryContentsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NMSMediaPinningManager__handleRecommendationLibraryContentsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __84__NMSMediaPinningManager__handleRecommendationLibraryContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleRecommendationsDidUpdateNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NMSMediaPinningManager__handleRecommendationsDidUpdateNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __70__NMSMediaPinningManager__handleRecommendationsDidUpdateNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleMediaLibraryDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NMSMediaPinningManager__handleMediaLibraryDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __67__NMSMediaPinningManager__handleMediaLibraryDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NMSMediaPinningManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __84__NMSMediaPinningManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handlePodcastSizeInfoDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NMSMediaPinningManager__handlePodcastSizeInfoDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __70__NMSMediaPinningManager__handlePodcastSizeInfoDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateAddedItemsCache];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleICAgeVerificationStateDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NMSMediaPinningManager__handleICAgeVerificationStateDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __77__NMSMediaPinningManager__handleICAgeVerificationStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleRecommendationSelectionsDidChangeNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NMSMediaPinningManager__handleRecommendationSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __79__NMSMediaPinningManager__handleRecommendationSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v9, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _notePinningSettingsChangedLocally];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NMSMediaPinningManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __73__NMSMediaPinningManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v6, 0xCu);
  }

  result = [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleMediaPinningMusicContentsInvalidatedNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchMusicIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningPodcastsContentsInvalidatedNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningAudiobooksContentsInvalidatedNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchAudiobooksIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerMusicIdentifiersDidChangeNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchMusicIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchAudiobooksIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)downloadableContentProviderDidChangeContent:(id)a3
{
  if (self->_podcastsDownloadableContentProvider == a3)
  {
    block[5] = v3;
    block[6] = v4;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__NMSMediaPinningManager_downloadableContentProviderDidChangeContent___block_invoke;
    block[3] = &unk_27993DD20;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (id)_newMusicEnumeratorWithDownloadedItemsOnly:(BOOL)a3
{
  v71 = a3;
  v94 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaPinningManager *)self _shouldIncludeMusicManualDownloadsInQuotaEvaluation])
  {
    v5 = [(NMSyncDefaults *)self->_sharedDefaults workoutPlaylistID];
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = v5;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) workoutPlaylistID: %{public}@", buf, 0xCu);
    }

    if ([v5 longLongValue])
    {
      v7 = [NMSItemGroupEnumerator alloc];
      v8 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:v5 downloadedItemsOnly:v71];
      v9 = [(NMSItemGroupEnumerator *)v7 initWithItemGroup:v8];
      [v4 addObject:v9];
    }

    v10 = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = v10;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedPlaylists %{public}@", buf, 0xCu);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v85;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v85 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v84 + 1) + 8 * i);
          v18 = [NMSItemGroupEnumerator alloc];
          v19 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:v17 downloadedItemsOnly:v71];
          v20 = [(NMSItemGroupEnumerator *)v18 initWithItemGroup:v19];
          [v4 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v14);
    }

    v21 = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
    v22 = NMLogForCategory(5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = v21;
      _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedAlbums %{public}@", buf, 0xCu);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v81;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v81 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v80 + 1) + 8 * j);
          v29 = [NMSItemGroupEnumerator alloc];
          v30 = [NMSMediaItemGroup itemGroupWithSyncedAlbumID:v28 downloadedItemsOnly:v71];
          v31 = [(NMSItemGroupEnumerator *)v29 initWithItemGroup:v30];
          [v4 addObject:v31];
        }

        v25 = [v23 countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v25);
    }
  }

  v32 = [objc_opt_class() _fetchMusicRecommendations];
  v33 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v32;
  v34 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v34)
  {
    v36 = v34;
    v37 = *v77;
    *&v35 = 138543362;
    v68 = v35;
    do
    {
      v38 = 0;
      do
      {
        if (*v77 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v76 + 1) + 8 * v38);
        v40 = [v39 identifier];
        if ([v40 isEqualToString:NMSRecommendationLibraryPinsIdentifier])
        {

LABEL_33:
          [v33 addObject:v39];
          goto LABEL_34;
        }

        v41 = [v39 identifier];
        v42 = [v41 isEqualToString:NMSRecommendationRecentMusicIdentifier];

        if (v42)
        {
          goto LABEL_33;
        }

        v43 = [v39 isSelected];
        v44 = NMLogForCategory(5);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        if (v43)
        {
          if (v45)
          {
            *buf = v68;
            v93 = v39;
            _os_log_impl(&dword_25B27B000, v44, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled store recommendation %{public}@", buf, 0xCu);
          }

          v46 = [NMSItemGroupEnumerator alloc];
          v47 = [NMSMediaItemGroup itemGroupWithRecommendation:v39 downloadedItemsOnly:v71];
          v48 = [(NMSItemGroupEnumerator *)v46 initWithItemGroup:v47];
          [v4 addObject:v48];
        }

        else
        {
          if (v45)
          {
            *buf = v68;
            v93 = v39;
            _os_log_impl(&dword_25B27B000, v44, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) NOT including disabled store recommendation %{public}@", buf, 0xCu);
          }
        }

LABEL_34:
        ++v38;
      }

      while (v36 != v38);
      v49 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
      v36 = v49;
    }

    while (v49);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v50 = v33;
  v51 = [v50 countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v51)
  {
    v53 = v51;
    v54 = *v73;
    *&v52 = 138543362;
    v69 = v52;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v73 != v54)
        {
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v72 + 1) + 8 * k);
        v57 = [v56 isSelected];
        v58 = NMLogForCategory(5);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        if (v57)
        {
          if (v59)
          {
            *buf = v69;
            v93 = v56;
            _os_log_impl(&dword_25B27B000, v58, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled recommendation %{public}@", buf, 0xCu);
          }

          v60 = [NMSItemGroupEnumerator alloc];
          v58 = [NMSMediaItemGroup itemGroupWithRecommendation:v56 downloadedItemsOnly:v71];
          v61 = [(NMSItemGroupEnumerator *)v60 initWithItemGroup:v58];
          [v4 addObject:v61];
        }

        else if (v59)
        {
          *buf = v69;
          v93 = v56;
          _os_log_impl(&dword_25B27B000, v58, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) NOT including disabled recommendation %{public}@", buf, 0xCu);
        }
      }

      v53 = [v50 countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v53);
  }

  v62 = [NMSSequentialItemEnumerator alloc];
  v63 = v4;
  v64 = [v4 copy];
  v65 = [(NMSSequentialItemEnumerator *)v62 initWithItemEnumerators:v64];

  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

- (id)_newAudiobooksEnumeratorWithDownloadedItemsOnly:(BOOL)a3
{
  v47 = a3;
  v65 = *MEMORY[0x277D85DE8];
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NMSyncDefaults *)self->_sharedDefaults wantToReadEnabled];
    v6 = [(NMSyncDefaults *)self->_sharedDefaults readingNowEnabled];
    *buf = 67109376;
    *v64 = v5;
    *&v64[4] = 1024;
    *&v64[6] = v6;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobooks containers) wantToReadEnabled: %x, readingNowEnabled: %x", buf, 0xEu);
  }

  v7 = [MEMORY[0x277CBEB18] array];
  [(NMSMediaPinningManager *)self _audiobookDownloadLimit];
  v9 = v8;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v43 = self;
  obj = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
  v10 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v57;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        v15 = [NMSItemGroupEnumerator alloc];
        v16 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v14 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:v47];
        v17 = [(NMSItemGroupEnumerator *)v15 initWithItemGroup:v16];
        [v7 addObject:v17];

        v18 = NMLogForCategory(5);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v64 = v14;
          _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding pinned audiobook %{public}@", buf, 0xCu);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v11);
  }

  v19 = v43;
  if ([(NMSyncDefaults *)v43->_sharedDefaults readingNowEnabled])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obja = [(NMSyncDefaults *)v43->_sharedDefaults readingNowAudiobooks];
    v20 = [obja countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v53;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v52 + 1) + 8 * j);
          v25 = [NMSItemGroupEnumerator alloc];
          v26 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v24 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:v47];
          v27 = [(NMSItemGroupEnumerator *)v25 initWithItemGroup:v26];
          [v7 addObject:v27];

          v28 = NMLogForCategory(5);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v64 = v24;
            _os_log_impl(&dword_25B27B000, v28, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding readingNow audiobook %{public}@", buf, 0xCu);
          }
        }

        v21 = [obja countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v21);
    }

    v19 = v43;
  }

  if ([(NMSyncDefaults *)v19->_sharedDefaults wantToReadEnabled])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    objb = [(NMSyncDefaults *)v19->_sharedDefaults wantToReadAudiobooks];
    v29 = [objb countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(objb);
          }

          v33 = *(*(&v48 + 1) + 8 * k);
          v34 = [NMSItemGroupEnumerator alloc];
          v35 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v33 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:v47];
          v36 = [(NMSItemGroupEnumerator *)v34 initWithItemGroup:v35];
          [v7 addObject:v36];

          v37 = NMLogForCategory(5);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v64 = v33;
            _os_log_impl(&dword_25B27B000, v37, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding wantToRead audiobook %{public}@", buf, 0xCu);
          }
        }

        v30 = [objb countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v30);
    }
  }

  v38 = [NMSSequentialItemEnumerator alloc];
  v39 = [v7 copy];
  v40 = [(NMSSequentialItemEnumerator *)v38 initWithItemEnumerators:v39];

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (BOOL)_shouldSkipQuotaManagerEvaluation
{
  if (_shouldSkipQuotaManagerEvaluation_onceToken != -1)
  {
    [NMSMediaPinningManager _shouldSkipQuotaManagerEvaluation];
  }

  return _shouldSkipQuotaManagerEvaluation_shouldSkipQuotaManagerEvaluation;
}

void __59__NMSMediaPinningManager__shouldSkipQuotaManagerEvaluation__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"bookdatastored"];
  v1 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.NanoNowPlaying", @"com.apple.SessionTrackerApp", @"com.apple.NanoSettings", @"com.apple.NanoMusic", @"com.apple.podcasts", @"com.apple.NanoBooks", 0}];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v1 containsObject:v3])
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 executableURL];
    v6 = [v5 lastPathComponent];
    v7 = [v0 containsObject:v6];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "_quotaManager not supported for this bundle identifier", buf, 2u);
  }

  _shouldSkipQuotaManagerEvaluation_shouldSkipQuotaManagerEvaluation = 1;
LABEL_7:
}

- (BOOL)_shouldCalculateCachedIdentifiers
{
  if (_shouldCalculateCachedIdentifiers_onceToken != -1)
  {
    [NMSMediaPinningManager _shouldCalculateCachedIdentifiers];
  }

  return _shouldCalculateCachedIdentifiers_shouldCalculateCachedIdentifiers;
}

void __59__NMSMediaPinningManager__shouldCalculateCachedIdentifiers__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _shouldCalculateCachedIdentifiers_shouldCalculateCachedIdentifiers = [v0 isEqualToString:@"com.apple.Bridge"];
}

- (void)_invalidateAddedItemsCache
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[QuotaManager Caching] NMSMediaPinningManager invalidating addedItemsCache. [Internal]", v8, 2u);
  }

  addedItemsQuotaManager = self->_addedItemsQuotaManager;
  self->_addedItemsQuotaManager = 0;

  downloadedItemsQuotaManager = self->_downloadedItemsQuotaManager;
  self->_downloadedItemsQuotaManager = 0;

  legacy_addedItemsQuotaManager = self->_legacy_addedItemsQuotaManager;
  self->_legacy_addedItemsQuotaManager = 0;

  legacy_downloadedItemsQuotaManager = self->_legacy_downloadedItemsQuotaManager;
  self->_legacy_downloadedItemsQuotaManager = 0;
}

- (void)_invalidateMediaCacheForAppIdentifiers:(unint64_t)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (![(NMSMediaPinningManager *)self _shouldSkipQuotaManagerEvaluation])
  {
    [(NMSMediaPinningManager *)self _invalidateAddedItemsCache];
    if ([(NMSMediaPinningManager *)self _shouldCalculateCachedIdentifiers])
    {
      if (v3)
      {
        v5 = NMLogForCategory(5);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Music cache. Refreshing playlists and albums [Internal]", buf, 2u);
        }

        [(NMSMediaPinningManager *)self _refreshMusicIdentifiers];
        v6 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v6 postNotificationName:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:0];

        if ((v3 & 2) == 0)
        {
LABEL_5:
          if ((v3 & 4) == 0)
          {
LABEL_16:
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__NMSMediaPinningManager__invalidateMediaCacheForAppIdentifiers___block_invoke;
            block[3] = &unk_27993DD20;
            block[4] = self;
            dispatch_async(MEMORY[0x277D85CD0], block);
            return;
          }

LABEL_13:
          v9 = NMLogForCategory(5);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Audiobooks cache. [Internal]", buf, 2u);
          }

          [(NMSMediaPinningManager *)self _refreshAudiobooksIdentifiers];
          v10 = [MEMORY[0x277CCA9A0] defaultCenter];
          [v10 postNotificationName:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:0];

          goto LABEL_16;
        }
      }

      else if ((v3 & 2) == 0)
      {
        goto LABEL_5;
      }

      v7 = NMLogForCategory(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Podcasts cache. Refreshing shows [Internal]", buf, 2u);
      }

      [(NMSMediaPinningManager *)self _refreshPodcastsIdentifiers];
      v8 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v8 postNotificationName:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:0];

      if ((v3 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }
}

void __65__NMSMediaPinningManager__invalidateMediaCacheForAppIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerDownloadInfoDidInvalidateNotification" object:*(a1 + 32)];
}

- (BOOL)_isAlbumPinned:(id)a3
{
  internalQueue = self->_internalQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v6 = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
  LOBYTE(internalQueue) = [v6 containsObject:v5];

  return internalQueue;
}

- (BOOL)_isPlaylistPinned:(id)a3
{
  internalQueue = self->_internalQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v6 = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
  LOBYTE(internalQueue) = [v6 containsObject:v5];

  return internalQueue;
}

- (BOOL)_isAudiobookPinned:(id)a3
{
  internalQueue = self->_internalQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v6 = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
  LOBYTE(internalQueue) = [v6 containsObject:v5];

  return internalQueue;
}

- (double)_audiobookDownloadLimit
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NMSyncDefaults *)self->_sharedDefaults audiobookDownloadLimit];
  if (v3)
  {
    v4 = [(NMSyncDefaults *)self->_sharedDefaults audiobookDownloadLimit];
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 18000.0;
  }

  return v6;
}

+ (id)_cachedPlaylistIdentifiersFilePath
{
  v2 = [a1 _cachedIdentifiersDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"playlists"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedAlbumIdentifiersFilePath
{
  v2 = [a1 _cachedIdentifiersDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"albums"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedAudiobookIdentifiersFilePath
{
  v2 = [a1 _cachedIdentifiersDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"audiobooks"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedIdentifiersDirectoryPath
{
  if (_cachedIdentifiersDirectoryPath_onceToken != -1)
  {
    +[NMSMediaPinningManager _cachedIdentifiersDirectoryPath];
  }

  v3 = _cachedIdentifiersDirectoryPath_path;

  return v3;
}

void __57__NMSMediaPinningManager__cachedIdentifiersDirectoryPath__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = CPSharedResourcesDirectory();
  v5[1] = @"Library";
  v5[2] = @"NanoMusicSync";
  v5[3] = @"CachedIdentifiers";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v1 = [MEMORY[0x277CCACA8] pathWithComponents:v0];
  v2 = _cachedIdentifiersDirectoryPath_path;
  _cachedIdentifiersDirectoryPath_path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:_cachedIdentifiersDirectoryPath_path withIntermediateDirectories:1 attributes:0 error:0];

  v4 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_mediaStorageSizeForCurrentDevice
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BC28]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedLongLongValue];
    _mediaStorageSizeForCurrentDevice_totalCapacity = v6;
  }

  else
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[NMSMediaPinningManager _mediaStorageSizeForCurrentDevice];
    }

    v6 = _mediaStorageSizeForCurrentDevice_totalCapacity;
  }

  v8 = 16000000000;
  if (v6 <= 0x3B9ACA000 && (v8 = 8000000000, v6 <= 0x1DCD65000))
  {
    v8 = _mediaStorageSizeForCurrentDevice_mediaStorageSize;
  }

  else
  {
    _mediaStorageSizeForCurrentDevice_mediaStorageSize = v8;
  }

  return v8;
}

- (unint64_t)_mediaQuota
{
  if (!self->_mediaQuota)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(objc_opt_class(), "_mediaStorageSizeForCurrentDevice")}];
    mediaQuota = self->_mediaQuota;
    self->_mediaQuota = v3;
  }

  v5 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"AutomaticDownloadsQuota"];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "unsignedLongLongValue")}];
    v8 = self->_mediaQuota;
    self->_mediaQuota = v7;
  }

  v9 = [(NSNumber *)self->_mediaQuota unsignedLongLongValue];

  return v9;
}

+ (id)_fetchMusicRecommendations
{
  v2 = +[NMSMusicRecommendationManager sharedManager];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NMSMediaPinningManager__fetchMusicRecommendations__block_invoke;
  v7[3] = &unk_27993E638;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [v2 fetchRecommendationsWithQueue:0 completion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __52__NMSMediaPinningManager__fetchMusicRecommendations__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (NSArray)albumIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSMediaPinningManager_albumIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__NMSMediaPinningManager_albumIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[8])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshMusicIdentifiers];
    }

    else
    {
      [v4 _fetchMusicIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 64);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)_fetchMusicIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Failed to unarchive cached playlistIdentifiers due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_refreshMusicIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Failed to archive playlistIdentifiers due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v2 workoutPlaylistID];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifiers];
  v4 = [v5 library];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "persistentID")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifiers];
  v4 = [v5 library];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "persistentID")}];
}

- (NSArray)pinnedAlbums
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__NMSMediaPinningManager_pinnedAlbums__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__NMSMediaPinningManager_pinnedAlbums__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) pinnedAlbums];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)playlistIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_playlistIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__NMSMediaPinningManager_playlistIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshMusicIdentifiers];
    }

    else
    {
      [v4 _fetchMusicIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 56);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (NSArray)pinnedPlaylists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pinnedPlaylists];
  v3 = [v2 copy];
  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1 + 32);
  if ((*(v7 + 112) & 1) == 0)
  {
    v8 = *(*(*v4 + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_2;
    v15[3] = &unk_27993E688;
    v15[4] = v7;
    v9 = [v8 indexesOfObjectsPassingTest:v15];
    v10 = [v9 count];
    if (v10 != [*(*(*v4 + 8) + 40) count])
    {
      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_cold_1(v9, a1 + 40);
      }

      v12 = [*(*(*(a1 + 40) + 8) + 40) objectsAtIndexes:v9];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      [*(*(a1 + 32) + 8) setPinnedPlaylists:*(*(*(a1 + 40) + 8) + 40)];
    }

    *(*(a1 + 32) + 112) = 1;
  }
}

uint64_t __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _playlistPIDValidForPinning:v3];

  return v4;
}

- (BOOL)isAlbumPinned:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NMSMediaPinningManager_isAlbumPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __40__NMSMediaPinningManager_isAlbumPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAlbumPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)isPlaylistPinned:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NMSMediaPinningManager_isPlaylistPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

uint64_t __43__NMSMediaPinningManager_isPlaylistPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPlaylistPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)pinAlbum:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NMSMediaPinningManager_pinAlbum_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __53__NMSMediaPinningManager_pinAlbum_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning album <%{public}@>", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAlbums];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedAlbums:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pinPlaylist:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NMSMediaPinningManager_pinPlaylist_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

uint64_t __56__NMSMediaPinningManager_pinPlaylist_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _playlistPIDValidForPinning:*(a1 + 40)];
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 40);
    if (v3)
    {
      v5 = @"YES";
    }

    v13 = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Pinning Validation] pinPlaylist: <%{public}@>, valid: %@", &v13, 0x16u);
  }

  if (v3)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "Pinning playlist <%{public}@>", &v13, 0xCu);
    }

    v9 = [*(*(a1 + 32) + 8) pinnedPlaylists];
    v10 = [v9 mutableCopy];

    [v10 addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setPinnedPlaylists:v10];
    [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:1];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)unpinAlbum:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NMSMediaPinningManager_unpinAlbum_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __55__NMSMediaPinningManager_unpinAlbum_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning album <%{public}@>", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAlbums];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedAlbums:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unpinPlaylist:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NMSMediaPinningManager_unpinPlaylist_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __58__NMSMediaPinningManager_unpinPlaylist_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning playlist <%{public}@>", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPlaylists];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPlaylists:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_playlistPIDValidForPinning:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([v3 longLongValue])
  {
    v4 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B498] value:v3 comparison:1];
    v5 = MEMORY[0x277D2B5C8];
    v6 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    v7 = [v5 unrestrictedQueryWithLibrary:v6 predicate:v4 orderingTerms:0];

    v20 = 0;
    v21[0] = &v20;
    v21[1] = 0x2020000000;
    v21[2] = 0;
    *(v23 + 24) = 1;
    v8 = *MEMORY[0x277D2B4C0];
    v26[0] = *MEMORY[0x277D2B4D8];
    v26[1] = v8;
    v9 = *MEMORY[0x277D2B4B8];
    v26[2] = *MEMORY[0x277D2B4F0];
    v26[3] = v9;
    v26[4] = *MEMORY[0x277D2B4E8];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__NMSMediaPinningManager__playlistPIDValidForPinning___block_invoke;
    v16[3] = &unk_27993E6B0;
    v18 = &v20;
    v11 = v3;
    v17 = v11;
    v19 = &v22;
    [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:v16];

    if (*(v21[0] + 24) != 1)
    {
      v12 = NMLogForCategory(5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NMSMediaPinningManager *)v11 _playlistPIDValidForPinning:v21];
      }

      *(v23 + 24) = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[NMSMediaPinningManager _playlistPIDValidForPinning:];
    }
  }

  v13 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __54__NMSMediaPinningManager__playlistPIDValidForPinning___block_invoke(void *a1, uint64_t a2, id *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  ++*(*(a1[5] + 8) + 24);
  v5 = [a3[1] BOOLValue];
  v6 = [a3[2] BOOLValue];
  v7 = [a3[3] BOOLValue];
  v8 = [a3[4] BOOLValue];
  v9 = v8;
  if ((v5 & 1) != 0 || (v6 & 1) != 0 || (v7 & 1) != 0 || v8)
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = 138544386;
      v14 = v12;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      _os_log_error_impl(&dword_25B27B000, v10, OS_LOG_TYPE_ERROR, "[Pinning Validation] Rejecting invalid Playlist PID: %{public}@ -- hidden:%d geniusPlaylist:%d geniusMix:%d folder:%d", &v13, 0x24u);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateWorkoutSettingsPlaylistPIDTo:(id)a3
{
  v7 = a3;
  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  if ([v7 longLongValue])
  {
    [v3 setBool:1 forKey:@"EnableMusicAutoStart"];
    [v3 setObject:v7 forKey:@"MusicPlaylistPersistentID"];
  }

  else
  {
    [v3 setBool:0 forKey:@"EnableMusicAutoStart"];
    [v3 removeObjectForKey:@"MusicPlaylistPersistentID"];
  }

  v4 = [v3 synchronize];
  v5 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"MusicPlaylistPersistentID"];
  [v5 synchronizeNanoDomain:@"com.apple.nanolifestyle.sessiontrackerapp" keys:v6];
}

- (void)_setWorkoutPlaylistID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D2BCF8] sharedInstance];
  v6 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
  v8 = [v7 firstObject];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v10 = [v8 supportsCapability:v9];

  if (v10)
  {
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "Setting workoutPlaylistID <%{public}@>", buf, 0xCu);
    }

    [(NMSyncDefaults *)self->_sharedDefaults setWorkoutPlaylistID:v4];
    [(NMSMediaPinningManager *)self _updateWorkoutSettingsPlaylistPIDTo:v4];
    if (v4)
    {
      v12 = [MEMORY[0x277CD5EF0] nms_modelObjectWithLibraryPersistentID:{objc_msgSend(v4, "integerValue")}];
      v13 = objc_alloc_init(NMSKeepLocalRequestOptions);
      [(NMSKeepLocalRequestOptions *)v13 setRequiresValidation:0];
      [(NMSKeepLocalRequestOptions *)v13 setPowerPolicy:2];
      [(NMSKeepLocalRequestOptions *)v13 setCellularPolicy:2];
      [(NMSKeepLocalRequestOptions *)v13 setQualityOfService:25];
      [(NMSKeepLocalRequestOptions *)v13 setTimeout:0.0];
      v14 = [objc_alloc(objc_opt_class()) initWithModelObject:v12 enableState:1];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke;
      v20[3] = &unk_27993E6D8;
      v21 = v4;
      [v14 performWithOptions:v13 completion:v20];
    }
  }

  else
  {
    if ([v4 longLongValue])
    {
      v15 = [objc_opt_class() _playlistPIDValidForPinning:v4];
    }

    else
    {
      v15 = 1;
    }

    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (v15)
      {
        v17 = @"YES";
      }

      *buf = 138543618;
      v23 = v4;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_DEFAULT, "[Pinning Validation] setWorkoutPlaylistID: <%{public}@>, valid: %@", buf, 0x16u);
    }

    if (v15)
    {
      v18 = NMLogForCategory(5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v4;
        _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "Setting workoutPlaylistID <%{public}@>", buf, 0xCu);
      }

      [(NMSyncDefaults *)self->_sharedDefaults setWorkoutPlaylistID:v4];
      [(NMSMediaPinningManager *)self _updateWorkoutSettingsPlaylistPIDTo:v4];
      [(NMSMediaPinningManager *)self _invalidateMediaCacheForAppIdentifiers:1];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)setWorkoutPlaylistID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NMSMediaPinningManager_setWorkoutPlaylistID___block_invoke;
  v7[3] = &unk_27993E570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (BOOL)_deviceSupportsPodcastsPinningSettingsV2
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v7 = [v5 supportsCapability:v6];

  return v7;
}

- (void)_legacy_refreshMusicIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NMSMediaPinningManager *)self _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v4 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoMusic"];
  v5 = [v4 identifiersForContainersOfType:1];

  v6 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoMusic"];
  v7 = [v6 identifiersForContainersOfType:0];

  v8 = self->_cachedAlbumIdentifiers;
  v9 = v8;
  if (v8 == v5)
  {

    goto LABEL_9;
  }

  v10 = [(NSArray *)v8 isEqual:v5];

  if (v10)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v26 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v26];
  v12 = v26;
  if (v12)
  {
    v13 = NMLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _refreshMusicIdentifiers];
    }
  }

  v14 = [objc_opt_class() _cachedAlbumIdentifiersFilePath];
  v15 = 1;
  [v11 writeToFile:v14 atomically:1];

  objc_storeStrong(&self->_cachedAlbumIdentifiers, v5);
LABEL_10:
  p_cachedPlaylistIdentifiers = &self->_cachedPlaylistIdentifiers;
  v17 = self->_cachedPlaylistIdentifiers;
  v18 = v17;
  if (v17 == v7)
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:v7];

    if ((v19 & 1) == 0)
    {
      v25 = 0;
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v25];
      v21 = v25;
      if (v21)
      {
        v22 = NMLogForCategory(5);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [NMSMediaPinningManager _refreshMusicIdentifiers];
        }
      }

      v23 = [objc_opt_class() _cachedPlaylistIdentifiersFilePath];
      [v20 writeToFile:v23 atomically:1];

      objc_storeStrong(p_cachedPlaylistIdentifiers, v7);
      goto LABEL_19;
    }
  }

  if (v15)
  {
LABEL_19:
    v24 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v24 postNotificationName:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:0];
  }
}

- (void)_legacy_refreshPodcastsIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  obj = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastFeedURLs];
  v3 = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastStationUUIDs];
  v4 = [(NMSyncDefaults *)self->_sharedDefaults savedEpisodesEnabled];
  v5 = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastsAreUserSet];
  v6 = self->_legacy_cachedPodcastFeedURLs;
  v7 = v6;
  if (v6 == obj)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?]^ 1;
  }

  v9 = self->_legacy_cachedPodcastStationUUIDs;
  v10 = v9;
  if (v9 == v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(NSArray *)v9 isEqual:v3]^ 1;
  }

  legacy_cachedSavedEpisodesEnabled = self->_legacy_cachedSavedEpisodesEnabled;
  legacy_cachedPinnedPodcastsAreUserSet = self->_legacy_cachedPinnedPodcastsAreUserSet;
  objc_storeStrong(&self->_legacy_cachedPodcastFeedURLs, obj);
  objc_storeStrong(&self->_legacy_cachedPodcastStationUUIDs, v3);
  self->_legacy_cachedSavedEpisodesEnabled = v4;
  self->_legacy_cachedPinnedPodcastsAreUserSet = v5;
  if (((v8 | v11) & 1) != 0 || legacy_cachedSavedEpisodesEnabled != v4 || legacy_cachedPinnedPodcastsAreUserSet != v5)
  {
    v14 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v14 postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];
  }
}

- (void)_legacy_refreshAudiobooksIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NMSMediaPinningManager *)self _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v4 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoBooks"];
  v5 = [v4 identifiersForContainersOfType:7];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__NMSMediaPinningManager__legacy_refreshAudiobooksIdentifiers__block_invoke;
  v17[3] = &unk_27993E700;
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:v17];
  p_cachedAudiobookIdentifiers = &self->_cachedAudiobookIdentifiers;
  v9 = self->_cachedAudiobookIdentifiers;
  v10 = v9;
  if (v9 == v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v11 = [(NSArray *)v9 isEqual:v7];

  if ((v11 & 1) == 0)
  {
    v16 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v16];
    v10 = v16;
    if (v10)
    {
      v13 = NMLogForCategory(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaPinningManager _refreshAudiobooksIdentifiers];
      }
    }

    v14 = [objc_opt_class() _cachedAudiobookIdentifiersFilePath];
    [v12 writeToFile:v14 atomically:1];

    objc_storeStrong(p_cachedAudiobookIdentifiers, v6);
    v15 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v15 postNotificationName:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:0];

    goto LABEL_8;
  }

LABEL_9:
}

void __62__NMSMediaPinningManager__legacy_refreshAudiobooksIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v5 = [a2 universalStore];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "adamID")}];
  [v2 addObject:v4];
}

- (BOOL)_legacy_musicIsOutOfSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NMSMediaPinningManager__legacy_musicIsOutOfSpace__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __51__NMSMediaPinningManager__legacy_musicIsOutOfSpace__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v3 sizeOfNominatedItemsForBundleIdentifier:@"com.apple.NanoMusic"];
  *(*(*(a1 + 40) + 8) + 24) = v2 > [v3 sizeOfItemsWithinQuotaForBundleIdentifier:@"com.apple.NanoMusic"];
}

- (void)extensionAccessDidChange
{
  v3 = [MEMORY[0x277D3DAF0] sharedInstance];
  v4 = [v3 isReady];

  if (v4)
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager can open PodcastsDB again. Invalidating added items and kicking off syncs", v6, 2u);
    }

    [(NMSMediaPinningManager *)self invalidatePodcastsCache];
  }
}

- (void)podcastsDownloadableContentControllerContentDidChange:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMediaPinningManager_podcastsDownloadableContentControllerContentDidChange___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_4(&dword_25B27B000, a2, a3, "[Pinning Validation] Removing invalid workoutPlaylistID %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_mediaStorageSizeForCurrentDevice
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Could not get total storage information from the active watch: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, v3, v4, "[Pinning Validation] Removing invalid pinnedPlaylists; validPlaylistIndices: %{public}@, original pinnedPlaylists: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_playlistPIDValidForPinning:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, v3, v4, "[Pinning Validation] Rejecting invalid Playlist PID: %{public}@ -- matchedObjects:%tu");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_playlistPIDValidForPinning:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "[Pinning Validation] Rejecting invalid Playlist PID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, a2, a3, "Failed to set keep local for workoutPlaylistID <%{public}@>.  Error=%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end