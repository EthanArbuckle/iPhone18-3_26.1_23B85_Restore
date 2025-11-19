@interface MPCModelGenericAVItem
+ (BOOL)_isCorruptedAssetErrorCode:(int64_t)a3;
+ (BOOL)_prefersHighQualityAudioContentForNetworkType:(int64_t)a3;
+ (BOOL)_prefersHighQualityVideoContentForNetworkType:(int64_t)a3;
+ (id)_downloadCompletionPendingItems;
+ (id)_utilitySerialQueue;
+ (int64_t)_unwrapPlaybackError:(id)a3;
- ($C4B24A06E922887A36692F481211F72A)_timeoutValues;
- (BOOL)_isAssetLoadResultValidForPlayback:(id)a3 error:(id *)a4;
- (BOOL)_linkAssetIfNeededAtURL:(id)a3 toDestinationURL:(id)a4 shareCacheURL:(id)a5;
- (BOOL)_prefersHighQualityContent;
- (BOOL)_removeLocalAssetFileIfPossible;
- (BOOL)canUseLoadedAsset;
- (BOOL)hasStoreLyrics;
- (BOOL)hasTimeSyncedLyrics;
- (BOOL)hasVideo;
- (BOOL)isAlwaysLive;
- (BOOL)isArtistUploadedContent;
- (BOOL)isExplicitTrack;
- (BOOL)isValidPlayerSubstituteForItem:(id)a3;
- (BOOL)prefersSeekOverSkip;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (BOOL)shouldReportPlayEvents;
- (BOOL)shouldShowComposer;
- (BOOL)supportsRating;
- (BOOL)supportsVocalAttenuation;
- (BOOL)updateActiveFormat:(id)a3 justification:(int64_t)a4;
- (BOOL)updateAudioFormatsDictionary:(id)a3;
- (BOOL)updatePreferredFormat:(id)a3;
- (BOOL)usesBookmarking;
- (BOOL)usesSubscriptionLease;
- (MPCModelGenericAVItem)initWithGenericObject:(id)a3 itemProperties:(id)a4 playbackRequestEnvironment:(id)a5 identityPropertySet:(id)a6;
- (MPCPlaybackEngineEventStream)eventStream;
- (MPGaplessInfo)gaplessInfo;
- (MPMediaLibrary)mediaLibrary;
- (NSArray)alternateFormats;
- (NSArray)availableSortedFormats;
- (NSData)trackInfoData;
- (NSDictionary)audioFormatsDictionary;
- (NSString)description;
- (NSString)playbackEngineID;
- (double)_startTime;
- (double)durationFromExternalMetadata;
- (float)_volumeAdjustment;
- (float)userRating;
- (id)_assetLoadPropertiesWithUserIdentityProperties:(id)a3 delegatedUserIdentityProperties:(id)a4 subscriptionPlaybackInfo:(id)a5;
- (id)_bookmarkTime;
- (id)_chapterDataAt:(double)a3;
- (id)_createOrUpdateDatabaseEntry:(id)a3 loadResult:(id)a4 urlBag:(id)a5 destinationURL:(id)a6 purgeable:(BOOL)a7;
- (id)_decorateAssetLoadResult:(id)a3 withURLBag:(id)a4;
- (id)_delegatedUserIdentityProperties:(id *)a3;
- (id)_hlsDownloadOptionsDictionary:(id)a3;
- (id)_iTunesStorePurchasedMediaKind;
- (id)_loudnessInfoMediaKind;
- (id)_modelPlaybackPosition;
- (id)_radioStation;
- (id)_rtcReportingMediaIdentifierWithAssetLoadProperties:(id)a3;
- (id)_rtcReportingServiceIdentifierWithAssetURL:(id)a3;
- (id)_stopTime;
- (id)_storeRequestContext;
- (id)_storeUbiquitousIdentifier;
- (id)album;
- (id)albumArtist;
- (id)analyticsContentType;
- (id)analyticsFormatType;
- (id)artist;
- (id)artworkCatalogBlock;
- (id)audioFormatForStableVariantID:(id)a3;
- (id)chapterAt:(double)a3;
- (id)cloudAlbumID;
- (id)cloudUniversalLibraryID;
- (id)composer;
- (id)containerUniqueID;
- (id)copyrightText;
- (id)databaseID;
- (id)explicitBadge;
- (id)externalContentIdentifier;
- (id)genre;
- (id)libraryLyrics;
- (id)mainTitle;
- (id)mediaItem;
- (id)modelGenericObject;
- (id)nextChapterAfter:(double)a3;
- (id)personID;
- (id)playbackError;
- (id)playbackInfo;
- (id)previousChapterBefore:(double)a3;
- (id)rtcReportingServiceIdentifier;
- (id)stationHash;
- (id)stationName;
- (id)stationStringID;
- (id)storeAccountID;
- (id)storeFrontIdentifier;
- (int64_t)_keyServerAdamID;
- (int64_t)_persistedLikedState;
- (int64_t)_suzeLeaseMediaType;
- (int64_t)albumStoreID;
- (int64_t)albumYear;
- (int64_t)artistStoreID;
- (int64_t)lyricsAdamID;
- (int64_t)mpcReporting_itemType;
- (int64_t)reportingAdamID;
- (int64_t)stationID;
- (int64_t)stationProviderID;
- (int64_t)storeAlbumArtistID;
- (int64_t)storeItemInt64ID;
- (int64_t)storePurchasedAdamID;
- (int64_t)storeSubscriptionAdamID;
- (int64_t)type;
- (unint64_t)albumArtistPersistentID;
- (unint64_t)albumPersistentID;
- (unint64_t)albumTrackCount;
- (unint64_t)albumTrackNumber;
- (unint64_t)artistPersistentID;
- (unint64_t)cloudID;
- (unint64_t)composerPersistentID;
- (unint64_t)genrePersistentID;
- (unint64_t)mediaType;
- (unint64_t)persistentID;
- (void)_addToDownloadCompletionPendingItems;
- (void)_ageVerificationStateDidChangeNotification:(id)a3;
- (void)_allowsHighQualityMusicStreamingOnCellularDidChangeNotification:(id)a3;
- (void)_applyLoudnessInfo;
- (void)_applyPreferredPeakBitRateToPlayerItem:(id)a3 withItemType:(int64_t)a4;
- (void)_checkDownloadErrorAndValidityOfDownloadedHLSAsset:(id)a3 downloadLocationURL:(id)a4 completion:(id)a5;
- (void)_checkPlayerItemForMissingEditList;
- (void)_contentTasteControllerDidChangeNotification:(id)a3;
- (void)_currentPlaybackRateDidChange:(float)a3;
- (void)_didBecomeActivePlayerItem;
- (void)_didResignActivePlayerItem;
- (void)_downloadHLSAsset:(id)a3 destinationURL:(id)a4 sharedCacheURL:(id)a5 assetLoadProperties:(id)a6 loadResult:(id)a7 storeRequestContext:(id)a8 urlBag:(id)a9 fileUpgradeRecommendation:(int64_t)a10;
- (void)_downloadHLSAssetWhilePlaying:(id)a3 assetLoadProperties:(id)a4 assetLoadResult:(id)a5 destinationURL:(id)a6 sharedCacheURL:(id)a7 storeRequestContext:(id)a8 urlBag:(id)a9 fileUpgradeRecommendation:(int64_t)a10;
- (void)_emitAudioAssetTypeSelection:(id)a3 assetLoadInfo:(id)a4;
- (void)_emitAudioFormatChangeEvent;
- (void)_emitNetworkOperationWithPerformanceMetrics:(id)a3 operationType:(int64_t)a4 reason:(id)a5 blocksPlayback:(BOOL)a6;
- (void)_getHLSServerDataForLoadResults:(id)a3 bag:(id)a4 keyCertificateURL:(id *)a5 keyServerURL:(id *)a6 keyServerAdamID:(id *)a7 keyServerProtocolType:(int64_t *)a8;
- (void)_getSubscriptionLeasePropertiesWithCompletion:(id)a3;
- (void)_getSubscriptionStatusWithStoreRequestContext:(id)a3 completion:(id)a4;
- (void)_getUnverifiedSubscriptionLeaseSessionWithCompletion:(id)a3;
- (void)_handleUpdatedLikedState:(int64_t)a3 forUserIdentity:(id)a4 completion:(id)a5;
- (void)_invalidateContentItemForTimedMetadataChangesChangingRevisionID:(BOOL)a3;
- (void)_postInvalidationNotifications;
- (void)_prepareAssetForHLSPlayback:(id)a3 loadResult:(id)a4 destinationURL:(id)a5 storeRequestContext:(id)a6 urlBag:(id)a7 identityProperties:(id)a8 isStoreKeyServer:(BOOL)a9;
- (void)_prepareLeaseWithShouldRequireLeaseAcquisition:(BOOL)a3 completionHandler:(id)a4;
- (void)_reloadTimedMetadataRequest;
- (void)_removeFromDownloadCompletionPendingItems;
- (void)_subscriptionLeaseStatusDidChangeNotification:(id)a3;
- (void)_suzeLeaseSessionRenewDidFailNotification:(id)a3;
- (void)_updateAudioFormatInfoForContentItem:(id)a3;
- (void)_updateAutomaticSubscriptionLeaseRefresh;
- (void)_updateContentItemIncludingPlaybackState:(BOOL)a3;
- (void)_updateJingleTimedMetadata;
- (void)_updatePreventionStatusWithLeaseSession:(id)a3;
- (void)_willBecomeActivePlayerItem;
- (void)_willResignActivePlayerItem;
- (void)applyVolumeNormalizationWithSoundCheckEnabled:(BOOL)a3;
- (void)configureAVPlayerItemWithAudioFormat:(id)a3 forceSpatial:(BOOL)a4;
- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6;
- (void)contentKeySession:(id)a3 didStartProcessingKey:(id)a4 isPrefetchKey:(BOOL)a5 isPersistable:(BOOL)a6 isRenew:(BOOL)a7;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)a3;
- (void)loadAssetAndPlayerItemWithTask:(id)a3 completion:(id)a4;
- (void)metadataOutput:(id)a3 didOutputTimedMetadataGroups:(id)a4 fromPlayerItemTrack:(id)a5;
- (void)notePlaybackFinishedByHittingEnd;
- (void)nowPlayingInfoCenter:(id)a3 lyricsForContentItem:(id)a4 completion:(id)a5;
- (void)pauseContentKeySession;
- (void)prepareForRate:(float)a3 completionHandler:(id)a4;
- (void)reevaluateType;
- (void)resolvePlaybackError:(id)a3 withCompletion:(id)a4;
- (void)resumeContentKeySession;
- (void)setAudioRoute:(id)a3;
- (void)setChapters:(id)a3;
- (void)setGenericObject:(id)a3;
- (void)setRating:(float)a3;
- (void)setupWithPlaybackInfo;
@end

@implementation MPCModelGenericAVItem

uint64_t __37__MPCModelGenericAVItem_isAlwaysLive__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  if (result == 4)
  {
    result = [*(a1 + 32) subtype];
    v3 = result == 1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)_radioStation
{
  v2 = [(MPCModelGenericAVItem *)self modelPlayEvent];
  if ([v2 itemType] == 4)
  {
    v3 = [v2 radioStation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isAlwaysLive
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [(MPCModelGenericAVItem *)self _radioStation];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69706F8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__MPCModelGenericAVItem_isAlwaysLive__block_invoke;
    v11[3] = &unk_1E82394D8;
    v13 = &v14;
    v12 = v3;
    [v5 performWithoutEnforcement:v11];
  }

  if ([(MPCModelGenericAVItem *)self isRadioStreamPlayback])
  {
    v6 = *(v15 + 24) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if ([(MPCModelGenericAVItem *)self isAssetLoaded])
  {
    v7 = [(MPCModelGenericAVItem *)self playerItem];
    v8 = v7;
    if (v7 && [v7 status] == 1)
    {
      [(MPCModelGenericAVItem *)self _playerItemDurationIfAvailable];
      v6 = (v10 & 0x1D) != 1;
    }
  }

  _Block_object_dispose(&v14, 8);
  return v6 & 1;
}

- (id)mainTitle
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      goto LABEL_7;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      goto LABEL_7;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
LABEL_7:
      v5 = v4;
      v6 = [v4 title];

      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPCModelGenericAVItem;
  v4 = [(MPCModelGenericAVItem *)&v8 description];
  v5 = [(MPCModelGenericAVItem *)self mainTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)hasVideo
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  flattenedGenericObject = self->_flattenedGenericObject;
  if (v3 == 1)
  {
    v5 = [(MPModelGenericObject *)flattenedGenericObject song];
    v6 = [v5 hasVideo];
  }

  else
  {
    v6 = [(MPModelGenericObject *)flattenedGenericObject type]== 6 || [(MPModelGenericObject *)self->_flattenedGenericObject type]== 9;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)supportsVocalAttenuation
{
  v16 = *MEMORY[0x1E69E9840];
  if (!MSVDeviceSupportsVocalAttenuation())
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v3 = self->_flattenedGenericObject;
  os_unfair_lock_unlock(&self->_lock);
  if ([(MPModelGenericObject *)v3 type]== 1 && ![(MPCModelGenericAVItem *)self isAlwaysLive]&& ![(MPCModelGenericAVItem *)self isRadioStreamPlayback]&& ![(MPCModelGenericAVItem *)self hasVideo])
  {
    v6 = [(MPModelGenericObject *)v3 song];
    if (([v6 supportsExtendedLyricsAttribute] & 1) == 0)
    {
      v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
      if ([v7 shouldBypassVocalAttenuationSupportFlag])
      {
        v8 = [v6 lyrics];
        v9 = [v8 hasTimeSyncedLyrics];

        if (v9)
        {
          v10 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v12 = 138543618;
            v13 = self;
            v14 = 1024;
            v15 = [v6 supportsExtendedLyricsAttribute];
            _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_INFO, "%{public}@ - [AP] - Overriding vocal attenuation support: %{BOOL}u -> YES [bypassing server flag for time synced lyrics song]", &v12, 0x12u);
          }

          v4 = 1;
LABEL_20:

          goto LABEL_7;
        }
      }

      else
      {
      }
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 1024;
      v15 = [v6 supportsExtendedLyricsAttribute];
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_INFO, "%{public}@ - [AP] - Supports vocal attenuation: %{BOOL}u", &v12, 0x12u);
    }

    v4 = [v6 supportsExtendedLyricsAttribute];
    goto LABEL_20;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)cloudUniversalLibraryID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  v4 = [v3 universalStore];
  v5 = [v4 universalCloudLibraryID];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (int64_t)storeSubscriptionAdamID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 identifiers];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 universalStore];
  v8 = [v7 subscriptionAdamID];

  return v8;
}

- (unint64_t)persistentID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  v4 = [v3 library];
  v5 = [v4 persistentID];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)supportsRating
{
  v3 = [(MPCModelGenericAVItem *)self persistentID];
  v4 = [(MPCModelGenericAVItem *)self cloudUniversalLibraryID];

  if (!v3 || !v4 || [(MPModelGenericObject *)self->_flattenedGenericObject type]!= 1)
  {
    return 0;
  }

  v5 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
  v6 = [v5 isLibraryAdded];

  return v6;
}

- (int64_t)type
{
  v7.receiver = self;
  v7.super_class = MPCModelGenericAVItem;
  v3 = [(MPCModelGenericAVItem *)&v7 type];
  if (!v3)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
    if (v4 == 9 || v4 == 6)
    {
      v3 = 2;
    }

    else if (v4 == 1)
    {
      v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      if ([v5 hasVideo])
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v3;
}

- (BOOL)prefersSeekOverSkip
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(MPCModelGenericAVItem *)self _radioStation];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69706F8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__MPCModelGenericAVItem_prefersSeekOverSkip__block_invoke;
    v8[3] = &unk_1E82394D8;
    v10 = &v11;
    v9 = v3;
    [v5 performWithoutEnforcement:v8];
  }

  v6 = (v12[3] & 1) != 0 || [(MPCModelGenericAVItem *)self usesBookmarking];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __44__MPCModelGenericAVItem_prefersSeekOverSkip__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  if (result == 4)
  {
    result = [*(a1 + 32) subtype];
    v3 = result == 1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)usesBookmarking
{
  if (self->_radioPlayback)
  {
    return 0;
  }

  v3 = [(MPCModelGenericAVItem *)self _modelPlaybackPosition];
  v4 = [v3 shouldRememberBookmarkTime];

  return v4;
}

- (id)modelGenericObject
{
  os_unfair_lock_lock_with_options();
  v3 = self->_metadataGenericObject;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MPCPlaybackEngineEventStream)eventStream
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);

  return WeakRetained;
}

- (void)_checkPlayerItemForMissingEditList
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_hasCheckedPlayerItemForMissingEditList && [(MPCModelGenericAVItem *)self isAssetLoaded]&& [(MPCModelGenericAVItem *)self isHLSAsset])
  {
    self->_hasCheckedPlayerItemForMissingEditList = 1;
    v3 = [(MPCModelGenericAVItem *)self playerItem];
    if (objc_opt_respondsToSelector())
    {
      if ([v3 missingAudioEditList])
      {
        self->_playerItemIsMissingEditList = 1;
        v4 = [v3 asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = [v3 asset];
          v7 = [v6 URL];
          if ([v7 isFileURL])
          {
            v8 = [(MPCModelGenericAVItem *)self isDownloadedAsset];

            if (!v8)
            {
              objc_initWeak(&location, self);
              v9 = [(MPCModelGenericAVItem *)self eventStream];
              v10 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = [v9 engineID];
                *buf = 138543618;
                v18 = v11;
                v19 = 2114;
                v20 = self;
                _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: [ELC] - Clearing cache if possible", buf, 0x16u);
              }

              v12 = [(MPCModelGenericAVItem *)self assetCacheProvider];
              v13 = [(MPCModelGenericAVItem *)self genericObject];
              v14[0] = MEMORY[0x1E69E9820];
              v14[1] = 3221225472;
              v14[2] = __59__MPCModelGenericAVItem__checkPlayerItemForMissingEditList__block_invoke;
              v14[3] = &unk_1E8234088;
              objc_copyWeak(&v15, &location);
              [v12 clearPlaybackAssetCacheFileAssetForGenericObject:v13 withCompletionHandler:v14];

              objc_destroyWeak(&v15);
              objc_destroyWeak(&location);
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void __59__MPCModelGenericAVItem__checkPlayerItemForMissingEditList__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventStream];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = [v5 engineID];
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v3;
      v9 = "[%{public}@]-%{public}@: [ELC] - Failed to clear cache: %{public}@";
      v10 = v6;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else if (v7)
  {
    v8 = [v5 engineID];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = WeakRetained;
    v9 = "[%{public}@]-%{public}@: [ELC] - Successfully cleared cache";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }
}

- (NSString)playbackEngineID
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);
  v3 = [WeakRetained engineID];

  return v3;
}

- (id)_chapterDataAt:(double)a3
{
  v5 = [(MPCModelGenericAVItem *)self chapters];
  v6 = [v5 count];

  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__12470;
    v20 = __Block_byref_object_dispose__12471;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = -1;
    v7 = [(MPCModelGenericAVItem *)self chapters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__MPCModelGenericAVItem__chapterDataAt___block_invoke;
    v11[3] = &unk_1E8234748;
    *&v11[6] = a3;
    v11[4] = &v16;
    v11[5] = &v12;
    [v7 enumerateObjectsUsingBlock:v11];

    if (!v17[5] || v13[3] < 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v17[5] forKeyedSubscript:@"ChapterDataItemKey"];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v13[3]];
      [v8 setObject:v9 forKeyedSubscript:@"ChapterDataIndexKey"];
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __40__MPCModelGenericAVItem__chapterDataAt___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  [v12 startTime];
  if (v8 <= *(a1 + 48))
  {
    [v12 startTime];
    v10 = v9;
    [v12 duration];
    if (v10 + v11 > *(a1 + 48))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (id)previousChapterBefore:(double)a3
{
  v4 = [(MPCModelGenericAVItem *)self _chapterDataAt:a3];
  v5 = [v4 objectForKey:@"ChapterDataIndexKey"];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && (v6 = [v5 integerValue], v7 = v6 - 1, v6 >= 1))
  {
    v8 = [(MPCModelGenericAVItem *)self chapters];
    v9 = [v8 objectAtIndexedSubscript:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nextChapterAfter:(double)a3
{
  v4 = [(MPCModelGenericAVItem *)self _chapterDataAt:a3];
  v5 = [v4 objectForKey:@"ChapterDataIndexKey"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [v5 integerValue], -[MPCModelGenericAVItem chapters](self, "chapters"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count") - 1, v7, v6 < v8))
  {
    v9 = [(MPCModelGenericAVItem *)self chapters];
    v10 = [v9 objectAtIndexedSubscript:v6 + 1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)chapterAt:(double)a3
{
  v3 = [(MPCModelGenericAVItem *)self _chapterDataAt:a3];
  v4 = [v3 objectForKey:@"ChapterDataItemKey"];

  return v4;
}

- (void)setChapters:(id)a3
{
  v4 = a3;
  [(MPCModelGenericAVItem *)self willChangeValueForKey:@"chapters"];
  chapters = self->_chapters;
  self->_chapters = v4;
  v6 = v4;

  v7 = [(NSArray *)v6 count];
  [*(&self->super.super.isa + *MEMORY[0x1E6970A68]) setNumberOfChildren:v7];

  [(MPCModelGenericAVItem *)self didChangeValueForKey:@"chapters"];
}

- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v26 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v29 = @"keyIdentifier";
    v30[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v15 = [v13 msv_errorWithDomain:@"MPCError" code:71 underlyingError:v12 userInfo:v14 debugDescription:@"Failed to delivery SKD key"];

    [(MPCModelGenericAVItem *)self addAdjunctError:v15];
  }

  v16 = [(MPCModelGenericAVItem *)self eventStream];
  v27[0] = @"queue-section-id";
  v17 = [(MPCModelGenericAVItem *)self queueSectionID];
  v28[0] = v17;
  v27[1] = @"queue-item-id";
  v18 = [(MPCModelGenericAVItem *)self queueItemID];
  v28[1] = v18;
  v27[2] = @"asset-skd";
  v19 = [MEMORY[0x1E695DFF8] URLWithString:v10];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v10;
  v28[2] = v20;
  v27[3] = @"key-request-error";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v21;
  v27[4] = @"key-cached-response";
  v22 = v11;
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v11 == 0];
  v28[4] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [v16 emitEventType:@"item-key-request-end" payload:v24];

  if (!v12)
  {

    if (v19)
    {
      goto LABEL_9;
    }

LABEL_11:

    goto LABEL_9;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_9:
}

- (void)contentKeySession:(id)a3 didStartProcessingKey:(id)a4 isPrefetchKey:(BOOL)a5 isPersistable:(BOOL)a6 isRenew:(BOOL)a7
{
  v19[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a6)
  {
    v8 = a5 | 2;
  }

  if (a7)
  {
    v9 = v8 | 4;
  }

  else
  {
    v9 = v8;
  }

  v10 = a4;
  v11 = [(MPCModelGenericAVItem *)self eventStream];
  v18[0] = @"queue-section-id";
  v12 = [(MPCModelGenericAVItem *)self queueSectionID];
  v19[0] = v12;
  v18[1] = @"queue-item-id";
  v13 = [(MPCModelGenericAVItem *)self queueItemID];
  v19[1] = v13;
  v18[2] = @"asset-skd";
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v10];

  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v15;
  v18[3] = @"key-request-options";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v19[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  [v11 emitEventType:@"item-key-request-begin" payload:v17];

  if (!v14)
  {
  }
}

- (void)reevaluateType
{
  if ((self->_loadedAudioAssetType - 3) > 2)
  {
    if ([(MPCModelGenericAVItem *)self isAssetLoaded])
    {
      v5.receiver = self;
      v5.super_class = MPCModelGenericAVItem;
      [(MPCModelGenericAVItem *)&v5 reevaluateType];
    }
  }

  else if ([(MPCModelGenericAVItem *)self type]!= 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItem.m" lineNumber:5473 description:@"Unexpected item type for loaded enhanced audio"];
  }
}

- (void)_removeFromDownloadCompletionPendingItems
{
  obj = +[MPCModelGenericAVItem _downloadCompletionPendingItems];
  objc_sync_enter(obj);
  [obj removeObject:self];
  objc_sync_exit(obj);
}

- (void)_addToDownloadCompletionPendingItems
{
  obj = +[MPCModelGenericAVItem _downloadCompletionPendingItems];
  objc_sync_enter(obj);
  [obj addObject:self];
  objc_sync_exit(obj);
}

- (void)resumeContentKeySession
{
  contentKeySession = self->_contentKeySession;
  if (contentKeySession)
  {
    [(ICContentKeySession *)contentKeySession resumeAutomaticKeyRenewal];
  }
}

- (void)pauseContentKeySession
{
  contentKeySession = self->_contentKeySession;
  if (contentKeySession)
  {
    [(ICContentKeySession *)contentKeySession pauseAutomaticKeyRenewal];
  }
}

- (id)analyticsFormatType
{
  v3 = [(MPCModelGenericAVItem *)self activeFormat];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MPCModelGenericAVItem *)self preferredFormat];
  }

  v6 = v5;

  v14 = bswap32([v6 codec]);
  v15 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:&v14 encoding:1];
  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  if ([v6 bitrate] >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkbps, %ld", v9, objc_msgSend(v6, "bitrate") / 1000, objc_msgSend(v6, "channelLayout")];
    v10 = LABEL_8:;
    goto LABEL_9;
  }

  if ([v6 sampleRate] >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkhz, %ld", v9, objc_msgSend(v6, "sampleRate") / 1000, objc_msgSend(v6, "bitDepth")];
    goto LABEL_8;
  }

  v13 = &stru_1F454A698;
  if (v9)
  {
    v13 = v9;
  }

  v10 = v13;
LABEL_9:
  v11 = v10;

  return v11;
}

- (id)analyticsContentType
{
  v3 = @"CRABS";
  if ([(MPCModelGenericAVItem *)self loadedAudioAssetType]>= 2 && [(MPCModelGenericAVItem *)self isHLSAsset])
  {
    v3 = @"HLS";
  }

  return v3;
}

- (void)_updatePreventionStatusWithLeaseSession:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_subscriptionLeaseRequestCount >= 1)
  {
    self->_didDeferPreventionStatusUpdate = 1;
    goto LABEL_22;
  }

  v6 = [v4 leaseStatus];
  v7 = [(MPCModelGenericAVItem *)self eventStream];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 engineID];
    v10 = [v5 leaseStatus];
    v24 = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = self;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: _updatePreventionStatusWithLeaseSession - updating prevention status - lease status: %{public}@", &v24, 0x20u);
  }

  if (([v6 hasInflightLeaseAcquisition] & 1) != 0 || (deferredLeaseAcquisitionTask = self->_deferredLeaseAcquisitionTask) != 0 && !-[MPCDeferrableTask isFinished](deferredLeaseAcquisitionTask, "isFinished"))
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v12 = [v6 leaseState];
  if (v12 != 2)
  {
    v14 = v12;
    if ([v6 shouldPlaybackRequireOnlineKeys])
    {
      if (v14)
      {
        if ([v6 hasOnlinePlaybackKeys])
        {
          v13 = 0;
        }

        else
        {
          v13 = 3;
        }
      }

      else
      {
        v13 = 2;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = 1;
LABEL_16:
  if (self->_leasePlaybackPreventionState != v13)
  {
    v15 = [(MPCModelGenericAVItem *)self shouldPreventPlayback];
    self->_leasePlaybackPreventionState = v13;
    v16 = [v6 copy];
    leaseStatus = self->_leaseStatus;
    self->_leaseStatus = v16;

    v18 = [(MPCModelGenericAVItem *)self eventStream];
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 engineID];
      leasePlaybackPreventionState = self->_leasePlaybackPreventionState;
      v22 = self->_leaseStatus;
      v24 = 138544130;
      v25 = v20;
      v26 = 2114;
      v27 = self;
      v28 = 2048;
      v29 = leasePlaybackPreventionState;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: _updatePreventionStatusWithLeaseSession - Lease playback prevention state did change to: %li [status: %{public}@", &v24, 0x2Au);
    }

    if (v15 != [(MPCModelGenericAVItem *)self shouldPreventPlayback])
    {
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 postNotificationName:*MEMORY[0x1E696F808] object:self];
    }
  }

LABEL_22:
}

- (void)_updateJingleTimedMetadata
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_currentGlobalTimedMetadataGroups;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v26 = 0;
    v24 = *v32;
    v2 = *MEMORY[0x1E6987840];
    v3 = *MEMORY[0x1E6987728];
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v6 = [v5 items];
        v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v28;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v28 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v27 + 1) + 8 * j);
              v12 = [v11 keySpace];
              v13 = [v12 isEqualToString:v2];

              if (v13)
              {
                v14 = [v11 key];
                v15 = [v14 isEqual:v3];

                if (v15)
                {
                  v16 = [v11 extraAttributes];
                  v17 = [v16 objectForKey:@"info"];
                  if ([v17 isEqual:@"com.apple.radio.ping.jingle"])
                  {
                    v18 = [v11 dataValue];

                    v26 = v18;
                    goto LABEL_19;
                  }
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v19 = self->_jingleTimedMetadata;
  v20 = v19;
  if (v19 == v26)
  {
    goto LABEL_26;
  }

  v21 = [(NSData *)v19 isEqual:v26];

  if ((v21 & 1) == 0)
  {
    objc_storeStrong(&self->_jingleTimedMetadata, v26);
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 postNotificationName:@"MPCAVItemReportingJingleTimedMetadataDidChangeNotification" object:self];
LABEL_26:
  }
}

- (void)_updateAutomaticSubscriptionLeaseRefresh
{
  if (self->_isSubscriptionPolicyContent)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__MPCModelGenericAVItem__updateAutomaticSubscriptionLeaseRefresh__block_invoke;
    v4[3] = &unk_1E8234710;
    v4[4] = self;
    [(MPCModelGenericAVItem *)self _getSubscriptionLeasePropertiesWithCompletion:v4];
  }
}

void __65__MPCModelGenericAVItem__updateAutomaticSubscriptionLeaseRefresh__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = a3;
  v5 = v4;
  v6 = v7;
  msv_dispatch_on_main_queue();
}

void __65__MPCModelGenericAVItem__updateAutomaticSubscriptionLeaseRefresh__block_invoke_2(id *a1)
{
  [a1[4] _currentPlaybackRate];
  v3 = v2 > 0.00000011921 && [a1[4] isAssetLoaded] && objc_msgSend(a1[5], "shouldUseLease") && a1[6] != 0;
  v4 = a1[4];
  if (v4[592] != v3)
  {
    v4[592] = v3;
    if ([a1[4] isAssetLoaded])
    {
      if (*(a1[4] + 592) == 1)
      {
        v5 = a1[6];

        [v5 beginAutomaticallyRefreshingLease];
      }

      else
      {
        v6 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__MPCModelGenericAVItem__updateAutomaticSubscriptionLeaseRefresh__block_invoke_3;
        block[3] = &unk_1E8239298;
        v8 = a1[6];
        dispatch_after(v6, MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

- (id)_storeUbiquitousIdentifier
{
  v2 = [(MPCModelGenericAVItem *)self _modelPlaybackPosition];
  v3 = [v2 storeUbiquitousIdentifier];

  return v3;
}

- (id)_stopTime
{
  v2 = [(MPCModelGenericAVItem *)self _modelPlaybackPosition];
  v3 = [v2 stopTime];

  return v3;
}

- (double)_startTime
{
  v2 = [(MPCModelGenericAVItem *)self _modelPlaybackPosition];
  [v2 startTime];
  v4 = v3;

  return v4;
}

- (id)_storeRequestContext
{
  v20[3] = *MEMORY[0x1E69E9840];
  storeRequestContext = self->__storeRequestContext;
  if (storeRequestContext)
  {
    goto LABEL_4;
  }

  v4 = [MPCNetworkRequestMonitoredTag alloc];
  v19[0] = @"network-request-initiator";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v20[0] = v6;
  v19[1] = @"queue-section-id";
  v7 = [(MPCModelGenericAVItem *)self queueSectionID];
  v20[1] = v7;
  v19[2] = @"queue-item-id";
  v8 = [(MPCModelGenericAVItem *)self queueItemID];
  v20[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v10 = [(MPCNetworkRequestMonitoredTag *)v4 initWithContextInfo:v9 engineInfoProvider:self];

  v11 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment _createStoreRequestContextWithTag:v10];
  v12 = self->__storeRequestContext;
  self->__storeRequestContext = v11;

  if (v11)
  {

    storeRequestContext = self->__storeRequestContext;
LABEL_4:
    v13 = storeRequestContext;
    goto LABEL_5;
  }

  v15 = objc_alloc(MEMORY[0x1E69E4618]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__MPCModelGenericAVItem__storeRequestContext__block_invoke;
  v17[3] = &unk_1E82346E8;
  v18 = v10;
  v16 = v10;
  v13 = [v15 initWithBlock:v17];

LABEL_5:

  return v13;
}

void __45__MPCModelGenericAVItem__storeRequestContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E4680];
  v8 = a2;
  v4 = [v3 defaultMediaIdentity];
  [v8 setIdentity:v4];

  v5 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v8 setIdentityStore:v5];

  v6 = [MEMORY[0x1E69E43B0] defaultInfo];
  [v8 setClientInfo:v6];

  v7 = [objc_alloc(MEMORY[0x1E69E4628]) initWithUserInteractionLevel:2];
  [v8 setAuthenticationProvider:v7];

  [v8 mpc_setTag:*(a1 + 32)];
}

- (id)_rtcReportingServiceIdentifierWithAssetURL:(id)a3
{
  v4 = a3;
  if (self->_radioPlayback)
  {
    if ([(MPCModelGenericAVItem *)self isHLSAsset])
    {
      v5 = @"tilt.stream-track";
    }

    else
    {
      v5 = @"tilt.track";
    }

    goto LABEL_22;
  }

  os_unfair_lock_lock_with_options();
  v6 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  if (v6 == 9)
  {
    v8 = [(MPModelGenericObject *)self->_flattenedGenericObject movie];
    goto LABEL_13;
  }

  if (v6 == 6)
  {
    v8 = [(MPModelGenericObject *)self->_flattenedGenericObject tvEpisode];
LABEL_13:
    v7 = v8;
    v5 = &stru_1F454A698;
    goto LABEL_14;
  }

  v5 = &stru_1F454A698;
  if (v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v7 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
  if ([v7 isArtistUploadedContent])
  {
    v5 = @"uploaded-content";
  }

LABEL_14:
  v9 = [v7 storeAsset];
  v10 = [v7 localFileAsset];

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
  if (![(__CFString *)v5 length])
  {
    if ([v9 isRedownloadable])
    {
      v17 = [v9 endpointType] - 1;
      if (v17 < 3)
      {
        v5 = off_1E8234828[v17];
      }
    }

    else
    {
      v18 = [v10 filePath];
      if ([v18 length])
      {
        v19 = [v10 isNonPurgeable];

        if (v19)
        {
          v5 = @"synced";
        }
      }

      else
      {
      }
    }
  }

  v11 = [(__CFString *)v5 length];
  if (v4 && v11 && ([v4 isFileURL] & 1) == 0)
  {
    v5 = [(__CFString *)v5 stringByAppendingString:@".cloud"];
  }

LABEL_22:
  v12 = [MPCRTCEventConsumer playerServiceNameWithPlayerID:self->_playerID];
  v13 = [(__CFString *)v5 length];
  v14 = @"unknown";
  if (v13)
  {
    v14 = v5;
  }

  v15 = [v12 stringByAppendingFormat:@".%@", v14];

  return v15;
}

- (id)_rtcReportingMediaIdentifierWithAssetLoadProperties:(id)a3
{
  v4 = [a3 itemIdentifiers];
  v5 = [v4 universalStore];
  v6 = [MPCRTCEventConsumer rtcIdentifiersFromUniversalIdentifiers:v5];

  v7 = [(MPCModelGenericAVItem *)self _radioStation];
  v8 = v7;
  if (v7)
  {
    if ([v7 type] == 8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [v8 identifiers];
      v11 = [v10 radio];
      v9 = [MPCRTCEventConsumer rtcIdentifiersFromRadioIdentifiers:v11];
    }

    if ([v8 type] == 4)
    {
      v12 = [MPCRTCEventConsumer rtcIdentifiersFromUniversalIdentifiers:0];

      v6 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [MPCRTCEventConsumer identifierStringFromItemIdentifiers:v6 radioIdentifiers:v9];

  return v13;
}

- (void)_postInvalidationNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E696F7A8] object:self];
  [v3 postNotificationName:*MEMORY[0x1E696F7B8] object:self];
  [v3 postNotificationName:*MEMORY[0x1E696F7C0] object:self];
  [v3 postNotificationName:*MEMORY[0x1E696F810] object:self];
  [v3 postNotificationName:*MEMORY[0x1E696F7D0] object:self];
  [v3 postNotificationName:*MEMORY[0x1E696F7B0] object:self];
  [(MPCModelGenericAVItem *)self updatePlayerItemMetadata];
}

- (id)_modelPlaybackPosition
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      goto LABEL_7;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      goto LABEL_7;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
LABEL_7:
      v5 = v4;
      v6 = [v4 playbackPosition];

      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_invalidateContentItemForTimedMetadataChangesChangingRevisionID:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MPCModelGenericAVItem *)self queueItemID];
    [(MPCModelGenericAVItem *)self setPreviousQueueItemID:v4];

    v5 = [(MPCModelGenericAVItem *)self contentItemID];
    v6 = [(MPCModelGenericAVItem *)self queueSectionID];
    v7 = MSVNanoIDCreateTaggedPointer();
    [(MPCModelGenericAVItem *)self setContentItemID:v5 queueSectionID:v6 queueItemID:v7];
  }

  [(MPCModelGenericAVItem *)self _updateContentItemIncludingPlaybackState:0];
}

