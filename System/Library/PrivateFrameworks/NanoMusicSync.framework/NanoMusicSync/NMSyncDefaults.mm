@interface NMSyncDefaults
+ (id)sharedDefaults;
- (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)_continueUsingMusicRecommendationKey;
- (BOOL)_deviceHasCapability:(id)a3 forCapabilitiesKey:(id)a4;
- (BOOL)debugSyncInfoEnabled;
- (MPMediaPlaylist)assetSyncPlaylist;
- (NMSyncDefaults)init;
- (NSArray)libraryRecommendationAlbums;
- (NSArray)libraryRecommendationPlaylists;
- (NSArray)pinnedAlbums;
- (NSArray)pinnedAudiobooks;
- (NSArray)pinnedPlaylists;
- (NSArray)pinnedPodcastFeedURLs;
- (NSArray)pinnedPodcastStationUUIDs;
- (NSArray)readingNowAudiobooks;
- (NSArray)wantToReadAudiobooks;
- (NSDate)catalogRecommendationsLastUpdateDate;
- (NSDate)libraryRecommendationExpirationDate;
- (NSDictionary)musicRecommendationDict;
- (NSNumber)assetSyncLimit;
- (NSNumber)minimumNumberOfRecentMusicModelObjects;
- (NSNumber)workoutPlaylistID;
- (NSString)description;
- (id)_associatedObject;
- (id)_companionSidePerDeviceDefaults;
- (id)_dateValueForKey:(id)a3 bundleID:(id)a4;
- (id)_defaultPlaylistPersistentID;
- (id)_defaultWithPrefix:(id)a3 forBundleIdentifier:(id)a4;
- (id)_lastSyncInfoRequestDateWithPrefix:(id)a3 forBundleIdentifier:(id)a4;
- (id)_objectForKey:(id)a3;
- (id)_playlistPersistentIDForPlaylistName:(id)a3;
- (int64_t)dormancyIntervalInHoursForBundleID:(id)a3;
- (unint64_t)_spaceQuotaForNumberOfSongs:(unint64_t)a3;
- (void)_addCapability:(id)a3 forCapabilitiesKey:(id)a4;
- (void)_clearAssetSyncPlaylistDependentDefaults;
- (void)_migrateDataIfNecessary;
- (void)_notifyChangesForKey:(id)a3;
- (void)_perDeviceSettingsDidResetNotification:(id)a3;
- (void)_reloadPropertiesFromDefaults;
- (void)_reloadPropertiesFromDefaultsOnMainThread;
- (void)_removeObjectForKey:(id)a3;
- (void)_removeOldMusicRecommendationsInfoIfPossible;
- (void)_resetDomainAccessor;
- (void)_setLastSyncInfoRequestDate:(id)a3 prefix:(id)a4 forBundleIdentifier:(id)a5;
- (void)_setLegacyObject:(id)a3 forKey:(id)a4 ifRemoteDeviceMissingCapability:(id)a5;
- (void)_setNeedsSynchronize;
- (void)_setObject:(id)a3 forKey:(id)a4 shouldSynchronizeToPairedDevice:(BOOL)a5;
- (void)_setupNotifiers;
- (void)_writeDate:(id)a3 forKey:(id)a4 bundleID:(id)a5;
- (void)_writePropertiesToDefaults;
- (void)beginBatchUpdates;
- (void)clearAppActivityStatusDefaultsForBundleID:(id)a3;
- (void)clearPodcastsDefaults;
- (void)dispatcherDidReceiveNotificationFromOtherProcess:(id)a3;
- (void)dispatcherDidReceiveNotificationFromRemoteDevice:(id)a3;
- (void)endBatchUpdates;
- (void)setAssetSyncLimit:(id)a3;
- (void)setAssetSyncLimitType:(unint64_t)a3;
- (void)setAssetSyncPlaylist:(id)a3;
- (void)setAssetSyncPlaylistPersistentID:(id)a3;
- (void)setAssetSyncType:(unint64_t)a3;
- (void)setCatalogRecommendationsLastUpdateDate:(id)a3;
- (void)setInstallDateForBundleID:(id)a3;
- (void)setLastContentUsedDateForBundleID:(id)a3;
- (void)setLastFullySentAssetSyncPlaylistPersistentID:(id)a3;
- (void)setLastFullySentAssetSyncPlaylistVersion:(id)a3;
- (void)setLastLocalPlaybackDateForBundleID:(id)a3;
- (void)setLastUserLaunchDateForBundleID:(id)a3;
- (void)setLastUserPinningChangeDateForBundleID:(id)a3;
- (void)setLibraryRecommendationAlbums:(id)a3;
- (void)setLibraryRecommendationExpirationDate:(id)a3;
- (void)setLibraryRecommendationPlaylists:(id)a3;
- (void)setMusicRecommendationDict:(id)a3;
- (void)setPinnedAlbums:(id)a3;
- (void)setPinnedPlaylists:(id)a3;
- (void)setWorkoutPlaylistID:(id)a3;
@end

@implementation NMSyncDefaults

+ (id)sharedDefaults
{
  if (sharedDefaults___onceToken != -1)
  {
    +[NMSyncDefaults sharedDefaults];
  }

  v3 = sharedDefaults___sharedDefaults;

  return v3;
}

uint64_t __32__NMSyncDefaults_sharedDefaults__block_invoke()
{
  sharedDefaults___sharedDefaults = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NMSyncDefaults)init
{
  v6.receiver = self;
  v6.super_class = NMSyncDefaults;
  v2 = [(NMSyncDefaults *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__perDeviceSettingsDidResetNotification_ name:@"_NMPerDeviceSettingsDidResetNotification" object:0];

    [(NMSyncDefaults *)v2 _setupNotifiers];
    [(NMSyncDefaults *)v2 _reloadPropertiesFromDefaultsOnMainThread];
    v4 = v2;
  }

  return v2;
}

