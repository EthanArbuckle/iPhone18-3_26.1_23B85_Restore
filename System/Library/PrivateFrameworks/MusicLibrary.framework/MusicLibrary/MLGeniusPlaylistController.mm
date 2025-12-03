@interface MLGeniusPlaylistController
+ (BOOL)hasGeniusDataAvailable;
+ (BOOL)hasGeniusFeatureEnabled;
+ (id)geniusTracksForSeedTrack:(id)track error:(id *)error;
+ (id)playlistControllerWithSeedTracks:(id)tracks error:(id *)error;
+ (unint64_t)defaultMinTrackCount;
+ (unint64_t)defaultTrackCount;
+ (void)ignoreUnusedWarnings;
+ (void)populateContainer:(id)container withSeedTrack:(id)track completionBlock:(id)block;
- (BOOL)_canIncludeTrackInGeniusContainer:(id)container;
- (BOOL)_createClusterPlaylistWithSeedTracks:(id)tracks error:(id *)error;
- (BOOL)_onBackgroundQueue_fakePopulateContainer:(id)container withSeedTrack:(id)track error:(id *)error;
- (BOOL)_onBackgroundQueue_populateContainer:(id)container seedTrack:(id)track error:(id *)error;
- (MLGeniusPlaylistController)init;
- (id)_debugGetTracksStartingAtTrackWithPersistentID:(unint64_t)d maxTracks:(unint64_t)tracks stride:(int)stride;
- (id)_onBackgroundQueue_tracksFromClusterForPlaylistItemMax:(unint64_t)max error:(id *)error;
- (id)_sharedBlobMutableData;
- (id)tracksFromClusterForCount:(unint64_t)count error:(id *)error;
- (void)dealloc;
@end

@implementation MLGeniusPlaylistController

- (id)_onBackgroundQueue_tracksFromClusterForPlaylistItemMax:(unint64_t)max error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_echo_cluster_playlist)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *&v7 = 134217984;
    v19 = v7;
    do
    {
      if ([v6 count] >= max)
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      track = echo_playlist_next_track(self->_echo_cluster_playlist);
      v10 = track;
      if (track)
      {
        v11 = trackWithGlobalID(track, 1);
        if (v11)
        {
          if ([(MLGeniusPlaylistController *)self _canIncludeTrackInGeniusContainer:v11])
          {
            [v6 addObject:v11];
          }
        }

        else
        {
          v12 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v21 = v10;
            _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEBUG, "Note: Could not locate track with globalID = %llu", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(v8);
    }

    while (v10);
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "ERROR: Could not generate playlist tracks, no active cluster playlist.", buf, 2u);
    }

    if (error && !*error)
    {
      MLCreateError_TooFewItemsReason(0);
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  sharedBlobMutableData = self->_sharedBlobMutableData;
  p_sharedBlobMutableData = &self->_sharedBlobMutableData;
  *p_sharedBlobMutableData = 0;

  v17 = *p_sharedBlobMutableData;
  *p_sharedBlobMutableData = 0;

  return v6;
}