- (void)_getUnverifiedSubscriptionLeaseSessionWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MPCModelGenericAVItem *)self _allowsStreamingPlayback])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__12470;
    v26 = __Block_byref_object_dispose__12471;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__12470;
    v20 = __Block_byref_object_dispose__12471;
    v21 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke;
    block[3] = &unk_1E8234550;
    block[4] = self;
    block[5] = &v22;
    block[6] = &v28;
    block[7] = &v16;
    dispatch_barrier_sync(accessQueue, block);
    if (*(v29 + 24) == 1)
    {
      v4[2](v4, v23[5]);
    }

    else
    {
      v6 = [(MPCModelGenericAVItem *)self _storeRequestContext];
      v7 = v17[5];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_2;
      v9[3] = &unk_1E82346B8;
      v12 = &v16;
      v9[4] = self;
      v13 = &v22;
      v14 = &v28;
      v10 = v6;
      v11 = v4;
      v8 = v6;
      dispatch_async(v7, v9);
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v4[2](v4, 0);
  }
}

void __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 560));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 547);
  v2 = *(a1[4] + 552);
  if (!v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.subscriptionLeaseSessionLoadQueue", v3);
    v5 = a1[4];
    v6 = *(v5 + 552);
    *(v5 + 552) = v4;

    v2 = *(a1[4] + 552);
  }

  v7 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v7, v2);
}

void __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(*(a1 + 56) + 8) + 40));
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.subscriptionLeaseLoadCalloutQueue", v2);

  v4 = *(a1 + 32);
  v5 = *(v4 + 536);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_3;
  block[3] = &unk_1E8236110;
  block[4] = v4;
  v25 = *(a1 + 64);
  dispatch_sync(v5, block);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_4;
    v21[3] = &unk_1E8234668;
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v22 = v6;
    v23 = v7;
    dispatch_async(v3, v21);
    dispatch_resume(*(*(*(a1 + 56) + 8) + 40));
    v8 = v22;
  }

  else
  {
    v9 = [*(a1 + 32) eventStream];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 engineID];
      v12 = *(a1 + 32);
      *buf = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getUnverifiedSubscriptionLeaseSessionWithCompletion - Loading subscription lease session...", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E69E44A0] sharedController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_503;
    v17[3] = &unk_1E8234690;
    v14 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v3;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v19 = v15;
    v20 = v16;
    [v13 getLeaseSessionWithRequestContext:v14 completionHandler:v17];

    v8 = v18;
  }
}

void __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_503(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) eventStream];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 engineID];
      v10 = *(a1 + 32);
      *buf = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getUnverifiedSubscriptionLeaseSessionWithCompletion - Finished loading subscription lease session: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[Lease] - %{public}@: getUnverifiedSubscriptionLeaseSessionWithCompletion - Failed to load subscription lease session with error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(v13 + 536);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_504;
  block[3] = &unk_1E82366A8;
  block[4] = v13;
  v19 = v5;
  v20 = v12;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v21 = v15;
  v22 = v16;
  v17 = v5;
  dispatch_barrier_async(v14, block);
}

void __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_504(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 547) = 1;
  objc_storeStrong((*(a1 + 32) + 560), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[70])
  {
    v3 = [v2 eventStream];
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 engineID];
      v6 = *(a1 + 32);
      v7 = *(v6 + 560);
      *buf = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getUnverifiedSubscriptionLeaseSessionWithCompletion - Posting ICMusicSubscriptionLeaseSessionLeaseStatusDidChangeNotification: %{public}@", buf, 0x20u);
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:*(a1 + 32) selector:sel__subscriptionLeaseStatusDidChangeNotification_ name:*MEMORY[0x1E69E41D0] object:*(*(a1 + 32) + 560)];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MPCModelGenericAVItem__getUnverifiedSubscriptionLeaseSessionWithCompletion___block_invoke_507;
  v10[3] = &unk_1E8239170;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = *(a1 + 40);
  dispatch_async(v9, v10);
  dispatch_resume(*(*(*(a1 + 64) + 8) + 40));
}

- (void)_getSubscriptionLeasePropertiesWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MPCModelGenericAVItem *)self _allowsStreamingPlayback])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__12470;
    v33 = __Block_byref_object_dispose__12471;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__12470;
    v27 = __Block_byref_object_dispose__12471;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__12470;
    v21 = __Block_byref_object_dispose__12471;
    v22 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke;
    block[3] = &unk_1E8234528;
    block[4] = self;
    block[5] = &v29;
    block[6] = &v35;
    block[7] = &v23;
    block[8] = &v17;
    dispatch_barrier_sync(accessQueue, block);
    if (*(v36 + 24) == 1)
    {
      v4[2](v4, v30[5], v24[5], 0);
    }

    else
    {
      v6 = [(MPCModelGenericAVItem *)self _storeRequestContext];
      v7 = v18[5];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_2;
      v9[3] = &unk_1E8234640;
      v12 = &v17;
      v9[4] = self;
      v13 = &v29;
      v14 = &v35;
      v15 = &v23;
      v10 = v6;
      v11 = v4;
      v8 = v6;
      dispatch_async(v7, v9);
    }

    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v4[2](v4, 0, 0, 0);
  }
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 560));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 568);
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 576));
  v2 = *(a1[4] + 584);
  if (!v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.subscriptionLeaseSessionLoadQueue", v3);
    v5 = a1[4];
    v6 = *(v5 + 584);
    *(v5 + 584) = v4;

    v2 = *(a1[4] + 584);
  }

  v7 = (*(a1[8] + 8) + 40);

  objc_storeStrong(v7, v2);
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(*(a1 + 56) + 8) + 40));
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.subscriptionLeaseLoadCalloutQueue", v2);

  v4 = *(a1 + 32);
  v5 = *(v4 + 536);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_3;
  block[3] = &unk_1E8234550;
  v31 = *(a1 + 64);
  v6 = *(a1 + 80);
  block[4] = v4;
  v32 = v6;
  dispatch_sync(v5, block);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_4;
    v26[3] = &unk_1E8234578;
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v27 = v7;
    v28 = v8;
    v29 = *(a1 + 80);
    dispatch_async(v3, v26);
    dispatch_resume(*(*(*(a1 + 56) + 8) + 40));
    v9 = v27;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_5;
    aBlock[3] = &unk_1E82345C8;
    aBlock[4] = *(a1 + 32);
    v23 = v3;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v24 = v10;
    v25 = v11;
    v12 = _Block_copy(aBlock);
    v13 = [*(a1 + 32) eventStream];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 engineID];
      v16 = *(a1 + 32);
      *buf = 138543618;
      v34 = v15;
      v35 = 2114;
      v36 = v16;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getSubscriptionLeasePropertiesWithCompletion - Loading subscription status...", buf, 0x16u);
    }

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_498;
    v20[3] = &unk_1E8234618;
    v20[4] = v18;
    v21 = v12;
    v19 = v12;
    [v18 _getSubscriptionStatusWithStoreRequestContext:v17 completion:v20];

    v9 = v23;
  }
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_3(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 560));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 568);
  v2 = *(a1[4] + 576);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 536);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_6;
  block[3] = &unk_1E82345A0;
  v18 = v9;
  v19 = v11;
  v20 = v8;
  v21 = v10;
  v13 = *(a1 + 48);
  v22 = v7;
  v23 = v13;
  v24 = *(a1 + 56);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  dispatch_barrier_async(v12, block);
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_498(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E6970A00]) initWithICSubscriptionStatus:v5];
    v8 = [*(a1 + 32) eventStream];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 engineID];
      v11 = *(a1 + 32);
      *buf = 138543874;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getSubscriptionLeasePropertiesWithCompletion - Finished loading subscription status: %{public}@", buf, 0x20u);
    }

    v12 = [v7 shouldUseLease];
    v13 = *(a1 + 32);
    if (v12)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_500;
      v20[3] = &unk_1E82345F0;
      v22 = *(a1 + 40);
      v21 = v7;
      [v13 _getUnverifiedSubscriptionLeaseSessionWithCompletion:v20];
    }

    else
    {
      v16 = [*(a1 + 32) eventStream];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 engineID];
        v19 = *(a1 + 32);
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[Lease] - %{public}@: getSubscriptionLeasePropertiesWithCompletion - Skipping subscription lease load since the subscription status indicated it shouldn't be used", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543874;
      v24 = v15;
      v25 = 2114;
      v26 = 0;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[Lease] - %{public}@: getSubscriptionLeasePropertiesWithCompletion - Finished loading subscription status: %{public}@ with error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_6(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    *(*(a1 + 40) + 568) = 1;
    objc_storeStrong((*(a1 + 40) + 576), *(a1 + 48));
  }

  v2 = *(a1 + 56);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__MPCModelGenericAVItem__getSubscriptionLeasePropertiesWithCompletion___block_invoke_7;
  v3[3] = &unk_1E8237160;
  v7 = *(a1 + 72);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  dispatch_async(v2, v3);
  dispatch_resume(*(*(*(a1 + 80) + 8) + 40));
}

- (void)_getSubscriptionStatusWithStoreRequestContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 delegatedIdentity];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 identity];
  }

  v10 = v9;

  v11 = +[MPCPlaybackAccountManager sharedManager];
  v12 = [v11 accountForUserIdentity:v10];

  v13 = [v12 subscriptionStatus];
  if (v13)
  {
    v6[2](v6, v13, 0);
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69E44D8]) initWithStoreRequestContext:v5];
    [v14 setShouldIgnoreCache:0];
    [v14 setAllowsFallbackToExpiredStatus:1];
    [v14 setAllowsFallbackToStatusNeedingReload:1];
    v15 = [MEMORY[0x1E69E44C8] sharedStatusController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__MPCModelGenericAVItem__getSubscriptionStatusWithStoreRequestContext_completion___block_invoke;
    v16[3] = &unk_1E8234500;
    v17 = v6;
    [v15 performSubscriptionStatusRequest:v14 withCompletionHandler:v16];
  }
}

void __82__MPCModelGenericAVItem__getSubscriptionStatusWithStoreRequestContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 subscriptionStatus];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)_bookmarkTime
{
  v2 = [(MPCModelGenericAVItem *)self _modelPlaybackPosition];
  [v2 bookmarkTime];
  v4 = v3;

  if (v4 <= 0.00000011920929)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  }

  return v5;
}

- (void)_applyPreferredPeakBitRateToPlayerItem:(id)a3 withItemType:(int64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  v8 = [v7 lastKnownNetworkType];

  v9 = objc_opt_class();
  if (a4 != 2)
  {
    v13 = [v9 _prefersHighQualityAudioContentForNetworkType:v8];
    if (v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 102400.0;
    }

    [v6 preferredPeakBitRate];
    if (vabdd_f64(v14, v15) <= 2.22044605e-16)
    {
      goto LABEL_29;
    }

    [v6 setPreferredPeakBitRate:v14];
    v16 = [(MPCModelGenericAVItem *)self eventStream];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v18 = [v16 engineID];
    v19 = v18;
    v20 = @"Unknown";
    if (v8 > 99)
    {
      if (v8 > 1000)
      {
        switch(v8)
        {
          case 1001:
            v20 = @"Bridged WiFi";
            break;
          case 2000:
            v20 = @"Wired Ethernet";
            break;
          case 3000:
            v20 = @"Other";
            break;
        }

        goto LABEL_12;
      }

      if (v8 != 100)
      {
        if (v8 == 500)
        {
          v20 = @"Bluetooth";
        }

        else if (v8 == 1000)
        {
          v20 = @"WiFi";
        }

        goto LABEL_12;
      }
    }

    else if ((v8 - 1) >= 8)
    {
LABEL_12:
      v29 = 138544642;
      v30 = v18;
      v31 = 2114;
      v32 = self;
      v33 = 2048;
      v34 = v14;
      v35 = 2114;
      v36 = v20;
      v37 = 2048;
      v38 = v8;
      v39 = 1024;
      v40 = v13;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Set preferredPeakBitRate=%f lastKnownNetwork=%{public}@ (%ld) prefersHighQualityContent=%{BOOL}u", &v29, 0x3Au);

      goto LABEL_28;
    }

    v20 = @"Cellular";
    goto LABEL_12;
  }

  v10 = [v9 _prefersHighQualityVideoContentForNetworkType:v8];
  if (v10)
  {
    v12 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {
      v11 = 432.0;
    }

    else
    {
      v11 = 576.0;
    }

    if (IsCellular)
    {
      v12 = 768.0;
    }

    else
    {
      v12 = 1024.0;
    }
  }

  [v6 preferredMaximumResolution];
  if (v12 != v23 || v11 != v22)
  {
    [v6 setPreferredMaximumResolution:{v12, v11}];
    v16 = [(MPCModelGenericAVItem *)self eventStream];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v16 engineID];
      v42.width = v12;
      v42.height = v11;
      v26 = NSStringFromCGSize(v42);
      v27 = v26;
      v28 = @"Unknown";
      if (v8 > 99)
      {
        if (v8 > 1000)
        {
          switch(v8)
          {
            case 1001:
              v28 = @"Bridged WiFi";
              break;
            case 2000:
              v28 = @"Wired Ethernet";
              break;
            case 3000:
              v28 = @"Other";
              break;
          }

          goto LABEL_27;
        }

        if (v8 != 100)
        {
          if (v8 == 500)
          {
            v28 = @"Bluetooth";
          }

          else if (v8 == 1000)
          {
            v28 = @"WiFi";
          }

          goto LABEL_27;
        }
      }

      else if ((v8 - 1) >= 8)
      {
LABEL_27:
        v29 = 138544642;
        v30 = v25;
        v31 = 2114;
        v32 = self;
        v33 = 2114;
        v34 = *&v26;
        v35 = 2114;
        v36 = v28;
        v37 = 2048;
        v38 = v8;
        v39 = 1024;
        v40 = v10;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Set preferredMaximumResolution=%{public}@ lastKnownNetwork=%{public}@ (%ld) prefersHighQualityContent=%{BOOL}u", &v29, 0x3Au);

        goto LABEL_28;
      }

      v28 = @"Cellular";
      goto LABEL_27;
    }

LABEL_28:
  }

LABEL_29:
}

- (void)_applyLoudnessInfo
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(MPCModelGenericAVItem *)self isAssetLoaded]&& [(MPCModelGenericAVItem *)self isHLSAsset]&& [(MPCModelGenericAVItem *)self loadedAudioAssetType]>= 3)
  {
    v3 = [(MPCModelGenericAVItem *)self modelPlayEvent];
    v4 = [v3 itemType];

    if (v4 != 1)
    {
      return;
    }

    v5 = [(MPCModelGenericAVItem *)self eventStream];
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 engineID];
      v8 = [(MPCModelGenericAVItem *)self playerItem];
      v22 = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = self;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Enabling album loudness on player item %{public}@", &v22, 0x20u);
    }

    v30 = *MEMORY[0x1E698DA20];
    v31[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v10 = [(MPCModelGenericAVItem *)self playerItem];
    [v10 setLoudnessInfo:v9];
  }

  else
  {
    if (![(MPCModelGenericAVItem *)self isAssetLoaded])
    {
      return;
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [(MPCModelGenericAVItem *)self playerItem];
    v10 = [v11 mediaKind];

    if (v10)
    {
      [v9 setObject:v10 forKey:*MEMORY[0x1E698DA60]];
    }

    [(MPCModelGenericAVItem *)self loudnessInfoVolumeNormalization];
    v13 = v12;
    v14 = [(MPCModelGenericAVItem *)self modelPlayEvent];
    v15 = [v14 itemType];

    if (v15 == 1)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E698DA20]];
    }

    else if (fabsf(v13) > 0.00000011921)
    {
      *&v16 = __exp10f(v13 / 20.0);
      v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
      [v9 setObject:v17 forKey:*MEMORY[0x1E698DA68]];
    }

    v18 = [(MPCModelGenericAVItem *)self playerItem];
    v19 = [(MPCModelGenericAVItem *)self eventStream];
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 engineID];
      v22 = 138544130;
      v23 = v21;
      v24 = 2114;
      v25 = self;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Setting loudness info %{public}@ on player item %{public}@", &v22, 0x2Au);
    }

    [v18 setLoudnessInfo:v9];
  }
}

- ($C4B24A06E922887A36692F481211F72A)_timeoutValues
{
  v32 = *MEMORY[0x1E69E9840];
  *&retstr->var0 = _MPCAssetLoadingTimeoutDefault;
  *&retstr->var2 = unk_1C60452D8;
  *&retstr->var4 = xmmword_1C60452E8;
  *&retstr->var6 = unk_1C60452F8;
  retstr->var8 = 10;
  v5 = [MEMORY[0x1E69E4428] sharedMonitor];
  v6 = [v5 isRemoteServerLikelyReachable];

  v7 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v8 = [v7 isWatch];

  if (v6)
  {
    v9 = 20;
  }

  else
  {
    if (v8)
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    retstr->var0 = v9;
    retstr->var3 = v9;
    retstr->var4 = v9;
    retstr->var6 = v9;
    retstr->var7 = v9;
    retstr->var8 = 1;
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138545666;
    v13 = self;
    v14 = 1024;
    v15 = v6;
    v16 = 2048;
    v17 = 10;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = 10;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = 2;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v9;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_INFO, "[AL] - %{public}@ - Timeout values [Network likely reachable: %{BOOL}u]: Local file=%lds - subscription lease session=%lds - home sharing=%lds - cloud streaming=%lds - cloud redownload=%lds - fairplay status=%lds - fairplay lease=%lds - suze lease=%lds", &v12, 0x62u);
  }

  return result;
}

- (void)_suzeLeaseSessionRenewDidFailNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"MPCSuzeLeaseControllerUserInfoKeyError"];
  v6 = [v4 objectForKey:@"MPCSuzeLeaseControllerUserInfoKeySession"];
  v7 = v6;
  if (v5 && v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MPCModelGenericAVItem__suzeLeaseSessionRenewDidFailNotification___block_invoke;
    block[3] = &unk_1E82391C0;
    block[4] = self;
    v9 = v6;
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __67__MPCModelGenericAVItem__suzeLeaseSessionRenewDidFailNotification___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[77] == a1[5])
  {
    v3 = [v2 itemError];

    if (!v3)
    {
      v4 = a1[4];
      v5 = a1[6];

      [v4 setItemError:v5];
    }
  }
}

- (void)_subscriptionLeaseStatusDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__MPCModelGenericAVItem__subscriptionLeaseStatusDidChangeNotification___block_invoke;
    v6[3] = &unk_1E82392C0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)_contentTasteControllerDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MPCModelGenericAVItem__contentTasteControllerDidChangeNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_ageVerificationStateDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPCModelGenericAVItem__ageVerificationStateDidChangeNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__MPCModelGenericAVItem__ageVerificationStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) explicitBadge];
  [*(a1 + 32) setExplicitBadge:v2];
}

- (void)_allowsHighQualityMusicStreamingOnCellularDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__MPCModelGenericAVItem__allowsHighQualityMusicStreamingOnCellularDidChangeNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__MPCModelGenericAVItem__allowsHighQualityMusicStreamingOnCellularDidChangeNotification___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAssetLoaded])
  {
    v2 = *(a1 + 32);
    v3 = [v2 playerItem];
    [v2 _applyPreferredPeakBitRateToPlayerItem:v3 withItemType:{objc_msgSend(*(a1 + 32), "type")}];
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPCModelGenericAVItem_environmentMonitorDidChangeNetworkType___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__MPCModelGenericAVItem_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAssetLoaded])
  {
    v2 = *(a1 + 32);
    v3 = [v2 playerItem];
    [v2 _applyPreferredPeakBitRateToPlayerItem:v3 withItemType:{objc_msgSend(*(a1 + 32), "type")}];
  }
}

- (void)setGenericObject:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  v5 = self->_genericObject;
  os_unfair_lock_unlock(&self->_lock);
  if (v5 != v10)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_genericObject, a3);
    v6 = [(MPModelGenericObject *)self->_genericObject flattenedGenericObject];
    flattenedGenericObject = self->_flattenedGenericObject;
    self->_flattenedGenericObject = v6;

    objc_storeStrong(&self->_metadataGenericObject, self->_genericObject);
    v8 = [(MPModelGenericObject *)self->_metadataGenericObject flattenedGenericObject];
    flattenedMetadataGenericObject = self->_flattenedMetadataGenericObject;
    self->_flattenedMetadataGenericObject = v8;

    os_unfair_lock_unlock(&self->_lock);
    [(MPCModelGenericAVItem *)self _reloadTimedMetadataRequest];
    [(MPCModelGenericAVItem *)self _setNeedsPersistedLikedStateUpdate];
    [(MPCModelGenericAVItem *)self invalidateContentItemDeviceSpecificUserInfo];
    [(MPCModelGenericAVItem *)self _postInvalidationNotifications];
  }
}

- (MPMediaLibrary)mediaLibrary
{
  v3 = [(MPCModelGenericAVItem *)self _storeRequestContext];
  v4 = [v3 identity];

  mediaLibrary = self->_mediaLibrary;
  if (mediaLibrary)
  {
    v6 = mediaLibrary;
  }

  else
  {
    v6 = [MEMORY[0x1E69705E8] deviceMediaLibraryWithUserIdentity:v4];
  }

  v7 = v6;

  return v7;
}

- (void)nowPlayingInfoCenter:(id)a3 lyricsForContentItem:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  os_unfair_lock_lock_with_options();
  v9 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject anyObject];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [v8 identifier];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
  {
    v11 = v9;
    v12 = objc_alloc_init(MEMORY[0x1E69709E8]);
    [v12 setSong:v11];
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v13 setQualityOfService:25];
    [v13 setName:@"com.apple.MediaPlaybackCore.MPCModelGenericAVItem.LyricsOperationQueue"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __78__MPCModelGenericAVItem_nowPlayingInfoCenter_lyricsForContentItem_completion___block_invoke;
    v21 = &unk_1E82344D8;
    v22 = v13;
    v23 = v10;
    v24 = v11;
    v25 = v7;
    v14 = v11;
    v15 = v13;
    v16 = [v12 newOperationWithResponseHandler:&v18];
    [v15 addOperation:{v16, v18, v19, v20, v21}];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "Unable to provide lyrics for contentItemID %{public}@, modelObject: %{public}@", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

void __78__MPCModelGenericAVItem_nowPlayingInfoCenter_lyricsForContentItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || ([v5 lyrics], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "text"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "No lyrics available. Error: %{public}@, modelObject: %{public}@", &v18, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v22 = @"ids";
    v13 = [v5 identifiers];
    v23[0] = v13;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v14 = [objc_alloc(MEMORY[0x1E6970860]) initWithIdentifier:*(a1 + 40) userInfo:v8];
    v15 = objc_alloc(MEMORY[0x1E6970858]);
    v16 = [v5 lyrics];
    v17 = [v16 text];
    v10 = [v15 initWithLyrics:v17 userProvided:0 token:v14];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_reloadTimedMetadataRequest
{
  if ([(MPCModelGenericAVItem *)self isAssetLoaded]&& ![(MPCModelGenericAVItem *)self isAlwaysLive])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = *MEMORY[0x1E6970A60];
    v6 = *(&self->super.super.isa + v5);
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v8 = 0.0;
    if (Seconds >= 0.0)
    {
      v9 = *(&self->super.super.isa + v5);
      if (v9)
      {
        [v9 currentTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v8 = CMTimeGetSeconds(&time);
    }

    v3 = [v4 numberWithDouble:v8];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_lock_with_options();
  genericObject = self->_genericObject;
  os_unfair_lock_unlock(&self->_lock);
  if (self->_currentGlobalTimedMetadataGroups)
  {
    v11 = genericObject == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    timedMetadataRequest = self->_timedMetadataRequest;
    self->_timedMetadataRequest = 0;

    timedMetadataResponse = self->_timedMetadataResponse;
    self->_timedMetadataResponse = 0;

    os_unfair_lock_lock_with_options();
    v15 = self->_genericObject;
    v20 = self->_metadataGenericObject;
    os_unfair_lock_unlock(&self->_lock);
    if (v20 != v15)
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(&self->_metadataGenericObject, self->_genericObject);
      objc_storeStrong(&self->_flattenedMetadataGenericObject, self->_flattenedGenericObject);
      os_unfair_lock_unlock(&self->_lock);
      [(MPCModelGenericAVItem *)self _invalidateContentItemForTimedMetadataChangesChangingRevisionID:1];
      [(MPCModelGenericAVItem *)self setLastMetadataChangeTime:v3];
      v14 = [(MPCModelGenericAVItem *)self observer];
      [v14 didSignificantlyChangeItem:self];

      [(MPCModelGenericAVItem *)self _setNeedsPersistedLikedStateUpdate];
      [(MPCModelGenericAVItem *)self _postInvalidationNotifications];
    }
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v15 = self->_genericObject;
    os_unfair_lock_unlock(&self->_lock);
    v16 = [MPCModelGenericAVItemTimedMetadataRequest alloc];
    currentGlobalTimedMetadataGroups = self->_currentGlobalTimedMetadataGroups;
    v18 = [(MPCModelGenericAVItem *)self _storeRequestContext];
    v19 = [(MPCModelGenericAVItemTimedMetadataRequest *)v16 initWithGenericObject:v15 timedMetadataGroups:currentGlobalTimedMetadataGroups storeRequestContext:v18];

    [(MPCModelGenericAVItemTimedMetadataRequest *)v19 setPreviousResponse:self->_timedMetadataResponse];
    [(MPCModelGenericAVItemTimedMetadataRequest *)v19 setItemProperties:self->_itemProperties];
    objc_storeStrong(&self->_timedMetadataRequest, v19);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __52__MPCModelGenericAVItem__reloadTimedMetadataRequest__block_invoke;
    v28 = &unk_1E82344B0;
    v29 = self;
    v20 = v19;
    v30 = v20;
    v31 = v3;
    v21 = [(MPModelGenericObject *)v20 newOperationWithResponseHandler:&v25];
    timedMetadataOperationQueue = self->_timedMetadataOperationQueue;
    if (!timedMetadataOperationQueue)
    {
      v23 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v24 = self->_timedMetadataOperationQueue;
      self->_timedMetadataOperationQueue = v23;

      [(NSOperationQueue *)self->_timedMetadataOperationQueue setName:@"com.apple.MediaPlaybackCore.MPCModelGenericAVItem.timedMetadataOperationQueue", v25, v26, v27, v28, v29, v30];
      [(NSOperationQueue *)self->_timedMetadataOperationQueue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)self->_timedMetadataOperationQueue setQualityOfService:25];
      timedMetadataOperationQueue = self->_timedMetadataOperationQueue;
    }

    [(NSOperationQueue *)timedMetadataOperationQueue addOperation:v21, v25, v26, v27, v28, v29];
  }
}

void __52__MPCModelGenericAVItem__reloadTimedMetadataRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = v3;
  msv_dispatch_on_main_queue();
}

void __52__MPCModelGenericAVItem__reloadTimedMetadataRequest__block_invoke_2(uint64_t a1)
{
  v31[4] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 680) == *(a1 + 40))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = v2;
    v4 = *(a1 + 32);
    if (*(v4 + 688))
    {
      [v2 removeObserver:? name:? object:?];
      v4 = *(a1 + 32);
    }

    objc_storeStrong((v4 + 688), *(a1 + 48));
    if (*(*(a1 + 32) + 688))
    {
      [v3 addObserver:? selector:? name:? object:?];
    }

    os_unfair_lock_lock_with_options();
    v5 = *(*(a1 + 32) + 896);
    v6 = *(*(a1 + 32) + 664);
    os_unfair_lock_unlock((*(a1 + 32) + 816));
    v7 = [*(a1 + 48) results];
    v8 = [v7 firstItem];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    v12 = v6;
    v13 = v12;
    if (v12 == v11)
    {
    }

    else
    {
      v14 = [v12 isEqual:v11];

      if ((v14 & 1) == 0)
      {
        os_unfair_lock_lock_with_options();
        v15 = [*(*(a1 + 32) + 656) identifiers];
        objc_storeStrong((*(a1 + 32) + 664), v10);
        v16 = [v11 flattenedGenericObject];
        v17 = *(a1 + 32);
        v18 = *(v17 + 656);
        *(v17 + 656) = v16;

        os_unfair_lock_unlock((*(a1 + 32) + 816));
        v19 = [*(a1 + 48) isFirstResponse];
        [*(a1 + 32) _invalidateContentItemForTimedMetadataChangesChangingRevisionID:v19];
        if (v19)
        {
          [*(a1 + 32) setLastMetadataChangeTime:*(a1 + 56)];
          v20 = [*(a1 + 32) observer];
          [v20 didSignificantlyChangeItem:*(a1 + 32)];
        }

        else
        {
          v21 = [v11 flattenedGenericObject];
          v20 = [v21 identifiers];

          if (v15 != v20 && ([v15 isEqual:v20] & 1) == 0)
          {
            v29 = [*(a1 + 32) eventStream];
            v30[0] = @"queue-section-id";
            v28 = [*(a1 + 32) queueSectionID];
            v31[0] = v28;
            v30[1] = @"queue-item-id";
            v27 = [*(a1 + 32) queueItemID];
            v31[1] = v27;
            v30[2] = @"item-kind";
            v22 = [v20 modelKind];
            v23 = v22;
            if (!v22)
            {
              v22 = [MEMORY[0x1E695DFB0] null];
            }

            v26 = v22;
            v31[2] = v22;
            v30[3] = @"item-ids";
            v24 = v20;
            if (!v20)
            {
              v24 = [MEMORY[0x1E695DFB0] null];
            }

            v31[3] = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
            [v29 emitEventType:@"item-update" payload:v25];

            if (!v20)
            {
            }

            if (!v23)
            {
            }
          }
        }

        [*(a1 + 32) _setNeedsPersistedLikedStateUpdate];
        [*(a1 + 32) _postInvalidationNotifications];
      }
    }
  }
}

- (void)metadataOutput:(id)a3 didOutputTimedMetadataGroups:(id)a4 fromPlayerItemTrack:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    if (!self->_didReceiveHLSTimedMetadata)
    {
      self->_didReceiveHLSTimedMetadata = 1;
      v11 = [(MPCModelGenericAVItem *)self eventStream];
      v18 = @"item-stream-id";
      hlsStreamIdentifier = self->_hlsStreamIdentifier;
      v13 = hlsStreamIdentifier;
      if (!hlsStreamIdentifier)
      {
        v13 = [MEMORY[0x1E695DFB0] null];
      }

      v19[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [v11 emitEventType:@"item-hls-timed-metadata-begin" payload:v14];

      if (!hlsStreamIdentifier)
      {
      }
    }

    currentGlobalTimedMetadataGroups = self->_currentGlobalTimedMetadataGroups;
    if (currentGlobalTimedMetadataGroups != v9 && ([(NSArray *)currentGlobalTimedMetadataGroups isEqual:v9]& 1) == 0)
    {
      v16 = [(NSArray *)v9 copy];
      v17 = self->_currentGlobalTimedMetadataGroups;
      self->_currentGlobalTimedMetadataGroups = v16;

      [(MPCModelGenericAVItem *)self _reloadTimedMetadataRequest];
      [(MPCModelGenericAVItem *)self _updateJingleTimedMetadata];
    }
  }
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (ICSecureKeyDeliveryRequestSupportsAssetResourceLoadingRequest())
  {
    radioPlayback = self->_radioPlayback;
    if ([(MPCModelGenericAVItem *)self isAssetLoaded])
    {
      isiTunesStoreStream = self->_isiTunesStoreStream;
    }

    else
    {
      isiTunesStoreStream = 0;
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__12470;
    v47 = __Block_byref_object_dispose__12471;
    v11 = [(MPCModelGenericAVItem *)self isAssetLoaded];
    streamingKeyServerURL = 0;
    if (v11)
    {
      streamingKeyServerURL = self->_streamingKeyServerURL;
    }

    v48 = streamingKeyServerURL;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__12470;
    v41 = __Block_byref_object_dispose__12471;
    if ([(MPCModelGenericAVItem *)self isAssetLoaded])
    {
      streamingKeyCertificateURL = self->_streamingKeyCertificateURL;
    }

    else
    {
      streamingKeyCertificateURL = 0;
    }

    v42 = streamingKeyCertificateURL;
    if (v44[5])
    {
      if (!v38[5] && (radioPlayback || !isiTunesStoreStream))
      {
LABEL_26:
        v10 = 0;
LABEL_29:
        _Block_object_dispose(&v37, 8);

        _Block_object_dispose(&v43, 8);
        goto LABEL_30;
      }
    }

    else
    {
      v10 = 0;
      if (radioPlayback || !isiTunesStoreStream)
      {
        goto LABEL_29;
      }
    }

    if (([(MPCModelGenericAVItem *)self isAssetLoaded]& 1) != 0)
    {
      v14 = [(MPCModelGenericAVItem *)self _storeRequestContext];
      MPProcessInfoSystemWallClockUptime();
      v16 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
      aBlock[3] = &unk_1E8234458;
      v18 = v14;
      v28 = v18;
      v34 = isiTunesStoreStream;
      v31 = &v37;
      v32 = &v43;
      v33[1] = v17;
      v33[2] = 0;
      v35 = 0;
      v29 = v7;
      v30 = self;
      v33[3] = v16;
      objc_copyWeak(v33, &location);
      v19 = _Block_copy(aBlock);
      v20 = v19;
      if (!isiTunesStoreStream || radioPlayback || v38[5] && v44[5])
      {
        (*(v19 + 2))(v19);
      }

      else
      {
        v21 = [MEMORY[0x1E69E4658] sharedBagProvider];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_4;
        v23[3] = &unk_1E8234480;
        v25 = &v43;
        v26 = &v37;
        v24 = v20;
        [v21 getBagForRequestContext:v18 withCompletionHandler:v23];
      }

      objc_destroyWeak(v33);
      objc_destroyWeak(&location);

      v10 = 1;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v10 = 0;
LABEL_30:

  return v10;
}

void __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [objc_alloc(MEMORY[0x1E69E4598]) initWithRequestContext:*(a1 + 32) resourceLoadingRequest:*(a1 + 40)];
  [v3 setShouldIncludeDeviceGUID:*(a1 + 104)];
  [v3 setCertificateURL:*(*(*(a1 + 56) + 8) + 40)];
  [v3 setKeyServerURL:*(*(*(a1 + 64) + 8) + 40)];
  [v3 setLeaseActionType:*(a1 + 80)];
  v4 = *(a1 + 104) == 1 && *(a1 + 32) != 0;
  [v3 setITunesStoreRequest:v4];
  if (*(a1 + 88))
  {
    [v3 setRentalID:?];
    [v3 setSkippedRentalCheckout:(*(a1 + 105) & 1) == 0];
  }

  v5 = [*(a1 + 48) eventStream];
  v18[0] = @"queue-section-id";
  v6 = [*(a1 + 48) queueSectionID];
  v19[0] = v6;
  v18[1] = @"queue-item-id";
  v7 = [*(a1 + 48) queueItemID];
  v19[1] = v7;
  v18[2] = @"asset-skd";
  v8 = [v3 contentURI];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v5 emitEventType:@"item-key-request-begin" payload:v10];

  if (!v8)
  {
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2;
  v13[3] = &unk_1E8234430;
  v13[4] = *(a1 + 48);
  v11 = v3;
  v14 = v11;
  v12 = v2;
  v15 = v12;
  v17[1] = *(a1 + 96);
  v16 = *(a1 + 40);
  objc_copyWeak(v17, (a1 + 72));
  [v11 performWithResponseHandler:v13];
  objc_destroyWeak(v17);
}

uint64_t __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_4(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E4330];
  v4 = a2;
  v5 = [v4 urlForBagKey:v3];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4 urlForBagKey:*MEMORY[0x1E69E4328]];

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1[4] + 16);

  return v11();
}