- (void)_reloadPropertiesFromDefaults
{
  v31 = *MEMORY[0x277D85DE8];
  [(NMSyncDefaults *)self _migrateDataIfNecessary];
  v3 = [(NMSyncDefaults *)self _companionSidePerDeviceDefaults];
  v4 = [v3 synchronize];
  v5 = [v3 objectForKey:@"SyncPlaylistID"];
  assetSyncPlaylistPersistentID = self->_assetSyncPlaylistPersistentID;
  self->_assetSyncPlaylistPersistentID = v5;

  self->_assetSyncLimitType = [v3 integerForKey:@"SyncAmountType"];
  v7 = [v3 objectForKey:@"SyncAmount"];
  assetSyncLimit = self->_assetSyncLimit;
  self->_assetSyncLimit = v7;

  self->_assetSyncType = [v3 integerForKey:@"SyncType"];
  v9 = [v3 objectForKey:@"LastFullSyncPlaylistID"];
  lastFullySentAssetSyncPlaylistPersistentID = self->_lastFullySentAssetSyncPlaylistPersistentID;
  self->_lastFullySentAssetSyncPlaylistPersistentID = v9;

  v11 = [v3 objectForKey:@"SyncPlaylistVers"];
  lastFullySentAssetSyncPlaylistVersion = self->_lastFullySentAssetSyncPlaylistVersion;
  self->_lastFullySentAssetSyncPlaylistVersion = v11;

  v13 = [v3 objectForKey:@"PairingID"];
  pairingID = self->_pairingID;
  self->_pairingID = v13;

  v15 = [v3 objectForKey:@"ModDate"];
  v16 = v15;
  if (v15)
  {
    v17 = MEMORY[0x277CBEAA8];
    [(NSDate *)v15 doubleValue];
    v15 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
  }

  modificationDate = self->_modificationDate;
  self->_modificationDate = v15;

  v19 = [MEMORY[0x277D2BCF8] sharedInstance];
  v20 = [v19 getActivePairedDevice];
  v21 = [v20 valueForProperty:*MEMORY[0x277D2BBB8]];
  v22 = [v21 UUIDString];

  v23 = self->_pairingID;
  if (v23 != v22 && ([(NSString *)v23 isEqual:v22]& 1) == 0)
  {
    v24 = NMLogForCategory(5);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_pairingID;
      v27 = 138412546;
      v28 = v25;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_25B27B000, v24, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] The pairing ID changed from %@ to %@; clearing pairing-specific defaults!", &v27, 0x16u);
    }

    objc_storeStrong(&self->_pairingID, v22);
    [(NMSyncDefaults *)self _clearAssetSyncPlaylistDependentDefaults];
    [(NMSyncDefaults *)self _writePropertiesToDefaults];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_migrateDataIfNecessary
{
  v122[1] = *MEMORY[0x277D85DE8];
  [(NMSyncDefaults *)self beginBatchUpdates];
  v3 = [(NMSyncDefaults *)self _companionSidePerDeviceDefaults];
  v4 = [v3 objectForKey:@"SyncDataMigrationRevision"];
  v5 = [v3 objectForKey:@"ModDate"];
  v6 = v5;
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = &off_25B2CE000;
  if (v7)
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] [Migration] New install. No migration needed.", buf, 2u);
    }

    v4 = &unk_286C8D538;
    [v3 setObject:&unk_286C8D538 forKey:@"SyncDataMigrationRevision"];
    v11 = MEMORY[0x277CCABB0];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [v11 numberWithDouble:?];
    [v3 setObject:v13 forKey:@"ModDate"];

    v14 = [v3 synchronize];
  }

  else if (!v3)
  {
    [(NMSyncDefaults *)self _removeOldMusicRecommendationsInfoIfPossible];
    v8 = 0;
    goto LABEL_79;
  }

  if (![v4 unsignedIntegerValue])
  {
    v15 = [v3 objectForKey:@"SyncAssetsEnabled"];
    v16 = [v3 integerForKey:@"SyncType"];
    if (v15 && ([v15 BOOLValue] & 1) != 0 || v16 == 1)
    {
      v17 = [v3 objectForKey:@"SyncPlaylistID"];
      v18 = 1;
    }

    else
    {
      v17 = [(NMSyncDefaults *)self _defaultPlaylistPersistentID];
      v18 = [v17 longLongValue] != 0;
    }

    [v3 setObject:&unk_286C8D550 forKey:@"SyncDataMigrationRevision"];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    [v3 setObject:v19 forKey:@"SyncType"];

    [v3 setObject:v17 forKey:@"SyncPlaylistID"];
    v20 = MEMORY[0x277CCABB0];
    v21 = [MEMORY[0x277CBEAA8] date];
    [v21 timeIntervalSinceReferenceDate];
    v22 = [v20 numberWithDouble:?];
    [v3 setObject:v22 forKey:@"ModDate"];

    [v3 removeObjectForKey:@"SyncAssetsEnabled"];
    v23 = [v3 synchronize];

    v8 = 1;
  }

  if ([v4 unsignedIntegerValue] <= 1)
  {
    if (![v3 integerForKey:@"SyncType"])
    {
      v24 = [(NMSyncDefaults *)self _defaultPlaylistPersistentID];
      v25 = [v24 longLongValue] != 0;
      [v3 setObject:v24 forKey:@"SyncPlaylistID"];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      [v3 setObject:v26 forKey:@"SyncType"];
    }

    [v3 setObject:&unk_286C8D568 forKey:@"SyncDataMigrationRevision"];
    v27 = MEMORY[0x277CCABB0];
    v28 = [MEMORY[0x277CBEAA8] date];
    [v28 timeIntervalSinceReferenceDate];
    v29 = [v27 numberWithDouble:?];
    [v3 setObject:v29 forKey:@"ModDate"];

    v30 = [v3 synchronize];
    v8 = 1;
  }

  if ([v4 unsignedIntegerValue] <= 2)
  {
    v31 = [v3 integerForKey:@"SyncType"];
    [v3 setObject:&unk_286C8D580 forKey:@"SyncDataMigrationRevision"];
    v32 = MEMORY[0x277CCABB0];
    v33 = [MEMORY[0x277CBEAA8] date];
    [v33 timeIntervalSinceReferenceDate];
    v34 = [v32 numberWithDouble:?];
    [v3 setObject:v34 forKey:@"ModDate"];

    if (v31 == 1)
    {
      v35 = [v3 objectForKey:@"SyncPlaylistID"];
      if (v35 && (v36 = v35, [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "longLongValue")}], v37 = objc_claimAutoreleasedReturnValue(), v36, v37))
      {
        v122[0] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
      }

      else
      {
        v38 = [MEMORY[0x277CBEA60] array];
      }

      [(NMSyncDefaults *)self _setObject:v38 forKey:@"PinnedPlaylists"];
    }

    buf[0] = 0;
    v39 = [v3 integerForKey:@"SyncAmountType" keyExistsAndHasValidFormat:buf];
    if ((buf[0] & 1) == 0)
    {
      v39 = [(NMSyncDefaults *)self assetSyncLimitType];
    }

    if (v39 == 1)
    {
      v118 = 0;
      v40 = [v3 integerForKey:@"SyncAmount" keyExistsAndHasValidFormat:&v118];
      if (v118)
      {
        v41 = v40;
      }

      else
      {
        v42 = [(NMSyncDefaults *)self assetSyncLimit];
        v41 = [v42 unsignedIntegerValue];
      }

      v43 = [(NMSyncDefaults *)self _spaceQuotaForNumberOfSongs:v41];
      if (v43 != v41)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v43];
        [v3 setObject:v44 forKey:@"SyncAmount"];
      }
    }

    if (buf[0] == 1)
    {
      [v3 removeObjectForKey:@"SyncAmountType"];
    }

    v45 = [v3 synchronize];
    v8 = 1;
  }

  v109 = v6;
  if ([v4 unsignedIntegerValue] <= 3)
  {
    [v3 setObject:&unk_286C8D598 forKey:@"SyncDataMigrationRevision"];
    v46 = MEMORY[0x277CCABB0];
    v47 = [MEMORY[0x277CBEAA8] date];
    [v47 timeIntervalSinceReferenceDate];
    v48 = [v46 numberWithDouble:?];
    [v3 setObject:v48 forKey:@"ModDate"];

    v49 = [v3 objectForKey:@"MusicRecommendations"];
    v50 = v49;
    if (v49)
    {
      v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v49, "count")}];
      v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v50, "count")}];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __41__NMSyncDefaults__migrateDataIfNecessary__block_invoke;
      v115[3] = &unk_27993E810;
      v116 = v51;
      v117 = v52;
      v53 = v52;
      v54 = v51;
      [v50 enumerateKeysAndObjectsUsingBlock:v115];
      [v3 setObject:v54 forKey:@"StoreMusicRecommendations"];
      [v3 setObject:v53 forKey:@"StoreMusicRecommendationsToExclude"];
    }

    v55 = [v3 objectForKey:@"PhoneDefaultsCapabilities"];
    if (([v55 containsObject:@"UsesSplitMusicRecommendations"] & 1) == 0)
    {
      if (v55)
      {
        [v55 arrayByAddingObject:@"UsesSplitMusicRecommendations"];
      }

      else
      {
        v121 = @"UsesSplitMusicRecommendations";
        [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
      }
      v56 = ;
      [v3 setObject:v56 forKey:@"PhoneDefaultsCapabilities"];
    }

    [v3 removeObjectForKey:@"LastRecommendationUpdateDate"];
    v57 = [v3 synchronize];
    v58 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v59 = [v3 domain];
    v60 = [MEMORY[0x277CBEB98] setWithObject:@"PhoneDefaultsCapabilities"];
    [v58 synchronizeNanoDomain:v59 keys:v60];

    v8 = 1;
  }

  [(NMSyncDefaults *)self _removeOldMusicRecommendationsInfoIfPossible];
  if ([v4 unsignedIntegerValue] > 5)
  {
    goto LABEL_66;
  }

  [v3 setObject:&unk_286C8D5B0 forKey:@"SyncDataMigrationRevision"];
  v61 = MEMORY[0x277CCABB0];
  v62 = [MEMORY[0x277CBEAA8] date];
  [v62 timeIntervalSinceReferenceDate];
  v63 = [v61 numberWithDouble:?];
  [v3 setObject:v63 forKey:@"ModDate"];

  [v3 objectForKey:@"StoreMusicRecommendations"];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v64 = v114 = 0u;
  v65 = [v64 countByEnumeratingWithState:&v111 objects:v120 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v112;
    while (2)
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v112 != v67)
        {
          objc_enumerationMutation(v64);
        }

        if ([*(*(&v111 + 1) + 8 * i) isEqualToString:@"HeavyRotation"])
        {
          v69 = v64;
          goto LABEL_65;
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v111 objects:v120 count:16];
      if (v66)
      {
        continue;
      }

      break;
    }
  }

  v69 = [v64 mutableCopy];
  if (!v69)
  {
    v69 = [MEMORY[0x277CBEB18] array];
  }

  [v69 addObject:NMSRecommendationRecentMusicIdentifier];
  [v3 setObject:v69 forKey:@"StoreMusicRecommendations"];
