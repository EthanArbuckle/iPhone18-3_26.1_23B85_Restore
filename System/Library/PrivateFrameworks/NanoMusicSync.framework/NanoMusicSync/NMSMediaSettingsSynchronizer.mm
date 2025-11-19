@interface NMSMediaSettingsSynchronizer
+ (NMSMediaSettingsSynchronizer)sharedSynchronizer;
- (id)_podcastsAppGroupPath;
- (id)_podcastsUserDefaults;
- (int64_t)_preferredGreenTeaMusicStreamingResolutionPreference;
- (void)_createDefaultGreenTeaSettingsIfNecessary;
- (void)_migrateMusicDefaultsIfNecessary;
- (void)_reconcileGreenTeaSettingsIfNecessary;
- (void)_syncPodcastDefaultsIfNecessary;
- (void)beginObservingUpdates;
- (void)dealloc;
- (void)endObservingUpdates;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NMSMediaSettingsSynchronizer

+ (NMSMediaSettingsSynchronizer)sharedSynchronizer
{
  if (sharedSynchronizer_onceToken != -1)
  {
    +[NMSMediaSettingsSynchronizer sharedSynchronizer];
  }

  v3 = sharedSynchronizer_instance;

  return v3;
}

uint64_t __50__NMSMediaSettingsSynchronizer_sharedSynchronizer__block_invoke()
{
  v0 = objc_alloc_init(NMSMediaSettingsSynchronizer);
  v1 = sharedSynchronizer_instance;
  sharedSynchronizer_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  [(NMSMediaSettingsSynchronizer *)self endObservingUpdates];
  v3.receiver = self;
  v3.super_class = NMSMediaSettingsSynchronizer;
  [(NMSMediaSettingsSynchronizer *)&v3 dealloc];
}

- (void)beginObservingUpdates
{
  if (!self->_isObserving)
  {
    v3 = NMLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Begin observing setting updates.", v15, 2u);
    }

    self->_isObserving = 1;
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mediaplaybackcore"];
    mediaPlaybackCoreDefaults = self->_mediaPlaybackCoreDefaults;
    self->_mediaPlaybackCoreDefaults = v4;

    [(NSUserDefaults *)self->_mediaPlaybackCoreDefaults addObserver:self forKeyPath:@"MPCPlaybackPrivateListeningEnabled" options:0 context:@"MPCPlaybackPrivateListeningEnabled"];
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobileipod"];
    mobileIPodDefaults = self->_mobileIPodDefaults;
    self->_mobileIPodDefaults = v6;

    [(NSUserDefaults *)self->_mobileIPodDefaults addObserver:self forKeyPath:@"MusicLowBandwidthResolution" options:0 context:@"MusicLowBandwidthResolution"];
    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Music"];
    musicDefaults = self->_musicDefaults;
    self->_musicDefaults = v8;

    [(NSUserDefaults *)self->_musicDefaults addObserver:self forKeyPath:@"AllowsCellularDataDownloads" options:0 context:@"AllowsCellularDataDownloads"];
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoMusicSync"];
    nanoMusicSyncDefaults = self->_nanoMusicSyncDefaults;
    self->_nanoMusicSyncDefaults = v10;

    [(NSUserDefaults *)self->_nanoMusicSyncDefaults addObserver:self forKeyPath:@"GreenTeaMobileIpodCellularKeysAreMirrored" options:0 context:@"GreenTeaMobileIpodCellularKeysAreMirrored"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults addObserver:self forKeyPath:@"GreenTeaMusicAllowsCellularData" options:0 context:@"GreenTeaMusicAllowsCellularData"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults addObserver:self forKeyPath:@"GreenTeaMusicAllowsHighQualityStreamingOnCellular" options:0 context:@"GreenTeaMusicAllowsHighQualityStreamingOnCellular"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults addObserver:self forKeyPath:@"GreenTeaMusicAllowsDownloadsOverCellular" options:0 context:@"GreenTeaMusicAllowsDownloadsOverCellular"];
    [(NMSMediaSettingsSynchronizer *)self _migrateMusicDefaultsIfNecessary];
    [(NMSMediaSettingsSynchronizer *)self _createDefaultGreenTeaSettingsIfNecessary];
    v12 = [(NMSMediaSettingsSynchronizer *)self _podcastsUserDefaults];
    podcastsDefaults = self->_podcastsDefaults;
    self->_podcastsDefaults = v12;

    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTSyncSubscriptions" options:0 context:@"MTSyncSubscriptions"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTPodcastUpdateIntervalDefault" options:0 context:@"MTPodcastUpdateIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTContinuousPlaybackEnabled" options:0 context:@"MTContinuousPlaybackEnabled"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTSkipForwardIntervalDefault" options:0 context:@"MTSkipForwardIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTSkipBackwardsIntervalDefault" options:0 context:@"MTSkipBackwardsIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTRemoteSkipInsteadOfNextTrackDefault" options:0 context:@"MTRemoteSkipInsteadOfNextTrackDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults addObserver:self forKeyPath:@"MTPrivacyResetIdentifier" options:0 context:@"MTPrivacyResetIdentifier"];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:self selector:sel__syncPodcastDefaultsIfNecessary name:*MEMORY[0x277D2BC48] object:0];

    [(NMSMediaSettingsSynchronizer *)self _syncPodcastDefaultsIfNecessary];
  }
}