void __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) eventStream];
  v32[0] = @"queue-section-id";
  v8 = [*(a1 + 32) queueSectionID];
  v33[0] = v8;
  v32[1] = @"queue-item-id";
  v9 = [*(a1 + 32) queueItemID];
  v33[1] = v9;
  v32[2] = @"asset-skd";
  v10 = [*(a1 + 40) contentURI];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v33[2] = v11;
  v32[3] = @"key-request-error";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v33[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];
  [v7 emitEventType:@"item-key-request-end" payload:v13];

  if (v6)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v14 = [MEMORY[0x1E695DF00] date];
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = *(a1 + 48);
  v17 = *MEMORY[0x1E696F838];
  v18 = *MEMORY[0x1E696F828];
  v19 = MEMORY[0x1E696AD98];
  MPProcessInfoSystemWallClockUptime();
  v21 = [v19 numberWithDouble:v20 - *(a1 + 72)];
  v22 = [v15 initWithObjectsAndKeys:{v16, v17, v14, v18, v21, *MEMORY[0x1E696F820], 0}];

  if (v6)
  {
    [v22 setObject:v6 forKey:*MEMORY[0x1E696F830]];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3;
  block[3] = &unk_1E8234408;
  v27 = v5;
  v28 = *(a1 + 56);
  v29 = v6;
  v23 = v6;
  v24 = v5;
  objc_copyWeak(&v31, (a1 + 64));
  v30 = v22;
  v25 = v22;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v31);
}

void __80__MPCModelGenericAVItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) finishAssetResourceLoadingRequest:*(a1 + 40) withError:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:*MEMORY[0x1E696F800] object:v4 userInfo:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (id)rtcReportingServiceIdentifier
{
  if (![(MPCModelGenericAVItem *)self didAttemptToLoadAsset]|| (v3 = self->_rtcReportingServiceIdentifier) == 0)
  {
    v3 = [(MPCModelGenericAVItem *)self _rtcReportingServiceIdentifierWithAssetURL:0];
  }

  return v3;
}

- (NSData)trackInfoData
{
  v21 = *MEMORY[0x1E69E9840];
  trackInfo = self->_trackInfo;
  if (trackInfo)
  {
    v12 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:trackInfo format:100 options:0 error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v7 = [(MPCModelGenericAVItem *)self eventStream];
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 engineID];
        v10 = self->_trackInfo;
        *buf = 138544130;
        v14 = v9;
        v15 = 2114;
        v16 = self;
        v17 = 2114;
        v18 = v10;
        v19 = 2114;
        v20 = v5;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Unable to report track information [serialization error] - track-info=%{public}@ - error=%{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mpcReporting_itemType
{
  if ([(MPCModelGenericAVItem *)self isRadioStreamPlayback])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = MPCModelGenericAVItem;
  return [(MPAVItem *)&v4 mpcReporting_itemType];
}

- (id)artworkCatalogBlock
{
  v3 = [(MPCModelGenericAVItem *)self _radioStation];
  os_unfair_lock_lock_with_options();
  v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v4)
  {
    case 9:
      v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      goto LABEL_7;
    case 6:
      v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      goto LABEL_7;
    case 1:
      v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MPCModelGenericAVItem_artworkCatalogBlock__block_invoke;
  v11[3] = &unk_1E82343C0;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  v8 = v6;
  v9 = _Block_copy(v11);

  return v9;
}

id __44__MPCModelGenericAVItem_artworkCatalogBlock__block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12470;
  v13 = __Block_byref_object_dispose__12471;
  v14 = [*(a1 + 32) artworkCatalog];
  v2 = v10[5];
  if (!v2)
  {
    v3 = MEMORY[0x1E69706F8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__MPCModelGenericAVItem_artworkCatalogBlock__block_invoke_2;
    v6[3] = &unk_1E82394D8;
    v8 = &v9;
    v7 = *(a1 + 40);
    [v3 performWithoutEnforcement:v6];

    v2 = v10[5];
  }

  v4 = v2;
  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __44__MPCModelGenericAVItem_artworkCatalogBlock__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkCatalog];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)_removeLocalAssetFileIfPossible
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(MPCModelGenericAVItem *)self isAssetLoaded])
  {
    v3 = [(MPCModelGenericAVItem *)self asset];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v5) = 0;
LABEL_14:

      return v5;
    }

    v4 = [v3 URL];
    v5 = [v4 isFileURL];
    if (!v5)
    {
LABEL_13:

      goto LABEL_14;
    }

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v7 = [v6 removeItemAtURL:v4 error:&v19];
    v8 = v19;

    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = self;
        v22 = 2114;
        v23 = v4;
        v11 = "%{public}@: Removed local asset at %{public}@";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 22;
LABEL_11:
        _os_log_impl(&dword_1C5C61000, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v8;
      v11 = "%{public}@: Failed to remove local asset at %{public}@ error=%{public}@.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
      goto LABEL_11;
    }

    assetCacheProvider = self->_assetCacheProvider;
    genericObject = self->_genericObject;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__MPCModelGenericAVItem__removeLocalAssetFileIfPossible__block_invoke;
    v18[3] = &unk_1E8238800;
    v18[4] = self;
    [(MPCModelPlaybackAssetCacheProviding *)assetCacheProvider clearPlaybackAssetCacheFileAssetForGenericObject:genericObject withCompletionHandler:v18];

    goto LABEL_13;
  }

  LOBYTE(v5) = 0;
  return v5;
}

void __56__MPCModelGenericAVItem__removeLocalAssetFileIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      v7 = "%{public}@: Failed to clear cached asset from the library error=%{public}@.";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    v7 = "%{public}@: Cleared cached asset from the library.";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

- (int64_t)_keyServerAdamID
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 universalStore];
  v5 = [v4 assetAdamID];

  if (!v5)
  {
    v6 = [v3 universalStore];
    v5 = [v6 subscriptionAdamID];

    if (!v5)
    {
      v7 = [v3 universalStore];
      v5 = [v7 adamID];

      if (!v5)
      {
        v8 = [v3 universalStore];
        v5 = [v8 reportingAdamID];
      }
    }
  }

  v9 = [(MPCModelGenericAVItem *)self eventStream];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 engineID];
    v13 = 138544130;
    v14 = v11;
    v15 = 2114;
    v16 = self;
    v17 = 2048;
    v18 = v5;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ Using adamID %lld for key server requests from identifier set %{public}@", &v13, 0x2Au);
  }

  return v5;
}

- (void)_didBecomeActivePlayerItem
{
  v12[4] = *MEMORY[0x1E69E9840];
  if ([(MPCModelGenericAVItem *)self isHLSAsset]|| [(MPCModelGenericAVItem *)self isAlwaysLive])
  {
    if (!self->_hlsStreamIdentifier)
    {
      v3 = MSVNanoIDCreateTaggedPointer();
      hlsStreamIdentifier = self->_hlsStreamIdentifier;
      self->_hlsStreamIdentifier = v3;
    }

    v5 = [(MPCModelGenericAVItem *)self eventStream];
    v11[0] = @"queue-section-id";
    v6 = [(MPCModelGenericAVItem *)self queueSectionID];
    v12[0] = v6;
    v11[1] = @"item-start-item-id";
    v7 = [(MPCModelGenericAVItem *)self queueItemID];
    v8 = self->_hlsStreamIdentifier;
    v12[1] = v7;
    v12[2] = v8;
    v11[2] = @"item-stream-id";
    v11[3] = @"container-indeterminate-duration";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCModelGenericAVItem isAlwaysLive](self, "isAlwaysLive")}];
    v12[3] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
    [v5 emitEventType:@"item-hls-stream-begin" payload:v10];
  }
}

- (void)_didResignActivePlayerItem
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([(MPCModelGenericAVItem *)self isHLSAsset]|| [(MPCModelGenericAVItem *)self isAlwaysLive])
  {
    v3 = [(MPCModelGenericAVItem *)self eventStream];
    if (self->_didReceiveHLSTimedMetadata)
    {
      jingleTimedMetadata = self->_jingleTimedMetadata;
      self->_jingleTimedMetadata = 0;

      v15 = @"item-stream-id";
      hlsStreamIdentifier = self->_hlsStreamIdentifier;
      v6 = hlsStreamIdentifier;
      if (!hlsStreamIdentifier)
      {
        v6 = [MEMORY[0x1E695DFB0] null];
      }

      v16[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v3 emitEventType:@"item-hls-timed-metadata-end" payload:v7];

      if (!hlsStreamIdentifier)
      {
      }
    }

    v13[0] = @"queue-section-id";
    v8 = [(MPCModelGenericAVItem *)self queueSectionID];
    v14[0] = v8;
    v13[1] = @"item-end-item-id";
    v9 = [(MPCModelGenericAVItem *)self queueItemID];
    v14[1] = v9;
    v13[2] = @"item-stream-id";
    v10 = self->_hlsStreamIdentifier;
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v14[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [v3 emitEventType:@"item-hls-stream-end" payload:v12];

    if (!v10)
    {
    }
  }
}

- (void)_willResignActivePlayerItem
{
  v8.receiver = self;
  v8.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v8 _willResignActivePlayerItem];
  suzeLeaseSession = self->_suzeLeaseSession;
  if (suzeLeaseSession)
  {
    if (self->_isAutomaticallyRefreshingSuzeLeaseSession)
    {
      self->_isAutomaticallyRefreshingSuzeLeaseSession = 0;
      [(MPCSuzeLeaseSession *)self->_suzeLeaseSession endAutomaticallyRefreshingLease];
      suzeLeaseSession = self->_suzeLeaseSession;
    }

    v4 = suzeLeaseSession;
    v5 = +[MPCSuzeLeaseSessionController sharedController];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"MPCSuzeLeaseSessionControllerLeaseSessionRenewDidFailNotification" object:v5];

    v7 = self->_suzeLeaseSession;
    self->_suzeLeaseSession = 0;

    [v5 stopLeaseSession:v4 completion:0];
  }
}

- (void)_willBecomeActivePlayerItem
{
  v5.receiver = self;
  v5.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v5 _willBecomeActivePlayerItem];
  v3 = [self->_firstBecomeActivePlayerItemBlock copy];
  firstBecomeActivePlayerItemBlock = self->_firstBecomeActivePlayerItemBlock;
  self->_firstBecomeActivePlayerItemBlock = 0;

  if (v3)
  {
    v3[2](v3);
  }
}

- (int64_t)_persistedLikedState
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      break;
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      break;
    default:
      os_unfair_lock_unlock(&self->_lock);
      return 0;
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = [MEMORY[0x1E69704F8] sharedController];
    [v6 tasteTypeForModel:v5];
    v7 = MPMediaContentTasteTasteTypeToMPMediaEntityLikedState();

    return v7;
  }

  return 0;
}

- (void)_handleUpdatedLikedState:(int64_t)a3 forUserIdentity:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (a3 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 == 2;
  }

  v10 = a4;
  os_unfair_lock_lock_with_options();
  v11 = self->_metadataGenericObject;
  os_unfair_lock_unlock(&self->_lock);
  v12 = [MEMORY[0x1E69704F8] controllerWithUserIdentity:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MPCModelGenericAVItem__handleUpdatedLikedState_forUserIdentity_completion___block_invoke;
  v14[3] = &unk_1E8238D28;
  v15 = v8;
  v13 = v8;
  [v12 setTasteType:v9 forModel:v11 withCompletionHandler:v14];
}

void __77__MPCModelGenericAVItem__handleUpdatedLikedState_forUserIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__MPCModelGenericAVItem__handleUpdatedLikedState_forUserIdentity_completion___block_invoke_2;
    v5[3] = &unk_1E8239170;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_currentPlaybackRateDidChange:(float)a3
{
  v4.receiver = self;
  v4.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v4 _currentPlaybackRateDidChange:?];
  [(MPCModelGenericAVItem *)self _updateAutomaticSubscriptionLeaseRefresh];
}

- (BOOL)usesSubscriptionLease
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject movie];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject tvEpisode];
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 storeAsset];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 endpointType] == 3;

  return v7;
}

- (id)storeFrontIdentifier
{
  v2 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet identityProperties];
  v3 = [v2 storefrontIdentifier];

  return v3;
}

- (id)storeAccountID
{
  v3 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet delegatedIdentityProperties];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet identityProperties];
  }

  v6 = v5;

  v7 = [v6 DSID];

  return v7;
}

- (void)resolvePlaybackError:(id)a3 withCompletion:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCModelGenericAVItem *)self mediaItem];
  v9 = [v8 mediaLibrary];
  v10 = v9;
  if (v8 && [v9 isHomeSharingLibrary])
  {
    v11 = [v10 errorResolverForItem:self];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E6970460]) initWithErrorResolver:v11];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke;
      v63[3] = &unk_1E82342C0;
      v64 = v7;
      [v12 setResolutionHandler:v63];
      [v12 resolveError:v6];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    goto LABEL_10;
  }

  v13 = [MPCModelGenericAVItem _unwrapPlaybackError:v6];
  if (!v13)
  {
    goto LABEL_47;
  }

  v14 = v13;
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (v14 > 5)
    {
      v16 = @"Unknown";
    }

    else
    {
      v16 = off_1E8234800[v14 - 1];
    }

    *buf = 138543874;
    v66 = self;
    v67 = 2114;
    v68 = v16;
    v69 = 2114;
    v70 = v6;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unwrapped playback error with type=%{public}@ error=%{public}@.", buf, 0x20u);
  }

  if (v14 != 5)
  {
    if (v14 == 1 && self->_isSubscriptionPolicyContent)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_433;
      v58[3] = &unk_1E8234338;
      v58[4] = self;
      v59 = v7;
      [(MPCModelGenericAVItem *)self _getSubscriptionLeasePropertiesWithCompletion:v58];

      goto LABEL_48;
    }

    if (v14 != 6)
    {
      if (v14 == 4)
      {
        v28 = *MEMORY[0x1E696F9A0];
        v29 = *MEMORY[0x1E696F9B8];
        v30 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696F9A0], *MEMORY[0x1E696F9B8], 0}];
        v31 = [v8 valuesForProperties:v30];

        v32 = [v31 objectForKey:v28];
        v33 = [v31 objectForKey:v29];
        if ([v32 length] && objc_msgSend(v33, "longLongValue"))
        {
          v52 = v33;
          v34 = [(MPCModelGenericAVItem *)self eventStream];
          v35 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            loga = [v34 engineID];
            *buf = 138543618;
            v66 = loga;
            v67 = 2114;
            v68 = self;
            _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Purging cached content key(s) for invalid user error.", buf, 0x16u);
          }

          v36 = [objc_alloc(MEMORY[0x1E69E4430]) initWithPath:v32];
          v37 = [v36 removeAllKeys];
          if (v37)
          {
            log = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v66 = self;
              v67 = 2114;
              v68 = v37;
              _os_log_impl(&dword_1C5C61000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove cached hls keys. err=%{public}@.", buf, 0x16u);
            }
          }

          v33 = v52;
        }

        (*(v7 + 2))(v7, 0, 0);
        goto LABEL_57;
      }

      if (v14 != 3)
      {
        goto LABEL_47;
      }

      os_unfair_lock_lock_with_options();
      v26 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
      switch(v26)
      {
        case 9:
          v27 = [(MPModelGenericObject *)self->_flattenedGenericObject movie];
          break;
        case 6:
          v27 = [(MPModelGenericObject *)self->_flattenedGenericObject tvEpisode];
          break;
        case 1:
          v27 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
          break;
        default:
          v31 = 0;
          goto LABEL_53;
      }

      v45 = v27;
      v31 = [v27 storeAsset];

LABEL_53:
      os_unfair_lock_unlock(&self->_lock);
      v46 = [v31 accountIdentifier];
      v47 = MEMORY[0x1E69E4680];
      if (v46)
      {
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46];
        v32 = [v47 specificAccountWithDSID:v48];
      }

      else
      {
        v32 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
      }

      v33 = [objc_alloc(MEMORY[0x1E69E4618]) initWithIdentity:v32];
      v49 = [objc_alloc(MEMORY[0x1E69E43A8]) initWithRequestContext:v33];
      [v49 setReason:*MEMORY[0x1E69E40F0]];
      [v49 setQualityOfService:25];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_3;
      v56[3] = &unk_1E8234360;
      v56[4] = self;
      v57 = v7;
      [v49 performWithResponseHandler:v56];

LABEL_57:
      goto LABEL_48;
    }

    if (!self->_assetCacheProvider || ![(MPCModelGenericAVItem *)self isAssetLoaded])
    {
      goto LABEL_47;
    }

    v17 = [(MPCModelGenericAVItem *)self asset];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_46:

      goto LABEL_47;
    }

    v38 = [(MPCModelGenericAVItem *)self asset];
    v39 = [v38 URL];
    v40 = [v39 isFileURL];

    if (v40)
    {
      v41 = [(MPCModelGenericAVItem *)self asset];
      v42 = [v41 URL];

      assetCacheProvider = self->_assetCacheProvider;
      genericObject = self->_genericObject;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_446;
      v53[3] = &unk_1E8236E20;
      v53[4] = self;
      v54 = v42;
      v55 = v7;
      v11 = v42;
      [(MPCModelPlaybackAssetCacheProviding *)assetCacheProvider clearPlaybackAssetCacheFileAssetForGenericObject:genericObject withCompletionHandler:v53];

      v25 = v55;
      goto LABEL_20;
    }

LABEL_47:
    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_48;
  }

  if (!self->_assetCacheProvider || [(MPCModelGenericAVItem *)self isHLSAsset]|| ![(MPCModelGenericAVItem *)self isAssetLoaded])
  {
    goto LABEL_47;
  }

  v17 = [(MPCModelGenericAVItem *)self asset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_46;
  }

  v18 = [(MPCModelGenericAVItem *)self asset];
  v19 = [v18 URL];
  v20 = [v19 isFileURL];

  if (!v20)
  {
    goto LABEL_47;
  }

  v21 = [(MPCModelGenericAVItem *)self asset];
  v22 = [v21 URL];

  v23 = self->_assetCacheProvider;
  v24 = self->_genericObject;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_432;
  v60[3] = &unk_1E8236E20;
  v60[4] = self;
  v61 = v22;
  v62 = v7;
  v11 = v22;
  [(MPCModelPlaybackAssetCacheProviding *)v23 clearPlaybackAssetCacheFileAssetForGenericObject:v24 withCompletionHandler:v60];

  v25 = v62;
LABEL_20:

LABEL_10:
LABEL_48:
}

uint64_t __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (a2 == 1);
    }

    return (*(result + 16))(result, v3, 0);
  }

  return result;
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_432(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to clear file asset error=%{public}@.", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = a1[5];
    v16 = 0;
    v8 = [v6 removeItemAtURL:v7 error:&v16];
    v9 = v16;

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v13 = a1[5];
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cleared cached asset from the library and removed local file at %{public}@.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = a1[5];
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove unauthorized content at %{public}@ error=%{public}@.", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_433(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [a3 shouldUseLease];
  if (v7 && v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69E44A8]);
    v11 = [v7 requestContext];
    v12 = [v10 initWithRequestContext:v11];

    [v12 setShouldPreventLeaseAcquisition:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_2;
    v18[3] = &unk_1E8234310;
    v13 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v20 = v13;
    v19 = v7;
    v14 = [v19 performPlaybackRequest:v12 completionHandler:v18];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_2_441;
    block[3] = &unk_1E8239170;
    v17 = *(a1 + 40);
    v16 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v12 = v17;
  }
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_4;
  v11[3] = &unk_1E8237160;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_446(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to clear file asset error=%{public}@.", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = a1[5];
    v16 = 0;
    v8 = [v6 removeItemAtURL:v7 error:&v16];
    v9 = v16;

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v13 = a1[5];
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cleared cached asset from the library and removed local file at %{public}@.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = a1[5];
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove unauthorized content at %{public}@ error=%{public}@.", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }
}

uint64_t __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v11 = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Finished authorize machine request for error resolution with error: %{public}@.", &v11, 0x16u);
    }
  }

  else
  {
    v2 = [*(a1 + 40) eventStream];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 engineID];
      v7 = *(a1 + 40);
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Finished authorize machine request successfully.", &v11, 0x16u);
    }
  }

  if (*(a1 + 48))
  {
    v8 = *(a1 + 32) == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  return (*(*(a1 + 56) + 16))(*(a1 + 56), v9);
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_2(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = a3;
  v9 = [v7 errorForICError:a4 response:a2];
  [a1[4] _emitNetworkOperationWithPerformanceMetrics:v8 operationType:4 reason:@"Resolving error" blocksPlayback:{objc_msgSend(a1[4], "isStartItem")}];

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      *buf = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Subscription lease request failed [error during resolution] - error=%{public}@.", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_437;
    block[3] = &unk_1E8239170;
    v12 = &v25;
    v25 = a1[6];
    v24 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v13 = v24;
  }

  else
  {
    v14 = [a1[4] eventStream];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 engineID];
      v17 = a1[4];
      *buf = 138543618;
      v27 = v16;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Finished sending subscription lease request for error resolution", buf, 0x16u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_438;
    v20[3] = &unk_1E8239198;
    v12 = v21;
    v18 = a1[5];
    v19 = a1[4];
    v21[0] = v18;
    v21[1] = v19;
    v22 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], v20);
    v13 = v22;
  }
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_438(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_2_439;
  v3[3] = &unk_1E82342E8;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 reloadFairPlayKeyStatusWithCompletionHandler:v3];
}

void __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_2_439(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Finished reloading FairPlayKey status - error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = [*(a1 + 32) eventStream];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 engineID];
      v11 = *(a1 + 32);
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Finished reloading FairPlayKey status", buf, 0x16u);
    }
  }

  v15 = *(a1 + 40);
  v14 = v5;
  v12 = v6;
  v13 = v5;
  msv_dispatch_on_main_queue();
}

uint64_t __61__MPCModelGenericAVItem_resolvePlaybackError_withCompletion___block_invoke_440(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ([*(a1 + 32) hasOnlinePlaybackKeys])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) hasOfflinePlaybackKeys];
  }

  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (BOOL)canUseLoadedAsset
{
  v3 = [(MPCModelGenericAVItem *)self itemError];

  if (v3)
  {
    return 0;
  }

  if (![(MPCModelGenericAVItem *)self isExplicitTrack])
  {
    return 1;
  }

  v5 = +[MPCContentAgeRequirementManager sharedManager];
  v6 = [v5 isItemAuthorized:self];

  return v6;
}

- (void)_updateAudioFormatInfoForContentItem:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v27 _updateAudioFormatInfoForContentItem:v4];
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedGenericObject type]== 1)
  {
    v5 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
    [v4 setSongTraits:{objc_msgSend(v5, "traits")}];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(MPCModelGenericAVItem *)self modelPlayEvent];
  v7 = [v6 itemType];
  if (v7 == 3)
  {
    v8 = [v6 playlist];
    if ([v8 hasLoadedValueForKey:*MEMORY[0x1E696FE20]])
    {
      [v4 setPlaylistTraits:{objc_msgSend(v8, "traits")}];
      goto LABEL_16;
    }

    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v8;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_FAULT, "%{public}@: Uninitialized MPModelPropertyPlaylistTraits properties - playlist=%{public}@.", buf, 0x16u);
    }

    v28[0] = @"playEvent";
    v16 = [v6 description];
    v29[0] = v16;
    v28[1] = @"item";
    v17 = [(MPCModelGenericAVItem *)self description];
    v29[1] = v17;
    v28[2] = @"playlist";
    v18 = [v8 description];
    v29[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v30 = v19;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"ModelBug" context:@"playlist.traits=nil" triggerThresholdValues:&stru_1F454A698 events:v14 completion:0];
LABEL_15:

    goto LABEL_16;
  }

  if (v7 != 1)
  {
    goto LABEL_17;
  }

  v8 = [v6 album];
  if (![v8 hasLoadedValueForKey:*MEMORY[0x1E696FC40]])
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v8;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Uninitialized MPModelPropertyAlbumTraits - album=%{public}@.", buf, 0x16u);
    }

    v31[0] = @"playEvent";
    v10 = [v6 description];
    v32[0] = v10;
    v31[1] = @"item";
    v11 = [(MPCModelGenericAVItem *)self description];
    v32[1] = v11;
    v31[2] = @"album";
    v12 = [v8 description];
    v32[2] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v33 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"ModelBug" context:@"album.traits=nil" triggerThresholdValues:&stru_1F454A698 events:v14 completion:0];
    goto LABEL_15;
  }

  [v4 setAlbumTraits:{objc_msgSend(v8, "traits")}];
LABEL_16:

LABEL_17:
  preferredFormat = self->_preferredFormat;
  if (preferredFormat)
  {
    v21 = [(MPCPlayerAudioFormat *)preferredFormat nowPlayingAudioFormat];
    [v4 setPreferredFormat:v21];
  }

  activeFormat = self->_activeFormat;
  if (activeFormat)
  {
    v23 = [(MPCPlayerAudioFormat *)activeFormat nowPlayingAudioFormat];
    [v4 setActiveFormat:v23];

    [v4 setActiveFormatJustification:self->_activeFormatJustification];
  }

  audioRoute = self->_audioRoute;
  if (audioRoute)
  {
    v25 = [(MPCPlayerAudioRoute *)audioRoute nowPlayingAudioRoute];
    [v4 setAudioRoute:v25];
  }

  [v4 setFormatTierPreference:{-[MPCModelGenericAVItem _audioFormatPreference](self, "_audioFormatPreference")}];
  if ([(NSArray *)self->_alternateFormats count])
  {
    v26 = [(NSArray *)self->_alternateFormats msv_map:&__block_literal_global_429];
    [v4 setAlternativeFormats:v26];
  }
}

- (void)_updateContentItemIncludingPlaybackState:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v15 _updateContentItemIncludingPlaybackState:a3];
  v4 = [(MPCModelGenericAVItem *)self contentItem];
  v5 = [v4 _mediaRemoteContentItem];

  v6 = [(MPCModelGenericAVItem *)self queueSectionID];
  v7 = [(MPCModelGenericAVItem *)self queueItemID];
  v8 = [v6 stringByAppendingString:v7];

  v9 = [v5 queueIdentifier];
  v10 = v9;
  if (v9 == v8)
  {
    goto LABEL_4;
  }

  v11 = [v9 isEqual:v8];

  if ((v11 & 1) == 0)
  {
    [v5 setQueueIdentifier:v8];
    v12 = [(MPCModelGenericAVItem *)self contentItem];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__MPCModelGenericAVItem__updateContentItemIncludingPlaybackState___block_invoke;
    v13[3] = &unk_1E8234278;
    v14 = v8;
    [v12 _postItemChangedNotificationWithDeltaBlock:v13];

    v10 = v14;
LABEL_4:
  }
}

- (float)userRating
{
  os_unfair_lock_lock_with_options();
  v3 = 0.0;
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    [v4 userRating];
    v3 = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setupWithPlaybackInfo
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (([(MPCModelGenericAVItem *)self isAssetLoaded]& 1) != 0)
  {
    if (*(&self->super.super.isa + *MEMORY[0x1E6970A58]))
    {
      v13.receiver = self;
      v13.super_class = MPCModelGenericAVItem;
      [(MPCModelGenericAVItem *)&v13 setupWithPlaybackInfo];
      return;
    }

    v9 = MEMORY[0x1E69B13D8];
    v10 = *MEMORY[0x1E69B1340];
    v11 = [(MPCModelGenericAVItem *)self description];
    v14 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v9 snapshotWithDomain:v10 type:@"Bug" subType:@"AssetLoadingBug" context:@"setupWithPlaybackInfo._asset==nil" triggerThresholdValues:&stru_1F454A698 events:v12 completion:0];

    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = self;
      v8 = "%{public}@: setupWithPlaybackInfo called without an asset loaded and isAssetLoaded is TRUE";
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69B13D8];
    v4 = *MEMORY[0x1E69B1340];
    v5 = [(MPCModelGenericAVItem *)self description];
    v17[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"AssetLoadingBug" context:@"setupWithPlaybackInfo.isAssetLoaded==NO" triggerThresholdValues:&stru_1F454A698 events:v6 completion:0];

    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = self;
      v8 = "%{public}@: setupWithPlaybackInfo called without an asset loaded";
LABEL_8:
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_FAULT, v8, buf, 0xCu);
    }
  }
}

- (id)playbackInfo
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31.receiver = self;
  v31.super_class = MPCModelGenericAVItem;
  v4 = [(MPCModelGenericAVItem *)&v31 playbackInfo];
  [(MPCModelGenericAVItem *)self _startTime];
  v6 = v5;
  v7 = [(MPCModelGenericAVItem *)self _stopTime];
  v8 = *MEMORY[0x1E696F7E8];
  v9 = [v4 objectForKey:*MEMORY[0x1E696F7E8]];
  if (v9)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = *MEMORY[0x1E696F7F0];
  v11 = [v4 objectForKey:*MEMORY[0x1E696F7F0]];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 <= 0.00000011920929;
  }

  if (!v12)
  {
    v13 = [(MPCModelGenericAVItem *)self eventStream];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 engineID];
      *buf = 138543874;
      v33 = v15;
      v34 = 2114;
      v35 = self;
      v36 = 2048;
      v37 = v6;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ Using start time: %f", buf, 0x20u);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    [v3 setObject:v9 forKey:v10];
    goto LABEL_9;
  }

LABEL_10:
  if (v7)
  {
    [v7 doubleValue];
    v17 = v16;
    if (v16 > 0.00000011920929)
    {
      [(MPCModelGenericAVItem *)self durationFromExternalMetadata];
      if (v17 < v18)
      {
        v19 = [(MPCModelGenericAVItem *)self eventStream];
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v19 engineID];
          *buf = 138543874;
          v33 = v21;
          v34 = 2114;
          v35 = self;
          v36 = 2048;
          v37 = v6;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ Using stop time: %f", buf, 0x20u);
        }

        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        [v3 setObject:v22 forKey:*MEMORY[0x1E696F7D8]];
      }
    }
  }

  [v3 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696F7E0]];
  v23 = [v4 objectForKey:v8];
  if (v23)
  {
    goto LABEL_17;
  }

  v24 = [v4 objectForKey:*MEMORY[0x1E696F7F0]];

  if (!v24)
  {
    if ([(MPCModelGenericAVItem *)self usesBookmarking])
    {
      v23 = [(MPCModelGenericAVItem *)self _bookmarkTime];
    }

    else
    {
      v23 = 0;
    }

    [v23 doubleValue];
    if (v23)
    {
      v27 = v26;
      if (v26 > 0.00000011920929)
      {
        [v3 setObject:v23 forKey:v8];
        v28 = [(MPCModelGenericAVItem *)self eventStream];
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v28 engineID];
          *buf = 138543874;
          v33 = v30;
          v34 = 2114;
          v35 = self;
          v36 = 2048;
          v37 = v27;
          _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ Using bookmark start time: %f", buf, 0x20u);
        }
      }
    }

LABEL_17:
  }

  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  return v3;
}

- (id)containerUniqueID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_genericObject identifiers];
  v4 = [v3 containerUniqueID];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)hasTimeSyncedLyrics
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 lyrics];
    v5 = [v4 hasTimeSyncedLyrics];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)hasStoreLyrics
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 lyrics];
    v5 = [v4 hasStoreLyrics];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)libraryLyrics
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 lyrics];
    v5 = [v4 text];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (int64_t)lyricsAdamID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 identifiers];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 universalStore];
  v8 = [v7 lyricsAdamID];

  if ([(MPCModelGenericAVItem *)self hasStoreLyrics])
  {
    if (!v8)
    {
      v8 = [(MPCModelGenericAVItem *)self reportingAdamID];
      if (!v8)
      {
        v8 = [(MPCModelGenericAVItem *)self storeSubscriptionAdamID];
      }
    }
  }

  return v8;
}

- (int64_t)reportingAdamID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 identifiers];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 universalStore];
  v8 = [v7 reportingAdamID];

  return v8;
}

- (int64_t)storeItemInt64ID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 identifiers];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 universalStore];
  v8 = [v7 adamID];

  if (!v8)
  {
    v9 = [v6 universalStore];
    v8 = [v9 purchasedAdamID];

    if (!v8)
    {
      v10 = [v6 universalStore];
      v8 = [v10 subscriptionAdamID];
    }
  }

  return v8;
}