LABEL_65:

  v70 = [v3 synchronize];
  v71 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v72 = [v3 domain];
  v73 = [MEMORY[0x277CBEB98] setWithObject:@"StoreMusicRecommendations"];
  [v71 synchronizeNanoDomain:v72 keys:v73];

  v8 = 1;
  if (v3)
  {
LABEL_66:
    if ([v4 unsignedIntegerValue] <= 6)
    {
      [v3 setObject:&unk_286C8D5C8 forKey:@"SyncDataMigrationRevision"];
      v74 = MEMORY[0x277CCABB0];
      v75 = [MEMORY[0x277CBEAA8] date];
      [v75 timeIntervalSinceReferenceDate];
      v76 = [v74 numberWithDouble:?];
      [v3 setObject:v76 forKey:@"ModDate"];

      v77 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Music"];
      v78 = v77;
      if (v77)
      {
        [v77 removeObjectForKey:@"AllowsCellularDataDownloads"];
        v79 = [v78 synchronize];
      }

      v80 = [v3 synchronize];

      v8 = 1;
    }

    if ([v4 unsignedIntegerValue] <= 7)
    {
      [v3 setObject:&unk_286C8D5E0 forKey:@"SyncDataMigrationRevision"];
      v81 = MEMORY[0x277CCABB0];
      v82 = [MEMORY[0x277CBEAA8] date];
      [v82 timeIntervalSinceReferenceDate];
      v83 = [v81 numberWithDouble:?];
      [v3 setObject:v83 forKey:@"ModDate"];

      v84 = [v3 synchronize];
      v8 = 1;
    }

    if ([v4 unsignedIntegerValue] <= 8)
    {
      [v3 setObject:&unk_286C8D5F8 forKey:@"SyncDataMigrationRevision"];
      v85 = MEMORY[0x277CCABB0];
      v86 = [MEMORY[0x277CBEAA8] date];
      [v86 timeIntervalSinceReferenceDate];
      v87 = [v85 numberWithDouble:?];
      [v3 setObject:v87 forKey:@"ModDate"];

      v107 = [(NMSyncDefaults *)self _objectForKey:@"WorkoutPlaylist"];
      v106 = [(NMSyncDefaults *)self _objectForKey:@"PinnedPlaylists"];
      v88 = [(NMSyncDefaults *)self _objectForKey:@"PinnedAlbums"];
      v89 = [(NMSyncDefaults *)self _objectForKey:@"LibraryRecommendationPlaylists"];
      v90 = [(NMSyncDefaults *)self _objectForKey:@"LibraryRecommendationAlbums"];
      [MEMORY[0x277D2B598] midDataFromPlaylistPID:v107];
      v91 = v108 = v4;
      v92 = [MEMORY[0x277D2B598] midDataArrayFromPlaylistPIDs:v106];
      v93 = [MEMORY[0x277D2B598] midDataArrayFromAlbumPIDs:v88];
      v94 = [MEMORY[0x277D2B598] midDataArrayFromPlaylistPIDs:v89];
      v95 = [MEMORY[0x277D2B598] midDataArrayFromAlbumPIDs:v90];
      [(NMSyncDefaults *)self _setObject:v91 forKey:@"WorkoutPlaylistMID"];
      [(NMSyncDefaults *)self _setObject:v92 forKey:@"PinnedPlaylistMIDs"];
      [(NMSyncDefaults *)self _setObject:v93 forKey:@"PinnedAlbumMIDs"];
      [(NMSyncDefaults *)self _setObject:v94 forKey:@"LibraryRecommendationPlaylistMIDs"];
      [(NMSyncDefaults *)self _setObject:v95 forKey:@"LibraryRecommendationAlbumMIDs"];
      [(NMSyncDefaults *)self _addPhoneCapability:@"UsesMultiverseIdentifiers"];

      v4 = v108;
      v8 = 1;
    }

    v9 = &off_25B2CE000;
    if ([v4 unsignedIntegerValue] <= 9)
    {
      [v3 setObject:&unk_286C8D610 forKey:@"SyncDataMigrationRevision"];
      v96 = MEMORY[0x277CCABB0];
      v97 = [MEMORY[0x277CBEAA8] date];
      [v97 timeIntervalSinceReferenceDate];
      v98 = [v96 numberWithDouble:?];
      [v3 setObject:v98 forKey:@"ModDate"];

      [v3 removeObjectForKey:@"AvailableMediaStorageOnWatch"];
      v99 = [v3 synchronize];
      v8 = 1;
    }

    if ([v4 unsignedIntegerValue] <= 0xA)
    {
      [v3 setObject:&unk_286C8D628 forKey:@"SyncDataMigrationRevision"];
      v100 = MEMORY[0x277CCABB0];
      v101 = [MEMORY[0x277CBEAA8] date];
      [v101 timeIntervalSinceReferenceDate];
      v102 = [v100 numberWithDouble:?];
      [v3 setObject:v102 forKey:@"ModDate"];

      v103 = [v3 objectForKey:@"RecommendationExpirationDate"];
      [v3 setObject:v103 forKey:@"LibraryRecommendationExpirationDate"];

      [v3 removeObjectForKey:@"RecommendationExpirationDate"];
      v104 = [v3 synchronize];
      v8 = 1;
    }

    v6 = v109;
  }

  else
  {
    v9 = &off_25B2CE000;
  }

LABEL_79:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *(v9 + 368);
  block[2] = __41__NMSyncDefaults__migrateDataIfNecessary__block_invoke_338;
  block[3] = &unk_27993DD20;
  block[4] = self;
  if (_migrateDataIfNecessary_onceToken != -1)
  {
    dispatch_once(&_migrateDataIfNecessary_onceToken, block);
    if (!v8)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v8)
  {
LABEL_81:
    [(NMSNotificationDispatcher *)self->_settingsNotifier scheduleLocalDarwinNotification];
  }

LABEL_82:
  [(NMSyncDefaults *)self endBatchUpdates];

  v105 = *MEMORY[0x277D85DE8];
}

void __41__NMSyncDefaults__migrateDataIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"selected"];

    if (v7 && ([v7 BOOLValue] & 1) == 0)
    {
      [*(a1 + 40) addObject:v9];
    }
  }

  else
  {
    v8 = [v6 BOOLValue];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) addObject:v9];
    }
  }
}

- (NSDictionary)musicRecommendationDict
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(NMSyncDefaults *)self _objectForKey:@"StoreMusicRecommendations"];
  v4 = [(NMSyncDefaults *)self _objectForKey:@"StoreMusicRecommendationsToExclude"];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:v10 forKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v26;
    *&v14 = 138412290;
    v24 = v14;
    v17 = MEMORY[0x277CBEC28];
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = [v5 objectForKeyedSubscript:{v19, v24, v25}];

        if (!v20)
        {
          v21 = NMLogForCategory(5);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v34 = v19;
            _os_log_impl(&dword_25B27B000, v21, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] StoreMusicRecommendations does NOT contain excluded recommendation: %@!", buf, 0xCu);
          }
        }

        [v5 setObject:v17 forKeyedSubscript:v19];
      }

      v15 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)pinnedPlaylists
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"PinnedPlaylistMIDs"];
  v3 = [MEMORY[0x277D2B598] pidsFromMIDDataArray:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v6 = v5;

  return v6;
}