- (void)_createDefaultGreenTeaSettingsIfNecessary
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_nanoMusicSyncDefaults objectForKey:@"GreenTeaMobileIpodCellularKeysAreMirrored"];

  v3 = NMLogForCategory(5);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Already have default Green Tea cellular settings", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Will set default Green Tea cellular settings", buf, 2u);
    }

    v3 = dispatch_queue_create("com.apple.NanoMusicSync.MediaSettingsSynchronizer", 0);
    _CTServerConnectionAddIdentifierException();
    v5 = *MEMORY[0x277CBECE8];
    _CTServerConnectionCreateOnTargetQueue();
    v15 = *MEMORY[0x277CC39A8];
    v16[0] = *MEMORY[0x277CC39B8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    CellularUsagePolicyMirroring = _CTServerConnectionGetCellularUsagePolicyMirroring();
    if (CellularUsagePolicyMirroring)
    {
      v8 = NMLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v12 = CellularUsagePolicyMirroring;
        v13 = 1024;
        v14 = HIDWORD(CellularUsagePolicyMirroring);
        _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Error fetching mirroring policy %d %d", buf, 0xEu);
      }

      __73__NMSMediaSettingsSynchronizer__createDefaultGreenTeaSettingsIfNecessary__block_invoke(v9, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __73__NMSMediaSettingsSynchronizer__createDefaultGreenTeaSettingsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  [v3 setGreenTeaMusicAllowCellularForStreaming:0];

  v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  [v4 setGreenTeaMusicAllowCellularForHighQualityStreaming:0];

  v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  [v5 setGreenTeaMusicIsMirroringStreamingSettings:a2];
}

uint64_t __73__NMSMediaSettingsSynchronizer__createDefaultGreenTeaSettingsIfNecessary__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = NMLogForCategory(5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      v10 = 67109376;
      v11 = a3;
      v12 = 1024;
      v13 = HIDWORD(a3);
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Error fetching mirroring policy %d %d", &v10, 0xEu);
    }
  }

  else if (v7)
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Fetched mirroring policy %x", &v10, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_reconcileGreenTeaSettingsIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  if ((isEitherDeviceGreenTeaCapable() & 1) == 0)
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v9 = "[NMSMediaSettingsSynchronizer] Neither device is Green Tea capable. Will not reconcile.";
LABEL_11:
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v3 = [(NSUserDefaults *)self->_nanoMusicSyncDefaults objectForKey:@"GreenTeaMobileIpodCellularKeysAreMirrored"];

  if (!v3)
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v9 = "[NMSMediaSettingsSynchronizer] Companion has not set Green Tea mirroring yet. We'll wait.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  v5 = [v4 greenTeaMusicIsMirroringStreamingSettings];

  if ((v5 & 1) == 0)
  {
    v6 = [(NMSMediaSettingsSynchronizer *)self _preferredGreenTeaMusicStreamingResolutionPreference];
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Reconciling on init. Overriding LowBandwidthResolution with %ld", &v11, 0xCu);
    }

    CFPreferencesSetAppValue(@"MusicLowBandwidthResolution", [MEMORY[0x277CCABB0] numberWithInteger:v6], @"com.apple.mobileipod");
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_migrateMusicDefaultsIfNecessary
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_nanoMusicSyncDefaults integerForKey:@"NMLastSyncedMusicSettingsVersion"];
  if (v3 != 10)
  {
    v4 = v3;
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v27 = v4;
      v28 = 2048;
      v29 = 10;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Music settings migration required. LastSyncedVersion:%lu, CurrentVersion:%lu", buf, 0x16u);
    }

    if (v4 > 3)
    {
      if (v4 > 9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!isEitherDeviceGreenTeaCapable() || (+[NMSGreenTeaStreamingDefaults sharedInstance](NMSGreenTeaStreamingDefaults, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 greenTeaMusicIsMirroringStreamingSettings], v6, v7))
      {
        v8 = [MEMORY[0x277D2BCF8] sharedInstance];
        v9 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
        v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
        v11 = [v10 firstObject];
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"88D7381B-F0D1-498F-88D5-9F016A27EB4F"];
        v13 = [v11 supportsCapability:v12];

        if (v13)
        {
          v14 = objc_alloc_init(MEMORY[0x277D2BA60]);
          [MEMORY[0x277CBEB98] setWithObject:@"MusicLowBandwidthResolution"];
        }

        else
        {
          v16 = [(NSUserDefaults *)self->_mobileIPodDefaults integerForKey:@"MusicLowBandwidthResolution"];
          CFPreferencesSetAppValue(@"MusicAllowsCellularData", [MEMORY[0x277CCABB0] numberWithInt:v16 != 0], @"com.apple.mobileipod");
          CFPreferencesSetAppValue(@"MusicAllowsHighQualityStreamingOnCellular", [MEMORY[0x277CCABB0] numberWithInt:v16 == 256], @"com.apple.mobileipod");
          CFPreferencesAppSynchronize(@"com.apple.mobileipod");
          v14 = objc_alloc_init(MEMORY[0x277D2BA60]);
          [MEMORY[0x277CBEB98] setWithObjects:{@"MusicAllowsCellularData", @"MusicAllowsHighQualityStreamingOnCellular", 0}];
        }
        v15 = ;
        [v14 synchronizeUserDefaultsDomain:@"com.apple.mobileipod" keys:v15];
      }

      [(NSUserDefaults *)self->_nanoMusicSyncDefaults setInteger:4 forKey:@"NMLastSyncedMusicSettingsVersion"];
    }

    v17 = [MEMORY[0x277D2BCF8] sharedInstance];
    v18 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    v19 = [v17 getAllDevicesWithArchivedAltAccountDevicesMatching:v18];
    v20 = [v19 firstObject];
    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C79D46D1-84CF-4208-AEA0-39117F9770E7"];
    v22 = [v20 supportsCapability:v21];

    if (v22)
    {
      CFPreferencesAppSynchronize(@"com.apple.Music");
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CBEB98] setWithObject:@"AllowsCellularDataDownloads"];
      [v23 synchronizeUserDefaultsDomain:@"com.apple.Music" keys:v24];

      [(NSUserDefaults *)self->_nanoMusicSyncDefaults setInteger:10 forKey:@"NMLastSyncedMusicSettingsVersion"];
    }
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
}