- (int64_t)stationProviderID
{
  v2 = [(NSDictionary *)self->_trackInfo objectForKey:@"stream-provider-id"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)stationStringID
{
  v2 = [(MPCModelGenericAVItem *)self _radioStation];
  v3 = [v2 identifiers];
  v4 = [v3 radio];
  v5 = [v4 stationStringID];

  return v5;
}

- (id)stationName
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12470;
  v15 = __Block_byref_object_dispose__12471;
  v16 = 0;
  v2 = [(MPCModelGenericAVItem *)self _radioStation];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E69706F8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__MPCModelGenericAVItem_stationName__block_invoke;
    v8[3] = &unk_1E82394D8;
    v10 = &v11;
    v9 = v2;
    [v4 performWithoutEnforcement:v8];
  }

  v5 = v12[5];
  if (!v5)
  {
    v5 = &stru_1F454A698;
  }

  v6 = v5;

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __36__MPCModelGenericAVItem_stationName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)stationHash
{
  v2 = [(MPCModelGenericAVItem *)self _radioStation];
  v3 = [v2 identifiers];
  v4 = [v3 radio];
  v5 = [v4 stationHash];

  return v5;
}

- (int64_t)stationID
{
  v2 = [(MPCModelGenericAVItem *)self _radioStation];
  v3 = [v2 identifiers];
  v4 = [v3 radio];
  v5 = [v4 stationID];

  return v5;
}

- (BOOL)shouldReportPlayEvents
{
  if (self->_radioPlayback)
  {
    return 1;
  }

  os_unfair_lock_lock_with_options();
  v4 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  switch(v4)
  {
    case 9:
      v5 = [(MPModelGenericObject *)self->_flattenedGenericObject movie];
      break;
    case 6:
      v5 = [(MPModelGenericObject *)self->_flattenedGenericObject tvEpisode];
      break;
    case 1:
      v5 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
      break;
    default:
      v7 = 0;
      v8 = 0;
      goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 identifiers];
  v8 = [v6 storeAsset];

LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
  v9 = [v7 personalizedStore];
  v10 = [v9 cloudID];

  if (v10)
  {
    v2 = [v8 shouldReportPlayEvents];
  }

  else
  {
    v2 = [v8 endpointType] == 3;
  }

  return v2;
}

- (void)setRating:(float)a3
{
  if ([(MPCModelGenericAVItem *)self supportsRating])
  {
    v5 = [(MPCModelGenericAVItem *)self mediaItem];
    *&v6 = a3 * 5.0;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    [v5 setValue:v7 forProperty:*MEMORY[0x1E696FAD0] withCompletionBlock:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:*MEMORY[0x1E696F7F8] object:self userInfo:0];
  }
}

- (void)_prepareLeaseWithShouldRequireLeaseAcquisition:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke;
  v8[3] = &unk_1E8234250;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(MPCModelGenericAVItem *)self _getSubscriptionLeasePropertiesWithCompletion:v8];
}

void __90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([a3 shouldUseLease])
  {
    v22 = v7;
    v23 = *(a1 + 40);
    msv_dispatch_on_main_queue();

    v9 = v22;
LABEL_12:

    goto LABEL_13;
  }

  v10 = [*(a1 + 32) eventStream];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      v13 = [v10 engineID];
      v14 = *(a1 + 32);
      *buf = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Failed to get lease status error=%{public}@", buf, 0x20u);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v21 = v15;
      v20 = v8;
      msv_dispatch_on_main_queue();

      v9 = v21;
      goto LABEL_12;
    }
  }

  else
  {
    if (v12)
    {
      v16 = [v10 engineID];
      v17 = *(a1 + 32);
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Early completion [Subscription lease not required]", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = v18;
      msv_dispatch_on_main_queue();
      v9 = v19;
      goto LABEL_12;
    }
  }

LABEL_13:
}

void __90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 600);
  v2 = [*(a1 + 32) eventStream];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 engineID];
    v5 = *(a1 + 32);
    *buf = 138543618;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Sending subscription lease request", buf, 0x16u);
  }

  v6 = objc_alloc(MEMORY[0x1E69E44A8]);
  v7 = [*(a1 + 40) requestContext];
  v8 = [v6 initWithRequestContext:v7];

  [v8 setShouldRequireLeaseAcquisition:*(a1 + 56)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke_374;
  v11[3] = &unk_1E8234310;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  v13 = *(a1 + 48);
  v10 = [v12 performPlaybackRequest:v8 completionHandler:v11];
}

void __90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke_374(id *a1, void *a2, void *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = MEMORY[0x1E696ABC0];
  v9 = a3;
  v10 = [v8 errorForICError:a4 response:v7];
  if ([v10 code] == -7600)
  {
    v11 = [a1[4] eventStream];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    v11 = [a1[4] eventStream];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v16 = [v11 engineID];
      v17 = a1[4];
      v18 = [a1[5] leaseStatus];
      *buf = 138544130;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v18;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Finished subscription lease request for rate preparation with response: %{public}@ - status: %{public}@", buf, 0x2Au);
    }

LABEL_9:

    goto LABEL_10;
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[4];
    v14 = [a1[5] leaseStatus];
    v15 = [v10 treeDescription];
    *buf = 138544130;
    v26 = v13;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[LeaseRatePreparation] - %{public}@: Finished subscription lease request for rate preparation with response: %{public}@ - status: %{public}@ error=%{public}@", buf, 0x2Au);
  }

LABEL_10:

  v24 = a1[6];
  v21 = v7;
  v22 = v10;
  v23 = a1[5];
  v19 = v10;
  v20 = v7;
  msv_dispatch_on_main_queue();
  [a1[4] _emitNetworkOperationWithPerformanceMetrics:v9 operationType:4 reason:@"Prepare for rate" blocksPlayback:a1[6] != 0];
}

_BYTE *__90__MPCModelGenericAVItem__prepareLeaseWithShouldRequireLeaseAcquisition_completionHandler___block_invoke_375(void *a1)
{
  --*(a1[4] + 600);
  v2 = a1[8];
  if (v2)
  {
    if (a1[5])
    {
      v3 = a1[6] == 0;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    (*(v2 + 16))(v2, v4);
  }

  result = a1[4];
  if (result[608] == 1)
  {
    v6 = a1[7];

    return [result _updatePreventionStatusWithLeaseSession:v6];
  }

  return result;
}

- (void)prepareForRate:(float)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MPCModelGenericAVItem *)self eventStream];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 engineID];
    *buf = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = self;
    v28 = 2048;
    v29 = a3;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Preparing for rate: %f.", buf, 0x20u);
  }

  v10 = fabsf(a3);
  lastPreparedForNonZeroRate = self->_lastPreparedForNonZeroRate;
  self->_lastPreparedForNonZeroRate = v10 > 0.00000011921;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke;
  aBlock[3] = &unk_1E82341D8;
  aBlock[4] = self;
  v23 = v10 > 0.00000011921;
  v12 = v6;
  v21 = v12;
  v22 = a3;
  v13 = _Block_copy(aBlock);
  if (v10 <= 0.00000011921)
  {
    deferredLeaseAcquisitionTask = self->_deferredLeaseAcquisitionTask;
    self->_deferredLeaseAcquisitionTask = 0;

LABEL_11:
    v13[2](v13, 1, 0);
    goto LABEL_12;
  }

  if (lastPreparedForNonZeroRate || ![(MPCModelGenericAVItem *)self isAssetLoaded]|| !self->_isSubscriptionPolicyContent)
  {
    goto LABEL_11;
  }

  v14 = [(MPCModelGenericAVItem *)self eventStream];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 engineID];
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = self;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Getting subscription lease session", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke_366;
  v18[3] = &unk_1E82345F0;
  v18[4] = self;
  v19 = v13;
  [(MPCModelGenericAVItem *)self _getUnverifiedSubscriptionLeaseSessionWithCompletion:v18];

LABEL_12:
}

void __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 || (a2 & 1) != 0 || ([*(a1 + 32) itemError], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [*(a1 + 32) setItemError:v5];
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if (*(a1 + 52) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 768);
      if (v8)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke_2;
        v15[3] = &unk_1E8239528;
        v16 = v7;
        [v8 waitForKeyRenewalsWithCompletionHandler:v15];

        goto LABEL_12;
      }
    }
  }

LABEL_10:
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

LABEL_12:
  v10 = [*(a1 + 32) eventStream];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 engineID];
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    *buf = 138543874;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Finished preparing for rate: %f.", buf, 0x20u);
  }
}

void __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke_366(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 leaseStatus];
    v6 = *(a1 + 32);
    v7 = v6[593];
    if ([v6 isDownloadedAsset])
    {
      v8 = [v5 hasOfflinePlaybackKeys];
    }

    else
    {
      v8 = 0;
    }

    if ([v5 shouldPlaybackRequireOnlineKeys])
    {
      v13 = [v5 hasOnlinePlaybackKeys] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = v7 & (v8 ^ 1);
    if ([v5 hasOnlinePlaybackKeys])
    {
      v15 = 0;
    }

    else
    {
      v15 = [v5 hasOfflinePlaybackKeys] ^ 1;
    }

    if ((v14 & (v13 | v15)) == 1)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 832);
      *(v16 + 832) = 0;

      [*(a1 + 32) _prepareLeaseWithShouldRequireLeaseAcquisition:0 completionHandler:*(a1 + 40)];
      goto LABEL_26;
    }

    if (v8)
    {
      goto LABEL_17;
    }

    v26 = [v4 leaseExpirationDate];
    [v26 timeIntervalSinceNow];
    if (v27 <= 60.0)
    {
    }

    else
    {
      v28 = [*(a1 + 32) isHLSAsset];

      if ((v28 & 1) == 0)
      {
LABEL_17:
        objc_initWeak(buf, *(a1 + 32));
        v18 = MEMORY[0x1E696AEC0];
        v19 = [*(a1 + 32) contentItemID];
        v35 = [v18 stringWithFormat:@"leaseAcquisition:%@", v19];

        v20 = [MPCNonZeroEffectiveRateTask alloc];
        v21 = [*(a1 + 32) playerItem];
        v22 = MEMORY[0x1E69E96A0];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke_2_370;
        v38[3] = &unk_1E8234200;
        objc_copyWeak(&v39, buf);
        v23 = [(MPCNonZeroEffectiveRateTask *)v20 initWithPlayerItem:v21 identifier:v35 timeout:MEMORY[0x1E69E96A0] queue:v38 block:15.0];
        v24 = *(a1 + 32);
        v25 = *(v24 + 832);
        *(v24 + 832) = v23;

        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
LABEL_23:
        v31 = [*(a1 + 32) eventStream];
        v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v31 engineID];
          v34 = *(a1 + 32);
          *buf = 138544642;
          v41 = v33;
          v42 = 2114;
          v43 = v34;
          v44 = 1024;
          v45 = v14;
          v46 = 1024;
          v47 = v8;
          v48 = 1024;
          v49 = v13;
          v50 = 1024;
          v51 = v15;
          _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Early completion [Playback keys not required] - someKeysAreRequired:%{BOOL}u - isDownloadedAndHasOfflineKeys: %{BOOL}u - requiresOnlineKeys: %{BOOL}u - hasNeitherOnlineNorOfflineKeys: %{BOOL}u", buf, 0x2Eu);
        }

        v37 = *(a1 + 40);
        msv_dispatch_on_main_queue();

        goto LABEL_26;
      }
    }

    v29 = *(a1 + 32);
    v30 = *(v29 + 832);
    *(v29 + 832) = 0;

    [*(a1 + 32) _prepareLeaseWithShouldRequireLeaseAcquisition:1 completionHandler:0];
    goto LABEL_23;
  }

  v9 = [*(a1 + 32) eventStream];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 engineID];
    v12 = *(a1 + 32);
    *buf = 138543618;
    v41 = v11;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[LeaseRatePreparation] - %{public}@: Early completion [No subscription lease session available]", buf, 0x16u);
  }

  v36 = *(a1 + 40);
  msv_dispatch_on_main_queue();
  v5 = v36;
LABEL_26:
}

void __58__MPCModelGenericAVItem_prepareForRate_completionHandler___block_invoke_2_370(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _prepareLeaseWithShouldRequireLeaseAcquisition:1 completionHandler:0];
  }
}

- (BOOL)shouldShowComposer
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 shouldShowComposer];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)playbackError
{
  v34 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = MPCModelGenericAVItem;
  v3 = [(MPCModelGenericAVItem *)&v23 playbackError];
  if ([(MPCModelGenericAVItem *)self isAssetLoaded])
  {
    v4 = [v3 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];

    if (v4)
    {
      v5 = [MEMORY[0x1E69E4428] sharedMonitor];
      v6 = [v5 networkType];

      v7 = [(MPCModelGenericAVItem *)self eventStream];
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 engineID];
        isMusicCellularStreamingAllowed = self->_isMusicCellularStreamingAllowed;
        *buf = 138544130;
        v27 = v9;
        v28 = 2114;
        v29 = self;
        v30 = 2048;
        v31 = v6;
        v32 = 1024;
        v33 = isMusicCellularStreamingAllowed;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Player item has not connected to internet error, current network type is %li, cellular allowed is %{BOOL}u", buf, 0x26u);
      }

      if (self->_isMusicCellularStreamingAllowed || !ICEnvironmentNetworkTypeIsCellular())
      {
        v11 = [(MPCModelGenericAVItem *)self eventStream];
        v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 engineID];
          *buf = 138543874;
          v27 = v16;
          v28 = 2114;
          v29 = self;
          v30 = 2114;
          v31 = v3;
          _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Transforming error network unavailable instead of original: %{public}@", buf, 0x20u);
        }

        v14 = @"Network Unavailable";
        v15 = 11;
      }

      else
      {
        v11 = [(MPCModelGenericAVItem *)self eventStream];
        v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 engineID];
          *buf = 138543874;
          v27 = v13;
          v28 = 2114;
          v29 = self;
          v30 = 2114;
          v31 = v3;
          _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Transforming error to cellular restricted error instead of original: %{public}@", buf, 0x20u);
        }

        v14 = @"Cellular Restricted";
        v15 = 10;
      }

      v24[0] = @"ICEnvironmentNetworkType";
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v24[1] = @"isMusicCellularStreamingAllowed";
      v25[0] = v17;
      v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMusicCellularStreamingAllowed];
      v25[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v20 = [v3 msv_errorByWrappingWithDomain:@"MPCError" code:v15 userInfo:v19 debugDescription:{@"playback request failed with reason: %@", v14}];

      v3 = v20;
    }
  }

  v21 = v3;

  return v3;
}

- (void)notePlaybackFinishedByHittingEnd
{
  v3.receiver = self;
  v3.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v3 notePlaybackFinishedByHittingEnd];
  if (self->_hlsDownloadURLRequest)
  {
    [(MPCModelGenericAVItem *)self _addToDownloadCompletionPendingItems];
  }
}

- (int64_t)storePurchasedAdamID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject identifiers];
  v4 = [v3 universalStore];
  v5 = [v4 purchasedAdamID];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (unint64_t)composerPersistentID
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 composer];
    v5 = [v4 identifiers];
    v6 = [v5 library];
    v7 = [v6 persistentID];
  }

  else
  {
    v7 = *MEMORY[0x1E696F8C0];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (unint64_t)genrePersistentID
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 genre];
    v5 = [v4 identifiers];
    v6 = [v5 library];
    v7 = [v6 persistentID];
  }

  else
  {
    v7 = *MEMORY[0x1E696F8C0];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (unint64_t)artistPersistentID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 show];
  }

  else
  {
    if (v3 != 1)
    {
      v9 = *MEMORY[0x1E696F8C0];
      goto LABEL_7;
    }

    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 artist];
  }

  v6 = v5;
  v7 = [v5 identifiers];
  v8 = [v7 library];
  v9 = [v8 persistentID];

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (unint64_t)albumArtistPersistentID
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 album];
    v5 = [v4 artist];
    v6 = [v5 identifiers];
    v7 = [v6 library];
    v8 = [v7 persistentID];
  }

  else
  {
    v8 = *MEMORY[0x1E696F8C0];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (unint64_t)albumPersistentID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 season];
  }

  else
  {
    if (v3 != 1)
    {
      v9 = *MEMORY[0x1E696F8C0];
      goto LABEL_7;
    }

    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 album];
  }

  v6 = v5;
  v7 = [v5 identifiers];
  v8 = [v7 library];
  v9 = [v8 persistentID];

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (id)cloudAlbumID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      goto LABEL_7;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      goto LABEL_7;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
LABEL_7:
      v5 = v4;
      v6 = [v4 identifiers];
      v7 = [v6 personalizedStore];
      v8 = [v7 cloudAlbumID];

      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)personID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  v4 = [v3 personalizedStore];
  v5 = [v4 personID];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (unint64_t)cloudID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  v4 = [v3 personalizedStore];
  v5 = [v4 cloudID];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)databaseID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject identifiers];
  v4 = [v3 library];
  v5 = [v4 databaseID];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (unint64_t)mediaType
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v6 = 256;
      break;
    case 6:
      v6 = 512;
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      v5 = [v4 hasVideo];

      if (v5)
      {
        v6 = 2048;
      }

      else
      {
        v6 = 1;
      }

      break;
    default:
      v6 = 0;
      break;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)mediaItem
{
  v3 = [(MPCModelGenericAVItem *)self persistentID];
  if (v3)
  {
    v4 = v3;
    v5 = [(MPCModelGenericAVItem *)self mediaLibrary];
    v6 = [v5 itemWithPersistentID:v4 verifyExistence:0];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v6 = [MEMORY[0x1E69705D0] itemFromModelObject:self->_metadataGenericObject];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (void)_emitNetworkOperationWithPerformanceMetrics:(id)a3 operationType:(int64_t)a4 reason:(id)a5 blocksPlayback:(BOOL)a6
{
  v6 = a6;
  v19[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if ([v10 isNotEmpty])
  {
    v12 = [(MPCModelGenericAVItem *)self eventStream];
    v18[0] = @"queue-section-id";
    v13 = [(MPCModelGenericAVItem *)self queueSectionID];
    v19[0] = v13;
    v18[1] = @"queue-item-id";
    v14 = [(MPCModelGenericAVItem *)self queueItemID];
    v19[1] = v14;
    v18[2] = @"network-operation-type";
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v19[2] = v15;
    v19[3] = v11;
    v18[3] = @"network-operation-reason";
    v18[4] = @"blocks-playback";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v18[5] = @"network-metrics";
    v19[4] = v16;
    v19[5] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    [v12 emitEventType:@"network-operation" payload:v17];
  }
}

- (void)_emitAudioAssetTypeSelection:(id)a3 assetLoadInfo:(id)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCModelGenericAVItem *)self eventStream];
  v20[0] = @"queue-section-id";
  v9 = [(MPCModelGenericAVItem *)self queueSectionID];
  v21[0] = v9;
  v20[1] = @"queue-item-id";
  v10 = [(MPCModelGenericAVItem *)self queueItemID];
  v21[1] = v10;
  v21[2] = v7;
  v20[2] = @"asset-load-info";
  v20[3] = @"item-audio-asset-type-selection-metadata";
  v17 = v7;
  v18[0] = @"audio-asset-type-selection-explanation";
  v11 = [v6 explanation];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = @"audio-asset-type-selection-justification";
  v19[0] = v12;
  v13 = [v6 justification];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  [v8 emitEventType:@"asset-selection" payload:v16];

  if (!v13)
  {
  }

  if (!v11)
  {
  }
}

- (void)_emitAudioFormatChangeEvent
{
  v23[3] = *MEMORY[0x1E69E9840];
  v19 = [(MPCModelGenericAVItem *)self eventStream];
  v22[0] = @"queue-section-id";
  v18 = [(MPCModelGenericAVItem *)self queueSectionID];
  v23[0] = v18;
  v22[1] = @"queue-item-id";
  v17 = [(MPCModelGenericAVItem *)self queueItemID];
  v23[1] = v17;
  v22[2] = @"item-audio-format-metadata";
  v20[0] = @"active-format";
  v3 = [(MPCModelGenericAVItem *)self activeFormat];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v3;
  v20[1] = @"active-format-justification";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPCModelGenericAVItem activeFormatJustification](self, "activeFormatJustification", v3)}];
  v21[1] = v5;
  v20[2] = @"target-format";
  v6 = [(MPCModelGenericAVItem *)self preferredFormat];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v7;
  v20[3] = @"preferred-tiers";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPCModelGenericAVItem _audioFormatPreference](self, "_audioFormatPreference")}];
  v21[3] = v8;
  v20[4] = @"alternate-formats";
  v9 = [(MPCModelGenericAVItem *)self alternateFormats];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v21[4] = v11;
  v20[5] = @"route";
  v12 = [(MPCModelGenericAVItem *)self audioRoute];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v23[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v19 emitEventType:@"audio-format-changed" payload:v15];

  if (!v12)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }
}

- (void)configureAVPlayerItemWithAudioFormat:(id)a3 forceSpatial:(BOOL)a4
{
  v11 = a3;
  if ([(MPCModelGenericAVItem *)self isAssetLoaded])
  {
    v5 = [(MPCModelGenericAVItem *)self playerItem];
    v6 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
    v7 = [v6 spatialPreference];
    v8 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
    v9 = [v8 spatialIsAlwaysOn];
    v10 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
    [v5 mpc_setupForHLSPlaybackWithPreferredFormat:v11 spatialPreference:v7 forceSpatial:v9 maxResolution:objc_msgSend(v10 isDownloadedAsset:"maxResolution"), -[MPCModelGenericAVItem isDownloadedAsset](self, "isDownloadedAsset")];
  }
}

- (void)setAudioRoute:(id)a3
{
  v8 = a3;
  v5 = self->_audioRoute;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(MPCPlayerAudioRoute *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_audioRoute, a3);
      [(MPCModelGenericAVItem *)self invalidateContentItemAudioFormatInfo];
    }
  }
}

- (BOOL)updateActiveFormat:(id)a3 justification:(int64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7 || self->_activeFormat == v7 || [(MPCPlayerAudioFormat *)v7 isEqual:?])
  {
    v9 = 0;
  }

  else
  {
    v11 = [(MPCModelGenericAVItem *)self eventStream];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 engineID];
      activeFormat = self->_activeFormat;
      v20 = 138544386;
      v21 = v13;
      v22 = 2114;
      v23 = self;
      v24 = 2114;
      v25 = activeFormat;
      v26 = 2114;
      v27 = v8;
      v28 = 2048;
      v29 = a4;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: [AF] - Updating active audio format: %{public}@ -> %{public}@ - Justification: %ld", &v20, 0x34u);
    }

    objc_storeStrong(&self->_activeFormat, a3);
    v15 = [(MPCModelGenericAVItem *)self activeFormat];
    v16 = [(MPCModelGenericAVItem *)self preferredFormat];
    v17 = v16;
    if (v15 == v16)
    {

      v19 = 100;
    }

    else
    {
      v18 = [v15 isEqual:v16];

      v19 = 100;
      if (!v18)
      {
        v19 = a4;
      }
    }

    self->_activeFormatJustification = v19;
    [(MPCModelGenericAVItem *)self _emitAudioFormatChangeEvent];
    [(MPCModelGenericAVItem *)self invalidateContentItemAudioFormatInfo];
    [(MPCModelGenericAVItem *)self _checkPlayerItemForMissingEditList];
    v9 = 1;
  }

  return v9;
}

- (BOOL)updatePreferredFormat:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_preferredFormat == v5 || [(MPCPlayerAudioFormat *)v5 isEqual:?])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(MPCModelGenericAVItem *)self eventStream];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 engineID];
      preferredFormat = self->_preferredFormat;
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = self;
      v17 = 2114;
      v18 = preferredFormat;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: [AF] - Updating preferred audio format: %{public}@ -> %{public}@", &v13, 0x2Au);
    }

    objc_storeStrong(&self->_preferredFormat, a3);
    [(MPCModelGenericAVItem *)self _emitAudioFormatChangeEvent];
    [(MPCModelGenericAVItem *)self invalidateContentItemAudioFormatInfo];
    v7 = 1;
  }

  return v7;
}

- (NSArray)alternateFormats
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_alternateFormats copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)availableSortedFormats
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_availableSortedFormats copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)audioFormatsDictionary
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_audioFormatsDictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)updateAudioFormatsDictionary:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_audioFormatsDictionary == v4 || ([(NSDictionary *)v4 isEqual:?]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = 0;
  }

  else
  {
    v6 = [(NSDictionary *)v4 copy];
    audioFormatsDictionary = self->_audioFormatsDictionary;
    self->_audioFormatsDictionary = v6;

    v8 = [(NSDictionary *)v4 allValues];
    v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_344];

    v10 = [v9 copy];
    availableSortedFormats = self->_availableSortedFormats;
    self->_availableSortedFormats = v10;

    v12 = [v9 copy];
    alternateFormats = self->_alternateFormats;
    self->_alternateFormats = v12;

    os_unfair_lock_unlock(&self->_lock);
    [(MPCModelGenericAVItem *)self invalidateContentItemAudioFormatInfo];
    v5 = 1;
  }

  return v5;
}

uint64_t __54__MPCModelGenericAVItem_updateAudioFormatsDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 tier];
  if (v6 <= [v5 tier])
  {
    v8 = [v4 tier];
    if (v8 >= [v5 tier])
    {
      v9 = [v4 tier];
      if (v9 != [v5 tier])
      {
        goto LABEL_10;
      }

      v10 = [v4 tier];
      v11 = [v4 bitrate];
      v12 = [v5 bitrate];
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v13 = [v4 bitDepth];
        v11 = [v4 sampleRate] * v13;
        v14 = [v5 bitDepth];
        v12 = [v5 sampleRate] * v14;
      }

      if (v11 > v12)
      {
        goto LABEL_2;
      }

      if (v11 >= v12)
      {
LABEL_10:
        v7 = 0;
        goto LABEL_11;
      }
    }

    v7 = 1;
    goto LABEL_11;
  }

LABEL_2:
  v7 = -1;
LABEL_11:

  return v7;
}

- (id)audioFormatForStableVariantID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock_with_options();
    v5 = [(NSDictionary *)self->_audioFormatsDictionary objectForKeyedSubscript:v4];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_linkAssetIfNeededAtURL:(id)a3 toDestinationURL:(id)a4 shareCacheURL:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 isEqual:v9])
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    [v12 removeItemAtURL:v9 error:0];
    v25 = 0;
    v14 = [v12 linkItemAtURL:v8 toURL:v9 error:&v25];
    v11 = v25;
    v15 = [(MPCModelGenericAVItem *)self eventStream];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v15 engineID];
        *buf = 138544130;
        v27 = v18;
        v28 = 2114;
        v29 = self;
        v30 = 2114;
        v31 = v8;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Asset downloaded to %{public}@ and linked to destination URL: %{public}@", buf, 0x2Au);
      }

      if (!v10 || ([v8 isEqual:v10] & 1) != 0)
      {
        goto LABEL_9;
      }

      [v12 removeItemAtURL:v10 error:0];
      v24 = v11;
      v22 = [v12 linkItemAtURL:v8 toURL:v10 error:&v24];
      v20 = v24;

      if (v22)
      {
        LOBYTE(v14) = 1;
        goto LABEL_14;
      }

      v15 = [(MPCModelGenericAVItem *)self eventStream];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = [v15 engineID];
        *buf = 138544386;
        v27 = v23;
        v28 = 2114;
        v29 = self;
        v30 = 2114;
        v31 = v8;
        v32 = 2114;
        v33 = v10;
        v34 = 2114;
        v35 = v20;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: Asset downloaded to %{public}@ but failed to link to shared cache URL: %{public}@ error: %{public}@", buf, 0x34u);
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = [v15 engineID];
        *buf = 138544386;
        v27 = v19;
        v28 = 2114;
        v29 = self;
        v30 = 2114;
        v31 = v8;
        v32 = 2114;
        v33 = v9;
        v34 = 2114;
        v35 = v11;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: Asset downloaded to %{public}@ but failed to link to destination URL: %{public}@ error: %{public}@", buf, 0x34u);
      }

      v20 = v11;
    }

LABEL_14:
    v11 = v20;
    goto LABEL_15;
  }

  v11 = [(MPCModelGenericAVItem *)self eventStream];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 engineID];
    *buf = 138543874;
    v27 = v13;
    v28 = 2114;
    v29 = self;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Asset downloaded to destination URL: %{public}@", buf, 0x20u);
  }

LABEL_9:
  LOBYTE(v14) = 1;
LABEL_15:

  return v14;
}

- (void)_checkDownloadErrorAndValidityOfDownloadedHLSAsset:(id)a3 downloadLocationURL:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = v8 == 0;
  if (v8)
  {
    v11 = [v8 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x1E69E4198]];

    if (v12)
    {
      v13 = [v8 code];
      if ((v13 + 7004) < 2 || v13 == -7100)
      {
        *(v25 + 24) = 1;
      }
    }
  }

  if (v25[3])
  {
    objc_initWeak(location, self);
    v14 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v9 options:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __107__MPCModelGenericAVItem__checkDownloadErrorAndValidityOfDownloadedHLSAsset_downloadLocationURL_completion___block_invoke;
    v19[3] = &unk_1E8234128;
    objc_copyWeak(&v23, location);
    v21 = v10;
    v15 = v14;
    v20 = v15;
    v22 = &v24;
    [v15 loadValuesAsynchronouslyForKeys:&unk_1F45998B0 completionHandler:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v16 = [(MPCModelGenericAVItem *)self eventStream];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 engineID];
      *location = 138543874;
      *&location[4] = v18;
      v29 = 2114;
      v30 = self;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Clearing cached asset file [fatal download error]. Error=%{public}@", location, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  _Block_object_dispose(&v24, 8);
}

void __107__MPCModelGenericAVItem__checkDownloadErrorAndValidityOfDownloadedHLSAsset_downloadLocationURL_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v11 = 0;
    v4 = [v3 statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v11];
    v5 = v11;
    v6 = v5;
    if (v4 == 3 || v5 != 0)
    {
      v8 = [WeakRetained eventStream];
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 engineID];
        *buf = 138543874;
        v13 = v10;
        v14 = 2114;
        v15 = WeakRetained;
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Clearing cached asset [asset is corrupted]. Error=%{public}@", buf, 0x20u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_downloadHLSAsset:(id)a3 destinationURL:(id)a4 sharedCacheURL:(id)a5 assetLoadProperties:(id)a6 loadResult:(id)a7 storeRequestContext:(id)a8 urlBag:(id)a9 fileUpgradeRecommendation:(int64_t)a10
{
  v71 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v39 = a4;
  v40 = a5;
  v17 = a6;
  v38 = a7;
  v42 = a8;
  v37 = a9;
  v18 = MEMORY[0x1E696AD68];
  v44 = v16;
  v19 = [v16 URL];
  v43 = [v18 requestWithURL:v19];

  [v43 setTimeoutInterval:3600.0];
  v20 = [objc_alloc(MEMORY[0x1E69E4668]) initWithURLRequest:v43 requestContext:v42];
  hlsDownloadURLRequest = self->_hlsDownloadURLRequest;
  self->_hlsDownloadURLRequest = v20;

  v41 = [(MPCModelGenericAVItem *)self _hlsDownloadOptionsDictionary:v17];
  v22 = [v16 downloadDestinationURL];
  objc_initWeak(&location, self);
  v23 = objc_alloc(MEMORY[0x1E69B13F0]);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke;
  v62[3] = &unk_1E8239500;
  objc_copyWeak(&v63, &location);
  v24 = [v23 initWithDeallocHandler:v62];
  v25 = [(MPCModelGenericAVItem *)self eventStream];
  v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v25 engineID];
    *buf = 138543874;
    v66 = v27;
    v67 = 2114;
    v68 = self;
    v69 = 2114;
    v70 = v22;
    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Asset download starting. url:%{public}@", buf, 0x20u);
  }

  objc_storeStrong(&self->_tempFileURLToCleanup, v22);
  hlsDownloadURLSession = self->_hlsDownloadURLSession;
  v29 = self->_hlsDownloadURLRequest;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_326;
  v52[3] = &unk_1E82340D8;
  v30 = v24;
  v53 = v30;
  v61 = a10 != 2;
  v31 = v17;
  v54 = v31;
  v32 = v22;
  v55 = v32;
  objc_copyWeak(v60, &location);
  v60[1] = a10;
  v33 = v39;
  v56 = v33;
  v34 = v40;
  v57 = v34;
  v35 = v38;
  v58 = v35;
  v36 = v37;
  v59 = v36;
  [(ICAVAssetDownloadURLSession *)hlsDownloadURLSession enqueueAggregateAssetDownloadRequest:v29 toDestination:v32 withAVURLAsset:v44 options:v41 completionHandler:v52];
  if (a10 == 1 && [v32 isEqual:v33])
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_335;
    v45[3] = &unk_1E8234100;
    v46 = v44;
    objc_copyWeak(&v51, &location);
    v47 = v31;
    v48 = v35;
    v49 = v36;
    v50 = v33;
    [v46 loadValuesAsynchronouslyForKeys:&unk_1F4599898 completionHandler:v45];

    objc_destroyWeak(&v51);
  }

  objc_destroyWeak(v60);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeFromDownloadCompletionPendingItems];
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_326(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) disarm];
  if (*(a1 + 104) == 1)
  {
    v5 = [*(a1 + 40) assetCacheProvider];
    [v5 didCacheNewAssetToDestinationURL:*(a1 + 48)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained eventStream];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 engineID];
      v11 = *(a1 + 48);
      *buf = 138544130;
      v35 = v10;
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v4;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Asset download complete. url:%{public}@ err=%{public}@", buf, 0x2Au);
    }

    v12 = v7[98];
    v7[98] = 0;

    v13 = v7[97];
    v7[97] = 0;

    [v7 _removeFromDownloadCompletionPendingItems];
    v14 = *(a1 + 48);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_327;
    v25[3] = &unk_1E82340B0;
    v15 = &v26;
    v16 = v7;
    v26 = v16;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v20 = *(a1 + 40);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v27 = v22;
    v28 = v21;
    v31 = *(a1 + 96);
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    [v16 _checkDownloadErrorAndValidityOfDownloadedHLSAsset:v4 downloadLocationURL:v14 completion:v25];

    v23 = v27;
    goto LABEL_7;
  }

  if (*(a1 + 96) == 1 && [*(a1 + 48) isEqual:*(a1 + 56)])
  {
    v23 = [*(a1 + 40) assetCacheProvider];
    v24 = [*(a1 + 40) genericObject];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_2;
    v32[3] = &unk_1E8238800;
    v15 = &v33;
    v33 = *(a1 + 48);
    [v23 clearPlaybackAssetCacheFileAssetForGenericObject:v24 withCompletionHandler:v32];

LABEL_7:
  }
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_335(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 duration];
    if (v7 >= 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        v5 = [WeakRetained _createOrUpdateDatabaseEntry:*(a1 + 40) loadResult:*(a1 + 48) urlBag:*(a1 + 56) destinationURL:*(a1 + 64) purgeable:1];
        if ([*(a1 + 64) isEqual:v4[103]])
        {
          v6 = v4[103];
          v4[103] = 0;
        }
      }
    }
  }
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      v6 = "[AL] - NIL: [Asset caching: HLS] Asset download cancelled - Failed to clear cache properties. err=%{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v7, v8, v6, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    v6 = "[AL] - NIL: [Asset caching: HLS] Asset download cancelled - Cleared cache properties. url:%{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_327(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 && [*(a1 + 32) _linkAssetIfNeededAtURL:*(a1 + 40) toDestinationURL:*(a1 + 48) shareCacheURL:*(a1 + 56)])
  {
    if ([*(a1 + 48) isEqual:*(*(a1 + 32) + 824)])
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 824);
      *(v3 + 824) = 0;
    }

    v5 = [*(a1 + 64) fileAsset];
    v6 = [v5 filePath];

    v7 = [*(a1 + 48) path];
    if (([v7 isEqual:v6] & 1) == 0)
    {
      v8 = [*(a1 + 32) _createOrUpdateDatabaseEntry:*(a1 + 64) loadResult:*(a1 + 72) urlBag:*(a1 + 80) destinationURL:*(a1 + 48) purgeable:*(a1 + 88) != 2];
    }

    if (![v6 length] || (objc_msgSend(v6, "isEqualToString:", v7) & 1) != 0)
    {
      goto LABEL_17;
    }

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = 0;
    v11 = [v10 removeItemAtURL:v9 error:&v27];
    v12 = v27;

    v13 = [*(a1 + 32) eventStream];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 engineID];
        v17 = *(a1 + 32);
        *buf = 138543874;
        v29 = v16;
        v30 = 2114;
        v31 = v17;
        v32 = 2114;
        v33 = v9;
        v18 = "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Removed previous file at URL: %{public}@";
        v19 = v15;
        v20 = OS_LOG_TYPE_DEFAULT;
        v21 = 32;