- (NSArray)pinnedAlbums
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"PinnedAlbumMIDs"];
  v3 = [MEMORY[0x277D2B598] pidsFromMIDDataArray:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v6 = v5;

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p>", v5, self];

  v7 = MEMORY[0x277CCAB68];
  v8 = [(NMSyncDefaults *)self musicRecommendationDict];
  v9 = [(NMSyncDefaults *)self workoutPlaylistID];
  v10 = [v7 stringWithFormat:@"Music Recommendations: %@, Workout Playlist ID: %@", v8, v9];

  [v6 appendFormat:@" - Music <%@>", v10];
  v11 = [MEMORY[0x277CCAB68] string];
  v12 = [NMSPodcastsDownloadSettings alloc];
  v13 = [(NMSyncDefaults *)self objectForKey:@"PodcastsUpNextDownloadSettings"];
  v14 = [(NMSPodcastsDownloadSettings *)v12 initWithCollectionType:0 dictionary:v13];

  [v11 appendFormat:@"Up Next: %@", v14];
  v15 = [NMSPodcastsDownloadSettings alloc];
  v16 = [(NMSyncDefaults *)self objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
  v17 = [(NMSPodcastsDownloadSettings *)v15 initWithCollectionType:1 dictionary:v16];

  [v11 appendFormat:@", Saved: %@", v17];
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [(NMSyncDefaults *)self objectForKey:@"PodcastsStationDownloadSettings"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __29__NMSyncDefaults_description__block_invoke;
  v32[3] = &unk_27993E5E8;
  v20 = v18;
  v33 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:v32];

  [v11 appendFormat:@", Stations: %@", v20];
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v22 = [(NMSyncDefaults *)self objectForKey:@"PodcastsShowDownloadSettings"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __29__NMSyncDefaults_description__block_invoke_2;
  v30[3] = &unk_27993E5E8;
  v23 = v21;
  v31 = v23;
  [v22 enumerateKeysAndObjectsUsingBlock:v30];

  [v11 appendFormat:@", Shows: %@", v23];
  [v6 appendFormat:@" - Podcasts <%@>", v11];
  v24 = [MEMORY[0x277CCAB68] stringWithFormat:@"Want to Read Enabled: %x", -[NMSyncDefaults wantToReadEnabled](self, "wantToReadEnabled")];
  if ([(NMSyncDefaults *)self wantToReadEnabled])
  {
    v25 = [(NMSyncDefaults *)self wantToReadAudiobooks];
    [v24 appendFormat:@", Want to Read Books:%@", v25];
  }

  [v24 appendFormat:@", Reading Now Enabled: %x", -[NMSyncDefaults readingNowEnabled](self, "readingNowEnabled")];
  if ([(NMSyncDefaults *)self readingNowEnabled])
  {
    v26 = [(NMSyncDefaults *)self readingNowAudiobooks];
    [v24 appendFormat:@", Reading Now Books: %@", v26];
  }

  v27 = [(NMSyncDefaults *)self pinnedAudiobooks];
  [v24 appendFormat:@", Pinned Books: %@", v27];

  [v6 appendFormat:@" - Books <%@>", v24];
  v28 = [v6 copy];

  return v28;
}

void __29__NMSyncDefaults_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) setObject:v6 forKey:v7];
  }
}

void __29__NMSyncDefaults_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) setObject:v6 forKey:v7];
  }
}

- (void)beginBatchUpdates
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Begin batch updates.", v4, 2u);
  }

  [(NMSNotificationDispatcher *)self->_settingsNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_musicPinningSelectionsNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_recoSelectionsNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_libraryRecoNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_storeRecoNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_podcastsPinningSelectionsNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_audiobooksPinningSelectionsNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncStateNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncInfoNotifier beginWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncInfoRequestDateNotifier beginWaitingForUpdates];
}

- (void)endBatchUpdates
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] End batch updates.", v4, 2u);
  }

  [(NMSNotificationDispatcher *)self->_settingsNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_musicPinningSelectionsNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_recoSelectionsNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_libraryRecoNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_storeRecoNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_podcastsPinningSelectionsNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_audiobooksPinningSelectionsNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncStateNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncInfoNotifier endWaitingForUpdates];
  [(NMSNotificationDispatcher *)self->_syncInfoRequestDateNotifier endWaitingForUpdates];
}

- (void)dispatcherDidReceiveNotificationFromRemoteDevice:(id)a3
{
  if (self->_settingsNotifier == a3)
  {
    [(NMSyncDefaults *)self _reloadPropertiesFromDefaultsOnMainThread];

    [(NMSyncDefaults *)self _removeOldMusicRecommendationsInfoIfPossible];
  }
}

- (void)dispatcherDidReceiveNotificationFromOtherProcess:(id)a3
{
  if (self->_settingsNotifier == a3)
  {
    [(NMSyncDefaults *)self _reloadPropertiesFromDefaultsOnMainThread];
  }
}