- (int64_t)_preferredGreenTeaMusicStreamingResolutionPreference
{
  v2 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  v3 = [v2 greenTeaMusicAllowCellularForStreaming];

  if (v3)
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
  v6 = [v5 greenTeaMusicAllowCellularForHighQualityStreaming];

  if (v6)
  {
    return 256;
  }

  else
  {
    return v4;
  }
}

- (id)_podcastsUserDefaults
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:@"com.apple.podcasts"];
  v3 = [v2 dataContainerURL];

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) _initWithSuiteName:@"com.apple.podcasts" container:v3];
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Observing podcasts user defaults %@ at %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_podcastsAppGroupPath
{
  v2 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:@"com.apple.podcasts"];
  v3 = [v2 groupContainerURLs];
  v4 = [v3 allValues];
  v5 = [v4 firstObject];

  v6 = [v5 path];

  return v6;
}

- (void)_syncPodcastDefaultsIfNecessary
{
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"54FC3688-3F2A-435A-A95D-2F1866839415"];
  v8 = [v6 supportsCapability:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(NSUserDefaults *)self->_nanoMusicSyncDefaults integerForKey:@"NMLastSyncedPodcastsSettingsVersion"];
    if (v9 != 3)
    {
      if (v9 <= 2)
      {
        v10 = NMLogForCategory(5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Never synced podcasts defaults before.", v11, 2u);
        }

        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTSyncSubscriptions"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTPodcastUpdateIntervalDefault"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTContinuousPlaybackEnabled"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTSkipForwardIntervalDefault"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTSkipBackwardsIntervalDefault"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTRemoteSkipInsteadOfNextTrackDefault"];
        [(NMSMediaSettingsSynchronizer *)self observeValueForKeyPath:0 ofObject:0 change:0 context:@"MTPrivacyResetIdentifier"];
      }

      [(NSUserDefaults *)self->_nanoMusicSyncDefaults setInteger:3 forKey:@"NMLastSyncedPodcastsSettingsVersion"];
    }
  }
}