LABEL_15:
        _os_log_impl(&dword_1C5C61000, v19, v20, v18, buf, v21);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [v13 engineID];
      v24 = *(a1 + 32);
      *buf = 138544130;
      v29 = v16;
      v30 = 2114;
      v31 = v24;
      v32 = 2114;
      v33 = v9;
      v34 = 2114;
      v35 = v12;
      v18 = "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Failed to remove previous file at URL: %{public}@ error: %{public}@.";
      v19 = v15;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 42;
      goto LABEL_15;
    }

LABEL_17:
    goto LABEL_18;
  }

  v22 = [*(a1 + 64) assetCacheProvider];
  v23 = [*(a1 + 64) genericObject];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_328;
  v25[3] = &unk_1E8238800;
  v26 = *(a1 + 32);
  [v22 clearPlaybackAssetCacheFileAssetForGenericObject:v23 withCompletionHandler:v25];

  v6 = v26;
LABEL_18:
}

void __157__MPCModelGenericAVItem__downloadHLSAsset_destinationURL_sharedCacheURL_assetLoadProperties_loadResult_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke_328(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) eventStream];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 engineID];
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Failed to clear cache properties. err=%{public}@", &v8, 0x20u);
    }
  }
}

- (id)_createOrUpdateDatabaseEntry:(id)a3 loadResult:(id)a4 urlBag:(id)a5 destinationURL:(id)a6 purgeable:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v35 = a5;
  v37 = a6;
  v14 = [v12 preferredAudioAssetType] - 3;
  if (v14 > 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1C6045310[v14];
  }

  v16 = [v13 assetQualityType];
  v17 = [v13 assetProtectionType];
  v18 = [v13 streamingKeyCertificateURL];
  v19 = [v13 streamingKeyServerURL];
  if (!v19)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItem.m" lineNumber:2482 description:@"Unexpected nil keyServerURL"];
  }

  v39 = v12;
  if (!v18)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItem.m" lineNumber:2483 description:@"Unexpected nil keyCertificateURL"];
  }

  v20 = objc_alloc(MEMORY[0x1E6970660]);
  v21 = self;
  v22 = objc_alloc(MEMORY[0x1E6970550]);
  v23 = [MEMORY[0x1E6970668] identityKind];
  v24 = [v22 initWithSource:@"ModelGenericAVItem" modelKind:v23 block:&__block_literal_global_322_12733];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __97__MPCModelGenericAVItem__createOrUpdateDatabaseEntry_loadResult_urlBag_destinationURL_purgeable___block_invoke_2;
  v43[3] = &unk_1E8234060;
  v43[4] = v21;
  v48 = v15;
  v25 = v37;
  v44 = v25;
  v49 = v16;
  v50 = v17;
  v51 = a7;
  v26 = v19;
  v45 = v26;
  v27 = v13;
  v46 = v27;
  v28 = v18;
  v47 = v28;
  v29 = [v20 initWithIdentifiers:v24 block:v43];

  objc_initWeak(&location, v21);
  v30 = [v39 assetCacheProvider];
  v31 = [v39 genericObject];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __97__MPCModelGenericAVItem__createOrUpdateDatabaseEntry_loadResult_urlBag_destinationURL_purgeable___block_invoke_323;
  v40[3] = &unk_1E8234088;
  objc_copyWeak(&v41, &location);
  [v30 setPlaybackAssetCacheFileAsset:v29 forGenericObject:v31 withCompletionHandler:v40];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  return v29;
}

void __97__MPCModelGenericAVItem__createOrUpdateDatabaseEntry_loadResult_urlBag_destinationURL_purgeable___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventStream];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v7 = [v5 engineID];
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
  if (v9)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adm"];
    [v10 addObject:v13];

    if ((v9 & 2) == 0)
    {
LABEL_4:
      if ((v9 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_4;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossless"];
  [v10 addObject:v14];

  if ((v9 & 4) == 0)
  {
LABEL_5:
    if ((v9 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high-res lossless"];
  [v10 addObject:v15];

  if ((v9 & 8) == 0)
  {
LABEL_6:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"atmos"];
    [v10 addObject:v17];

    if ((v9 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatial"];
  [v10 addObject:v16];

  if ((v9 & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v9 & 0x20) != 0)
  {
LABEL_8:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"surround"];
    [v10 addObject:v11];
  }

LABEL_9:
  if ([v10 count])
  {
    v12 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"None";
  }

  v22 = 138543874;
  v23 = v7;
  v24 = 2114;
  v25 = v8;
  v26 = 2114;
  v27 = v12;
  _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Setting cache properties of HLS asset with traits: %{public}@", &v22, 0x20u);

LABEL_19:
  v18 = [*(a1 + 40) relativePath];
  [v4 setFilePath:v18];

  [v4 setQualityType:*(a1 + 80)];
  [v4 setNonPurgeable:(*(a1 + 96) & 1) == 0];
  [v4 setProtectionType:*(a1 + 88)];
  [v4 setTraits:*(a1 + 72)];
  v19 = [*(a1 + 48) absoluteString];
  [v4 setHLSKeyServerURL:v19];

  v20 = [*(a1 + 56) keyServerProtocolType];
  [v4 setHLSKeyServerProtocol:v20];

  v21 = [*(a1 + 64) absoluteString];
  [v4 setHLSKeyCertificateURL:v21];
}

void __97__MPCModelGenericAVItem__createOrUpdateDatabaseEntry_loadResult_urlBag_destinationURL_purgeable___block_invoke_323(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained eventStream];
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 engineID];
        v14 = 138543874;
        v15 = v9;
        v16 = 2114;
        v17 = v5;
        v18 = 2114;
        v19 = v3;
        v10 = "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Failed to update cache provider properties for HLS asset. err=%{public}@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 32;
LABEL_7:
        _os_log_impl(&dword_1C5C61000, v11, v12, v10, &v14, v13);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 engineID];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Succeeded to update cache provider properties for HLS asset";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
      goto LABEL_7;
    }
  }
}

- (id)_hlsDownloadOptionsDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v7 = [v6 preferredMusicLowBandwidthResolution] > 0;

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6987238]];

  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  if ([(MPCModelGenericAVItem *)self _prefersHighQualityContent])
  {
    v10 = [v9 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v10 = [v9 preferredMusicLowBandwidthResolution];
  }

  v11 = v10;
  v12 = [v4 preferredAudioAssetType];
  if ((v12 - 4) < 2)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69872C8]];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v14 = MEMORY[0x1E69872A8];
    goto LABEL_9;
  }

  if (v12 == 3)
  {
    v15 = *MEMORY[0x1E69872B0];
    v16 = MEMORY[0x1E695E118];
    goto LABEL_11;
  }

  if (v12 == 2)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:1000 * v11];
    v14 = MEMORY[0x1E69872B8];
LABEL_9:
    [v5 setObject:v13 forKeyedSubscript:*v14];

    v15 = *MEMORY[0x1E69872B0];
    v16 = MEMORY[0x1E695E110];
LABEL_11:
    [v5 setObject:v16 forKeyedSubscript:v15];
    goto LABEL_12;
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v4 preferredAudioAssetType];
    if ((v20 - 1) > 4)
    {
      v21 = @"Unspecified";
    }

    else
    {
      v21 = off_1E82347D8[v20 - 1];
    }

    v22 = 138543618;
    v23 = self;
    v24 = 2114;
    v25 = v21;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: [Asset caching: HLS] Attempting to cache asset of type %{public}@ using HLS caching logic", &v22, 0x16u);
  }

LABEL_12:
  v17 = [v5 copy];

  return v17;
}

- (void)_getHLSServerDataForLoadResults:(id)a3 bag:(id)a4 keyCertificateURL:(id *)a5 keyServerURL:(id *)a6 keyServerAdamID:(id *)a7 keyServerProtocolType:(int64_t *)a8
{
  v34 = a3;
  v14 = a4;
  v15 = [v14 enhancedAudioConfiguration];
  v16 = [v34 keyServerProtocolType];
  v17 = v16;
  if (v16 == *MEMORY[0x1E69703F0])
  {
  }

  else
  {
    v18 = [v16 isEqual:?];

    if (!v18)
    {
      v19 = [v14 urlForBagKey:*MEMORY[0x1E69E4328]];
      v20 = 0;
LABEL_12:
      *a5 = v19;
      goto LABEL_13;
    }
  }

  v21 = [v15 certificateURL];

  if (v21)
  {
    v19 = [v15 certificateURL];
LABEL_11:
    v20 = 1;
    goto LABEL_12;
  }

  v22 = *MEMORY[0x1E69E4328];
  v23 = [v14 urlForBagKey:*MEMORY[0x1E69E4328]];

  if (v23)
  {
    v19 = [v14 urlForBagKey:v22];
    goto LABEL_11;
  }

  v24 = [v34 streamingKeyCertificateURL];

  if (v24)
  {
    v19 = [v34 streamingKeyCertificateURL];
    goto LABEL_11;
  }

  v20 = 1;
LABEL_13:
  v25 = [v34 streamingKeyServerURL];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    *a6 = v26;
  }

  else
  {
    v28 = [v15 keyServerURL];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
      *a6 = v29;
    }

    else
    {
      v31 = [v14 urlForBagKey:*MEMORY[0x1E69E4330]];
      *a6 = v31;
    }
  }

  v32 = [v34 streamingKeyAdamID];
  if ([v32 longLongValue])
  {
    [v34 streamingKeyAdamID];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{-[MPCModelGenericAVItem _keyServerAdamID](self, "_keyServerAdamID")}];
  }
  v33 = ;
  *a7 = v33;

  *a8 = v20;
}

- (void)_downloadHLSAssetWhilePlaying:(id)a3 assetLoadProperties:(id)a4 assetLoadResult:(id)a5 destinationURL:(id)a6 sharedCacheURL:(id)a7 storeRequestContext:(id)a8 urlBag:(id)a9 fileUpgradeRecommendation:(int64_t)a10
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v23 = [v22 preferredMusicLowBandwidthResolution];

  v24 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple.MediaPlayer.MPCModelGenericAVItem.streaming_playback."];
  v25 = v24;
  v26 = v23 > 0;
  if (v23 <= 0)
  {
    [v24 appendString:@"wifi."];
  }

  [v25 appendString:@"av"];
  v27 = [MEMORY[0x1E69E4678] sharedSessionManager];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __174__MPCModelGenericAVItem__downloadHLSAssetWhilePlaying_assetLoadProperties_assetLoadResult_destinationURL_sharedCacheURL_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke;
  v34[3] = &unk_1E8234038;
  v28 = v25;
  v35 = v28;
  v36 = v26;
  v29 = [v27 sessionWithIdentifier:v28 creationBlock:v34];
  hlsDownloadURLSession = self->_hlsDownloadURLSession;
  self->_hlsDownloadURLSession = v29;

  if (self->_hlsDownloadURLSession)
  {
    v31 = v33;
    [(MPCModelGenericAVItem *)self _downloadHLSAsset:v33 destinationURL:v18 sharedCacheURL:v19 assetLoadProperties:v16 loadResult:v17 storeRequestContext:v20 urlBag:v21 fileUpgradeRecommendation:a10];
  }

  else
  {
    v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v31 = v33;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = self;
      _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: [Asset caching: HLS] Failed to create download url session for HLS asset", buf, 0xCu);
    }
  }
}

id __174__MPCModelGenericAVItem__downloadHLSAssetWhilePlaying_assetLoadProperties_assetLoadResult_destinationURL_sharedCacheURL_storeRequestContext_urlBag_fileUpgradeRecommendation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AF80] backgroundSessionConfigurationWithIdentifier:*(a1 + 32)];
  [v2 setAllowsCellularAccess:*(a1 + 40)];
  [v2 setDiscretionary:0];
  [v2 setHTTPCookieAcceptPolicy:1];
  [v2 setHTTPShouldSetCookies:0];
  [v2 setHTTPShouldUsePipelining:1];
  [v2 setRequestCachePolicy:1];
  v3 = [objc_alloc(MEMORY[0x1E69E4390]) initWithConfiguration:v2];

  return v3;
}

- (void)_prepareAssetForHLSPlayback:(id)a3 loadResult:(id)a4 destinationURL:(id)a5 storeRequestContext:(id)a6 urlBag:(id)a7 identityProperties:(id)a8 isStoreKeyServer:(BOOL)a9
{
  v98[3] = *MEMORY[0x1E69E9840];
  v88 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [v14 source];
  v19 = v18;
  v87 = v15;
  if (v15 || v18 == 1)
  {
    v21 = [v14 assetURL];
    if ([v21 isFileURL])
    {
      v22 = [v14 assetURL];
    }

    else
    {
      v22 = v15;
    }

    v23 = v22;

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x1E69E4430]);
      v25 = [v23 path];
      v26 = [v24 initWithPath:v25];

      v20 = v26;
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x1E69E4468]);
    }
  }

  else
  {
    v20 = 0;
  }

  v27 = [v14 keyServerProtocolType];
  v28 = v27;
  if (v27 == *MEMORY[0x1E69703F0])
  {
    v29 = 1;
  }

  else
  {
    v29 = [v27 isEqual:?];
  }

  v30 = [v14 streamingKeyCertificateURL];
  v31 = [v14 streamingKeyServerURL];
  v32 = [v14 streamingKeyAdamID];
  v86 = v32;
  if (v31 && v30)
  {
    v85 = v17;
    v33 = v29;
    v34 = v32;
    v83 = v20;
    v84 = v16;
    if (![v32 longLongValue])
    {
      v78 = v33;
      v79 = v31;
      v80 = v30;
      v35 = [(MPCModelGenericAVItem *)self eventStream];
      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v35 engineID];
        *buf = 138543874;
        v91 = v37;
        v92 = 2114;
        v93 = self;
        v94 = 2114;
        *v95 = v14;
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: Unexpected nil keyServerAdamID found in HLS loadResult: %{public}@", buf, 0x20u);
      }

      v38 = MEMORY[0x1E69B13D8];
      v39 = *MEMORY[0x1E69B1340];
      v40 = [(MPCModelGenericAVItem *)self description];
      v98[0] = v40;
      v41 = [v14 description];
      v98[1] = v41;
      v42 = [v88 URL];
      v43 = [v42 description];
      v98[2] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3];
      [v38 snapshotWithDomain:v39 type:@"Bug" subType:@"KeyServerBug" context:@"keyServerAdamID==nil" triggerThresholdValues:0 events:v44 completion:0];

      v20 = v83;
      v16 = v84;
      v31 = v79;
      v30 = v80;
      v34 = v86;
      v33 = v78;
    }

    v45 = [objc_alloc(MEMORY[0x1E69E43F8]) initWithRequestContext:v16 keyStore:v20 delegate:self];
    contentKeySession = self->_contentKeySession;
    self->_contentKeySession = v45;

    [(ICContentKeySession *)self->_contentKeySession setAdamID:v34];
    [(ICContentKeySession *)self->_contentKeySession setKeyServerURL:v31];
    [(ICContentKeySession *)self->_contentKeySession setKeyCertificateURL:v30];
    if (a9)
    {
      v47 = v33;
    }

    else
    {
      v47 = 0;
    }

    [(ICContentKeySession *)self->_contentKeySession setKeyServerProtocolType:v47];
    [(ICContentKeySession *)self->_contentKeySession setAllowFallbackToStreamingKeys:1];
    [(ICContentKeySession *)self->_contentKeySession setIsStoreKeyServer:a9];
    if (v19 != 1)
    {
      IsWatch = MSVDeviceIsWatch();
      v57 = IsWatch;
      if (!v87 || !v33 || (v82 = a9, (IsWatch & 1) != 0))
      {
LABEL_47:
        v69 = [(MPCModelGenericAVItem *)self eventStream];
        v68 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v72 = [v69 engineID];
          v73 = v33;
          v74 = v72;
          *buf = 138544386;
          v91 = v72;
          v92 = 2114;
          v93 = self;
          v94 = 1024;
          *v95 = v87 != 0;
          *&v95[4] = 2048;
          *&v95[6] = v73;
          v96 = 1024;
          v97 = v57 ^ 1;
          _os_log_impl(&dword_1C5C61000, v68, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Not requesting offline keys because its not supported. assetCanBeCached=%{BOOL}u, keyServerProtocolType=%ld, deviceSupportsOfflineHLS=%{BOOL}u", buf, 0x2Cu);
        }

LABEL_53:

        [(ICContentKeySession *)self->_contentKeySession addAsset:v88 shouldPreloadKeys:1 waitForKeyIdentifiers:0];
        v16 = v84;
        v17 = v85;
        v20 = v83;
        goto LABEL_54;
      }

LABEL_40:
      v81 = v30;
      v66 = [MEMORY[0x1E69E4490] sharedController];
      v67 = [v85 DSID];
      v89 = 0;
      v68 = [v66 getKeyStatusForAccountUniqueIdentifier:objc_msgSend(v67 error:{"longLongValue"), &v89}];
      v69 = v89;

      if (v69)
      {
        v70 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = [v69 treeDescription];
          *buf = 138543618;
          v91 = self;
          v92 = 2114;
          v93 = v71;
          _os_log_impl(&dword_1C5C61000, v70, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Failed to fetch FairPlayKeyStatus for offline key determination error=%{public}@", buf, 0x16u);
        }
      }

      if ([v68 hasOfflinePlaybackKeys]&& v82)
      {
        [(ICContentKeySession *)self->_contentKeySession setRequestOfflineKeys:1];
      }

      else
      {
        v75 = [(MPCModelGenericAVItem *)self eventStream];
        v76 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = [v75 engineID];
          *buf = 138543618;
          v91 = v77;
          v92 = 2114;
          v93 = self;
          _os_log_impl(&dword_1C5C61000, v76, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Not requesting offline keys because Fairplay does not have offline subscription keys", buf, 0x16u);
        }
      }

      v30 = v81;
      goto LABEL_53;
    }

    v82 = a9;
    v48 = [v14 streamingKeyCertificateURL];
    if (v30 != v48 && ([v30 isEqual:v48] & 1) == 0)
    {
      [MEMORY[0x1E69E4428] sharedMonitor];
      v50 = v49 = v33;
      v51 = [v50 isRemoteServerLikelyReachable];

      v33 = v49;
      if (!v51)
      {
LABEL_31:
        v56 = MSVDeviceIsWatch();
        v57 = v56;
        if (!v33 || (v56 & 1) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      v52 = [(MPCModelGenericAVItem *)self eventStream];
      v53 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [v52 engineID];
        *buf = 138543618;
        v91 = v54;
        v92 = 2114;
        v93 = self;
        _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Forcing a refresh of the hls keys due to a certificate mismatch", buf, 0x16u);
      }

      [(ICContentKeySession *)self->_contentKeySession setBypassCache:1];
      v48 = [(MPCModelGenericAVItem *)self mediaItem];
      v55 = [v30 absoluteString];
      [v48 setValue:v55 forProperty:*MEMORY[0x1E696F9D0]];

      v33 = v49;
    }

    goto LABEL_31;
  }

  v58 = [(MPCModelGenericAVItem *)self eventStream];
  v59 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v58 engineID];
    v61 = self;
    v62 = v31;
    v63 = v30;
    v64 = v60;
    *buf = 138543618;
    v91 = v60;
    v92 = 2114;
    v93 = v61;
    _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: HLS content without proper URLs: not setting-up a content key session", buf, 0x16u);

    v30 = v63;
    v31 = v62;
  }

LABEL_54:
}

- (BOOL)_isAssetLoadResultValidForPlayback:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 hasValidAsset])
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ([v5 isHLSAsset])
  {
    if ([v5 audioAssetType] >= 2)
    {
      v6 = [v5 streamingKeyServerURL];
      if (!v6 || (v7 = v6, [v5 streamingKeyCertificateURL], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = [v5 streamingKeyServerURL];

        if (!v11)
        {
          [v10 addObject:@"key server URL"];
        }

        v12 = [v5 streamingKeyCertificateURL];

        if (!v12)
        {
          [v10 addObject:@"key certificate URL"];
        }

        v13 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v10 componentsJoinedByString:@" - "];
        v16 = [v14 stringWithFormat:@"Missing key URLs: %@", v15];
        v20[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        *a4 = [v13 errorWithDomain:@"MPCError" code:65 userInfo:v17];

        goto LABEL_12;
      }
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (id)_decorateAssetLoadResult:(id)a3 withURLBag:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 || ([v6 isHLSAsset] & 1) == 0 && objc_msgSend(v6, "audioAssetType") <= 1)
  {
    v18 = v6;
    goto LABEL_30;
  }

  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  [(MPCModelGenericAVItem *)self _getHLSServerDataForLoadResults:v6 bag:v7 keyCertificateURL:&v35 keyServerURL:&v34 keyServerAdamID:&v33 keyServerProtocolType:&v36];
  v8 = v35;
  v9 = v34;
  v10 = v33;
  v11 = [v6 streamingKeyCertificateURL];
  v12 = v11;
  if (v11 != v8 && ![v11 isEqual:v8])
  {
    goto LABEL_13;
  }

  v13 = [v6 streamingKeyServerURL];
  v14 = v13;
  if (v13 != v9 && ([v13 isEqual:v9]& 1) == 0)
  {

LABEL_13:
    goto LABEL_14;
  }

  v15 = [v6 streamingKeyAdamID];
  v16 = v15;
  if (v15 == v10)
  {
    goto LABEL_27;
  }

  v17 = [v15 isEqual:v10];

  if (v17)
  {
    goto LABEL_29;
  }

LABEL_14:
  v19 = [(MPCModelGenericAVItem *)self eventStream];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 engineID];
    *buf = 138543874;
    v38 = v21;
    v39 = 2114;
    v40 = self;
    v41 = 2114;
    v42 = v6;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Non-decorated asset load results for HLS playback: %{public}@", buf, 0x20u);
  }

  v22 = [v6 streamingKeyCertificateURL];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v8;
  }

  [v6 setStreamingKeyCertificateURL:v24];

  v25 = [v6 streamingKeyServerURL];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v9;
  }

  [v6 setStreamingKeyServerURL:v27];

  v28 = [v6 streamingKeyAdamID];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v10;
  }

  [v6 setStreamingKeyAdamID:v30];

  v12 = [(MPCModelGenericAVItem *)self eventStream];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_28;
  }

  v16 = [v12 engineID];
  *buf = 138543874;
  v38 = v16;
  v39 = 2114;
  v40 = self;
  v41 = 2114;
  v42 = v6;
  _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Decorated asset load results for HLS playback: %{public}@", buf, 0x20u);
LABEL_27:

LABEL_28:
LABEL_29:
  v31 = v6;

LABEL_30:

  return v6;
}

- (void)loadAssetAndPlayerItemWithTask:(id)a3 completion:(id)a4
{
  v668 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69B13F0]);
  v640[0] = MEMORY[0x1E69E9820];
  v640[1] = 3221225472;
  v640[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke;
  v640[3] = &unk_1E8239170;
  v9 = v7;
  v641 = v9;
  v640[4] = self;
  v10 = [v8 initWithDeallocHandler:v640];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2;
  aBlock[3] = &unk_1E8233D90;
  v11 = v6;
  v637 = v11;
  v12 = v10;
  v638 = v12;
  v13 = v9;
  v639 = v13;
  v516 = _Block_copy(aBlock);
  v14 = [(MPCModelGenericAVItem *)self eventStream];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 engineID];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = self;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Starting asset load...", buf, 0x16u);
  }

  v513 = [MPCAVItemTrace traceIntervalWithName:@"MPTRACE_PLAYBACK_STORE_ITEM_ASSET_LOAD" item:self beginEvent:731643968 endEvent:731643972];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  spid = os_signpost_id_make_with_pointer(v17, self);

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v19 = v18;
  v509 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAsset", "", buf, 2u);
  }

  v514 = [MEMORY[0x1E695DF90] dictionary];
  v20 = +[MPCContentAgeRequirementManager sharedManager];
  v21 = [v20 isItemAuthorized:self shouldAskForAuthorization:1];

  if (v21)
  {
    v630 = 0;
    v631 = &v630;
    v632 = 0x3032000000;
    v633 = __Block_byref_object_copy__12470;
    v634 = __Block_byref_object_dispose__12471;
    v635 = 0;
    v22 = [MEMORY[0x1E695DF70] array];
    v627[0] = MEMORY[0x1E69E9820];
    v627[1] = 3221225472;
    v627[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_85;
    v627[3] = &unk_1E8238010;
    v629 = &v630;
    v511 = v22;
    v628 = v511;
    v507 = _Block_copy(v627);
    v23 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v512 = [v23 delayAssetLoadDuration];

    if (v512)
    {
      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        [v512 doubleValue];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Delaying asset load: %g", buf, 0x16u);
      }

      [v512 doubleValue];
      usleep((v26 * 1000000.0));
    }

    v508 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet identityProperties];
    v626 = 0;
    v27 = [(MPCModelGenericAVItem *)self _delegatedUserIdentityProperties:&v626];
    v28 = v626;
    v503 = v28;
    v510 = v27;
    if (v28)
    {
      [(MPCModelGenericAVItem *)self setItemError:v28];
      v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [(MPCModelGenericAVItem *)self itemError];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Returning asset load early with error: %{public}@", buf, 0x16u);
      }

      goto LABEL_522;
    }

    v495 = [(MPCModelGenericAVItem *)self _allowsStreamingPlayback];
    v625 = 0;
    v624 = 0u;
    v623 = 0u;
    v622 = 0u;
    v621 = 0u;
    [(MPCModelGenericAVItem *)self _timeoutValues];
    v502 = [(MPCModelGenericAVItem *)self _storeRequestContext];
    v499 = [(MPCModelGenericAVItem *)self _iTunesStorePurchasedMediaKind];
    v500 = [(MPCModelGenericAVItem *)self _loudnessInfoMediaKind];
    [(MPCModelGenericAVItem *)self _volumeAdjustment];
    v34 = v33;
    v491 = self->_radioPlayback && self->_subscriptionRequired || v27;
    v615 = 0;
    v616 = &v615;
    v617 = 0x3032000000;
    v618 = __Block_byref_object_copy__12470;
    v619 = __Block_byref_object_dispose__12471;
    v620 = 0;
    v35 = dispatch_semaphore_create(0);
    v36 = [MEMORY[0x1E69E4658] sharedBagProvider];
    v611[0] = MEMORY[0x1E69E9820];
    v611[1] = 3221225472;
    v611[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_88;
    v611[3] = &unk_1E8233DB8;
    v611[4] = self;
    v498 = v511;
    v612 = v498;
    v614 = &v615;
    dsema = v35;
    v613 = dsema;
    [v36 getBagAndURLMetricsForRequestContext:v502 forceRefetch:0 withCompletionHandler:v611];

    v37 = dispatch_time(0, 1000000000 * v625);
    if (dispatch_semaphore_wait(dsema, v37))
    {
      v38 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out loading url bag"];
      [v498 addObject:v38];

      v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_ERROR, "[AL][Bag Loading] - %{public}@: loadAssetAndPlayerItem - Timed out loading url bag.", buf, 0xCu);
      }
    }

    else
    {
      v39 = [(MPCModelGenericAVItem *)self eventStream];
      v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v39 engineID];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = self;
        _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Bag Loading] - %{public}@: loadAssetAndPlayerItem - Finished loading url bag.", buf, 0x16u);
      }
    }

    if (v516[2](v516, 1123))
    {
LABEL_521:

      _Block_object_dispose(&v615, 8);
LABEL_522:

      _Block_object_dispose(&v630, 8);
      goto LABEL_523;
    }

    v605 = 0;
    v606 = &v605;
    v607 = 0x3032000000;
    v608 = __Block_byref_object_copy__12470;
    v609 = __Block_byref_object_dispose__12471;
    v610 = 0;
    v599 = 0;
    v600 = &v599;
    v601 = 0x3032000000;
    v602 = __Block_byref_object_copy__12470;
    v603 = __Block_byref_object_dispose__12471;
    v604 = 0;
    v597[0] = 0;
    v597[1] = v597;
    v597[2] = 0x2020000000;
    v598 = 0;
    v591 = 0;
    v592 = &v591;
    v593 = 0x3032000000;
    v594 = __Block_byref_object_copy__12470;
    v595 = __Block_byref_object_dispose__12471;
    v596 = 0;
    v585[0] = MEMORY[0x1E69E9820];
    v585[1] = 3221225472;
    v585[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_96;
    v585[3] = &unk_1E8233E08;
    v585[5] = v597;
    v585[4] = self;
    v590 = v625;
    v588 = v623;
    v589 = v624;
    v586 = v621;
    v587 = v622;
    v585[6] = &v591;
    v585[7] = &v605;
    v585[9] = spid;
    v585[8] = &v599;
    v494 = _Block_copy(v585);
    if (v516[2](v516, 1165))
    {
LABEL_520:

      _Block_object_dispose(&v591, 8);
      _Block_object_dispose(v597, 8);
      _Block_object_dispose(&v599, 8);

      _Block_object_dispose(&v605, 8);
      goto LABEL_521;
    }

    v42 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v42 setMaxConcurrentOperationCount:1];
    [v42 setName:@"com.apple.MediaPlayer.MPCModelGenericAVItem.assetLoadOperationQueue"];
    [v42 setQualityOfService:25];
    v483 = v42;
    v497 = [(MPCModelGenericAVItem *)self _assetLoadPropertiesWithUserIdentityProperties:v508 delegatedUserIdentityProperties:v510 subscriptionPlaybackInfo:v606[5]];
    v43 = [v497 storeAsset];
    v481 = [v43 endpointType];

    v44 = [(MPCModelGenericAVItem *)self eventStream];
    v45 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v44 engineID];
      if ([v497 prefersVideoContent])
      {
        v47 = @"video";
      }

      else
      {
        v47 = @"audio";
      }

      v48 = [v497 preferredAudioAssetType] - 1;
      if (v48 > 4)
      {
        v49 = @"Unspecified";
      }

      else
      {
        v49 = off_1E82347D8[v48];
      }

      v50 = [v497 HLSContentPolicy];
      if (v50 > 3)
      {
        v51 = @"Unspecified";
      }

      else
      {
        v51 = off_1E82347B8[v50];
      }

      *buf = 138545155;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v658 = v47;
      *v659 = 2113;
      *&v659[2] = v49;
      *&v659[10] = 1024;
      *&v659[12] = v510 != 0;
      *&v659[16] = 1024;
      *&v659[18] = v495;
      *v660 = 2114;
      *&v660[2] = v51;
      LOWORD(v661) = 1024;
      *(&v661 + 2) = v481;
      _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Asset is %{public}@ - Preferred audio: %{private}@, isDelegatedPlayback=%{BOOL}u, allowsStreamingPlayback=%{BOOL}u, HLSContentPolicy=%{public}@}, endpointType=%d", buf, 0x46u);
    }

    v52 = [MPCAssetLoadPropertiesLocalFileEvaluator alloc];
    v53 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
    v54 = [v53 playbackEngine];
    v484 = [(MPCAssetLoadPropertiesLocalFileEvaluator *)v52 initWithPlaybackEngine:v54];

    v55 = [MEMORY[0x1E69708A8] standardUserDefaults];
    LODWORD(v52) = [v55 disableAssetCaching];
    v56 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v493 = [(MPCAssetLoadPropertiesLocalFileEvaluator *)v484 evaluateAssetLoadProperties:v497 allowingCachedAssets:v52 ^ 1 defaults:v56];

    if ([v493 status] == 1 && (!objc_msgSend(v493, "fileMatchesRequiredQuality") || objc_msgSend(v493, "recommendation") == 2))
    {
      *(&v622 + 1) = 5;
      v57 = [(MPCModelGenericAVItem *)self eventStream];
      v58 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [(MPCModelGenericAVItemLocalFileLoadOperation *)v57 engineID];
        *buf = 138545666;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v658 = *(&v621 + 1);
        *v659 = 2048;
        *&v659[2] = v621;
        *&v659[10] = 2048;
        *&v659[12] = v622;
        *&v659[20] = 2048;
        *v660 = *(&v622 + 1);
        *&v660[8] = 2048;
        v661 = v623;
        v662 = 2048;
        v663 = *(&v623 + 1);
        v664 = 2048;
        v665 = v624;
        v666 = 2048;
        v667 = *(&v624 + 1);
        _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@ - Overriding timeout values for cloud streaming [Bypassing local file and attempting streaming]: Local file=%lds - subscription lease session=%lds - home sharing=%lds - cloud streaming=%lds - cloud redownload=%lds - fairplay status=%lds - fairplay lease=%lds - suze lease=%lds", buf, 0x66u);
      }

      v485 = 0;
      v476 = 1;
LABEL_66:

LABEL_67:
      if (v516[2](v516, 1252))
      {
        goto LABEL_519;
      }

      if (v510 || [v485 hasValidAsset] & 1 | !v495)
      {
LABEL_86:
        if (v516[2](v516, 1287))
        {
          goto LABEL_519;
        }

        if (([v485 hasValidAsset] & 1) == 0 && (objc_msgSend(v497, "isRadioPlayback") & v495) == 1)
        {
          v84 = _MPCLogCategoryAnalytics();
          v85 = v84;
          if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5C61000, v85, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetAssetInfoCacheRequest", "", buf, 2u);
          }

          v86 = objc_alloc_init(MEMORY[0x1E6970998]);
          [v86 setAccountID:{objc_msgSend(v497, "accountID")}];
          [v86 setDelegatedAccountID:{objc_msgSend(v497, "delegatedAccountID")}];
          [v86 setRequestType:3];
          v87 = [v497 itemIdentifiers];
          v88 = [v87 universalStore];
          [v86 setStoreRadioAdamID:{objc_msgSend(v88, "adamID")}];

          v89 = [MEMORY[0x1E6970990] sharedCache];
          v90 = [v89 cachedResponseForRequest:v86];
          v470 = v89;
          obj = v90;
          if (v90)
          {
            v576 = 0;
            v91 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v90 assetLoadProperties:v497 source:3 error:&v576];
            v92 = v576;
            v93 = v91;

            v94 = v92;
          }

          else
          {
            v93 = 0;
            v94 = 0;
          }

          if ([v93 hasValidAsset])
          {
            v465 = v93;

            (*(v507 + 2))(v507, 0);
            v487 = [(MPCModelGenericAVItem *)self eventStream];
            v95 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = [v487 engineID];
              *buf = 138543874;
              *&buf[4] = v96;
              *&buf[12] = 2114;
              *&buf[14] = self;
              *&buf[22] = 2114;
              v658 = obj;
              _os_log_impl(&dword_1C5C61000, v95, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Using existing Radio cached playback response: %{public}@", buf, 0x20u);
            }

            v485 = v465;
          }

          else
          {
            v466 = [(MPCModelGenericAVItem *)self eventStream];
            v97 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              v98 = [v466 engineID];
              *buf = 138543618;
              *&buf[4] = v98;
              *&buf[12] = 2114;
              *&buf[14] = self;
              _os_log_impl(&dword_1C5C61000, v97, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: No cached Radio playback response found.", buf, 0x16u);
            }

            if (v94)
            {
              (*(v507 + 2))(v507, v94);
            }
          }

          v99 = _MPCLogCategoryAnalytics();
          v100 = v99;
          if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5C61000, v100, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetAssetInfoCacheRequest", " enableTelemetry=YES ", buf, 2u);
          }
        }

        if ([v485 hasValidAsset] & 1 | !v495)
        {
          goto LABEL_158;
        }

        v101 = [(MPCModelGenericAVItem *)self eventStream];
        v102 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = [v101 engineID];
          *buf = 138543618;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = self;
          _os_log_impl(&dword_1C5C61000, v102, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: No local file of appropriate quality, using cloud streaming.", buf, 0x16u);
        }

        if (v481 == 3 || v510 != 0)
        {
          v494[2]();
          v105 = [v497 storeAsset];
          v106 = [v105 isSubscriptionRequired];

          v107 = [v606[5] hasPlaybackCapability];
          if (v107 & 1 | ((v106 & 1) == 0))
          {
            v108 = _MPCLogCategoryAnalytics();
            v109 = v108;
            if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v109, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetSubscriptionAssetLoadOperation", "", buf, 2u);
            }

            v110 = objc_alloc_init(MPCModelGenericAVItemSubscriptionAssetLoadOperation);
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setAssetLoadProperties:v497];
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setRequestContext:v502];
            v111 = [v606[5] shouldUseAccountLessStreaming];
            v112 = (v111 ^ 1) & (v107 | v106);
            if (((v111 ^ 1) & (v107 | v106)) != 0)
            {
              v113 = 1;
            }

            else
            {
              v113 = 2;
            }

            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setOperationType:v113];
            if (v112)
            {
              [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setSubscriptionLeaseSession:v592[5]];
            }

            v114 = dispatch_semaphore_create(0);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v658 = __Block_byref_object_copy__12470;
            *v659 = __Block_byref_object_dispose__12471;
            *&v659[8] = 0;
            *v655 = 0;
            *&v655[8] = v655;
            *&v655[16] = 0x3032000000;
            *v656 = __Block_byref_object_copy__12470;
            *&v656[8] = __Block_byref_object_dispose__12471;
            *&v656[16] = 0;
            v572[0] = MEMORY[0x1E69E9820];
            v572[1] = 3221225472;
            v572[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_131;
            v572[3] = &unk_1E8233E58;
            v575 = v655;
            v574 = buf;
            v572[4] = self;
            v115 = v114;
            v573 = v115;
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setResponseHandler:v572];
            [v483 addOperation:v110];
            v116 = dispatch_time(0, 1000000000 * *(&v622 + 1));
            if (dispatch_semaphore_wait(v115, v116))
            {
              [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 cancel];
              v117 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                *v649 = 138543618;
                *&v649[4] = self;
                *&v649[12] = 2048;
                *&v649[14] = *(&v622 + 1);
                _os_log_impl(&dword_1C5C61000, v117, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out while attempting to load subscription asset [request aborted after %lds].", v649, 0x16u);
              }

              v118 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out while attempting to load subscription asset"];
              (*(v507 + 2))(v507, v118);

              if (v476)
              {
                [v483 setMaxConcurrentOperationCount:2];
              }
            }

            else
            {
              v133 = *(*&buf[8] + 40);

              (*(v507 + 2))(v507, *(*&v655[8] + 40));
              v485 = v133;
            }

            v134 = _MPCLogCategoryAnalytics();
            v135 = v134;
            if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
            {
              *v649 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v135, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetSubscriptionAssetLoadOperation", " enableTelemetry=YES ", v649, 2u);
            }

            _Block_object_dispose(v655, 8);
            _Block_object_dispose(buf, 8);

            goto LABEL_157;
          }

          if (v600[5])
          {
            (*(v507 + 2))();
            v110 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(&v110->super.super.super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = self;
              v126 = "[AL] - %{public}@: Subscription is required, and we failed to load the subscription status.";
LABEL_145:
              p_super = &v110->super.super.super;
              v128 = 12;
              goto LABEL_146;
            }
          }

          else
          {
            v129 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:17 debugDescription:@"Missing subscription for playback"];
            (*(v507 + 2))(v507, v129);

            v110 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(&v110->super.super.super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = self;
              v126 = "[AL] - %{public}@: Subscription is required, and the user does not have subscription playback capability, setting error to subscription required.";
              goto LABEL_145;
            }
          }
        }

        else
        {
          if ((v481 - 1) <= 1)
          {
            v119 = _MPCLogCategoryAnalytics();
            v120 = v119;
            if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v120, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetMediaRedownloadOperation", "", buf, 2u);
            }

            v110 = objc_alloc_init(MPCModelGenericAVItemMediaRedownloadOperation);
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setAssetLoadProperties:v497];
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setRequestContext:v502];
            v121 = dispatch_semaphore_create(0);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v658 = __Block_byref_object_copy__12470;
            *v659 = __Block_byref_object_dispose__12471;
            *&v659[8] = 0;
            *v655 = 0;
            *&v655[8] = v655;
            *&v655[16] = 0x3032000000;
            *v656 = __Block_byref_object_copy__12470;
            *&v656[8] = __Block_byref_object_dispose__12471;
            *&v656[16] = 0;
            v568[0] = MEMORY[0x1E69E9820];
            v568[1] = 3221225472;
            v568[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_137;
            v568[3] = &unk_1E8233E58;
            v571 = v655;
            v570 = buf;
            v568[4] = self;
            v122 = v121;
            v569 = v122;
            [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 setResponseHandler:v568];
            [v483 addOperation:v110];
            v123 = dispatch_time(0, 1000000000 * v623);
            if (dispatch_semaphore_wait(v122, v123))
            {
              [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v110 cancel];
              v124 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                *v649 = 138543618;
                *&v649[4] = self;
                *&v649[12] = 2048;
                *&v649[14] = v623;
                _os_log_impl(&dword_1C5C61000, v124, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out while attempting to load media redownload asset [request aborted after %lds].", v649, 0x16u);
              }

              v125 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out while attempting to load media redownload asset"];
              (*(v507 + 2))(v507, v125);
            }

            else
            {
              v130 = *(*&buf[8] + 40);

              (*(v507 + 2))(v507, *(*&v655[8] + 40));
              v485 = v130;
            }

            v131 = _MPCLogCategoryAnalytics();
            v132 = v131;
            if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
            {
              *v649 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v132, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetMediaRedownloadOperation", " enableTelemetry=YES ", v649, 2u);
            }

            _Block_object_dispose(v655, 8);
            _Block_object_dispose(buf, 8);

            goto LABEL_157;
          }

          v110 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(&v110->super.super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = v481;
            v126 = "[AL] - %{public}@: No valid endpoint type (%ld), skipping streaming redownload.";
            p_super = &v110->super.super.super;
            v128 = 22;
LABEL_146:
            _os_log_impl(&dword_1C5C61000, p_super, OS_LOG_TYPE_ERROR, v126, buf, v128);
          }
        }

LABEL_157:

LABEL_158:
        if ((v516[2](v516, 1425) & 1) == 0)
        {
          if ([v485 hasValidAsset])
          {
            v136 = v485;
          }

          else
          {
            v137 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = self;
              _os_log_impl(&dword_1C5C61000, v137, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Attempting to load lower quality local file", buf, 0xCu);
            }

            v138 = _MPCLogCategoryAnalytics();
            v139 = v138;
            if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v138))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v139, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetLowQualityFileLoadOperation", "", buf, 2u);
            }

            v140 = [[MPCModelGenericAVItemLocalFileLoadOperation alloc] initWithEvaluation:v493 properties:v497];
            [(MPCModelGenericAVItemLocalFileLoadOperation *)v140 setRequirePreferredAssetQuality:0];
            v141 = dispatch_semaphore_create(0);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v658 = __Block_byref_object_copy__12470;
            *v659 = __Block_byref_object_dispose__12471;
            *&v659[8] = 0;
            *v655 = 0;
            *&v655[8] = v655;
            *&v655[16] = 0x3032000000;
            *v656 = __Block_byref_object_copy__12470;
            *&v656[8] = __Block_byref_object_dispose__12471;
            *&v656[16] = 0;
            v564[0] = MEMORY[0x1E69E9820];
            v564[1] = 3221225472;
            v564[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_141;
            v564[3] = &unk_1E8233E30;
            v566 = buf;
            v567 = v655;
            v142 = v141;
            v565 = v142;
            [(MPCModelGenericAVItemLocalFileLoadOperation *)v140 setResponseHandler:v564];
            [v483 addOperation:v140];
            v143 = dispatch_time(0, 1000000000 * *(&v621 + 1));
            if (dispatch_semaphore_wait(v142, v143))
            {
              [(MPAsyncOperation *)v140 cancel];
              v144 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                *v649 = 138543618;
                *&v649[4] = self;
                *&v649[12] = 2048;
                *&v649[14] = *(&v621 + 1);
                _os_log_impl(&dword_1C5C61000, v144, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out while attempting to load low quality local file [request aborted after %lds].", v649, 0x16u);
              }

              if (!v631[5])
              {
                v145 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out while attempting to load low quality local file"];
                (*(v507 + 2))(v507, v145);
              }

              v136 = v485;
            }

            else
            {
              v136 = *(*&buf[8] + 40);

              if (([v136 hasValidAsset] & 1) == 0 && !v631[5])
              {
                (*(v507 + 2))(v507, *(*&v655[8] + 40));
              }
            }

            v146 = _MPCLogCategoryAnalytics();
            v147 = v146;
            if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
            {
              *v649 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v147, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetLowQualityFileLoadOperation", " enableTelemetry=YES ", v649, 2u);
            }

            _Block_object_dispose(v655, 8);
            _Block_object_dispose(buf, 8);
          }

          if (v516[2](v516, 1461))
          {
            v485 = v136;
            goto LABEL_519;
          }

          v485 = [(MPCModelGenericAVItem *)self _decorateAssetLoadResult:v136 withURLBag:v616[5]];

          v563 = 0;
          v148 = [(MPCModelGenericAVItem *)self _isAssetLoadResultValidForPlayback:v485 error:&v563];
          v149 = v563;
          v150 = v149;
          if (!v148)
          {
            if (v149)
            {
              (*(v507 + 2))(v507, v149);
            }

            goto LABEL_491;
          }

          v151 = [(MPCModelGenericAVItem *)self eventStream];
          v463 = v150;
          v152 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
          {
            v153 = [v151 engineID];
            *buf = 138543874;
            *&buf[4] = v153;
            *&buf[12] = 2114;
            *&buf[14] = self;
            *&buf[22] = 2114;
            v658 = v485;
            _os_log_impl(&dword_1C5C61000, v152, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Ready to process asset load result: %{public}@", buf, 0x20u);
          }

          v154 = [v485 isHLSAsset];
          v155 = @"CRABS";
          if (v154)
          {
            v155 = @"HLS";
          }

          v464 = v155;
          v156 = v491 || [v485 assetProtectionType] == 2 || v481 == 3;
          v461 = v156;
          v496 = objc_alloc_init(MEMORY[0x1E695DF90]);
          IsAudioAccessory = MSVDeviceIsAudioAccessory();
          if ((v481 & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            v159 = IsAudioAccessory;
          }

          else
          {
            v159 = 1;
          }

          if ((v159 & 1) == 0)
          {
            [v496 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6987B78]];
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v658 = __Block_byref_object_copy__12470;
          *v659 = __Block_byref_object_dispose__12471;
          *&v659[8] = [v485 purchaseBundleDictionary];
          v160 = *(*&buf[8] + 40);
          if (v160)
          {
            [v496 setObject:v160 forKey:*MEMORY[0x1E6987BC8]];
          }

          v161 = [v485 protectedContentSupportStorageFileURL];
          if (v161)
          {
            [v496 setObject:v161 forKey:*MEMORY[0x1E6987BC0]];
          }

          v462 = v161;
          v471 = [v485 isHLSAsset];
          self->_hlsAsset = v471;
          v458 = [v485 isCloudStreamingAsset];
          if (!v458)
          {
            if (!*(*&buf[8] + 40))
            {
LABEL_226:
              v492 = 0;
              goto LABEL_263;
            }

LABEL_222:
            v174 = [v485 isHomeSharingAsset];
            if (v510)
            {
              v175 = 1;
            }

            else
            {
              v175 = v174;
            }

            if (v175)
            {
              goto LABEL_226;
            }

            if (v481 == 1)
            {
              v181 = [v497 itemIdentifiers];
              v182 = [v181 universalStore];
              v183 = [v182 purchasedAdamID];

              if (v183)
              {
                v179 = [MEMORY[0x1E696AD98] numberWithLongLong:v183];
                v180 = @"purchaseHistory";
LABEL_233:
                if (v179)
                {
                  v492 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
                  [v492 setObject:v179 forKey:*MEMORY[0x1E6987C20]];
                  [v492 setObject:v180 forKey:*MEMORY[0x1E6987C40]];
                  v184 = [v497 storeAsset];
                  v185 = [v184 redownloadParameters];

                  if (v185)
                  {
                    [v492 setObject:v185 forKey:*MEMORY[0x1E6987C10]];
                  }

                  if (v499)
                  {
                    [v492 setObject:v499 forKey:*MEMORY[0x1E6987C30]];
                  }

                  v186 = [v502 userAgent];
                  if (v186)
                  {
                    [v492 setObject:v186 forKey:*MEMORY[0x1E6987C48]];
                  }

                  v187 = [v497 storeAsset];
                  v188 = [v187 accountIdentifier];

                  if (v188)
                  {
                    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v188];
                  }

                  else
                  {
                    [v508 DSID];
                  }
                  v189 = ;

                  if (v189)
                  {
                    [v492 setObject:v189 forKey:*MEMORY[0x1E6987C08]];
                  }

                  goto LABEL_249;
                }

LABEL_243:
                v492 = 0;
LABEL_249:
                if (v471)
                {
                  v190 = [v485 alternateHLSPlaylistURL];
                  v191 = v190;
                  if (v190)
                  {
                    v192 = v190;
                  }

                  else
                  {
                    v192 = [v485 assetURL];
                  }

                  v193 = [v192 absoluteString];
                  if ([v193 length])
                  {
                    v194 = v492;
                    if (!v492)
                    {
                      v194 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
                    }

                    v492 = v194;
                    [v194 setObject:v193 forKey:*MEMORY[0x1E6987C18]];
                  }
                }

                if (v492)
                {
                  v195 = [(MPCModelGenericAVItem *)self eventStream];
                  v196 = _MPCLogCategoryPlayback();
                  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                  {
                    v197 = [v195 engineID];
                    *v655 = 138543874;
                    *&v655[4] = v197;
                    *&v655[12] = 2114;
                    *&v655[14] = self;
                    *&v655[22] = 2114;
                    *v656 = v492;
                    _os_log_impl(&dword_1C5C61000, v196, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Using iTunes Store Content Info: %{public}@", v655, 0x20u);
                  }

                  [v496 setObject:v492 forKey:*MEMORY[0x1E6987C28]];
                }

LABEL_263:
                v198 = [(MPCModelGenericAVItem *)self eventStream];
                v199 = _MPCLogCategoryPlayback();
                if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                {
                  v200 = [v198 engineID];
                  *v655 = 138543618;
                  *&v655[4] = v200;
                  *&v655[12] = 2114;
                  *&v655[14] = self;
                  _os_log_impl(&dword_1C5C61000, v199, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Reloading playback keys if required", v655, 0x16u);
                }

                if (self->_radioPlayback && !self->_subscriptionRequired)
                {
                  v488 = [(MPCModelGenericAVItem *)self eventStream];
                  v204 = _MPCLogCategoryPlayback();
                  if (!os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_330;
                  }

                  v206 = [v488 engineID];
                  *v655 = 138543618;
                  *&v655[4] = v206;
                  *&v655[12] = 2114;
                  *&v655[14] = self;
                  v207 = v204;
                  _os_log_impl(&dword_1C5C61000, v204, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Radio station does not require a subscription, skipping subscription key check.", v655, 0x16u);
                }

                else
                {
                  v201 = [v485 assetProtectionType];
                  if (v201 != 2)
                  {
                    v488 = [(MPCModelGenericAVItem *)self eventStream];
                    v204 = _MPCLogCategoryPlayback();
                    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                    {
                      v205 = [v488 engineID];
                      *v655 = 138543874;
                      *&v655[4] = v205;
                      *&v655[12] = 2114;
                      *&v655[14] = self;
                      *&v655[22] = 2048;
                      *v656 = v201;
                      _os_log_impl(&dword_1C5C61000, v204, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Protection type is %li, skipping subscription key check.", v655, 0x20u);
                    }

                    goto LABEL_330;
                  }

                  if (v461)
                  {
                    v494[2]();
                    v202 = v592[5];
                    if (v202)
                    {
                      v488 = [v202 leaseStatus];
                      if (objc_opt_respondsToSelector())
                      {
                        v203 = [v592[5] lastFairPlayKeyStatusReloadDate];
                      }

                      else
                      {
                        v203 = 0;
                      }

                      v478 = v203;
                      if ((([v488 hasOnlinePlaybackKeys]& 1) != 0 || [v488 hasOfflinePlaybackKeys]) && (!v203 || ([v203 timeIntervalSinceNow], v210 < -60.0)))
                      {
                        v211 = [(MPCModelGenericAVItem *)self eventStream];
                        v212 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                        {
                          v213 = [v211 engineID];
                          *v655 = 138543618;
                          *&v655[4] = v213;
                          *&v655[12] = 2114;
                          *&v655[14] = self;
                          _os_log_impl(&dword_1C5C61000, v212, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Reloading FairPlay key status to ensure the latest value is known...", v655, 0x16u);
                        }

                        v214 = _MPCLogCategoryAnalytics();
                        v215 = v214;
                        if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v214))
                        {
                          v216 = v464;
                          v217 = [(__CFString *)v464 UTF8String];
                          *v655 = 136446210;
                          *&v655[4] = v217;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v215, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetLoadFairPlayKeyStatus", "contentType=%{public, signpost.telemetry:string1, name=contentType}s", v655, 0xCu);
                        }

                        *v655 = 0;
                        *&v655[8] = v655;
                        *&v655[16] = 0x3032000000;
                        *v656 = __Block_byref_object_copy__12470;
                        *&v656[8] = __Block_byref_object_dispose__12471;
                        *&v656[16] = 0;
                        v218 = dispatch_semaphore_create(0);
                        v219 = v592[5];
                        v560[0] = MEMORY[0x1E69E9820];
                        v560[1] = 3221225472;
                        v560[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_168;
                        v560[3] = &unk_1E8233E80;
                        v560[4] = self;
                        v562 = v655;
                        v220 = v218;
                        v561 = v220;
                        [v219 reloadFairPlayKeyStatusWithCompletionHandler:v560];
                        v221 = dispatch_time(0, 1000000000 * *(&v623 + 1));
                        if (dispatch_semaphore_wait(v220, v221))
                        {
                          v222 = _MPCLogCategoryPlayback();
                          if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                          {
                            *v649 = 138543618;
                            *&v649[4] = self;
                            *&v649[12] = 2048;
                            *&v649[14] = *(&v623 + 1);
                            _os_log_impl(&dword_1C5C61000, v222, OS_LOG_TYPE_ERROR, "[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Timed out reloading FairPlay key status; using the last known status [request aborted after %lds].", v649, 0x16u);
                          }
                        }

                        else
                        {
                          v222 = v488;
                          v488 = *(*&v655[8] + 40);
                        }

                        v228 = _MPCLogCategoryAnalytics();
                        v229 = v228;
                        if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v228))
                        {
                          *v649 = 0;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v229, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetLoadFairPlayKeyStatus", " enableTelemetry=YES ", v649, 2u);
                        }

                        _Block_object_dispose(v655, 8);
                      }

                      else
                      {
                        v223 = [(MPCModelGenericAVItem *)self eventStream];
                        v224 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                        {
                          v225 = [v223 engineID];
                          v226 = [v488 hasOnlinePlaybackKeys];
                          v227 = [v488 hasOfflinePlaybackKeys];
                          *v655 = 138544386;
                          *&v655[4] = v225;
                          *&v655[12] = 2114;
                          *&v655[14] = self;
                          *&v655[22] = 1024;
                          *v656 = v226;
                          *&v656[4] = 1024;
                          *&v656[6] = v227;
                          *&v656[10] = 2114;
                          *&v656[12] = v203;
                          _os_log_impl(&dword_1C5C61000, v224, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Reloading FairPlay key status is not needed - hasOnlinePlaybackKeys:%{BOOL}u hasOfflinePlaybackKeys:%{BOOL}u lastFairPlayKeyStatusReloadDate:%{public}@", v655, 0x2Cu);
                        }
                      }

                      v230 = [v488 hasOnlinePlaybackKeys];
                      if ((v230 & v471) == 1)
                      {
                        v231 = [v592[5] leaseExpirationDate];
                        [v231 timeIntervalSinceNow];
                        v230 = v232 > 60.0;
                      }

                      if ([v488 hasOfflinePlaybackKeys])
                      {
                        v233 = [v485 onlineSubscriptionKeysRequired] ^ 1;
                      }

                      else
                      {
                        v233 = 0;
                      }

                      v234 = [MEMORY[0x1E696AD98] numberWithBool:v230];
                      [v514 setObject:v234 forKeyedSubscript:@"item-asset-has-online-keys"];

                      v235 = [MEMORY[0x1E696AD98] numberWithBool:v233];
                      [v514 setObject:v235 forKeyedSubscript:@"item-asset-has-offline-keys"];

                      if ((v230 | v233))
                      {
                        v236 = [(MPCModelGenericAVItem *)self eventStream];
                        v237 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                        {
                          v238 = [v236 engineID];
                          *v655 = 138543874;
                          *&v655[4] = v238;
                          *&v655[12] = 2114;
                          *&v655[14] = self;
                          *&v655[22] = 2114;
                          *v656 = v488;
                          _os_log_impl(&dword_1C5C61000, v237, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Already have playback keys from lease status: %{public}@, no need to do another request.", v655, 0x20u);
                        }
                      }

                      else
                      {
                        if ([v485 onlineSubscriptionKeysRequired])
                        {
                          v239 = [(MPCModelGenericAVItem *)self eventStream];
                          v240 = _MPCLogCategoryPlayback();
                          if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                          {
                            v241 = [v239 engineID];
                            *v655 = 138543618;
                            *&v655[4] = v241;
                            *&v655[12] = 2114;
                            *&v655[14] = self;
                            _os_log_impl(&dword_1C5C61000, v240, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Requesting playback keys because the asset requires online keys", v655, 0x16u);
                          }
                        }

                        else
                        {
                          v239 = [(MPCModelGenericAVItem *)self eventStream];
                          v240 = _MPCLogCategoryPlayback();
                          if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                          {
                            v242 = [v239 engineID];
                            *v655 = 138543874;
                            *&v655[4] = v242;
                            *&v655[12] = 2114;
                            *&v655[14] = self;
                            *&v655[22] = 2114;
                            *v656 = v488;
                            _os_log_impl(&dword_1C5C61000, v240, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Requesting playback keys because the lease status indicates none available: %{public}@", v655, 0x20u);
                          }
                        }

                        v243 = dispatch_semaphore_create(0);
                        v244 = objc_alloc(MEMORY[0x1E69E44A8]);
                        v245 = [v592[5] requestContext];
                        obja = [v244 initWithRequestContext:v245];

                        v246 = _MPCLogCategoryAnalytics();
                        v247 = v246;
                        if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v246))
                        {
                          v248 = v464;
                          v249 = [(__CFString *)v464 UTF8String];
                          *v655 = 136446210;
                          *&v655[4] = v249;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v247, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetLeaseSessionPlaybackRequest", "contentType=%{public, signpost.telemetry:string1, name=contentType}s", v655, 0xCu);
                        }

                        *v655 = 0;
                        *&v655[8] = v655;
                        *&v655[16] = 0x3032000000;
                        *v656 = __Block_byref_object_copy__12470;
                        *&v656[8] = __Block_byref_object_dispose__12471;
                        *&v656[16] = 0;
                        v250 = v592[5];
                        v557[0] = MEMORY[0x1E69E9820];
                        v557[1] = 3221225472;
                        v557[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_171;
                        v557[3] = &unk_1E8233EB8;
                        v557[4] = self;
                        v559 = v655;
                        v251 = v243;
                        v558 = v251;
                        v252 = [v250 performPlaybackRequest:obja completionHandler:v557];
                        v253 = dispatch_time(0, 1000000000 * v624);
                        if (dispatch_semaphore_wait(v251, v253))
                        {
                          v254 = [(MPCModelGenericAVItem *)self eventStream];
                          v255 = _MPCLogCategoryPlayback();
                          if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                          {
                            v256 = [v254 engineID];
                            *v649 = 138543874;
                            *&v649[4] = v256;
                            *&v649[12] = 2114;
                            *&v649[14] = self;
                            *&v649[22] = 2048;
                            v650 = v624;
                            _os_log_impl(&dword_1C5C61000, v255, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Timed out while attempting to acquire lease for playback keys [request aborted after %lds].", v649, 0x20u);
                          }

                          v257 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Subscription lease request timed out"];
                          v258 = *(*&v655[8] + 40);
                          *(*&v655[8] + 40) = v257;
                        }

                        v259 = _MPCLogCategoryAnalytics();
                        v260 = v259;
                        if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v259))
                        {
                          *v649 = 0;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v260, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetLeaseSessionPlaybackRequest", " enableTelemetry=YES ", v649, 2u);
                        }

                        if (*(*&v655[8] + 40))
                        {
                          (*(v507 + 2))(v507, *(*&v655[8] + 40));

                          _Block_object_dispose(v655, 8);
                          v261 = 0;
                          v262 = 2;
                          goto LABEL_489;
                        }

                        _Block_object_dispose(v655, 8);
                      }

                      v204 = v478;
                    }

                    else
                    {
                      v488 = [(MPCModelGenericAVItem *)self eventStream];
                      v204 = _MPCLogCategoryPlayback();
                      if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                      {
                        v209 = [v488 engineID];
                        *v655 = 138543618;
                        *&v655[4] = v209;
                        *&v655[12] = 2114;
                        *&v655[14] = self;
                        _os_log_impl(&dword_1C5C61000, v204, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Lease session invalid, skipping key loading.", v655, 0x16u);
                      }
                    }

LABEL_330:

                    if (v516[2](v516, 1743))
                    {
                      v261 = 1;
                      v262 = 1;
                      goto LABEL_489;
                    }

                    if ([v485 hasValidAsset] && (objc_msgSend(v485, "isDownloadedAsset") & 1) == 0)
                    {
                      v263 = [MEMORY[0x1E69708A8] standardUserDefaults];
                      v264 = [v263 rewrittenAssetInfo];

                      if (v264)
                      {
                        v265 = [v264 objectForKeyedSubscript:@"assetType"];
                        v266 = [v485 audioAssetType];
                        v489 = v265;
                        if (v266 == [v265 integerValue])
                        {
                          v479 = [v264 objectForKeyedSubscript:@"assetURL"];
                          objb = [v264 objectForKeyedSubscript:@"keyCertURL"];
                          v467 = [v264 objectForKeyedSubscript:@"keyServerURL"];
                          v267 = [v264 objectForKeyedSubscript:@"isStoreKeyServer"];
                          v452 = [v267 BOOLValue];

                          v268 = [(MPCModelGenericAVItem *)self eventStream];
                          v269 = _MPCLogCategoryPlayback();
                          if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
                          {
                            v270 = [v268 engineID];
                            *v655 = 138544130;
                            *&v655[4] = v270;
                            *&v655[12] = 2114;
                            *&v655[14] = self;
                            *&v655[22] = 2114;
                            *v656 = v485;
                            *&v656[8] = 2114;
                            *&v656[10] = v264;
                            _os_log_impl(&dword_1C5C61000, v269, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Original asset %{public}@ is rewritten by defaults with %{public}@", v655, 0x2Au);
                          }

                          if (v479)
                          {
                            v271 = [MEMORY[0x1E695DFF8] URLWithString:v479];
                            [v485 setAssetURL:v271];
                          }

                          if (objb)
                          {
                            v272 = [MEMORY[0x1E695DFF8] URLWithString:objb];
                            [v485 setStreamingKeyCertificateURL:v272];
                          }

                          if (v467)
                          {
                            v273 = [MEMORY[0x1E695DFF8] URLWithString:v467];
                            [v485 setStreamingKeyServerURL:v273];
                          }
                        }

                        else
                        {
                          v452 = 1;
                        }
                      }

                      else
                      {
                        v452 = 1;
                      }
                    }

                    else
                    {
                      v452 = 1;
                    }

                    v490 = [v485 assetURL];
                    v468 = [v485 assetQualityType];
                    v451 = [v485 assetProtectionType];
                    if (v510)
                    {
                      v274 = 0;
                      LOBYTE(v275) = 0;
                    }

                    else
                    {
                      if ([v485 allowsAssetCaching] && (objc_msgSend(v490, "isFileURL") & 1) == 0 && (objc_msgSend(v493, "recommendation") == 1 || objc_msgSend(v493, "recommendation") == 3))
                      {
                        v395 = [v497 assetCacheProvider];
                        v275 = [v395 isUnderDailyCacheAssetDownloadLimit];

                        if ((v275 & v471) == 1)
                        {
                          v396 = [MEMORY[0x1E69708A8] standardUserDefaults];
                          v397 = [v396 disableHLSAssetCaching];

                          LOBYTE(v275) = v397 ^ 1;
                        }
                      }

                      else
                      {
                        LOBYTE(v275) = 0;
                      }

                      if (([v490 isFileURL] & 1) != 0 || objc_msgSend(v493, "recommendation") != 2)
                      {
                        v274 = 0;
                      }

                      else
                      {
                        v276 = [v497 assetCacheProvider];
                        v274 = v276 != 0;
                      }
                    }

                    v457 = v275;
                    v454 = v274;
                    if ((v275 & 1) != 0 || v274)
                    {
                      v277 = [MEMORY[0x1E696AFB0] UUID];
                      v278 = [v277 UUIDString];
                      v279 = [v278 lowercaseString];

                      v280 = [v497 assetCacheProvider];
                      v556 = 0;
                      v555 = 0;
                      v281 = [v485 assetPathExtension];
                      [v280 getPlaybackAssetDestinationURL:&v556 sharedCacheURL:0 purgeable:!v454 purchaseBundleDestinationURL:&v555 assetQualityType:v468 fileName:v279 pathExtension:v281];
                      v480 = v556;
                      v456 = v555;

                      if (!v480)
                      {
                        v449 = [MEMORY[0x1E696AAA8] currentHandler];
                        [v449 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItem.m" lineNumber:1812 description:@"Asset download destination URL can't be nil"];
                      }

                      [v496 setObject:? forKey:?];
                    }

                    else
                    {
                      if (([v490 isFileURL] & 1) == 0 && (objc_msgSend(v485, "isHLSAsset") & 1) == 0)
                      {
                        [v496 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6987C00]];
                      }

                      v456 = 0;
                      v480 = 0;
                    }

                    v282 = [MEMORY[0x1E69708A8] standardUserDefaults];
                    v283 = [v282 preferredMusicLowBandwidthResolution];
                    v284 = v283 > 0;

                    v285 = [v490 isFileURL];
                    if (v283 > 0)
                    {
                      v286 = 1;
                    }

                    else
                    {
                      v286 = v285;
                    }

                    if ((v286 & 1) == 0)
                    {
                      [v496 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6987B18]];
                    }

                    v505 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v287 = [(MPCModelGenericAVItem *)self _rtcReportingServiceIdentifierWithAssetURL:v490];
                    if (v287)
                    {
                      objc_storeStrong(&self->_rtcReportingServiceIdentifier, v287);
                      [v505 setObject:v287 forKey:*MEMORY[0x1E6987B40]];
                    }

                    v455 = v287;
                    v460 = [(MPCModelGenericAVItem *)self _rtcReportingMediaIdentifierWithAssetLoadProperties:v497];
                    [v505 setObject:v460 forKey:*MEMORY[0x1E6987B30]];
                    [v505 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6987B48]];
                    v288 = [v497 storefrontID];
                    v289 = v288 == 0;

                    if (!v289)
                    {
                      v290 = [v497 storefrontID];
                      [v505 setObject:v290 forKey:@"StorefrontID"];
                    }

                    [v496 setObject:v505 forKey:*MEMORY[0x1E6987B38]];
                    [v496 setObject:&unk_1F4599328 forKeyedSubscript:*MEMORY[0x1E6987BF0]];
                    objc = [MEMORY[0x1E6988168] URLAssetWithURL:v490 options:v496];
                    v291 = [(MPCModelGenericAVItem *)self eventStream];
                    v292 = _MPCLogCategoryPlayback();
                    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
                    {
                      v293 = [v291 engineID];
                      *v655 = 138544130;
                      *&v655[4] = v293;
                      *&v655[12] = 2114;
                      *&v655[14] = self;
                      *&v655[22] = 2114;
                      *v656 = objc;
                      *&v656[8] = 2114;
                      *&v656[10] = v496;
                      _os_log_impl(&dword_1C5C61000, v292, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: AVURLAsset %{public}@ - options: %{public}@", v655, 0x2Au);
                    }

                    if (!objc)
                    {
LABEL_488:

                      v262 = 0;
                      v261 = 1;
LABEL_489:

                      _Block_object_dispose(buf, 8);
                      if ((v262 | 2) != 2)
                      {
                        goto LABEL_519;
                      }

                      if (v261)
                      {
LABEL_509:
                        if ([v12 disarm])
                        {
                          v432 = *(&self->super.super.isa + *MEMORY[0x1E6970A60]);
                          v433 = [(MPCModelGenericAVItem *)self itemError];
                          (*(v13 + 2))(v13, v432, v433);
                        }

                        v434 = [(MPCModelGenericAVItem *)self itemError];
                        v435 = [v434 msv_analyticSignature];
                        v436 = v435;
                        v437 = @"OK";
                        if (v435)
                        {
                          v437 = v435;
                        }

                        v438 = v437;

                        v439 = _MPCLogCategoryAnalytics();
                        v440 = v439;
                        if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v439))
                        {
                          v441 = [(MPCModelGenericAVItem *)self analyticsContentType];
                          v442 = v441;
                          v443 = [v441 UTF8String];
                          v444 = v438;
                          v445 = [(__CFString *)v438 UTF8String];
                          *buf = 136446466;
                          *&buf[4] = v443;
                          *&buf[12] = 2082;
                          *&buf[14] = v445;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v440, OS_SIGNPOST_INTERVAL_END, spid, "LoadAsset", " enableTelemetry=YES contentType=%{public, signpost.telemetry:string1, name=contentType}s result=%{public, signpost.telemetry:string2, name=result}s", buf, 0x16u);
                        }

                        [v513 endInterval];
                        v446 = [(MPCModelGenericAVItem *)self eventStream];
                        v447 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                        {
                          v448 = [v446 engineID];
                          *buf = 138543618;
                          *&buf[4] = v448;
                          *&buf[12] = 2114;
                          *&buf[14] = self;
                          _os_log_impl(&dword_1C5C61000, v447, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Asset load finished.", buf, 0x16u);
                        }

                        goto LABEL_519;
                      }

LABEL_491:
                      v411 = v631[5];
                      if (v411)
                      {
                        v412 = v411;
                        v413 = [(MPCModelGenericAVItem *)self eventStream];
                        v414 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                        {
                          v415 = [v413 engineID];
                          *buf = 138543874;
                          *&buf[4] = v415;
                          *&buf[12] = 2114;
                          *&buf[14] = self;
                          *&buf[22] = 2114;
                          v658 = v412;
                          _os_log_impl(&dword_1C5C61000, v414, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: Asset loading failed with error: %{public}@", buf, 0x20u);
                        }

                        v416 = v412;
                        v417 = *MEMORY[0x1E696AA08];
                        v506 = v416;
                        do
                        {
                          v418 = [v416 userInfo];
                          v419 = [v418 objectForKey:@"MPCErrorUserInfoKeyStoreDialogDictionary"];

                          v420 = [v416 userInfo];
                          v421 = [v420 objectForKey:v417];

                          if (!v421)
                          {
                            break;
                          }

                          v416 = v421;
                        }

                        while (!v419);

                        v422 = v506;
                        if ([v419 count])
                        {
                          v423 = [v506 userInfo];
                          v424 = [v423 mutableCopy];

                          if (!v424)
                          {
                            v424 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          [v424 setObject:v419 forKey:*MEMORY[0x1E696F840]];
                          v425 = MEMORY[0x1E696ABC0];
                          v426 = [v506 domain];
                          v427 = [v425 errorWithDomain:v426 code:objc_msgSend(v506 userInfo:{"code"), v424}];

                          v422 = v427;
                        }

                        [(MPCModelGenericAVItem *)self setItemError:v422];
                        v519 = 0u;
                        v520 = 0u;
                        v517 = 0u;
                        v518 = 0u;
                        v428 = v498;
                        v429 = [v428 countByEnumeratingWithState:&v517 objects:v642 count:16];
                        if (v429)
                        {
                          v430 = *v518;
                          do
                          {
                            for (i = 0; i != v429; ++i)
                            {
                              if (*v518 != v430)
                              {
                                objc_enumerationMutation(v428);
                              }

                              [(MPCModelGenericAVItem *)self addAdjunctError:*(*(&v517 + 1) + 8 * i)];
                            }

                            v429 = [v428 countByEnumeratingWithState:&v517 objects:v642 count:16];
                          }

                          while (v429);
                        }
                      }

                      goto LABEL_509;
                    }

                    v294 = +[MPCPlaybackPerformanceController sharedController];
                    [v294 markCDNConnectionWarmed];

                    if (([v490 isFileURL] & 1) == 0)
                    {
                      v295 = v616[5];
                      if (v295)
                      {
                        [objc setIsExternalContent:{objc_msgSend(v295, "isTrustedHostForURL:", v490) ^ 1}];
                      }
                    }

                    if ([v485 isHLSAsset])
                    {
                      if ([v485 isHLSAsset])
                      {
                        LOBYTE(v450) = v452;
                        [(MPCModelGenericAVItem *)self _prepareAssetForHLSPlayback:objc loadResult:v485 destinationURL:v480 storeRequestContext:v502 urlBag:v616[5] identityProperties:v508 isStoreKeyServer:v450];
                      }
                    }

                    else
                    {
                      v296 = [(MPCModelGenericAVItem *)self eventStream];
                      v297 = _MPCLogCategoryPlayback();
                      if (os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
                      {
                        v298 = [v296 engineID];
                        *v655 = 138543618;
                        *&v655[4] = v298;
                        *&v655[12] = 2114;
                        *&v655[14] = self;
                        _os_log_impl(&dword_1C5C61000, v297, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Initiating full online key retrieval [Non HLS Asset]", v655, 0x16u);
                      }

                      v299 = [v496 objectForKey:*MEMORY[0x1E6987BC8]];
                      v300 = *(*&buf[8] + 40);
                      *(*&buf[8] + 40) = v299;

                      *v655 = 0;
                      *&v655[8] = v655;
                      *&v655[16] = 0x3032000000;
                      *v656 = __Block_byref_object_copy__12470;
                      *&v656[8] = __Block_byref_object_dispose__12471;
                      *&v656[16] = 0;
                      *v649 = 0;
                      *&v649[8] = v649;
                      *&v649[16] = 0x3032000000;
                      v650 = __Block_byref_object_copy__12470;
                      v651 = __Block_byref_object_dispose__12471;
                      v652 = 0;
                      v453 = [v485 onlineSubscriptionKeysRequired];
                      v301 = [(MPCModelGenericAVItem *)self eventStream];
                      v302 = _MPCLogCategoryPlayback_Oversize();
                      if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                      {
                        v303 = [v301 engineID];
                        v304 = MPCPlaybackEngineEventPayloadJSONFromPayload(*(*&buf[8] + 40));
                        *v643 = 138543874;
                        v644 = v303;
                        v645 = 2114;
                        v646 = self;
                        v647 = 2114;
                        v648 = v304;
                        _os_log_impl(&dword_1C5C61000, v302, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Using purchase bundle: %{public}@", v643, 0x20u);
                      }

                      if (v480)
                      {
                        v305 = dispatch_group_create();
                      }

                      else
                      {
                        v305 = 0;
                      }

                      v306 = v480;
                      v307 = v457;
                      if (v453)
                      {
                        v308 = [(MPCModelGenericAVItem *)self eventStream];
                        v309 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
                        {
                          v310 = [v308 engineID];
                          *v643 = 138543618;
                          v644 = v310;
                          v645 = 2114;
                          v646 = self;
                          _os_log_impl(&dword_1C5C61000, v309, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Attempting to load full subscription asset [first asset requires online keys]", v643, 0x16u);
                        }

                        [v497 setFollowUp:1];
                        v311 = objc_alloc_init(MPCModelGenericAVItemSubscriptionAssetLoadOperation);
                        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v311 setAssetLoadProperties:v497];
                        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v311 setRequestContext:v502];
                        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v311 setOperationType:1];
                        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v311 setSubscriptionLeaseSession:v592[5]];
                        v550[0] = MEMORY[0x1E69E9820];
                        v550[1] = 3221225472;
                        v550[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_212;
                        v550[3] = &unk_1E8233EE0;
                        v553 = v649;
                        v552 = v655;
                        v550[4] = self;
                        v554 = v480 != 0;
                        v312 = v305;
                        v551 = v312;
                        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v311 setResponseHandler:v550];
                        if (v480)
                        {
                          dispatch_group_enter(v312);
                        }

                        [v483 addOperation:v311];

                        v306 = v480;
                        v307 = v457;
                      }

                      if ((v307 & (v306 != 0)) == 1)
                      {
                        v313 = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
                        {
                          *v643 = 138543362;
                          v644 = self;
                          _os_log_impl(&dword_1C5C61000, v313, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching: CRABS] Initiating caching", v643, 0xCu);
                        }

                        v314 = _MPCLogCategoryAnalytics();
                        v315 = v314;
                        if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v314))
                        {
                          *v643 = 0;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v315, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetCRABSAssetDownload", "", v643, 2u);
                        }

                        v316 = [objc downloadDestinationURL];
                        objc_initWeak(v643, self);
                        v537[0] = MEMORY[0x1E69E9820];
                        v537[1] = 3221225472;
                        v537[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_216;
                        v537[3] = &unk_1E8233F58;
                        objc_copyWeak(v548, v643);
                        v538 = v497;
                        v317 = v316;
                        v539 = v317;
                        v540 = v480;
                        v541 = 0;
                        v549 = v453;
                        v542 = v456;
                        v543 = v305;
                        v545 = v649;
                        v546 = v655;
                        v544 = v490;
                        v547 = buf;
                        v548[1] = v468;
                        v548[2] = v451;
                        [objc mpc_addDownloadCompletionHandler:v537];
                        v318 = _MPCLogCategoryAnalytics();
                        v319 = v318;
                        if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v318))
                        {
                          *v536 = 0;
                          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v319, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetCRABSAssetDownload", " enableTelemetry=YES ", v536, 2u);
                        }

                        objc_destroyWeak(v548);
                        objc_destroyWeak(v643);
                      }

                      _Block_object_dispose(v649, 8);
                      _Block_object_dispose(v655, 8);
                    }

                    v320 = *MEMORY[0x1E6970A58];
                    objc_storeStrong((&self->super.super.isa + v320), objc);
                    v321 = _MPCLogCategoryAnalytics();
                    v322 = v321;
                    if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v321))
                    {
                      v323 = v464;
                      v324 = [(__CFString *)v464 UTF8String];
                      *v655 = 136446210;
                      *&v655[4] = v324;
                      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v322, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetCreateAVPlayerItem", "contentType=%{public, signpost.telemetry:string1, name=contentType}s", v655, 0xCu);
                    }

                    v469 = [MEMORY[0x1E69880B0] playerItemWithAsset:*(&self->super.super.isa + v320)];
                    LODWORD(v325) = v34;
                    [v469 setVolumeAdjustment:v325];
                    if (v500)
                    {
                      [v469 setMediaKind:v500];
                    }

                    if (v458 && ([v497 prefersVideoContent] & 1) == 0)
                    {
                      [v469 setPlaybackLikelyToKeepUpTrigger:1];
                    }

                    if (v471)
                    {
                      v326 = [MEMORY[0x1E69E4428] sharedMonitor];
                      [v326 registerObserver:self];

                      v327 = [MEMORY[0x1E696AD88] defaultCenter];
                      v328 = [MEMORY[0x1E69708A8] standardUserDefaults];
                      [v327 addObserver:self selector:sel__allowsHighQualityMusicStreamingOnCellularDidChangeNotification_ name:*MEMORY[0x1E6970368] object:v328];

                      if ([v497 prefersVideoContent])
                      {
                        v329 = 2;
                      }

                      else
                      {
                        v329 = 1;
                      }

                      [(MPCModelGenericAVItem *)self _applyPreferredPeakBitRateToPlayerItem:v469 withItemType:v329];
                    }

                    if ([v497 prefersVideoContent] && objc_msgSend(v485, "isHLSAsset"))
                    {
                      [v469 setAllowedAudioSpatializationFormats:7];
                    }

                    v330 = [(MPCModelGenericAVItem *)self isStartItem];
                    v331 = @"FollowingItem";
                    if (v330)
                    {
                      v331 = @"StartItem";
                    }

                    v332 = v331;
                    v333 = [(MPCModelGenericAVItem *)self isSiriInitiated];
                    v334 = [v333 BOOLValue];

                    if (v334)
                    {
                      v335 = [(__CFString *)v332 stringByAppendingString:@"-Siri"];

                      v336 = v335;
                    }

                    else
                    {
                      v336 = v332;
                    }

                    v459 = v336;
                    [v469 setReportingCategory:?];
                    [(MPCModelGenericAVItem *)self setPlayerItem:v469];
                    v337 = [v485 willBecomeActivePlayerItemHandler];
                    firstBecomeActivePlayerItemBlock = self->_firstBecomeActivePlayerItemBlock;
                    self->_firstBecomeActivePlayerItemBlock = v337;

                    v339 = [v485 alternateHLSKeyCertificateURL];
                    v340 = v339;
                    if (!v339)
                    {
                      v340 = [v485 streamingKeyCertificateURL];
                    }

                    objc_storeStrong(&self->_streamingKeyCertificateURL, v340);
                    if (!v339)
                    {
                    }

                    v341 = [v485 alternateHLSKeyServerURL];
                    v342 = v341;
                    if (!v341)
                    {
                      v342 = [v485 streamingKeyServerURL];
                    }

                    objc_storeStrong(&self->_streamingKeyServerURL, v342);
                    if (!v341)
                    {
                    }

                    self->_isiTunesStoreStream = [v485 isiTunesStoreStream];
                    v343 = [v497 audioAssetTypeSelection];
                    preferredAudioAssetTypeSelection = self->_preferredAudioAssetTypeSelection;
                    self->_preferredAudioAssetTypeSelection = v343;

                    self->_preferredAudioAssetType = [v497 preferredAudioAssetType];
                    self->_loadedAudioAssetType = [v485 audioAssetType];
                    self->_downloadedAsset = [v485 isDownloadedAsset];
                    if (v492)
                    {
                      v345 = 1;
                    }

                    else
                    {
                      v345 = [(MPCModelGenericAVItem *)self isHLSAsset];
                    }

                    self->_allowsAirPlayFromCloud = v345;
                    self->_isMusicCellularStreamingAllowed = v284;
                    self->_isSubscriptionPolicyContent = v461;
                    v346 = [MEMORY[0x1E696AD98] numberWithInteger:v481];
                    [v514 setObject:v346 forKeyedSubscript:@"item-asset-endpoint-type"];

                    v347 = [MEMORY[0x1E696AD98] numberWithBool:v510 != 0];
                    [v514 setObject:v347 forKeyedSubscript:@"item-asset-is-delegated-playback"];

                    v348 = [MEMORY[0x1E696AD98] numberWithBool:v461];
                    [v514 setObject:v348 forKeyedSubscript:@"item-asset-is-subscription-content"];

                    v349 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v485, "source")}];
                    [v514 setObject:v349 forKeyedSubscript:@"item-asset-source"];

                    v350 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v485, "assetProtectionType")}];
                    [v514 setObject:v350 forKeyedSubscript:@"item-asset-protection-type"];

                    [v514 setObject:v490 forKeyedSubscript:@"item-asset-url"];
                    v351 = [v485 assetURL];
                    v352 = [v351 isFileURL];

                    if (v352)
                    {
                      v353 = MEMORY[0x1E696AD98];
                      if ([v485 isDownloadedAsset])
                      {
                        v354 = 3;
                      }

                      else
                      {
                        v354 = 1;
                      }

                      v355 = [v353 numberWithInteger:v354];
                      [v514 setObject:v355 forKeyedSubscript:@"item-asset-location"];

                      v356 = [v485 assetURL];
                      v357 = [MEMORY[0x1E696AC08] defaultManager];
                      v358 = [v356 path];
                      v359 = [v357 attributesOfItemAtPath:v358 error:0];

                      v360 = [v359 fileModificationDate];
                      v361 = v360;
                      if (v360)
                      {
                        v362 = v360;
                      }

                      else
                      {
                        v362 = [v359 fileCreationDate];
                      }

                      if (v362)
                      {
                        v363 = MEMORY[0x1E696AD98];
                        [v362 timeIntervalSinceNow];
                        v365 = [v363 numberWithDouble:-v364];
                        [v514 setObject:v365 forKeyedSubscript:@"item-asset-cache-age"];
                      }
                    }

                    else
                    {
                      [v514 setObject:&unk_1F4599340 forKeyedSubscript:@"item-asset-location"];
                    }

                    v366 = [v469 mpc_loggingIdentifier];
                    [v514 setObject:v366 forKeyedSubscript:@"player-item-identifier"];

                    v367 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v485, "audioAssetType")}];
                    [v514 setObject:v367 forKeyedSubscript:@"item-asset-type"];

                    v368 = +[MPCPlaybackPerformanceController sharedController];
                    v369 = [v368 experimentID];
                    [v514 setObject:v369 forKeyedSubscript:@"experiment-id"];

                    v370 = [v368 treatmentID];
                    [v514 setObject:v370 forKeyedSubscript:@"experiment-treatment-id"];

                    v371 = [v368 deploymentID];
                    [v514 setObject:v371 forKeyedSubscript:@"experiment-deployment-id"];

                    [(MPCModelGenericAVItem *)self _emitAudioAssetTypeSelection:self->_preferredAudioAssetTypeSelection assetLoadInfo:v514];
                    v372 = _MPCLogCategoryAnalytics();
                    v373 = v372;
                    if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v372))
                    {
                      *v655 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v373, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetCreateAVPlayerItem", " enableTelemetry=YES ", v655, 2u);
                    }

                    v374 = v485;
                    v375 = [v485 suzeLeaseID];
                    v376 = v480;
                    v377 = v457;
                    v378 = v375;
                    if (!v375)
                    {
LABEL_479:
                      if ([v374 isHLSAsset])
                      {
                        if (v377)
                        {
                          if (!v376)
                          {
                            goto LABEL_487;
                          }
                        }

                        else
                        {
                          v401 = v454;
                          if (!v376)
                          {
                            v401 = 0;
                          }

                          if (!v401)
                          {
                            goto LABEL_487;
                          }
                        }

                        v402 = v378;
                        objc_initWeak(v655, self);
                        v403 = MEMORY[0x1E696AEC0];
                        v404 = [(MPCModelGenericAVItem *)self contentItemID];
                        v405 = [v403 stringWithFormat:@"HLSDownload:%@", v404];

                        v406 = [MPCNonZeroEffectiveRateTask alloc];
                        v407 = [(MPCModelGenericAVItem *)self playerItem];
                        v408 = MEMORY[0x1E69E96A0];
                        v521[0] = MEMORY[0x1E69E9820];
                        v521[1] = 3221225472;
                        v521[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_269;
                        v521[3] = &unk_1E8234010;
                        objc_copyWeak(&v530, v655);
                        v522 = v480;
                        v523 = objc;
                        v524 = v497;
                        v525 = v485;
                        v526 = 0;
                        v527 = v502;
                        v529 = &v615;
                        v528 = v493;
                        v409 = [(MPCNonZeroEffectiveRateTask *)v406 initWithPlayerItem:v407 identifier:v405 timeout:MEMORY[0x1E69E96A0] queue:v521 block:0.0];
                        deferredHLSDownloadTask = self->_deferredHLSDownloadTask;
                        self->_deferredHLSDownloadTask = v409;

                        objc_destroyWeak(&v530);
                        objc_destroyWeak(v655);
                        v378 = v402;
                      }

LABEL_487:

                      goto LABEL_488;
                    }

                    v482 = v375;
                    v379 = [(MPCModelGenericAVItem *)self eventStream];
                    v380 = _MPCLogCategoryPlayback();
                    if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
                    {
                      v381 = [v379 engineID];
                      *v655 = 138543618;
                      *&v655[4] = v381;
                      *&v655[12] = 2114;
                      *&v655[14] = self;
                      _os_log_impl(&dword_1C5C61000, v380, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Starting Suze lease session...", v655, 0x16u);
                    }

                    v382 = _MPCLogCategoryAnalytics();
                    v383 = v382;
                    if (v509 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v382))
                    {
                      *v655 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v383, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetSuzeLeaseSession", "", v655, 2u);
                    }

                    *v655 = 0;
                    *&v655[8] = v655;
                    *&v655[16] = 0x3032000000;
                    *v656 = __Block_byref_object_copy__12470;
                    *&v656[8] = __Block_byref_object_dispose__12471;
                    *&v656[16] = 0;
                    *v649 = 0;
                    *&v649[8] = v649;
                    *&v649[16] = 0x3032000000;
                    v650 = __Block_byref_object_copy__12470;
                    v651 = __Block_byref_object_dispose__12471;
                    v652 = 0;
                    v384 = dispatch_semaphore_create(0);
                    v385 = [objc_alloc(MEMORY[0x1E69E4640]) initWithRequestContext:v502 leaseID:v482 mediaType:{-[MPCModelGenericAVItem _suzeLeaseMediaType](self, "_suzeLeaseMediaType")}];
                    v386 = +[MPCSuzeLeaseSessionController sharedController];
                    v532[0] = MEMORY[0x1E69E9820];
                    v532[1] = 3221225472;
                    v532[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_260;
                    v532[3] = &unk_1E8233FE8;
                    v535 = v655;
                    v534 = v649;
                    v532[4] = self;
                    v387 = v384;
                    v533 = v387;
                    [v386 startLeaseSessionWithConfiguration:v385 completion:v532];
                    v388 = dispatch_time(0, 1000000000 * *(&v624 + 1));
                    if (dispatch_semaphore_wait(v387, v388))
                    {
                      v389 = _MPCLogCategoryPlayback();
                      if (os_log_type_enabled(v389, OS_LOG_TYPE_ERROR))
                      {
                        v390 = *(*&v655[8] + 40);
                        *v643 = 138543874;
                        v644 = self;
                        v645 = 2114;
                        v646 = v390;
                        v647 = 2048;
                        v648 = *(&v624 + 1);
                        _os_log_impl(&dword_1C5C61000, v389, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out creating Suze lease session: %{public}@ [request aborted after %lds].", v643, 0x20u);
                      }
                    }

                    else
                    {
                      v391 = *(*&v649[8] + 40);
                      if (v391)
                      {
                        objc_storeStrong(&self->_suzeLeaseSession, v391);
                        v392 = [MEMORY[0x1E696AD88] defaultCenter];
                        [v392 addObserver:self selector:sel__suzeLeaseSessionRenewDidFailNotification_ name:@"MPCSuzeLeaseSessionControllerLeaseSessionRenewDidFailNotification" object:v386];

                        v393 = MEMORY[0x1E69E96A0];
                        v394 = MEMORY[0x1E69E96A0];
                        block[0] = MEMORY[0x1E69E9820];
                        block[1] = 3221225472;
                        block[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2_264;
                        block[3] = &unk_1E8239298;
                        block[4] = self;
                        dispatch_async(v393, block);

                        goto LABEL_475;
                      }

                      v389 = _MPCLogCategoryPlayback();
                      if (os_log_type_enabled(v389, OS_LOG_TYPE_ERROR))
                      {
                        v398 = *(*&v655[8] + 40);
                        *v643 = 138543618;
                        v644 = self;
                        v645 = 2114;
                        v646 = v398;
                        _os_log_impl(&dword_1C5C61000, v389, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Failed to create suze lease with error: %{public}@.", v643, 0x16u);
                      }
                    }

LABEL_475:
                    v399 = _MPCLogCategoryAnalytics();
                    v400 = v399;
                    if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v399))
                    {
                      *v643 = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v400, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetSuzeLeaseSession", " enableTelemetry=YES ", v643, 2u);
                    }

                    _Block_object_dispose(v649, 8);
                    _Block_object_dispose(v655, 8);

                    v374 = v485;
                    v376 = v480;
                    v378 = v482;
                    v377 = v457;
                    goto LABEL_479;
                  }

                  v488 = [(MPCModelGenericAVItem *)self eventStream];
                  v204 = _MPCLogCategoryPlayback();
                  if (!os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_330;
                  }

                  v208 = [v488 engineID];
                  *v655 = 138543618;
                  *&v655[4] = v208;
                  *&v655[12] = 2114;
                  *&v655[14] = self;
                  v207 = v204;
                  _os_log_impl(&dword_1C5C61000, v204, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Not subscription content, skipping playback key check.", v655, 0x16u);
                }

                v204 = v207;
                goto LABEL_330;
              }
            }

            else if (v481 == 2)
            {
              v176 = [v497 itemIdentifiers];
              v177 = [v176 personalizedStore];
              v178 = [v177 cloudID];

              if (v178)
              {
                v179 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v178];
                v180 = @"match";
                goto LABEL_233;
              }
            }

            v179 = 0;
            goto LABEL_243;
          }

          v162 = [v502 userAgent];
          if (v162)
          {
            v163 = v616[5];
            v164 = [v485 assetURL];
            LOBYTE(v163) = [v163 isTrustedHostForURL:v164];

            if ((v163 & 1) != 0 || (v165 = objc_alloc(MEMORY[0x1E69E4588]), [v502 clientInfo], v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v165, "initWithClientInfo:", v166), objc_msgSend(v167, "userAgent"), v168 = objc_claimAutoreleasedReturnValue(), v162, v167, v166, (v162 = v168) != 0))
            {
              v653 = *MEMORY[0x1E69E41B0];
              v654 = v162;
              v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
              [v496 setObject:v169 forKey:*MEMORY[0x1E6987B80]];
            }
          }

          if (v471)
          {
            v170 = MEMORY[0x1E6987B90];
          }

          else
          {
            if (self->_radioStreamPlayback)
            {
              goto LABEL_221;
            }

            if (CFPreferencesGetAppBooleanValue(@"DisableOptimizeAccessForLinearMoviePlayback", @"com.apple.mobileipod", 0))
            {
              v171 = [(MPCModelGenericAVItem *)self eventStream];
              v172 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
                v173 = [v171 engineID];
                *v655 = 138543618;
                *&v655[4] = v173;
                *&v655[12] = 2114;
                *&v655[14] = self;
                _os_log_impl(&dword_1C5C61000, v172, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: not enabling AVURLAssetOptimizeAccessForLinearMoviePlaybackKey because its disabled in settings", v655, 0x16u);
              }

              goto LABEL_221;
            }

            v170 = MEMORY[0x1E6987BA0];
          }

          [v496 setObject:MEMORY[0x1E695E118] forKey:*v170];