- (void)_setupNotifiers
{
  v101[33] = *MEMORY[0x277D85DE8];
  v3 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.settings"];
  settingsNotifier = self->_settingsNotifier;
  self->_settingsNotifier = v3;

  [(NMSNotificationDispatcher *)self->_settingsNotifier setDelegate:self];
  v5 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.music-pinning-selections"];
  musicPinningSelectionsNotifier = self->_musicPinningSelectionsNotifier;
  self->_musicPinningSelectionsNotifier = v5;

  v7 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.reco-selections"];
  recoSelectionsNotifier = self->_recoSelectionsNotifier;
  self->_recoSelectionsNotifier = v7;

  v9 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.reco-library"];
  libraryRecoNotifier = self->_libraryRecoNotifier;
  self->_libraryRecoNotifier = v9;

  v11 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.reco-store"];
  storeRecoNotifier = self->_storeRecoNotifier;
  self->_storeRecoNotifier = v11;

  v13 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.podcasts-pinning-selections"];
  podcastsPinningSelectionsNotifier = self->_podcastsPinningSelectionsNotifier;
  self->_podcastsPinningSelectionsNotifier = v13;

  v15 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.audiobooks-pinning-selections"];
  audiobooksPinningSelectionsNotifier = self->_audiobooksPinningSelectionsNotifier;
  self->_audiobooksPinningSelectionsNotifier = v15;

  v17 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.audiobooks-recommendations"];
  audiobooksRecommendationsNotifier = self->_audiobooksRecommendationsNotifier;
  self->_audiobooksRecommendationsNotifier = v17;

  v19 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.sync-state"];
  syncStateNotifier = self->_syncStateNotifier;
  self->_syncStateNotifier = v19;

  v21 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.sync-info"];
  syncInfoNotifier = self->_syncInfoNotifier;
  self->_syncInfoNotifier = v21;

  v23 = [[NMSNotificationDispatcher alloc] initWithNotificationName:@"com.apple.nanomusicsync.sync-info-request-date"];
  syncInfoRequestDateNotifier = self->_syncInfoRequestDateNotifier;
  self->_syncInfoRequestDateNotifier = v23;

  [(NMSNotificationDispatcher *)self->_syncInfoRequestDateNotifier setDelegate:self];
  v99 = self->_musicPinningSelectionsNotifier;
  v100[0] = @"PinnedPlaylistMIDs";
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
  v101[0] = v66;
  v100[1] = @"WorkoutPlaylistMID";
  v98 = self->_musicPinningSelectionsNotifier;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
  v101[1] = v65;
  v100[2] = @"PinnedAlbumMIDs";
  v97 = self->_musicPinningSelectionsNotifier;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
  v101[2] = v64;
  v100[3] = @"LibraryRecommendationPlaylistMIDs";
  v96 = self->_libraryRecoNotifier;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
  v101[3] = v63;
  v100[4] = @"LibraryRecommendationAlbumMIDs";
  v95 = self->_libraryRecoNotifier;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
  v101[4] = v62;
  v100[5] = @"StoreMusicRecommendations";
  v94 = self->_recoSelectionsNotifier;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
  v101[5] = v61;
  v100[6] = @"StoreMusicRecommendationsToExclude";
  v93 = self->_recoSelectionsNotifier;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
  v101[6] = v60;
  v100[7] = @"CachedRecommendationsData";
  v92 = self->_storeRecoNotifier;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
  v101[7] = v59;
  v100[8] = @"PodcastsUpNextDownloadSettings";
  v91 = self->_podcastsPinningSelectionsNotifier;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  v101[8] = v58;
  v100[9] = @"PodcastsSavedEpisodesDownloadSettings";
  v90 = self->_podcastsPinningSelectionsNotifier;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
  v101[9] = v57;
  v100[10] = @"PodcastsStationDownloadSettings";
  v89 = self->_podcastsPinningSelectionsNotifier;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v101[10] = v56;
  v100[11] = @"PodcastsShowDownloadSettings";
  v88 = self->_podcastsPinningSelectionsNotifier;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  v101[11] = v55;
  v100[12] = @"PinnedAudiobooks";
  v87 = self->_audiobooksPinningSelectionsNotifier;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v101[12] = v54;
  v100[13] = @"WantToReadEnabled";
  v86 = self->_audiobooksPinningSelectionsNotifier;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v101[13] = v53;
  v100[14] = @"WantToReadAudiobooks";
  v85 = self->_audiobooksRecommendationsNotifier;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v101[14] = v52;
  v100[15] = @"ReadingNowEnabled";
  v84 = self->_audiobooksPinningSelectionsNotifier;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v101[15] = v51;
  v100[16] = @"ReadingNowAudiobooks";
  v83 = self->_audiobooksRecommendationsNotifier;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v101[16] = v50;
  v100[17] = @"AudiobookDownloadLimit";
  v82 = self->_audiobooksPinningSelectionsNotifier;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v101[17] = v49;
  v100[18] = @"ClientPinningSettingsToken";
  v81 = self->_syncStateNotifier;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v101[18] = v48;
  v100[19] = @"SyncStateDict";
  v80 = self->_syncStateNotifier;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v101[19] = v47;
  v100[20] = @"MusicSyncInfo";
  v79 = self->_syncInfoNotifier;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v101[20] = v46;
  v100[21] = @"PodcastsSyncInfo";
  v78 = self->_syncInfoNotifier;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v101[21] = v45;
  v100[22] = @"AudiobooksSyncInfo";
  v77 = self->_syncInfoNotifier;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v101[22] = v44;
  v100[23] = @"DebugSyncInfoEnabled";
  v76 = self->_syncInfoNotifier;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v101[23] = v43;
  v42 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastSyncInfoRequestDate" forBundleIdentifier:@"com.apple.NanoMusic"];
  v100[24] = v42;
  v75 = self->_syncInfoRequestDateNotifier;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v101[24] = v41;
  v40 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastSyncInfoRequestDate" forBundleIdentifier:@"com.apple.podcasts"];
  v100[25] = v40;
  v74 = self->_syncInfoRequestDateNotifier;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
  v101[25] = v39;
  v38 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastSyncInfoRequestDate" forBundleIdentifier:@"com.apple.NanoBooks"];
  v100[26] = v38;
  v73 = self->_syncInfoRequestDateNotifier;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  v101[26] = v37;
  v25 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastLocalSyncInfoRequestDate" forBundleIdentifier:@"com.apple.NanoMusic"];
  v100[27] = v25;
  v72 = self->_syncInfoRequestDateNotifier;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  v101[27] = v26;
  v27 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastLocalSyncInfoRequestDate" forBundleIdentifier:@"com.apple.podcasts"];
  v100[28] = v27;
  v71 = self->_syncInfoRequestDateNotifier;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  v101[28] = v28;
  v29 = [(NMSyncDefaults *)self _defaultWithPrefix:@"LastLocalSyncInfoRequestDate" forBundleIdentifier:@"com.apple.NanoBooks"];
  v100[29] = v29;
  v70 = self->_syncInfoRequestDateNotifier;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v101[29] = v30;
  v100[30] = @"WatchDefaultsCapabilities";
  v69 = self->_settingsNotifier;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v101[30] = v31;
  v100[31] = @"PhoneDefaultsCapabilities";
  v68 = self->_settingsNotifier;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
  v101[31] = v32;
  v100[32] = @"UsesSplitMusicRecommendations";
  v67 = self->_settingsNotifier;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v101[32] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:33];
  notifiersDict = self->_notifiersDict;
  self->_notifiersDict = v34;

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deviceHasCapability:(id)a3 forCapabilitiesKey:(id)a4
{
  v6 = a3;
  v7 = [(NMSyncDefaults *)self _objectForKey:a4];
  LOBYTE(self) = [v7 containsObject:v6];

  return self;
}

- (void)_addCapability:(id)a3 forCapabilitiesKey:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NMSyncDefaults *)self _objectForKey:v7];
  if (([v8 containsObject:v6] & 1) == 0)
  {
    if (v8)
    {
      v9 = [v8 arrayByAddingObject:v6];
    }

    else
    {
      v12[0] = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    }

    v10 = v9;
    [(NMSyncDefaults *)self _setObject:v9 forKey:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reloadPropertiesFromDefaultsOnMainThread
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__NMSyncDefaults__reloadPropertiesFromDefaultsOnMainThread__block_invoke;
  v3[3] = &unk_27993DD20;
  v3[4] = self;
  v2 = MEMORY[0x25F865990](v3, a2);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v2);
  }
}

- (void)_perDeviceSettingsDidResetNotification:(id)a3
{
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] The active device changed; reloading Music sync defaults.", v5, 2u);
  }

  [(NMSyncDefaults *)self _reloadPropertiesFromDefaultsOnMainThread];
}

- (void)_resetDomainAccessor
{
  domainAccessorQueue = self->_domainAccessorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NMSyncDefaults__resetDomainAccessor__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_sync(domainAccessorQueue, block);
}

void __38__NMSyncDefaults__resetDomainAccessor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_233);
}

void __38__NMSyncDefaults__resetDomainAccessor__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"_NMPerDeviceSettingsDidResetNotification" object:0];
}

- (id)_companionSidePerDeviceDefaults
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__NMSyncDefaults__companionSidePerDeviceDefaults__block_invoke;
  v13[3] = &unk_27993DD20;
  v13[4] = self;
  if (_companionSidePerDeviceDefaults___onceToken != -1)
  {
    dispatch_once(&_companionSidePerDeviceDefaults___onceToken, v13);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  domainAccessorQueue = self->_domainAccessorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NMSyncDefaults__companionSidePerDeviceDefaults__block_invoke_239;
  block[3] = &unk_27993E410;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(domainAccessorQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__NMSyncDefaults__companionSidePerDeviceDefaults__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.NanoMusicSync.domainAccessorQueue", 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__NMSyncDefaults__companionSidePerDeviceDefaults__block_invoke_2;
  v10[3] = &unk_27993E7E8;
  v10[4] = *(a1 + 32);
  v5 = MEMORY[0x25F865990](v10);
  v6 = [*MEMORY[0x277D2BC70] UTF8String];
  v7 = MEMORY[0x277D85CD0];
  notify_register_dispatch(v6, &_NMPerDeviceSettingsDidResetNotification_block_invoke___unpairNotifyToken, MEMORY[0x277D85CD0], v5);
  notify_register_dispatch([*MEMORY[0x277D2BC60] UTF8String], &_NMPerDeviceSettingsDidResetNotification_block_invoke___pairNotifyToken, v7, v5);

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel__resetDomainAccessor name:*MEMORY[0x277D2BC48] object:0];

  v9 = [MEMORY[0x277D2BCF8] sharedInstance];
}