- (void)endObservingUpdates
{
  if (self->_isObserving)
  {
    v7 = v2;
    v8 = v3;
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] End observing setting updates.", v6, 2u);
    }

    self->_isObserving = 0;
    [(NSUserDefaults *)self->_mediaPlaybackCoreDefaults removeObserver:self forKeyPath:@"MPCPlaybackPrivateListeningEnabled" context:@"MPCPlaybackPrivateListeningEnabled"];
    [(NSUserDefaults *)self->_mobileIPodDefaults removeObserver:self forKeyPath:@"MusicLowBandwidthResolution" context:@"MusicLowBandwidthResolution"];
    [(NSUserDefaults *)self->_musicDefaults removeObserver:self forKeyPath:@"AllowsCellularDataDownloads" context:@"AllowsCellularDataDownloads"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults removeObserver:self forKeyPath:@"GreenTeaMobileIpodCellularKeysAreMirrored" context:@"GreenTeaMobileIpodCellularKeysAreMirrored"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults removeObserver:self forKeyPath:@"GreenTeaMusicAllowsCellularData" context:@"GreenTeaMusicAllowsCellularData"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults removeObserver:self forKeyPath:@"GreenTeaMusicAllowsHighQualityStreamingOnCellular" context:@"GreenTeaMusicAllowsHighQualityStreamingOnCellular"];
    [(NSUserDefaults *)self->_nanoMusicSyncDefaults removeObserver:self forKeyPath:@"GreenTeaMusicAllowsDownloadsOverCellular" context:@"GreenTeaMusicAllowsDownloadsOverCellular"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTSyncSubscriptions" context:@"MTSyncSubscriptions"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTPodcastUpdateIntervalDefault" context:@"MTPodcastUpdateIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTContinuousPlaybackEnabled" context:@"MTContinuousPlaybackEnabled"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTSkipForwardIntervalDefault" context:@"MTSkipForwardIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTSkipBackwardsIntervalDefault" context:@"MTSkipBackwardsIntervalDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTRemoteSkipInsteadOfNextTrackDefault" context:@"MTRemoteSkipInsteadOfNextTrackDefault"];
    [(NSUserDefaults *)self->_podcastsDefaults removeObserver:self forKeyPath:@"MTPrivacyResetIdentifier" context:@"MTPrivacyResetIdentifier"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v74 = a4;
  if (isEitherDeviceGreenTeaCapable())
  {
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] We found a Green Tea device", buf, 2u);
    }

    v10 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    v11 = [v10 greenTeaMusicIsMirroringStreamingSettings];
  }

  else
  {
    v11 = 1;
  }

  v72 = self;
  v71 = v11;
  if (a6 == @"MPCPlaybackPrivateListeningEnabled")
  {
    v75 = @"MPCPlaybackPrivateListeningEnabled";
    v14 = [(NSUserDefaults *)self->_mediaPlaybackCoreDefaults objectForKey:?];
    v13 = @"com.apple.mediaplaybackcore";
    goto LABEL_14;
  }

  if (a6 != @"MusicLowBandwidthResolution")
  {
    if (a6 == @"AllowsCellularDataDownloads")
    {
      if (v11)
      {
        v75 = @"AllowsCellularDataDownloads";
        v14 = [(NSUserDefaults *)self->_musicDefaults objectForKey:?];
        v13 = @"com.apple.Music";
        goto LABEL_14;
      }
    }

    else
    {
      v12 = @"GreenTeaMusicAllowsCellularData";
      if (@"GreenTeaMusicAllowsCellularData" == a6 || (v12 = @"GreenTeaMusicAllowsHighQualityStreamingOnCellular", @"GreenTeaMusicAllowsHighQualityStreamingOnCellular" == a6) || (v12 = @"GreenTeaMusicAllowsDownloadsOverCellular", @"GreenTeaMusicAllowsDownloadsOverCellular" == a6))
      {
        v13 = @"com.apple.NanoMusicSync";
        v75 = v12;
        v14 = [(NSUserDefaults *)self->_nanoMusicSyncDefaults objectForKey:?];
LABEL_14:
        v15 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (!v11)
  {
LABEL_20:
    v15 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v16 = [MEMORY[0x277D2BCF8] sharedInstance];
  v17 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v18 = [v16 getAllDevicesWithArchivedAltAccountDevicesMatching:v17];
  v19 = [v18 firstObject];
  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"88D7381B-F0D1-498F-88D5-9F016A27EB4F"];
  v21 = [v19 supportsCapability:v20];

  mobileIPodDefaults = self->_mobileIPodDefaults;
  if (v21)
  {
    v75 = @"MusicLowBandwidthResolution";
    v14 = [(NSUserDefaults *)mobileIPodDefaults objectForKey:?];
    v13 = @"com.apple.mobileipod";
    goto LABEL_14;
  }

  v51 = [(NSUserDefaults *)mobileIPodDefaults integerForKey:@"MusicLowBandwidthResolution"];
  v13 = @"com.apple.mobileipod";
  CFPreferencesSetAppValue(@"MusicAllowsCellularData", [MEMORY[0x277CCABB0] numberWithInt:v51 != 0], @"com.apple.mobileipod");
  CFPreferencesSetAppValue(@"MusicAllowsHighQualityStreamingOnCellular", [MEMORY[0x277CCABB0] numberWithInt:v51 == 256], @"com.apple.mobileipod");
  CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  v52 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v53 = [MEMORY[0x277CBEB98] setWithObjects:{@"MusicAllowsCellularData", @"MusicAllowsHighQualityStreamingOnCellular", 0}];
  [v52 synchronizeUserDefaultsDomain:@"com.apple.mobileipod" keys:v53];

  v15 = 0;
  v14 = 0;
  v75 = 0;
LABEL_21:
  v23 = [MEMORY[0x277D2BCF8] sharedInstance];
  v24 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v25 = [v23 getAllDevicesWithArchivedDevicesMatching:v24];
  v26 = [v25 firstObject];
  v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"54FC3688-3F2A-435A-A95D-2F1866839415"];
  v28 = [v26 supportsCapability:v27];

  if (v28)
  {
LABEL_22:
    if (v15)
    {
      v29 = v14;
      v30 = v73;
      v31 = v75;
LABEL_43:
      v39 = NMLogForCategory(5);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v77 = v13;
        *&v77[8] = 2112;
        *v78 = v31;
        *&v78[8] = 2112;
        *v79 = v29;
        _os_log_impl(&dword_25B27B000, v39, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Synchronizing defaults for domain: %@, key: %@, value: %@", buf, 0x20u);
      }

      v33 = objc_alloc_init(MEMORY[0x277D2BA60]);
      v35 = [MEMORY[0x277CBEB98] setWithObject:v31];
      [v33 synchronizeUserDefaultsDomain:v13 keys:v35];
      goto LABEL_67;
    }

    v33 = 0;
    v29 = v14;
    v30 = v73;
    goto LABEL_34;
  }

  v31 = @"MTSyncSubscriptions";
  if (a6 == @"MTSyncSubscriptions")
  {
    p_isa = &v72->super.isa;
LABEL_38:

    v33 = [p_isa _podcastsAppGroupPath];

    v29 = [p_isa[6] objectForKey:v31];

    v30 = v73;
    goto LABEL_39;
  }

  v31 = @"MTPodcastUpdateIntervalDefault";
  p_isa = &v72->super.isa;
  if (a6 == @"MTPodcastUpdateIntervalDefault")
  {
    goto LABEL_38;
  }

  v31 = @"MTContinuousPlaybackEnabled";
  if (a6 == @"MTContinuousPlaybackEnabled")
  {
    goto LABEL_38;
  }

  v31 = @"MTSkipForwardIntervalDefault";
  if (a6 == @"MTSkipForwardIntervalDefault")
  {
    goto LABEL_38;
  }

  v31 = @"MTSkipBackwardsIntervalDefault";
  if (a6 == @"MTSkipBackwardsIntervalDefault")
  {
    goto LABEL_38;
  }

  v31 = @"MTRemoteSkipInsteadOfNextTrackDefault";
  if (a6 == @"MTRemoteSkipInsteadOfNextTrackDefault")
  {
    goto LABEL_38;
  }

  if (a6 != @"MTPrivacyResetIdentifier")
  {
    goto LABEL_22;
  }

  v33 = [(NMSMediaSettingsSynchronizer *)v72 _podcastsAppGroupPath];

  v75 = @"MTPrivacyResetIdentifier";
  v29 = [(NSUserDefaults *)v72->_podcastsDefaults objectForKey:?];

  v30 = v73;
  if (([v29 BOOLValue] & 1) == 0)
  {
    v13 = @"243LU875E5.groups.com.apple.podcasts";
LABEL_34:
    v34 = NMLogForCategory(5);
    v35 = v34;
    if (@"GreenTeaMobileIpodCellularKeysAreMirrored" == a6)
    {
      v40 = v72;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v35, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] GreenTeaMobileIpodCellularKeysAreMirrored did change", buf, 2u);
      }

      if (v71)
      {
        v70 = [(NSUserDefaults *)v72->_mobileIPodDefaults integerForKey:@"MusicLowBandwidthResolution"];
        v41 = [MEMORY[0x277D2BCF8] sharedInstance];
        v42 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
        v43 = [v41 getAllDevicesWithArchivedAltAccountDevicesMatching:v42];
        v44 = [v43 firstObject];
        v45 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"88D7381B-F0D1-498F-88D5-9F016A27EB4F"];
        v46 = [v44 supportsCapability:v45];

        v47 = NMLogForCategory(5);
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
        if (v46)
        {
          if (v48)
          {
            *buf = 134217984;
            *v77 = v70;
            _os_log_impl(&dword_25B27B000, v47, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer]\tSynchronizing preferredMusicLowBandwidthResolution %ld", buf, 0xCu);
          }

          v49 = objc_alloc_init(MEMORY[0x277D2BA60]);
          v50 = [MEMORY[0x277CBEB98] setWithObject:@"MusicLowBandwidthResolution"];
          [v49 synchronizeUserDefaultsDomain:@"com.apple.mobileipod" keys:v50];
          v40 = v72;
        }

        else
        {
          v40 = v72;
          if (v48)
          {
            v58 = [(NSUserDefaults *)v72->_mobileIPodDefaults objectForKey:@"MusicAllowsCellularData"];
            v59 = [(NSUserDefaults *)v72->_mobileIPodDefaults objectForKey:@"MusicAllowsHighQualityStreamingOnCellular"];
            *buf = 138412546;
            *v77 = v58;
            *&v77[8] = 2112;
            *v78 = v59;
            _os_log_impl(&dword_25B27B000, v47, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer]\tSynchronizing CellularStreamingAllowed %@ and MusicAllowsHighQualityStreamingOnCellular %@", buf, 0x16u);
          }

          v49 = objc_alloc_init(MEMORY[0x277D2BA60]);
          v50 = [MEMORY[0x277CBEB98] setWithObjects:{@"MusicAllowsCellularData", @"MusicAllowsHighQualityStreamingOnCellular", 0}];
          [v49 synchronizeUserDefaultsDomain:@"com.apple.mobileipod" keys:v50];
        }

        v60 = NMLogForCategory(5);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [(NSUserDefaults *)v40->_musicDefaults objectForKey:@"AllowsCellularDataDownloads"];
          *buf = 138412290;
          *v77 = v61;
          _os_log_impl(&dword_25B27B000, v60, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer]\tSynchronizing AllowsDownloadsOverCellular %@", buf, 0xCu);
        }

        v62 = objc_alloc_init(MEMORY[0x277D2BA60]);
        v63 = [MEMORY[0x277CBEB98] setWithObjects:{@"AllowsCellularDataDownloads", 0}];
        v64 = @"com.apple.Music";
        v65 = v62;
      }

      else
      {
        v54 = NMLogForCategory(5);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [(NSUserDefaults *)v72->_nanoMusicSyncDefaults objectForKey:@"GreenTeaMusicAllowsCellularData"];
          v56 = [(NSUserDefaults *)v72->_nanoMusicSyncDefaults objectForKey:?];
          v57 = [(NSUserDefaults *)v72->_nanoMusicSyncDefaults objectForKey:@"GreenTeaMusicAllowsDownloadsOverCellular"];
          *buf = 138412802;
          *v77 = v55;
          *&v77[8] = 2112;
          *v78 = v56;
          *&v78[8] = 2112;
          *v79 = v57;
          _os_log_impl(&dword_25B27B000, v54, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer]\tSynchronizing GreenTeaCellularStreamingAllowed %@, GreenTeaMusicAllowsHighQualityStreamingOnCellular %@, and GreenTeaMusicAllowsDownloadsOverCellular: %@", buf, 0x20u);

          v40 = v72;
        }

        v62 = objc_alloc_init(MEMORY[0x277D2BA60]);
        v63 = [MEMORY[0x277CBEB98] setWithObjects:{@"GreenTeaMusicAllowsCellularData", @"GreenTeaMusicAllowsHighQualityStreamingOnCellular", @"GreenTeaMusicAllowsDownloadsOverCellular", 0}];
        v65 = v62;
        v64 = @"com.apple.NanoMusicSync";
      }

      [v65 synchronizeUserDefaultsDomain:v64 keys:v63];

      v66 = NMLogForCategory(5);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [(NSUserDefaults *)v40->_nanoMusicSyncDefaults objectForKey:@"GreenTeaMobileIpodCellularKeysAreMirrored"];
        *buf = 138412546;
        *v77 = v67;
        *&v77[8] = 1024;
        *v78 = v71;
        _os_log_impl(&dword_25B27B000, v66, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer]\tSynchronizing GreenTeaMobileIpodCellularKeysAreMirrored %@ BOOL value %x", buf, 0x12u);
      }

      v35 = objc_alloc_init(MEMORY[0x277D2BA60]);
      v68 = [MEMORY[0x277CBEB98] setWithObject:@"GreenTeaMobileIpodCellularKeysAreMirrored"];
      [v35 synchronizeUserDefaultsDomain:@"com.apple.NanoMusicSync" keys:v68];
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = isEitherDeviceGreenTeaCapable();
      *buf = 67110146;
      *v77 = v36;
      *&v77[4] = 1024;
      *&v77[6] = v71;
      *v78 = 2112;
      *&v78[2] = v30;
      *v79 = 2112;
      *&v79[2] = v74;
      *v80 = 2112;
      *&v80[2] = a6;
      _os_log_error_impl(&dword_25B27B000, v35, OS_LOG_TYPE_ERROR, "[NMSMediaSettingsSynchronizer] Did not sync value change. isGreenTea %x, isMirroringCellularPolicy: %x, keypath: %@, object: %@, context: %@", buf, 0x2Cu);
    }

    v31 = v75;
    goto LABEL_67;
  }

  v31 = @"MTPrivacyResetIdentifier";
LABEL_39:
  v13 = @"243LU875E5.groups.com.apple.podcasts";
  if (!v33)
  {
    goto LABEL_43;
  }

  v37 = NMLogForCategory(5);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *v77 = @"243LU875E5.groups.com.apple.podcasts";
    *&v77[8] = 2112;
    *v78 = @"com.apple.podcasts";
    *&v78[8] = 2112;
    *v79 = @"243LU875E5.groups.com.apple.podcasts";
    *&v79[8] = 2112;
    *v80 = v31;
    *&v80[8] = 2112;
    v81 = v29;
    _os_log_impl(&dword_25B27B000, v37, OS_LOG_TYPE_DEFAULT, "[NMSMediaSettingsSynchronizer] Synchronizing defaults for domain: %@, container: %@, appGroup: %@, key: %@, value: %@", buf, 0x34u);
  }

  v35 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v38 = [MEMORY[0x277CBEB98] setWithObject:v31];
  [v35 synchronizeUserDefaultsDomain:@"243LU875E5.groups.com.apple.podcasts" keys:v38 container:@"com.apple.podcasts" appGroupContainer:@"243LU875E5.groups.com.apple.podcasts"];

LABEL_67:
  v69 = *MEMORY[0x277D85DE8];
}

@end