LABEL_221:

          goto LABEL_222;
        }

LABEL_519:

        goto LABEL_520;
      }

      v71 = _MPCLogCategoryAnalytics();
      v72 = v71;
      if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v72, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetHomeSharingLoadOperation", "", buf, 2u);
      }

      v73 = objc_alloc_init(MPCModelGenericAVItemHomeSharingLoadOperation);
      [(MPCModelGenericAVItemHomeSharingLoadOperation *)v73 setAssetLoadProperties:v497];
      v74 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v658 = __Block_byref_object_copy__12470;
      *v659 = __Block_byref_object_dispose__12471;
      *&v659[8] = 0;
      *v655 = 0;
      *&v655[8] = v655;
      *&v655[16] = 0x3032000000;
      *v656 = __Block_byref_object_copy__12470;
      *&v656[8] = __Block_byref_object_dispose__12471;
      *&v656[16] = 0;
      v577[0] = MEMORY[0x1E69E9820];
      v577[1] = 3221225472;
      v577[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_120;
      v577[3] = &unk_1E8233E30;
      v579 = buf;
      v580 = v655;
      v75 = v74;
      v578 = v75;
      [(MPCModelGenericAVItemHomeSharingLoadOperation *)v73 setResponseHandler:v577];
      [v483 addOperation:v73];
      v76 = dispatch_time(0, 1000000000 * v622);
      if (dispatch_semaphore_wait(v75, v76))
      {
        [(MPAsyncOperation *)v73 cancel];
        v77 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *v649 = 138543618;
          *&v649[4] = self;
          *&v649[12] = 2048;
          *&v649[14] = v622;
          _os_log_impl(&dword_1C5C61000, v77, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out while attempting to load home sharing asset [request aborted after %lds].", v649, 0x16u);
        }

        v78 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out while attempting to load home sharing asset"];
        (*(v507 + 2))(v507, v78);
      }

      else
      {
        v79 = *(*&buf[8] + 40);

        (*(v507 + 2))(v507, *(*&v655[8] + 40));
        if (!v79)
        {
          v485 = 0;
LABEL_82:
          v82 = _MPCLogCategoryAnalytics();
          v83 = v82;
          if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
          {
            *v649 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5C61000, v83, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetHomeSharingLoadOperation", " enableTelemetry=YES ", v649, 2u);
          }

          _Block_object_dispose(v655, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_86;
        }

        v78 = [(MPCModelGenericAVItem *)self eventStream];
        v80 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [v78 engineID];
          *v649 = 138543618;
          *&v649[4] = v81;
          *&v649[12] = 2114;
          *&v649[14] = self;
          v486 = v81;
          _os_log_impl(&dword_1C5C61000, v80, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Using home sharing asset.", v649, 0x16u);
        }

        v485 = v79;
      }

      goto LABEL_82;
    }

    if (v510)
    {
      v476 = 0;
      v485 = 0;
      goto LABEL_67;
    }

    v60 = _MPCLogCategoryAnalytics();
    v61 = v60;
    if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v61, OS_SIGNPOST_INTERVAL_BEGIN, spid, "LoadAssetLocalFileLoadOperation", "", buf, 2u);
    }

    v57 = [[MPCModelGenericAVItemLocalFileLoadOperation alloc] initWithEvaluation:v493 properties:v497];
    [(MPCModelGenericAVItemLocalFileLoadOperation *)v57 setRequirePreferredAssetQuality:1];
    v62 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v658 = __Block_byref_object_copy__12470;
    *v659 = __Block_byref_object_dispose__12471;
    *&v659[8] = 0;
    *v655 = 0;
    *&v655[8] = v655;
    *&v655[16] = 0x3032000000;
    *v656 = __Block_byref_object_copy__12470;
    *&v656[8] = __Block_byref_object_dispose__12471;
    *&v656[16] = 0;
    v581[0] = MEMORY[0x1E69E9820];
    v581[1] = 3221225472;
    v581[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_114;
    v581[3] = &unk_1E8233E30;
    v583 = buf;
    v584 = v655;
    v58 = v62;
    v582 = v58;
    [(MPCModelGenericAVItemLocalFileLoadOperation *)v57 setResponseHandler:v581];
    [v483 addOperation:v57];
    v63 = dispatch_time(0, 1000000000 * *(&v621 + 1));
    if (dispatch_semaphore_wait(v58, v63))
    {
      [(MPAsyncOperation *)v57 cancel];
      v64 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *v649 = 138543618;
        *&v649[4] = self;
        *&v649[12] = 2048;
        *&v649[14] = *(&v621 + 1);
        _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Timed out while attempting to load local file of specified quality [request aborted after %lds].", v649, 0x16u);
      }

      v65 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:@"Timed out while attempting to load local file of specified quality"];
      (*(v507 + 2))(v507, v65);
      v485 = 0;
    }

    else
    {
      v66 = *(*&buf[8] + 40);
      (*(v507 + 2))(v507, *(*&v655[8] + 40));
      v485 = v66;
      if (!v66)
      {
        v485 = 0;
LABEL_62:
        v69 = _MPCLogCategoryAnalytics();
        v70 = v69;
        if (v509 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
        {
          *v649 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v70, OS_SIGNPOST_INTERVAL_END, spid, "LoadAssetLocalFileLoadOperation", " enableTelemetry=YES ", v649, 2u);
        }

        _Block_object_dispose(v655, 8);
        _Block_object_dispose(buf, 8);

        v476 = 0;
        goto LABEL_66;
      }

      v65 = [(MPCModelGenericAVItem *)self eventStream];
      v67 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v477 = [v65 engineID];
        v68 = [v485 assetURL];
        *v649 = 138543874;
        *&v649[4] = v477;
        *&v649[12] = 2114;
        *&v649[14] = self;
        *&v649[22] = 2114;
        v650 = v68;
        _os_log_impl(&dword_1C5C61000, v67, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: Using local file asset at path: %{public}@.", v649, 0x20u);
      }
    }

    goto LABEL_62;
  }

  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = [(MPCModelGenericAVItem *)self itemError];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v32;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Returning asset load early with error: %{public}@", buf, 0x16u);
  }

LABEL_523:
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = *&v1[*MEMORY[0x1E6970A60]];
  v5 = [v1 itemError];
  (*(v2 + 16))(v2, v4, v5);
}

uint64_t __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2(uint64_t a1, unsigned int a2)
{
  result = [*(a1 + 32) isCancelled];
  if (result)
  {
    result = [*(a1 + 40) disarm];
    if (result)
    {
      v5 = *(a1 + 48);
      v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"Asset load task cancelled at line %ld", a2}];
      (*(v5 + 16))(v5, 0, v6);

      return 1;
    }
  }

  return result;
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(v4 + 8) + 40);
  if (v5)
  {
    v6 = v5 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v5 msv_errorByUnwrappingDomain:@"MPCError" code:24];

    v4 = *(a1 + 40);
    if (!v7)
    {
      [*(a1 + 32) addObject:*(*(v4 + 8) + 40)];
      v4 = *(a1 + 40);
    }
  }

  v8 = *(v4 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[AL][Bag Loading] - %{public}@: Failed to load the bag. err=%{public}@.", &v15, 0x16u);
    }

    [*(a1 + 40) addObject:v9];
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  [*(a1 + 32) _emitNetworkOperationWithPerformanceMetrics:v8 operationType:0 reason:@"Loading asset" blocksPlayback:{objc_msgSend(*(a1 + 32), "isStartItem")}];
  dispatch_semaphore_signal(*(a1 + 48));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_96(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = [*(a1 + 32) eventStream];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      v6 = [v3 engineID];
      v7 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Subscription lease properties already loaded.", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [v3 engineID];
      v9 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Loading subscription lease properties.", buf, 0x16u);
    }

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v11 = v10;
    v12 = *(a1 + 72);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadAssetGetSubscriptionLeaseProperties", "", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v13 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__12470;
    v56 = __Block_byref_object_dispose__12471;
    v57 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__12470;
    v46 = __Block_byref_object_dispose__12471;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__12470;
    v40 = __Block_byref_object_dispose__12471;
    v41 = 0;
    v14 = *(a1 + 32);
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_97;
    v31 = &unk_1E8233DE0;
    v33 = &v42;
    v34 = buf;
    v35 = &v36;
    v3 = v13;
    v32 = v3;
    [v14 _getSubscriptionLeasePropertiesWithCompletion:&v28];
    v15 = dispatch_time(0, 1000000000 * *(a1 + 80));
    if (dispatch_semaphore_wait(v3, v15))
    {
      v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:14 debugDescription:{@"Timed out loading subscription lease properties", v28, v29, v30, v31}];
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *v48 = 138543362;
        v49 = v20;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Timed out loading subscription lease properties.", v48, 0xCu);
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v43[5]);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*&buf[8] + 40));
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v37[5]);
      v19 = [*(a1 + 32) eventStream];
      v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v19 engineID];
        v23 = *(a1 + 32);
        v24 = *(*(*(a1 + 64) + 8) + 40);
        *v48 = 138543874;
        v49 = v22;
        v50 = 2114;
        v51 = v23;
        v52 = 2114;
        v53 = v24;
        _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Finished loading subscription lease properties error=%{public}@.", v48, 0x20u);
      }
    }

    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v26 = v25;
    v27 = *(a1 + 72);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v48 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v26, OS_SIGNPOST_INTERVAL_END, v27, "LoadAssetGetSubscriptionLeaseProperties", " enableTelemetry=YES ", v48, 2u);
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(buf, 8);
  }
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_131(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v15 = v7;
  v11 = a3;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  [*(a1 + 32) _emitNetworkOperationWithPerformanceMetrics:v11 operationType:2 reason:@"Loading asset" blocksPlayback:{objc_msgSend(*(a1 + 32), "isStartItem")}];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_137(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v15 = v7;
  v11 = a3;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  [*(a1 + 32) _emitNetworkOperationWithPerformanceMetrics:v11 operationType:3 reason:@"Loading asset" blocksPlayback:{objc_msgSend(*(a1 + 32), "isStartItem")}];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_168(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Finished reload of FairPlay key status: %{public}@ with error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    v7 = [*(a1 + 32) eventStream];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 engineID];
      v11 = *(a1 + 32);
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Finished reload of FairPlay key status: %{public}@", &v15, 0x20u);
    }
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_171(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 _emitNetworkOperationWithPerformanceMetrics:v9 operationType:4 reason:@"Loading asset" blocksPlayback:{objc_msgSend(v7, "isStartItem")}];

  v11 = [MEMORY[0x1E696ABC0] errorForICError:v8 response:v10];

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) eventStream];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 engineID];
    v17 = *(a1 + 32);
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v20 = 138543874;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL][Lease] - %{public}@: loadAssetAndPlayerItem - Finished subscription lease request for playback keys with error: %{public}@.", &v20, 0x20u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_212(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v10 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Full subscription asset loading completed [first asset requires online keys]", &v13, 0xCu);
  }

  [*(a1 + 32) _emitNetworkOperationWithPerformanceMetrics:v10 operationType:2 reason:@"Loading full subscription asset [first asset requires online keys]" blocksPlayback:0];
  if (*(a1 + 64) == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_216(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v7 = [*(a1 + 32) assetCacheProvider];
  [v7 didCacheNewAssetToDestinationURL:*(a1 + 40)];

  if (!a2 || ![WeakRetained _linkAssetIfNeededAtURL:*(a1 + 40) toDestinationURL:*(a1 + 48) shareCacheURL:*(a1 + 56)])
  {
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = WeakRetained;
      v36 = 2114;
      v37 = v5;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: [Asset caching: CRABS] Asset download completed with error: %{public}@", buf, 0x16u);
    }

    v17 = 0;
    goto LABEL_15;
  }

  v8 = [WeakRetained eventStream];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 engineID];
    *buf = 138543618;
    v35 = v10;
    v36 = 2114;
    v37 = WeakRetained;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Asset download completed successfully.", buf, 0x16u);
  }

  if (*(a1 + 136) == 1 && *(a1 + 64))
  {
    v11 = [WeakRetained eventStream];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 engineID];
      v14 = *(a1 + 64);
      *buf = 138543874;
      v35 = v13;
      v36 = 2114;
      v37 = WeakRetained;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Writing placeholder purchase bundle at path: %{public}@", buf, 0x20u);
    }

    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:&unk_1F4599A88 format:200 options:0 error:0];
    v16 = v15;
    if (v15)
    {
      [v15 writeToURL:*(a1 + 64) options:0 error:0];
    }

    v17 = 1;