void __49__NMSyncDefaults__companionSidePerDeviceDefaults__block_invoke_239(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoMusicSync"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (void)_writePropertiesToDefaults
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NMSyncDefaults *)self _companionSidePerDeviceDefaults];
  v4 = v3;
  if (v3)
  {
    [v3 setObject:self->_assetSyncPlaylistPersistentID forKey:@"SyncPlaylistID"];
    [v4 setObject:self->_lastFullySentAssetSyncPlaylistPersistentID forKey:@"LastFullSyncPlaylistID"];
    [v4 setObject:self->_lastFullySentAssetSyncPlaylistVersion forKey:@"SyncPlaylistVers"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_assetSyncLimitType];
    [v4 setObject:v5 forKey:@"SyncAmountType"];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_assetSyncType];
    [v4 setObject:v6 forKey:@"SyncType"];

    [v4 setObject:self->_assetSyncLimit forKey:@"SyncAmount"];
    [v4 setObject:self->_pairingID forKey:@"PairingID"];
    v7 = MEMORY[0x277CCABB0];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
    [v4 setObject:v9 forKey:@"ModDate"];

    v10 = [v4 synchronize];
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Non-NPS managed properties were updated: %@", &v13, 0xCu);
    }

    [(NMSNotificationDispatcher *)self->_settingsNotifier scheduleLocalDarwinNotification];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __41__NMSyncDefaults__migrateDataIfNecessary__block_invoke_338(uint64_t a1)
{
  v2 = [*(a1 + 32) _objectForKey:@"CachedRecommendationsResponse"];
  if (v2)
  {
    [*(a1 + 32) _removeObjectForKey:@"CachedRecommendationsResponse"];
    [*(a1 + 32) _removeObjectForKey:@"LastRecommendationUpdateDate"];
  }

  [*(a1 + 32) _removeObjectForKey:@"SelectedStoreLibraryRecommendationAlbums"];
  [*(a1 + 32) _removeObjectForKey:@"SelectedStoreLibraryRecommendationPlaylists"];
}

- (void)_removeOldMusicRecommendationsInfoIfPossible
{
  [(NMSyncDefaults *)self beginBatchUpdates];
  v3 = [(NMSyncDefaults *)self _companionSidePerDeviceDefaults];
  v4 = [v3 synchronize];
  v5 = [v3 objectForKey:@"SyncDataMigrationRevision"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = &unk_286C8D640;
  }

  if ([v5 unsignedIntegerValue] <= 4)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] The old musicRecommendations information has not been removed yet.", buf, 2u);
    }

    v7 = [v3 objectForKey:@"PhoneDefaultsCapabilities"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v7 = 0;
    }

    v8 = [v3 objectForKey:@"WatchDefaultsCapabilities"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = 0;
    }

    if ([v7 containsObject:@"UsesSplitMusicRecommendations"] && objc_msgSend(v8, "containsObject:", @"UsesSplitMusicRecommendations"))
    {
      [v3 setObject:&unk_286C8D658 forKey:@"SyncDataMigrationRevision"];
      v9 = MEMORY[0x277CCABB0];
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSinceReferenceDate];
      v11 = [v9 numberWithDouble:?];
      [v3 setObject:v11 forKey:@"ModDate"];

      [v3 removeObjectForKey:@"MusicRecommendations"];
      v12 = [v3 synchronize];
      v13 = NMLogForCategory(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Neither watch nor phone require the old musicRecommendations information anymore. Deleting it.", v17, 2u);
      }
    }

    v14 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v15 = [v3 domain];
    v16 = [MEMORY[0x277CBEB98] setWithObject:@"PhoneDefaultsCapabilities"];
    [v14 synchronizeNanoDomain:v15 keys:v16];
  }

  [(NMSyncDefaults *)self endBatchUpdates];
}

- (unint64_t)_spaceQuotaForNumberOfSongs:(unint64_t)a3
{
  v3 = 2000;
  if (a3 < 0xC9)
  {
    v3 = 1000;
  }

  if (a3 >= 0x65)
  {
    return v3;
  }

  else
  {
    return 500;
  }
}

- (id)_defaultPlaylistPersistentID
{
  v3 = [(NMSyncDefaults *)self _playlistPersistentIDForPlaylistName:@"Recently Added"];
  if (!v3)
  {
    v3 = [(NMSyncDefaults *)self _playlistPersistentIDForPlaylistName:@"Recently Played"];
    if (!v3)
    {
      v3 = &unk_286C8D640;
    }
  }

  return v3;
}

- (id)_playlistPersistentIDForPlaylistName:(id)a3
{
  v3 = a3;
  v4 = MLFrameworkBundle();
  v5 = [v4 localizedStringForKey:v3 value:&stru_286C836D8 table:@"MLLocalizable"];

  v6 = [MEMORY[0x277CD5E30] predicateWithValue:v5 forProperty:*MEMORY[0x277CD5930] comparisonType:0];
  v7 = [MEMORY[0x277CD5E38] playlistsQuery];
  [v7 addFilterPredicate:v6];
  v8 = [v7 collectionPersistentIdentifiers];
  v9 = [v8 firstObject];

  return v9;
}

- (void)_setNeedsSynchronize
{
  if (!self->_needsSync)
  {
    self->_needsSync = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__NMSyncDefaults__setNeedsSynchronize__block_invoke;
    block[3] = &unk_27993DD20;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_clearAssetSyncPlaylistDependentDefaults
{
  lastFullySentAssetSyncPlaylistPersistentID = self->_lastFullySentAssetSyncPlaylistPersistentID;
  self->_lastFullySentAssetSyncPlaylistPersistentID = 0;

  lastFullySentAssetSyncPlaylistVersion = self->_lastFullySentAssetSyncPlaylistVersion;
  self->_lastFullySentAssetSyncPlaylistVersion = 0;

  [(NMSyncDefaults *)self _setNeedsSynchronize];
}

- (NSNumber)assetSyncLimit
{
  assetSyncLimit = self->_assetSyncLimit;
  if (assetSyncLimit)
  {
    v4 = assetSyncLimit;
  }

  else
  {
    if (self->_assetSyncLimitType)
    {
      v4 = &unk_286C8D688;
    }

    else
    {
      v4 = &unk_286C8D670;
    }
  }

  return v4;
}

- (void)setAssetSyncLimit:(id)a3
{
  v4 = a3;
  assetSyncLimit = self->_assetSyncLimit;
  if (assetSyncLimit != v4)
  {
    v8 = v4;
    assetSyncLimit = [assetSyncLimit isEqual:v4];
    v4 = v8;
    if ((assetSyncLimit & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_assetSyncLimit;
      self->_assetSyncLimit = v6;

      assetSyncLimit = [(NMSyncDefaults *)self _setNeedsSynchronize];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](assetSyncLimit, v4);
}

- (void)setAssetSyncLimitType:(unint64_t)a3
{
  if (self->_assetSyncLimitType != a3)
  {
    self->_assetSyncLimitType = a3;
    [(NMSyncDefaults *)self _setNeedsSynchronize];
  }
}

- (void)setAssetSyncType:(unint64_t)a3
{
  if (self->_assetSyncType != a3)
  {
    self->_assetSyncType = a3;
    [(NMSyncDefaults *)self _clearAssetSyncPlaylistDependentDefaults];

    [(NMSyncDefaults *)self _setNeedsSynchronize];
  }
}

- (void)setAssetSyncPlaylistPersistentID:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSNumber *)self->_assetSyncPlaylistPersistentID isEqualToNumber:v4])
  {
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &unk_286C8D640;
    }

    v6 = v5;
    if ([v6 isEqualToNumber:&unk_286C8D640])
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    v8 = [v6 copy];
    assetSyncPlaylistPersistentID = self->_assetSyncPlaylistPersistentID;
    self->_assetSyncPlaylistPersistentID = v8;

    [(NMSyncDefaults *)self setPinnedPlaylists:v7];
    [(NMSyncDefaults *)self _clearAssetSyncPlaylistDependentDefaults];
    [(NMSyncDefaults *)self _setNeedsSynchronize];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setLastFullySentAssetSyncPlaylistPersistentID:(id)a3
{
  v4 = a3;
  lastFullySentAssetSyncPlaylistPersistentID = self->_lastFullySentAssetSyncPlaylistPersistentID;
  if (lastFullySentAssetSyncPlaylistPersistentID != v4)
  {
    v8 = v4;
    lastFullySentAssetSyncPlaylistPersistentID = [lastFullySentAssetSyncPlaylistPersistentID isEqual:v4];
    v4 = v8;
    if ((lastFullySentAssetSyncPlaylistPersistentID & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_lastFullySentAssetSyncPlaylistPersistentID;
      self->_lastFullySentAssetSyncPlaylistPersistentID = v6;

      lastFullySentAssetSyncPlaylistPersistentID = [(NMSyncDefaults *)self _setNeedsSynchronize];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](lastFullySentAssetSyncPlaylistPersistentID, v4);
}

- (void)setLastFullySentAssetSyncPlaylistVersion:(id)a3
{
  v5 = a3;
  lastFullySentAssetSyncPlaylistVersion = self->_lastFullySentAssetSyncPlaylistVersion;
  if (lastFullySentAssetSyncPlaylistVersion != v5)
  {
    v7 = v5;
    lastFullySentAssetSyncPlaylistVersion = [lastFullySentAssetSyncPlaylistVersion isEqual:v5];
    v5 = v7;
    if ((lastFullySentAssetSyncPlaylistVersion & 1) == 0)
    {
      objc_storeStrong(&self->_lastFullySentAssetSyncPlaylistVersion, a3);
      lastFullySentAssetSyncPlaylistVersion = [(NMSyncDefaults *)self _setNeedsSynchronize];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](lastFullySentAssetSyncPlaylistVersion, v5);
}

- (void)setPinnedPlaylists:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [MEMORY[0x277D2B598] midDataArrayFromPlaylistPIDs:v5];
  }

  else
  {
    v4 = 0;
  }

  [(NMSyncDefaults *)self _setObject:v4 forKey:@"PinnedPlaylistMIDs"];
  [(NMSyncDefaults *)self _setLegacyObject:v5 forKey:@"PinnedPlaylists" ifRemoteDeviceMissingCapability:@"UsesMultiverseIdentifiers"];
}

- (NSNumber)workoutPlaylistID
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"WorkoutPlaylistMID"];
  v3 = [MEMORY[0x277D2B598] pidFromMIDData:v2];

  return v3;
}