- (BOOL)_createClusterPlaylistWithSeedTracks:(id)tracks error:(id *)error
{
  tracksCopy = tracks;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12868;
  v20 = __Block_byref_object_dispose__12869;
  v21 = 0;
  v7 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__MLGeniusPlaylistController__createClusterPlaylistWithSeedTracks_error___block_invoke;
  v12[3] = &unk_278763398;
  v8 = tracksCopy;
  v13 = v8;
  selfCopy = self;
  v15 = &v16;
  [v7 performGeniusDatabaseReadWithBlock:v12];

  if (error && !*error)
  {
    *error = v17[5];
  }

  sharedBlobMutableData = self->_sharedBlobMutableData;
  self->_sharedBlobMutableData = 0;

  v10 = self->_echo_cluster_playlist != 0;
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __73__MLGeniusPlaylistController__createClusterPlaylistWithSeedTracks_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) count];
    v3 = malloc_type_malloc(8 * [*(a1 + 32) count], 0x100004000313F17uLL);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = [*(a1 + 32) objectAtIndex:i];
        v6 = [v5 valueForProperty:@"item_extra.genius_id"];
        v3[i] = [v6 unsignedLongLongValue];
      }
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = [*(a1 + 32) count];
    if (v7)
    {
      v9 = v3 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || v8 == 0)
    {
      free(v3);
    }

    else
    {
      if (v8 != 1)
      {
        *buf = 0;
        v19 = 0;
        v20 = 0;
        v12 = v8;
        std::vector<unsigned long long>::reserve(buf, v8);
        v13 = v3;
        do
        {
          std::vector<unsigned long long>::push_back[abi:ne200100](buf, v13++);
          --v12;
        }

        while (v12);
        operator new();
      }

      v11 = _echo_context::initialize_playlist(v7, *v3);
      free(v3);
      if (v11)
      {
        *(*(a1 + 40) + 24) = v11;
        return;
      }
    }

    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "NOTE: Could not create cluster playlist", buf, 2u);
    }

    v15 = MLCreateError_TooFewItemsReason(0);
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

- (BOOL)_onBackgroundQueue_populateContainer:(id)container seedTrack:(id)track error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  trackCopy = track;
  v10 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultMinTrackCount = [v10 defaultMinTrackCount];

  v12 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultTrackCount = [v12 defaultTrackCount];

  v14 = [trackCopy valueForProperty:@"item_extra.genius_id"];
  unsignedLongLongValue = [v14 unsignedLongLongValue];

  if (unsignedLongLongValue)
  {
    library = [containerCopy library];
    library2 = [trackCopy library];

    if (library != library2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MLGeniusPlaylistController.m" lineNumber:571 description:&stru_28408B690];
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    *v39 = 0;
    v40 = v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__12868;
    v43 = __Block_byref_object_dispose__12869;
    v44 = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __83__MLGeniusPlaylistController__onBackgroundQueue_populateContainer_seedTrack_error___block_invoke;
    v33[3] = &unk_278763370;
    v35 = &v45;
    v33[4] = self;
    v36 = v39;
    v37 = unsignedLongLongValue;
    v20 = v18;
    v34 = v20;
    v38 = defaultTrackCount;
    [v19 performGeniusDatabaseReadWithBlock:v33];

    if (error && !*error)
    {
      *error = *(v40 + 5);
    }

    if (v46[3])
    {
      v21 = [v20 count];
      if (v21 && ([v20 replaceObjectAtIndex:0 withObject:trackCopy], v21 >= defaultMinTrackCount))
      {
        v25 = [trackCopy valueForProperty:@"ROWID"];
        [containerCopy setValue:v25 forProperty:@"container_seed.item_pid"];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __83__MLGeniusPlaylistController__onBackgroundQueue_populateContainer_seedTrack_error___block_invoke_105;
        v30[3] = &unk_278764E80;
        v31 = containerCopy;
        v32 = v20;
        [library performDatabaseTransactionWithBlock:v30];

        v22 = 1;
      }

      else
      {
        v22 = 0;
        if (error && !*error && v21 < defaultMinTrackCount)
        {
          v23 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v50 = defaultMinTrackCount;
            v51 = 2048;
            v52 = v21;
            _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "NOTE: Could not create playlist, too few results (min=%ld, found=%ld)", buf, 0x16u);
          }

          MLCreateError_TooFewItemsReason(v21);
          *error = v22 = 0;
        }
      }

      echo_playlist_close(v46[3]);
      v46[3] = 0;
      sharedBlobMutableData = self->_sharedBlobMutableData;
      self->_sharedBlobMutableData = 0;
    }

    else
    {
      v22 = 0;
    }

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v24 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "NOTE: Could not create playlist, seedTrackGlobalID == 0.", v39, 2u);
    }

    if (error && !*error)
    {
      MLCreateError_TooFewItemsReason(0);
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

void __83__MLGeniusPlaylistController__onBackgroundQueue_populateContainer_seedTrack_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (v4)
  {
    v4 = _echo_context::initialize_playlist(v4, *(a1 + 64));
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if ([*(a1 + 40) count] < *(a1 + 72))
    {
      while (1)
      {
        v5 = objc_autoreleasePoolPush();
        track = echo_playlist_next_track(*(*(*(a1 + 48) + 8) + 24));
        if (!track)
        {
          break;
        }

        v7 = track;
        v8 = trackWithGlobalID(track, 1);
        if (v8)
        {
          if ([*(a1 + 32) _canIncludeTrackInGeniusContainer:v8])
          {
            [*(a1 + 40) addObject:v8];
          }
        }

        else
        {
          v9 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v15 = v7;
            _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEBUG, "Note: Could not locate track with globalID = %llu", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v5);
        if ([*(a1 + 40) count] >= *(a1 + 72))
        {
          goto LABEL_18;
        }
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "NOTE: Could not create playlist, seedTrackGlobalID == 0.", buf, 2u);
    }

    v11 = MLCreateError_TooFewItemsReason(0);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_18:
}

uint64_t __83__MLGeniusPlaylistController__onBackgroundQueue_populateContainer_seedTrack_error___block_invoke_105(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeAllTracks];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v10 + 1) + 8 * v7), "persistentID", v10)}];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) appendTracksWithPersistentIDs:v2 notify:1];
  return 1;
}