LABEL_15:

    goto LABEL_16;
  }

  v17 = 1;
LABEL_16:
  if (_MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueueOnceToken != -1)
  {
    dispatch_once(&_MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueueOnceToken, &__block_literal_global_12946);
  }

  v18 = _MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2_224;
  v22[3] = &unk_1E8233F30;
  v32 = v17;
  v33 = *(a1 + 136);
  v29 = *(a1 + 88);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v30 = *(a1 + 104);
  v23 = v20;
  v24 = WeakRetained;
  v25 = *(a1 + 64);
  v26 = *(a1 + 48);
  v31 = *(a1 + 120);
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  v21 = WeakRetained;
  dispatch_group_notify(v19, v18, v22);
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_260(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v15 = v7;
  v11 = a3;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  [*(a1 + 32) _emitNetworkOperationWithPerformanceMetrics:v11 operationType:5 reason:@"Loading asset" blocksPlayback:{objc_msgSend(*(a1 + 32), "isStartItem")}];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_269(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v6 = WeakRetained[546];
    v7 = [WeakRetained eventStream];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6 == 1)
    {
      if (v9)
      {
        v10 = [v7 engineID];
        *buf = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS][ELC] Did not start download to cache because the player item is missing edit list", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v11 = [v7 engineID];
        v12 = *(a1 + 32);
        *buf = 138543874;
        v14 = v11;
        v15 = 2114;
        v16 = v5;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Initiating download to destination file %{public}@", buf, 0x20u);
      }

      [v5 _downloadHLSAssetWhilePlaying:*(a1 + 40) assetLoadProperties:*(a1 + 48) assetLoadResult:*(a1 + 56) destinationURL:*(a1 + 32) sharedCacheURL:*(a1 + 64) storeRequestContext:*(a1 + 72) urlBag:*(*(*(a1 + 88) + 8) + 40) fileUpgradeRecommendation:{objc_msgSend(*(a1 + 80), "recommendation")}];
    }
  }
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2_224(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 121) != 1)
    {
LABEL_29:
      if (!*(a1 + 48) || !*(*(*(a1 + 96) + 8) + 40))
      {
        v54 = 0;
LABEL_42:
        v59 = objc_alloc(MEMORY[0x1E6970660]);
        v60 = objc_alloc(MEMORY[0x1E6970550]);
        v61 = [MEMORY[0x1E6970668] identityKind];
        v62 = [v60 initWithSource:@"ModelGenericAVItem" modelKind:v61 block:&__block_literal_global_240];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2_241;
        v69[3] = &unk_1E8233F08;
        v70 = *(a1 + 56);
        v72 = *(a1 + 104);
        v73 = v54;
        v71 = *(a1 + 48);
        v63 = [v59 initWithIdentifiers:v62 block:v69];

        dispatch_suspend(_MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueue);
        v64 = [*(a1 + 64) assetCacheProvider];
        v65 = [*(a1 + 64) genericObject];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_3;
        v67[3] = &unk_1E8238800;
        v68 = *(a1 + 40);
        [v64 setPlaybackAssetCacheFileAsset:v63 forGenericObject:v65 withCompletionHandler:v67];

        v10 = v70;
        goto LABEL_43;
      }

      v44 = [MEMORY[0x1E696AC08] defaultManager];
      v45 = [*(a1 + 56) path];
      v46 = [v44 fileExistsAtPath:v45];

      v47 = [*(a1 + 40) eventStream];
      v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (v46)
      {
        if (v49)
        {
          v50 = [v47 engineID];
          v51 = *(a1 + 40);
          v52 = *(a1 + 48);
          *buf = 138543874;
          v75 = v50;
          v76 = 2114;
          v77 = v51;
          v78 = 2114;
          v79 = v52;
          _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Writing purchase bundle at path: %{public}@", buf, 0x20u);
        }

        v53 = [MEMORY[0x1E696AE40] dataWithPropertyList:*(*(*(a1 + 96) + 8) + 40) format:200 options:0 error:0];
        v47 = v53;
        if (v53)
        {
          v54 = [v53 writeToURL:*(a1 + 48) options:0 error:0];
LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
        if (v49)
        {
          v55 = [v47 engineID];
          v57 = *(a1 + 48);
          v56 = *(a1 + 56);
          v58 = *(a1 + 40);
          *buf = 138544130;
          v75 = v55;
          v76 = 2114;
          v77 = v58;
          v78 = 2114;
          v79 = v56;
          v80 = 2114;
          v81 = v57;
          _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Not writing purchase bundle [asset no longer on disk] assetPath = %{public}@ purchaseBundlePath = %{public}@", buf, 0x2Au);
        }
      }

      v54 = 0;
      goto LABEL_41;
    }

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v2 = *(*(a1 + 96) + 8);
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;

      v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v6 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138543618;
        v75 = v5;
        v76 = 2114;
        v77 = v6;
        _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: [Asset caching: CRABS] Failed to load full subscription asset: %{public}@.", buf, 0x16u);
      }

      goto LABEL_28;
    }

    v4 = [*(*(*(a1 + 88) + 8) + 40) assetURL];
    v18 = [v4 host];
    v19 = [*(a1 + 32) host];
    v20 = [v18 isEqual:v19];

    v21 = [v4 path];
    v22 = [*(a1 + 32) path];
    v23 = [v21 isEqual:v22];

    if (v20)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = *(*(a1 + 96) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;

      v31 = [*(a1 + 32) host];
      v32 = [v4 host];
      if (v23)
      {
        v27 = @"host mismatch";
      }

      else
      {
        v41 = [*(a1 + 32) path];

        v42 = [v4 path];

        v27 = @"path mismatch";
        v32 = v42;
        v31 = v41;
      }

      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v43 = *(a1 + 40);
      *buf = 138544130;
      v75 = v43;
      v76 = 2114;
      v77 = v27;
      v78 = 2114;
      v79 = v31;
      v80 = 2114;
      v81 = v32;
      v37 = "[AL] - %{public}@: [Asset caching: CRABS] Ignoring full subscription asset purchase bundle [%{public}@] expected=%{public}@ loaded=%{public}@";
      v38 = v34;
      v39 = OS_LOG_TYPE_ERROR;
      v40 = 42;
    }

    else
    {
      v28 = [*(*(*(a1 + 88) + 8) + 40) purchaseBundleDictionary];
      v29 = *(*(a1 + 96) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v31 = [*(a1 + 40) eventStream];
      v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v34 = [v31 engineID];
      v35 = *(a1 + 40);
      v36 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138543874;
      v75 = v34;
      v76 = 2114;
      v77 = v35;
      v78 = 2112;
      v79 = v36;
      v37 = "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Loaded full subscription asset, updated purchaseBundle = %@";
      v38 = v32;
      v39 = OS_LOG_TYPE_DEFAULT;
      v40 = 32;
    }

    _os_log_impl(&dword_1C5C61000, v38, v39, v37, buf, v40);
LABEL_26:

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *(a1 + 72);
  v66 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v66];
  v10 = v66;

  if (v9)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      *buf = 138543618;
      v75 = v12;
      v76 = 2114;
      v77 = v13;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: [Asset caching: CRABS] Removed incomplete download at URL: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [*(a1 + 40) eventStream];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v11 engineID];
      v16 = *(a1 + 40);
      v17 = *(a1 + 72);
      *buf = 138544130;
      v75 = v15;
      v76 = 2114;
      v77 = v16;
      v78 = 2114;
      v79 = v17;
      v80 = 2114;
      v81 = v10;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]-[AL] - %{public}@: [Asset caching: CRABS] Failed to remove incomplete downloaded file at URL: %{public}@ error: %{public}@.", buf, 0x2Au);
    }
  }

LABEL_43:
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_2_241(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) relativePath];
  [v5 setFilePath:v3];

  [v5 setQualityType:*(a1 + 48)];
  [v5 setNonPurgeable:0];
  [v5 setProtectionType:*(a1 + 56)];
  if (*(a1 + 64))
  {
    v4 = [*(a1 + 40) relativePath];
    [v5 setPurchaseBundleFilePath:v4];
  }

  else
  {
    [v5 setPurchaseBundleFilePath:0];
  }

  [v5 setTraits:0];
  [v5 setHLSKeyServerURL:&stru_1F454A698];
  [v5 setHLSKeyServerProtocol:&stru_1F454A698];
  [v5 setHLSKeyCertificateURL:&stru_1F454A698];
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      v7 = "[AL] - %{public}@: [Asset caching: CRABS] Error caching file asset: %{public}@.";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    v7 = "[AL] - %{public}@: [Asset caching: CRABS] Finished caching file asset.";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  dispatch_resume(_MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueue);
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_222()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.sCompletionSerialQueue", v2);
  v1 = _MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueue;
  _MPCModeliTunesStoreContentPurchasedMediaKindSong_block_invoke_sCompletionSerialQueue = v0;
}

void __67__MPCModelGenericAVItem_loadAssetAndPlayerItemWithTask_completion___block_invoke_97(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (float)_volumeAdjustment
{
  os_unfair_lock_lock_with_options();
  v3 = 1.0;
  if ([(MPModelGenericObject *)self->_flattenedGenericObject type]== 1)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
    [v4 volumeAdjustment];
    v3 = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_loudnessInfoMediaKind
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  switch(v3)
  {
    case 9:
      v8 = MEMORY[0x1E698DA90];
      goto LABEL_9;
    case 6:
      v8 = MEMORY[0x1E698DAA8];
LABEL_9:
      v7 = *v8;
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
      v5 = [v4 hasVideo];
      v6 = MEMORY[0x1E698DAA0];
      if (!v5)
      {
        v6 = MEMORY[0x1E698DA98];
      }

      v7 = *v6;

      break;
    default:
      v7 = 0;
      break;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (MPGaplessInfo)gaplessInfo
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
    v4 = [v3 gaplessInfo];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)_iTunesStorePurchasedMediaKind
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  switch(v3)
  {
    case 9:
      v9 = @"movie";
      break;
    case 6:
      v9 = @"tvshow";
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
      v5 = [v4 isArtistUploadedContent];
      v6 = [v4 hasVideo];
      v7 = @"uploadedaudio";
      if (v6)
      {
        v7 = @"uploadedvideo";
      }

      v8 = @"musicvideo";
      if (!v6)
      {
        v8 = @"music";
      }

      if (v5)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      break;
    default:
      v9 = 0;
      break;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (int64_t)_suzeLeaseMediaType
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedGenericObject type];
  switch(v3)
  {
    case 9:
      v6 = 2;
      break;
    case 6:
      v6 = 7;
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedGenericObject song];
      v5 = [v4 hasVideo];

      if (v5)
      {
        v6 = 6;
      }

      else
      {
        v6 = 1;
      }

      break;
    default:
      v6 = 1;
      break;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)_assetLoadPropertiesWithUserIdentityProperties:(id)a3 delegatedUserIdentityProperties:(id)a4 subscriptionPlaybackInfo:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_assetCacheProvider;
  radioPlayback = self->_radioPlayback;
  os_unfair_lock_lock_with_options();
  v12 = self->_genericObject;
  v13 = self->_flattenedGenericObject;
  os_unfair_lock_unlock(&self->_lock);
  v43 = [(MPCModelGenericAVItem *)self hasVideo];
  v14 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
  v15 = [v14 preferredAudioAssetTypeForItem:self];

  v16 = [(MPModelGenericObject *)v13 type];
  v41 = v15;
  v42 = v13;
  switch(v16)
  {
    case 9:
      v23 = [(MPModelGenericObject *)v13 movie];
      goto LABEL_14;
    case 6:
      v23 = [(MPModelGenericObject *)v13 tvEpisode];
LABEL_14:
      v17 = v23;
      v44 = [v23 localFileAsset];
      v47 = [v17 storeAsset];
      v45 = [v17 identifiers];
      v46 = 0;
      v18 = 0;
      v22 = 0;
LABEL_15:

      goto LABEL_17;
    case 1:
      v17 = [(MPModelGenericObject *)v13 song];
      v46 = [v17 homeSharingAsset];
      v44 = [v17 localFileAsset];
      v47 = [v17 storeAsset];
      v45 = [v17 identifiers];
      v18 = [v15 type];
      v19 = MSVDeviceIsAudioAccessory() & v43;
      v20 = 3;
      if (v18 != 1)
      {
        v20 = v18 == 0;
      }

      if ((v18 - 2) >= 4)
      {
        v21 = v20;
      }

      else
      {
        v21 = 2;
      }

      if (v19)
      {
        v22 = 3;
      }

      else
      {
        v22 = v21;
      }

      goto LABEL_15;
  }

  v18 = 0;
  v22 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
LABEL_17:
  v24 = [(MPCModelGenericAVItem *)self eventStream];
  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v12;
    v37 = v8;
    v38 = v10;
    v39 = v9;
    v26 = [v24 engineID];
    v27 = v11;
    if ((v18 - 1) > 4)
    {
      v28 = @"Unspecified";
    }

    else
    {
      v28 = off_1E82347D8[v18 - 1];
    }

    v29 = off_1E82347B8[v22];
    v30 = [(MPCModelGenericAVItem *)self audioAssetTypeSelector];
    *buf = 138544898;
    v49 = v26;
    v50 = 2114;
    v51 = self;
    v52 = 2114;
    v53 = v28;
    v54 = 2114;
    v55 = v29;
    v56 = 2114;
    v57 = v30;
    v58 = 2114;
    v59 = v44;
    v60 = 2114;
    v61 = v47;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] Creating assetLoadProperties - %{public}@: Preferred audio: %{public}@ - HLSContentPolicy: %{public}@ - Selector: %{public}@, fileAsset=%{public}@, storeAsset=%{public}@", buf, 0x48u);

    v8 = v37;
    v10 = v38;
    v9 = v39;
    v11 = v27;
    v12 = v36;
  }

  v31 = objc_alloc_init(MPCModelGenericAVItemAssetLoadProperties);
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setPreferredAudioAssetType:v18];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setAudioAssetTypeSelection:v41];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setHLSContentPolicy:v22];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setPrefersVideoContent:v43];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setAssetCacheProvider:v11];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setFileAsset:v44];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setGenericObject:v12];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setItemIdentifiers:v45];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setPrefersHighQualityContent:[(MPCModelGenericAVItem *)self _prefersHighQualityContent]];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setRadioPlayback:radioPlayback];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setStoreAsset:v47];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setHomeSharingAsset:v46];
  v32 = [v8 DSID];
  -[MPCModelGenericAVItemAssetLoadProperties setAccountID:](v31, "setAccountID:", [v32 unsignedLongLongValue]);

  v33 = [v8 storefrontIdentifier];
  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setStorefrontID:v33];

  if (v9)
  {
    v34 = [v9 DSID];
    -[MPCModelGenericAVItemAssetLoadProperties setDelegatedAccountID:](v31, "setDelegatedAccountID:", [v34 unsignedLongLongValue]);
  }

  [(MPCModelGenericAVItemAssetLoadProperties *)v31 setSupportsVocalAttenuation:[(MPCModelGenericAVItem *)self supportsVocalAttenuation]];

  return v31;
}

- (BOOL)_prefersHighQualityContent
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  v4 = [v3 networkType];

  v5 = [MEMORY[0x1E69E4428] sharedMonitor];
  v6 = [v5 lastKnownNetworkType];

  LODWORD(v5) = [(MPCModelGenericAVItem *)self hasVideo];
  v7 = objc_opt_class();
  if (v5)
  {
    v8 = [v7 _prefersHighQualityVideoContentForNetworkType:v6];
  }

  else
  {
    v8 = [v7 _prefersHighQualityAudioContentForNetworkType:v6];
  }

  v9 = v8;
  v10 = [(MPCModelGenericAVItem *)self eventStream];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 engineID];
    v15 = 138544386;
    v13 = @" not";
    v16 = v12;
    if (v9)
    {
      v13 = &stru_1F454A698;
    }

    v17 = 2114;
    v18 = self;
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = v6;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@: Based on network type of %li and last known network type of %li, we are%{public}@ preferring high quality content.", &v15, 0x34u);
  }

  return v9;
}

- (id)_delegatedUserIdentityProperties:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(MPCModelGenericAVItem *)self _storeRequestContext];
  v6 = [v5 delegatedIdentity];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet delegatedIdentityProperties];
  v8 = [v7 DSID];
  v9 = [v8 unsignedLongLongValue];

  if (v9)
  {
    if ([v7 isDelegated])
    {
      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
LABEL_6:
    v10 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Missing DSID in delegated identity properties - skipping playback", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:16 debugDescription:{@"%@: Missing DSID in delegated identity properties - skipping playback", self}];
  if (a3)
  {
LABEL_7:
    v11 = v10;
    *a3 = v10;
  }

LABEL_8:

  return v7;
}

- (BOOL)isValidPlayerSubstituteForItem:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ([(MPCModelGenericAVItem *)self itemError], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v9 = [(MPCModelGenericAVItem *)self queueIdentifier];
      v10 = [(MPCModelGenericAVItem *)v4 queueIdentifier];
      v11 = v10;
      v7 = 0;
      if (v9 && v10)
      {
        v7 = [v9 isEqualToString:v10];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)explicitBadge
{
  if (![(MPCModelGenericAVItem *)self isExplicitTrack])
  {
    return 0;
  }

  v3 = [(MPCModelGenericAVItem *)self _storeRequestContext];
  v4 = [v3 identity];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  }

  v8 = v6;

  v9 = [MEMORY[0x1E69E4398] defaultManager];
  v10 = [v9 ageVerificationStateForUserIdentity:v8];

  v11 = [v10 treatment];
  v12 = @"🅴";
  if (v11)
  {
    v12 = 0;
  }

  if (v11 == 1)
  {
    v7 = @"⓳";
  }

  else
  {
    v7 = v12;
  }

  return v7;
}

- (BOOL)isExplicitTrack
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  switch(v3)
  {
    case 9:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
      IsRestricted = MPModelMovieIsRestricted();
      break;
    case 6:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
      IsRestricted = MPModelTVEpisodeIsRestricted();
      break;
    case 1:
      v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      IsRestricted = [v4 isExplicitSong];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v6 = IsRestricted;

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (id)genre
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 genre];
    v5 = [v4 name];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)externalContentIdentifier
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  os_unfair_lock_unlock(&self->_lock);
  v4 = v3 == 9 || v3 == 6;
  if (v4 && [(MPCModelGenericAVItem *)self usesBookmarking])
  {
    quot = [(MPCModelGenericAVItem *)self storeItemInt64ID];
    if (quot || (quot = [(MPCModelGenericAVItem *)self storeSubscriptionAdamID]) != 0)
    {
      v6 = quot;
      v7 = &v12 + 1;
      do
      {
        v8 = lldiv(quot, 10);
        quot = v8.quot;
        if (v8.rem >= 0)
        {
          LOBYTE(v9) = v8.rem;
        }

        else
        {
          v9 = -v8.rem;
        }

        *(v7 - 2) = v9 + 48;
        v10 = (v7 - 2);
        --v7;
      }

      while (v8.quot);
      if ((v6 & 0x8000000000000000) != 0)
      {
        *(v7 - 2) = 45;
        v10 = (v7 - 2);
      }

      quot = CFStringCreateWithBytes(0, v10, &v12 - v10, 0x8000100u, 0);
    }
  }

  else
  {
    quot = 0;
  }

  return quot;
}

- (double)durationFromExternalMetadata
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 9)
  {
    v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject movie];
    goto LABEL_7;
  }

  if (v3 == 6)
  {
    v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    goto LABEL_7;
  }

  v4 = 0.0;
  if (v3 == 1)
  {
    v5 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
LABEL_7:
    v6 = v5;
    [v5 duration];
    v4 = v7;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)copyrightText
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 copyrightText];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)composer
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 composer];
    v5 = [v4 name];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)isArtistUploadedContent
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 isArtistUploadedContent];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)artist
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 show];
    v6 = [v5 title];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 artist];
    v6 = [v5 name];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)applyVolumeNormalizationWithSoundCheckEnabled:(BOOL)a3
{
  v3 = a3;
  if (![(MPCModelGenericAVItem *)self isAssetLoaded]|| ![(MPCModelGenericAVItem *)self isHLSAsset]|| [(MPCModelGenericAVItem *)self loadedAudioAssetType]<= 2)
  {
    os_unfair_lock_lock_with_options();
    v5 = 0.0;
    if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
    {
      v6 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
      [v6 volumeNormalization];
      v5 = v7;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      *&v8 = v5;
    }

    else
    {
      *&v8 = 0.0;
    }

    [(MPCModelGenericAVItem *)self setSoundCheckVolumeNormalization:v8];
    *&v9 = v5;

    [(MPCModelGenericAVItem *)self setLoudnessInfoVolumeNormalization:v9];
  }
}

- (unint64_t)albumTrackCount
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 trackCount];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (unint64_t)albumTrackNumber
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 trackNumber];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (int64_t)artistStoreID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 show];
  }

  else
  {
    if (v3 != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 artist];
  }

  v6 = v5;
  v7 = [v5 identifiers];

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  v8 = [v7 universalStore];
  v9 = [v8 adamID];

  if (!v9)
  {
    v10 = [v7 universalStore];
    v9 = [v10 purchasedAdamID];

    if (!v9)
    {
      v11 = [v7 universalStore];
      v9 = [v11 subscriptionAdamID];
    }
  }

  return v9;
}

- (int64_t)albumStoreID
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 season];
  }

  else
  {
    if (v3 != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 album];
  }

  v6 = v5;
  v7 = [v5 identifiers];

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  v8 = [v7 universalStore];
  v9 = [v8 adamID];

  if (!v9)
  {
    v10 = [v7 universalStore];
    v9 = [v10 purchasedAdamID];

    if (!v9)
    {
      v11 = [v7 universalStore];
      v9 = [v11 subscriptionAdamID];
    }
  }

  return v9;
}

- (int64_t)storeAlbumArtistID
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 album];
    v5 = [v4 artist];
    v6 = [v5 identifiers];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 universalStore];
  v8 = [v7 adamID];

  return v8;
}

- (id)albumArtist
{
  os_unfair_lock_lock_with_options();
  v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject type];
  if (v3 == 6)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject tvEpisode];
    v5 = [v4 season];
    v6 = [v5 show];
    v7 = [v6 title];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v5 = [v4 album];
    v6 = [v5 artist];
    v7 = [v6 name];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (int64_t)albumYear
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 album];
    v5 = [v4 year];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)album
{
  os_unfair_lock_lock_with_options();
  if ([(MPModelGenericObject *)self->_flattenedMetadataGenericObject type]== 1)
  {
    v3 = [(MPModelGenericObject *)self->_flattenedMetadataGenericObject song];
    v4 = [v3 album];
    v5 = [v4 title];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)dealloc
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = v3;
  if (self->_timedMetadataResponse)
  {
    [v3 removeObserver:self name:*MEMORY[0x1E6970240] object:?];
  }

  if (self->_didSetupContentTasteObservation)
  {
    v5 = *MEMORY[0x1E696F8C8];
    v6 = [MEMORY[0x1E69704F8] sharedController];
    [v4 removeObserver:self name:v5 object:v6];
  }

  [v4 removeObserver:self name:*MEMORY[0x1E69E40A0] object:0];
  if ([(MPCModelGenericAVItem *)self isHLSAsset])
  {
    v7 = *MEMORY[0x1E6970368];
    v8 = [MEMORY[0x1E69708A8] standardUserDefaults];
    [v4 removeObserver:self name:v7 object:v8];
  }

  if (self->_subscriptionLeaseSession)
  {
    [v4 removeObserver:self name:*MEMORY[0x1E69E41D0] object:?];
    if (self->_shouldAutomaticallyRefreshSubscriptionLease)
    {
      v9 = self->_subscriptionLeaseSession;
      v10 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__MPCModelGenericAVItem_dealloc__block_invoke;
      block[3] = &unk_1E8239298;
      v28 = v9;
      v11 = v9;
      dispatch_after(v10, MEMORY[0x1E69E96A0], block);
    }
  }

  if (self->_suzeLeaseSession)
  {
    if (self->_isAutomaticallyRefreshingSuzeLeaseSession)
    {
      self->_isAutomaticallyRefreshingSuzeLeaseSession = 0;
      [(MPCSuzeLeaseSession *)self->_suzeLeaseSession endAutomaticallyRefreshingLease];
    }

    v12 = +[MPCSuzeLeaseSessionController sharedController];
    [v4 removeObserver:self name:@"MPCSuzeLeaseSessionControllerLeaseSessionRenewDidFailNotification" object:v12];
    [v12 stopLeaseSession:self->_suzeLeaseSession completion:0];
  }

  if (self->_hlsDownloadURLSession && self->_hlsDownloadURLRequest)
  {
    v13 = [(MPCModelGenericAVItem *)self eventStream];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 engineID];
      hlsDownloadURLRequest = self->_hlsDownloadURLRequest;
      *buf = 138543874;
      v30 = v15;
      v31 = 2114;
      v32 = self;
      v33 = 2114;
      v34 = hlsDownloadURLRequest;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Cancelling download request [dealloc] - request:%{public}@", buf, 0x20u);
    }

    [(ICAVAssetDownloadURLSession *)self->_hlsDownloadURLSession cancelRequest:self->_hlsDownloadURLRequest];
  }

  if (self->_tempFileURLToCleanup)
  {
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    tempFileURLToCleanup = self->_tempFileURLToCleanup;
    v26 = 0;
    v19 = [v17 removeItemAtURL:tempFileURLToCleanup error:&v26];
    v20 = v26;

    if ((v19 & 1) == 0)
    {
      v21 = [(MPCModelGenericAVItem *)self eventStream];
      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v21 engineID];
        v24 = self->_tempFileURLToCleanup;
        *buf = 138543874;
        v30 = v23;
        v31 = 2114;
        v32 = self;
        v33 = 2114;
        v34 = v24;
        _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]-[AL] - %{public}@: [Asset caching: HLS] Failed to clean up downloaded asset %{public}@", buf, 0x20u);
      }
    }
  }

  v25.receiver = self;
  v25.super_class = MPCModelGenericAVItem;
  [(MPCModelGenericAVItem *)&v25 dealloc];
}

- (MPCModelGenericAVItem)initWithGenericObject:(id)a3 itemProperties:(id)a4 playbackRequestEnvironment:(id)a5 identityPropertySet:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = MPCModelGenericAVItem;
  v15 = [(MPCModelGenericAVItem *)&v29 init];
  if (v15)
  {
    v16 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItem.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v15->_accessQueue;
    v15->_accessQueue = v16;

    objc_storeStrong(&v15->_genericObject, a3);
    v15->_lock._os_unfair_lock_opaque = 0;
    v18 = [(MPModelGenericObject *)v15->_genericObject flattenedGenericObject];
    flattenedGenericObject = v15->_flattenedGenericObject;
    v15->_flattenedGenericObject = v18;

    objc_storeStrong(&v15->_metadataGenericObject, v15->_genericObject);
    v20 = [(MPModelGenericObject *)v15->_metadataGenericObject flattenedGenericObject];
    flattenedMetadataGenericObject = v15->_flattenedMetadataGenericObject;
    v15->_flattenedMetadataGenericObject = v20;

    v22 = [v13 copy];
    playbackRequestEnvironment = v15->_playbackRequestEnvironment;
    v15->_playbackRequestEnvironment = v22;

    objc_storeStrong(&v15->_itemProperties, a4);
    contentKeySession = v15->_contentKeySession;
    v15->_contentKeySession = 0;

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = *MEMORY[0x1E696F8C8];
    v27 = [MEMORY[0x1E69704F8] sharedController];
    [v25 addObserver:v15 selector:sel__contentTasteControllerDidChangeNotification_ name:v26 object:v27];

    v15->_didSetupContentTasteObservation = 1;
    [v25 addObserver:v15 selector:sel__ageVerificationStateDidChangeNotification_ name:*MEMORY[0x1E69E40A0] object:0];
    objc_storeStrong(&v15->_identityPropertySet, a6);
  }

  return v15;
}

+ (id)_downloadCompletionPendingItems
{
  if (_downloadCompletionPendingItems_onceToken != -1)
  {
    dispatch_once(&_downloadCompletionPendingItems_onceToken, &__block_literal_global_556);
  }

  v3 = _downloadCompletionPendingItems_items;

  return v3;
}

uint64_t __56__MPCModelGenericAVItem__downloadCompletionPendingItems__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v1 = _downloadCompletionPendingItems_items;
  _downloadCompletionPendingItems_items = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_utilitySerialQueue
{
  if (_utilitySerialQueue_onceToken != -1)
  {
    dispatch_once(&_utilitySerialQueue_onceToken, &__block_literal_global_488);
  }

  v3 = _utilitySerialQueue_utilitySerialQueue;

  return v3;
}

uint64_t __44__MPCModelGenericAVItem__utilitySerialQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _utilitySerialQueue_utilitySerialQueue;
  _utilitySerialQueue_utilitySerialQueue = v0;

  [_utilitySerialQueue_utilitySerialQueue setMaxConcurrentOperationCount:1];
  [_utilitySerialQueue_utilitySerialQueue setQualityOfService:17];
  v2 = _utilitySerialQueue_utilitySerialQueue;

  return [v2 setName:@"com.apple.MediaPlaybackCore.MPCModelGenericAVItem.utilitySerialQueue"];
}

+ (BOOL)_prefersHighQualityVideoContentForNetworkType:(int64_t)a3
{
  if (ICEnvironmentNetworkTypeIsBluetooth())
  {
    return 0;
  }

  if ((ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || ICEnvironmentNetworkTypeIsWired())
  {
    v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v6 = [v5 preferredVideoHighBandwidthResolution];
LABEL_6:
    v4 = v6 == 1000000;

    return v4;
  }

  v8 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v9 = [v8 preferredVideoLowBandwidthResolution];

  v4 = 0;
  if (a3 >= 3 && v9 >= 1)
  {
    v10 = [MEMORY[0x1E69E4428] sharedMonitor];
    v11 = [v10 isCurrentNetworkLinkExpensive];

    if (!v11)
    {
      return 1;
    }

    v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v6 = [v5 preferredVideoLowBandwidthResolution];
    goto LABEL_6;
  }

  return v4;
}

+ (BOOL)_prefersHighQualityAudioContentForNetworkType:(int64_t)a3
{
  if (CFPreferencesGetAppBooleanValue(@"AlwaysUse64kbpsQuality", @"com.apple.mobileipod", 0))
  {
    return 0;
  }

  if (!CFPreferencesGetAppBooleanValue(@"AlwaysUse256kbpsQuality", @"com.apple.mobileipod", 0))
  {
    if ((ICEnvironmentNetworkTypeIsBluetooth() & 1) == 0)
    {
      if (ICEnvironmentNetworkTypeIsWired())
      {
        return 1;
      }

      if (ICEnvironmentNetworkTypeIsWiFi())
      {
        v5 = [MEMORY[0x1E69E4428] sharedMonitor];
        v6 = [v5 isNetworkConstrained];

        if ((v6 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
        if ([v7 preferredMusicLowBandwidthResolution] >= 256)
        {

          if (a3 <= 2)
          {
            return 0;
          }
        }

        else
        {
          v8 = [MEMORY[0x1E69E4428] sharedMonitor];
          v9 = [v8 isCurrentNetworkLinkExpensive];

          if (a3 < 3 || (v9 & 1) != 0)
          {
            return 0;
          }
        }

        v10 = [MEMORY[0x1E69E4428] sharedMonitor];
        v11 = [v10 isNetworkConstrained];

        if (!v11)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return 1;
}

+ (int64_t)_unwrapPlaybackError:(id)a3
{
  v4 = a3;
  v5 = [v4 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A768]];
  v6 = [v5 code];

  if ((v6 + 49999) >> 6 <= 0x7C)
  {
    if ((v6 - 22939) < 0xEu)
    {
      v7 = qword_1C6045328[(v6 - 22939)];
      goto LABEL_20;
    }

LABEL_10:
    v7 = 3;
    goto LABEL_20;
  }

  v8 = [v4 msv_errorByUnwrappingDomain:*MEMORY[0x1E69874D8]];
  v9 = [v8 code];

  if (v9 == -11835)
  {
    v7 = 5;
    goto LABEL_20;
  }

  v10 = [v4 msv_errorByUnwrappingDomain:@"CoreMediaErrorDomain"];
  v11 = [v10 code];

  if (v11 <= -42815)
  {
    if (v11 == -42829)
    {
      v7 = 1;
      goto LABEL_20;
    }

    v12 = -42828;
  }

  else
  {
    if (v11 == -42004)
    {
      v7 = 4;
      goto LABEL_20;
    }

    if (v11 == -42812)
    {
      goto LABEL_10;
    }

    v12 = -42814;
  }

  if (v11 == v12)
  {
    v7 = 2;
  }

  else if ([a1 _isCorruptedAssetErrorCode:v11])
  {
    v7 = 6;
  }

  else
  {
    v7 = 0;
  }

LABEL_20:

  return v7;
}

+ (BOOL)_isCorruptedAssetErrorCode:(int64_t)a3
{
  v3 = (a3 + 16919) < 0xA || (a3 + 15642) < 3;
  if (a3 == -15660)
  {
    v3 = 1;
  }

  if ((a3 + 16940) < 0xB)
  {
    v3 = 1;
  }

  return (a3 + 16249) < 0xA || v3;
}

@end