- (void)setWorkoutPlaylistID:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277D2B598] midDataFromPlaylistPID:v4];
  }

  else
  {
    v5 = 0;
  }

  [(NMSyncDefaults *)self _setObject:v5 forKey:@"WorkoutPlaylistMID"];
  [(NMSyncDefaults *)self _setLegacyObject:v6 forKey:@"WorkoutPlaylist" ifRemoteDeviceMissingCapability:@"UsesMultiverseIdentifiers"];
}

- (void)setPinnedAlbums:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [MEMORY[0x277D2B598] midDataArrayFromAlbumPIDs:v5];
  }

  else
  {
    v4 = 0;
  }

  [(NMSyncDefaults *)self _setObject:v4 forKey:@"PinnedAlbumMIDs"];
  [(NMSyncDefaults *)self _setLegacyObject:v5 forKey:@"PinnedAlbums" ifRemoteDeviceMissingCapability:@"UsesMultiverseIdentifiers"];
}

- (NSArray)pinnedPodcastFeedURLs
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"PinnedPodcastFeedURLs"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (NSArray)pinnedPodcastStationUUIDs
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"PinnedPodcastStationUUIDs"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (void)clearPodcastsDefaults
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Clearing Podcasts defaults", v4, 2u);
  }

  [(NMSyncDefaults *)self _removeObjectForKey:@"PodcastDownloadOrders"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"PodcastEpisodeLimits"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"PinnedPodcastsAreUserSet"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"ListenNowPodcastFeedURLs"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"SavedEpisodesEnabled"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"PinnedPodcastFeedURLs"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"PinnedPodcastStationUUIDs"];
  [(NMSyncDefaults *)self _removeObjectForKey:@"PodcastSizeEstimationData"];
}

- (NSArray)wantToReadAudiobooks
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"WantToReadAudiobooks"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (NSArray)readingNowAudiobooks
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"ReadingNowAudiobooks"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (NSArray)pinnedAudiobooks
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"PinnedAudiobooks"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (NSArray)libraryRecommendationAlbums
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"LibraryRecommendationAlbumMIDs"];
  v3 = [MEMORY[0x277D2B598] pidsFromMIDDataArray:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v6 = v5;

  return v6;
}

- (void)setLibraryRecommendationAlbums:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [MEMORY[0x277D2B598] midDataArrayFromAlbumPIDs:v5];
  }

  else
  {
    v4 = 0;
  }

  [(NMSyncDefaults *)self _setObject:v4 forKey:@"LibraryRecommendationAlbumMIDs"];
  [(NMSyncDefaults *)self _setLegacyObject:v5 forKey:@"LibraryRecommendationAlbums" ifRemoteDeviceMissingCapability:@"UsesMultiverseIdentifiers"];
}

- (NSArray)libraryRecommendationPlaylists
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"LibraryRecommendationPlaylistMIDs"];
  v3 = [MEMORY[0x277D2B598] pidsFromMIDDataArray:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v6 = v5;

  return v6;
}

- (void)setLibraryRecommendationPlaylists:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [MEMORY[0x277D2B598] midDataArrayFromPlaylistPIDs:v5];
  }

  else
  {
    v4 = 0;
  }

  [(NMSyncDefaults *)self _setObject:v4 forKey:@"LibraryRecommendationPlaylistMIDs"];
  [(NMSyncDefaults *)self _setLegacyObject:v5 forKey:@"LibraryRecommendationPlaylists" ifRemoteDeviceMissingCapability:@"UsesMultiverseIdentifiers"];
}

- (void)setMusicRecommendationDict:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __45__NMSyncDefaults_setMusicRecommendationDict___block_invoke;
    v13 = &unk_27993E810;
    v14 = v6;
    v15 = v7;
    v8 = v7;
    v9 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:&v10];
    [(NMSyncDefaults *)self _setObject:v8 forKey:@"StoreMusicRecommendationsToExclude", v10, v11, v12, v13];
  }

  else
  {
    [(NMSyncDefaults *)self _removeObjectForKey:@"StoreMusicRecommendationsToExclude"];
  }

  if ([(NMSyncDefaults *)self _continueUsingMusicRecommendationKey])
  {
    [(NMSyncDefaults *)self _preSeed2_setMusicRecommendationDict:v5];
  }
}

void __45__NMSyncDefaults_setMusicRecommendationDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:v7];
  LOBYTE(v5) = [v6 BOOLValue];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (BOOL)_continueUsingMusicRecommendationKey
{
  v2 = [(NMSyncDefaults *)self _companionSidePerDeviceDefaults];
  v3 = [v2 objectForKey:@"SyncDataMigrationRevision"];
  v4 = [v3 unsignedIntegerValue] < 5;

  return v4;
}

- (NSDate)libraryRecommendationExpirationDate
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"LibraryRecommendationExpirationDate"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEAA8];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLibraryRecommendationExpirationDate:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCABB0];
    [a3 timeIntervalSinceReferenceDate];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(NMSyncDefaults *)self _setObject:v5 forKey:@"LibraryRecommendationExpirationDate"];
}

- (NSDate)catalogRecommendationsLastUpdateDate
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"CatalogRecommendationsLastUpdateDate"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEAA8];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCatalogRecommendationsLastUpdateDate:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCABB0];
    [a3 timeIntervalSinceReferenceDate];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(NMSyncDefaults *)self _setObject:v5 forKey:@"CatalogRecommendationsLastUpdateDate"];
}

- (NSNumber)minimumNumberOfRecentMusicModelObjects
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"MinimumNumberOfRecentMusicModelObjects"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_286C8D6A0;
  }

  v5 = v4;

  return v4;
}