- (BOOL)_onBackgroundQueue_fakePopulateContainer:(id)container withSeedTrack:(id)track error:(id *)error
{
  containerCopy = container;
  trackCopy = track;
  v10 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultMinTrackCount = [v10 defaultMinTrackCount];

  v12 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultTrackCount = [v12 defaultTrackCount];

  v14 = _onBackgroundQueue_fakePopulateContainer_withSeedTrack_error__gStride;
  persistentID = [trackCopy persistentID];
  v16 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "NOTE: Fake echo data being used, ignoring genius database", buf, 2u);
  }

  v17 = v14 & 1;

  library = [containerCopy library];
  library2 = [trackCopy library];

  if (library != library2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MLGeniusPlaylistController.m" lineNumber:521 description:&stru_28408B690];
  }

  v20 = [(MLGeniusPlaylistController *)self _debugGetTracksStartingAtTrackWithPersistentID:persistentID maxTracks:defaultTrackCount stride:(v17 + 1)];
  v21 = [v20 mutableCopy];

  v22 = [v21 count];
  if (v22)
  {
    v23 = v22 >= defaultMinTrackCount;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v23)
  {
    v25 = [trackCopy valueForProperty:@"ROWID"];
    [containerCopy setValue:v25 forProperty:@"container_seed.item_pid"];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __91__MLGeniusPlaylistController__onBackgroundQueue_fakePopulateContainer_withSeedTrack_error___block_invoke;
    v29[3] = &unk_278764E80;
    v30 = containerCopy;
    v31 = v21;
    [library performDatabaseTransactionWithBlock:v29];
  }

  else if (error && !*error && v22 < defaultMinTrackCount)
  {
    *error = MLCreateError_TooFewItemsReason(v22);
  }

  ++_onBackgroundQueue_fakePopulateContainer_withSeedTrack_error__gStride;

  return v24 ^ 1;
}

uint64_t __91__MLGeniusPlaylistController__onBackgroundQueue_fakePopulateContainer_withSeedTrack_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeAllTracks];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v10 + 1) + 8 * v7), "persistentID", v10)}];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) appendTracksWithPersistentIDs:v2 notify:1];
  return 1;
}

- (id)_debugGetTracksStartingAtTrackWithPersistentID:(unint64_t)d maxTracks:(unint64_t)tracks stride:(int)stride
{
  if (tracks)
  {
    array = [MEMORY[0x277CBEB18] array];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    if (stride <= 1)
    {
      strideCopy = 1;
    }

    else
    {
      strideCopy = stride;
    }

    v33 = strideCopy;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v10 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
    musicLibrary = [v10 musicLibrary];

    v12 = [ML3BitMaskPredicate predicateWithProperty:@"media_type" mask:8 value:8];
    v13 = +[ML3Track defaultOrderingTerms];
    v14 = [(ML3Entity *)ML3Track queryWithLibrary:musicLibrary predicate:v12 orderingTerms:v13];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__MLGeniusPlaylistController__debugGetTracksStartingAtTrackWithPersistentID_maxTracks_stride___block_invoke;
    v20[3] = &unk_278763348;
    v15 = musicLibrary;
    v21 = v15;
    v23 = v30;
    v24 = v28;
    v25 = v32;
    dCopy = d;
    v16 = array;
    v22 = v16;
    tracksCopy = tracks;
    [v14 enumeratePersistentIDsUsingBlock:v20];
    v17 = v22;
    array2 = v16;

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
  }

  else
  {
    array2 = [MEMORY[0x277CBEA60] array];
  }

  return array2;
}

void __94__MLGeniusPlaylistController__debugGetTracksStartingAtTrackWithPersistentID_maxTracks_stride___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:a2 inLibrary:*(a1 + 32)];
  if ([(ML3Entity *)v7 persistentID]== *(a1 + 72))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  --*(*(*(a1 + 56) + 8) + 24);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = *(*(a1 + 56) + 8);
    if (*(v6 + 24) <= 0)
    {
      *(v6 + 24) = *(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 40) addObject:v7];
      if ([*(a1 + 40) count] >= *(a1 + 80))
      {
        *a4 = 1;
      }
    }
  }
}

- (BOOL)_canIncludeTrackInGeniusContainer:(id)container
{
  containerCopy = container;
  v4 = [containerCopy valueForProperty:@"item_video.is_rental"];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  LOBYTE(v6) = 0;
  if ([v4 isEqual:v5])
  {
    v7 = [containerCopy valueForProperty:@"item_stats.hidden"];
    if ([v7 BOOLValue])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v8 = [containerCopy valueForProperty:{@"ML3IsCurrentlyRestrictedMedia(item.media_type, item_extra.content_rating, item_extra.content_rating_level, (SELECT value FROM _MLDatabaseProperties WHERE key='MPExplicitContentAllowedBoolean'))"}];
      v6 = [v8 BOOLValue] ^ 1;
    }
  }

  return v6;
}

- (id)_sharedBlobMutableData
{
  sharedBlobMutableData = self->_sharedBlobMutableData;
  if (!sharedBlobMutableData)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0];
    v5 = self->_sharedBlobMutableData;
    self->_sharedBlobMutableData = v4;

    sharedBlobMutableData = self->_sharedBlobMutableData;
  }

  return sharedBlobMutableData;
}

- (id)tracksFromClusterForCount:(unint64_t)count error:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__12868;
  v27 = __Block_byref_object_dispose__12869;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12868;
  v21 = __Block_byref_object_dispose__12869;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MLGeniusPlaylistController_tracksFromClusterForCount_error___block_invoke;
  block[3] = &unk_278763318;
  v14 = &v17;
  v15 = &v23;
  block[4] = self;
  countCopy = count;
  v9 = v7;
  v13 = v9;
  dispatch_async(v8, block);

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v24[5];
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