- (id)_lastSyncInfoRequestDateWithPrefix:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = [(NMSyncDefaults *)self _defaultWithPrefix:a3 forBundleIdentifier:a4];
  v6 = [(NMSyncDefaults *)self _objectForKey:v5];
  v7 = v6;
  v8 = MEMORY[0x277CBEAA8];
  if (v6)
  {
    [v6 doubleValue];
    [v8 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v9 = ;

  return v9;
}

- (void)_setLastSyncInfoRequestDate:(id)a3 prefix:(id)a4 forBundleIdentifier:(id)a5
{
  v8 = a3;
  v13 = [(NMSyncDefaults *)self _defaultWithPrefix:a4 forBundleIdentifier:a5];
  v9 = MEMORY[0x277CCABB0];
  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  [(NMSyncDefaults *)self _setObject:v12 forKey:v13];
}

- (BOOL)debugSyncInfoEnabled
{
  v2 = [(NMSyncDefaults *)self _objectForKey:@"DebugSyncInfoEnabled"];
  v3 = v2 != 0;

  return v3;
}

- (id)_dateValueForKey:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NMSyncDefaults *)self _objectForKey:@"AppActivityStatus"];
  v9 = [v8 objectForKey:v6];

  v10 = [v9 objectForKey:v7];

  return v10;
}

- (void)_writeDate:(id)a3 forKey:(id)a4 bundleID:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NMSyncDefaults *)self _objectForKey:@"AppActivityStatus"];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    v12 = [v11 objectForKey:v9];
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
    [v13 setObject:v14 forKey:v8];
    [v11 setObject:v13 forKey:v9];

    v9 = v13;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v14 forKey:v8];
    v11 = [MEMORY[0x277CBEB38] dictionaryWithObject:v12 forKey:v9];
  }

  [(NMSyncDefaults *)self _setObject:v11 forKey:@"AppActivityStatus"];
}

- (void)clearAppActivityStatusDefaultsForBundleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Clearing app activity status defaults for %@", &v9, 0xCu);
  }

  v6 = [(NMSyncDefaults *)self _objectForKey:@"AppActivityStatus"];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
  [v7 removeObjectForKey:v4];
  [(NMSyncDefaults *)self _setObject:v7 forKey:@"AppActivityStatus"];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastUserLaunchDateForBundleID:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [(NMSyncDefaults *)self _writeDate:v6 forKey:@"LastUserLaunchDate" bundleID:v5];
}

- (void)setLastUserPinningChangeDateForBundleID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [(NMSyncDefaults *)self _writeDate:v5 forKey:@"LastUserPinningChangeDate" bundleID:v4];

  v6 = NMLogForCategory(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Set last user pinning change date for bundle %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLastLocalPlaybackDateForBundleID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [(NMSyncDefaults *)self _writeDate:v5 forKey:@"LastLocalPlaybackDate" bundleID:v4];

  v6 = NMLogForCategory(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Set last local playback date for bundle %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setInstallDateForBundleID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [(NMSyncDefaults *)self _writeDate:v5 forKey:@"InstallDate" bundleID:v4];

  v6 = NMLogForCategory(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Set install date for bundle %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLastContentUsedDateForBundleID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [(NMSyncDefaults *)self _writeDate:v5 forKey:@"LastContentUsedDate" bundleID:v4];

  v6 = NMLogForCategory(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Set last content used date for bundle %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)dormancyIntervalInHoursForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NMSyncDefaults *)self _objectForKey:@"AppActivityStatus"];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 objectForKey:@"HoursUntilDormant"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 504;
  }

  return v9;
}

- (id)_defaultWithPrefix:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"-%@", a4];
  v8 = [v6 stringByAppendingString:v7];

  return v8;
}

- (id)_objectForKey:(id)a3
{
  v3 = MEMORY[0x277D2BA58];
  v4 = a3;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.NanoMusicSync"];
  v6 = [v5 synchronize];
  v7 = [v5 objectForKey:v4];

  return v7;
}

- (void)_setLegacyObject:(id)a3 forKey:(id)a4 ifRemoteDeviceMissingCapability:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(NMSyncDefaults *)self _watchHasCapability:a5];
  if (!v10 || v9)
  {
    [(NMSyncDefaults *)self _removeObjectForKey:v8];
  }

  else
  {
    [(NMSyncDefaults *)self _setObject:v10 forKey:v8];
  }
}

- (void)_setObject:(id)a3 forKey:(id)a4 shouldSynchronizeToPairedDevice:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoMusicSync"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 synchronize];
      v13 = [v11 objectForKey:v9];
      if (([v8 isEqual:v13] & 1) == 0)
      {
        [v11 setObject:v8 forKey:v9];
        v14 = [v11 synchronize];
        if (v5)
        {
          v15 = objc_alloc_init(MEMORY[0x277D2BA60]);
          v16 = [MEMORY[0x277CBEB98] setWithObject:v9];
          [v15 synchronizeNanoDomain:@"com.apple.NanoMusicSync" keys:v16];
        }

        v17 = NMLogForCategory(5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412802;
          v20 = v9;
          v21 = 2112;
          v22 = v13;
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] updated value for key: %@ from old value: %@ to new value: %@", &v19, 0x20u);
        }

        [(NMSyncDefaults *)self _notifyChangesForKey:v9];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [(NMSyncDefaults *)self _removeObjectForKey:v9];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removeObjectForKey:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoMusicSync"];
  v6 = [v5 synchronize];
  if (v5)
  {
    v7 = [v5 objectForKey:v4];

    if (v7)
    {
      [v5 removeObjectForKey:v4];
      v8 = [v5 synchronize];
      v9 = objc_alloc_init(MEMORY[0x277D2BA60]);
      v10 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [v9 synchronizeNanoDomain:@"com.apple.NanoMusicSync" keys:v10];

      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Removing value for key: %@", &v13, 0xCu);
      }

      [(NMSyncDefaults *)self _notifyChangesForKey:v4];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = MEMORY[0x277D2BA58];
  v6 = a3;
  v7 = [[v5 alloc] initWithDomain:@"com.apple.NanoMusicSync"];
  v8 = [v7 synchronize];
  v11 = 0;
  v9 = [v7 BOOLForKey:v6 keyExistsAndHasValidFormat:&v11];

  if (v11)
  {
    a4 = v9;
  }

  return a4;
}

- (void)_notifyChangesForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_notifiersDict objectForKeyedSubscript:a3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) scheduleLocalDarwinNotification];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (MPMediaPlaylist)assetSyncPlaylist
{
  if (self->_assetSyncType == 1)
  {
    v3 = [(NMSyncDefaults *)self assetSyncPlaylistPersistentID];
    if (v3)
    {
      v4 = [(NMSyncDefaults *)self _associatedObject];
      v5 = [v4 assetSyncPlaylist];

      if (v5 && (v6 = [v3 unsignedLongLongValue], v6 == objc_msgSend(v5, "persistentID")))
      {
        v7 = v5;
      }

      else
      {
        v8 = [MEMORY[0x277CD5E30] predicateWithValue:v3 forProperty:*MEMORY[0x277CD5940]];
        v9 = [MEMORY[0x277CD5E38] playlistsQuery];
        [v9 addFilterPredicate:v8];
        v10 = [v9 collections];
        v11 = [v10 firstObject];

        v12 = [(NMSyncDefaults *)self _associatedObject];
        [v12 setAssetSyncPlaylist:v11];

        v7 = v11;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAssetSyncPlaylist:(id)a3
{
  v6 = a3;
  v4 = [(NMSyncDefaults *)self _associatedObject];
  [v4 setAssetSyncPlaylist:v6];

  if (v6)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "persistentID")}];
  }

  else
  {
    v5 = 0;
  }

  [(NMSyncDefaults *)self setAssetSyncPlaylistPersistentID:v5];
}

- (id)_associatedObject
{
  v3 = objc_getAssociatedObject(self, sel__associatedObject);
  if (!v3)
  {
    v3 = objc_opt_new();
    objc_setAssociatedObject(self, sel__associatedObject, v3, 1);
  }

  return v3;
}

@end