intptr_t __62__MLGeniusPlaylistController_tracksFromClusterForCount_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _onBackgroundQueue_tracksFromClusterForPlaylistItemMax:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (![*(*(*(a1 + 48) + 8) + 40) count] && !*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = MLCreateError_UnknownReason();
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)dealloc
{
  echo_cluster_playlist = self->_echo_cluster_playlist;
  if (echo_cluster_playlist)
  {
    echo_playlist_close(echo_cluster_playlist);
  }

  echo = self->_echo;
  if (echo)
  {
    v5 = echo[2];
    if (v5)
    {
      fprintf(v5, "sim fetches = %lu, successful sim fetches = %lu, metadata fetches = %lu, successful metadata fetches = %lu\n", echo[3], echo[4], echo[5], echo[6]);
    }

    v6 = echo[9] - echo[8];
    if (v6)
    {
      v7 = 0;
      v8 = v6 >> 3;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      do
      {
        v10 = *(echo[8] + 8 * v7);
        if (v10)
        {
          (*(*v10 + 8))(v10, a2);
        }

        ++v7;
      }

      while (v9 != v7);
    }

    v11 = echo[7];
    if (v11)
    {
      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_19;
      }

      do
      {
        v13 = v12[3];
        if (v13)
        {
          (*(*v13 + 8))(v13, a2);
        }

        v12 = *v12;
      }

      while (v12);
      v11 = echo[7];
      if (v11)
      {
LABEL_19:
        v14 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11);
        MEMORY[0x2318CD250](v14, 0x10A0C408EF24B1CLL);
      }
    }

    v15 = echo[8];
    if (v15)
    {
      echo[9] = v15;
      operator delete(v15);
    }

    MEMORY[0x2318CD250](echo, 0x10A0C4091C5D4D3);
  }

  sharedBlobMutableData = self->_sharedBlobMutableData;
  self->_sharedBlobMutableData = 0;

  v17.receiver = self;
  v17.super_class = MLGeniusPlaylistController;
  [(MLGeniusPlaylistController *)&v17 dealloc];
}

- (MLGeniusPlaylistController)init
{
  v4.receiver = self;
  v4.super_class = MLGeniusPlaylistController;
  if ([(MLGeniusPlaylistController *)&v4 init])
  {
    v2 = time(0);
    srandom(v2);
    operator new();
  }

  return 0;
}

+ (id)geniusTracksForSeedTrack:(id)track error:(id *)error
{
  trackCopy = track;
  v6 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultTrackCount = [v6 defaultTrackCount];

  v8 = [trackCopy valueForProperty:@"item_extra.genius_id"];
  unsignedLongLongValue = [v8 unsignedLongLongValue];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12868;
  v24 = __Block_byref_object_dispose__12869;
  v25 = 0;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MLGeniusPlaylistController_geniusTracksForSeedTrack_error___block_invoke;
  v14[3] = &unk_2787633C0;
  v16 = v26;
  v17 = &v20;
  v18 = unsignedLongLongValue;
  v12 = v10;
  v15 = v12;
  v19 = defaultTrackCount;
  [v11 performGeniusDatabaseReadWithBlock:v14];

  if (error && !*error)
  {
    *error = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);

  return v12;
}

void __61__MLGeniusPlaylistController_geniusTracksForSeedTrack_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MLGeniusPlaylistController);
  echo = v4->_echo;
  if (echo)
  {
    echo = _echo_context::initialize_playlist(echo, *(a1 + 56));
  }

  *(*(*(a1 + 40) + 8) + 24) = echo;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if ([*(a1 + 32) count] < *(a1 + 64))
    {
      while (1)
      {
        v6 = objc_autoreleasePoolPush();
        track = echo_playlist_next_track(*(*(*(a1 + 40) + 8) + 24));
        if (!track)
        {
          break;
        }

        v8 = track;
        v9 = trackWithGlobalID(track, 1);
        if (v9)
        {
          if ([(MLGeniusPlaylistController *)v4 _canIncludeTrackInGeniusContainer:v9])
          {
            [*(a1 + 32) addObject:v9];
          }
        }

        else
        {
          v10 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v16 = v8;
            _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEBUG, "Note: Could not locate track with globalID = %llu", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v6);
        if ([*(a1 + 32) count] >= *(a1 + 64))
        {
          goto LABEL_18;
        }
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "NOTE: Could not create playlist, seedTrackGlobalID == 0.", buf, 2u);
    }

    v12 = MLCreateError_TooFewItemsReason(0);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

LABEL_18:
}

+ (id)playlistControllerWithSeedTracks:(id)tracks error:(id *)error
{
  tracksCopy = tracks;
  v6 = objc_alloc_init(MLGeniusPlaylistController);
  LOBYTE(error) = [(MLGeniusPlaylistController *)v6 _createClusterPlaylistWithSeedTracks:tracksCopy error:error];

  if ((error & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

+ (void)populateContainer:(id)container withSeedTrack:(id)track completionBlock:(id)block
{
  containerCopy = container;
  trackCopy = track;
  blockCopy = block;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__MLGeniusPlaylistController_populateContainer_withSeedTrack_completionBlock___block_invoke;
  v19[3] = &unk_2787632F0;
  v10 = blockCopy;
  v20 = v10;
  v11 = MEMORY[0x2318CDB10](v19);
  if (trackCopy && (v12 = [trackCopy persistentID], containerCopy) && v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__MLGeniusPlaylistController_populateContainer_withSeedTrack_completionBlock___block_invoke_2;
    v15[3] = &unk_278765798;
    v16 = containerCopy;
    v17 = trackCopy;
    v18 = v11;
    dispatch_async(v13, v15);

    v14 = v16;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MLMusicLibraryErrorDomain" code:1 userInfo:0];
    (v11)[2](v11, 0, v14);
  }
}

uint64_t __78__MLGeniusPlaylistController_populateContainer_withSeedTrack_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __78__MLGeniusPlaylistController_populateContainer_withSeedTrack_completionBlock___block_invoke_2(void *a1)
{
  v2 = objc_alloc_init(MLGeniusPlaylistController);
  v3 = +[MLGeniusPlaylistController useFakeGeniusData];
  v4 = a1[4];
  v5 = a1[5];
  if (v3)
  {
    v11 = 0;
    v6 = [(MLGeniusPlaylistController *)v2 _onBackgroundQueue_fakePopulateContainer:v4 withSeedTrack:v5 error:&v11];
    v7 = v11;
  }

  else
  {
    v10 = 0;
    v6 = [(MLGeniusPlaylistController *)v2 _onBackgroundQueue_populateContainer:v4 seedTrack:v5 error:&v10];
    v7 = v10;
  }

  v8 = v7;
  v9 = v8;
  if (!v6 && !v8)
  {
    v9 = MLCreateError_UnknownReason();
  }

  (*(a1[6] + 16))();
}

+ (unint64_t)defaultMinTrackCount
{
  v2 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultMinTrackCount = [v2 defaultMinTrackCount];

  return defaultMinTrackCount;
}

+ (unint64_t)defaultTrackCount
{
  v2 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  defaultTrackCount = [v2 defaultTrackCount];

  return defaultTrackCount;
}

+ (BOOL)hasGeniusDataAvailable
{
  v3 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  if ([v3 hasGeniusDataAvailable])
  {
    useFakeGeniusData = 1;
  }

  else
  {
    useFakeGeniusData = [self useFakeGeniusData];
  }

  return useFakeGeniusData;
}

+ (BOOL)hasGeniusFeatureEnabled
{
  v3 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  if ([v3 hasGeniusFeatureEnabled])
  {
    useFakeGeniusData = 1;
  }

  else
  {
    useFakeGeniusData = [self useFakeGeniusData];
  }

  return useFakeGeniusData;
}

+ (void)ignoreUnusedWarnings
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  __sprintf_chk(__str, 0, 0x80uLL, "%.16llX", 0);
  [MEMORY[0x277CCACA8] stringWithUTF8String:__str];

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  [0 getCString:__str maxLength:127 encoding:1];
  strtoull(__str, 0, 16);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  __sprintf_chk(__str, 0, 0x80uLL, "%llu", 0);
  [MEMORY[0x277CCACA8] stringWithUTF8String:__str];

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  [0 getCString:__str maxLength:127 encoding:1];
  strtoull(__str, 0, 10);
}

@end