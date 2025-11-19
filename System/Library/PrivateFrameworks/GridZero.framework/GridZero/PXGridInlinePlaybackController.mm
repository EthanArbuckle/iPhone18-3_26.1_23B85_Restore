@interface PXGridInlinePlaybackController
- (BOOL)_hasAnyPlaybackRecords;
- (BOOL)canPlayAsset:(id)a3;
- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)a3;
- (BOOL)isPlayingDisplayAsset:(id)a3;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4;
- (NSArray)currentRecords;
- (PXDisplayAsset)currentHoveredDisplayAsset;
- (PXGridInlinePlaybackController)init;
- (UIEdgeInsets)criticallyVisibleEdgeInsets;
- (id)checkOutPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7 configurationBlock:(id)a8;
- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (int64_t)maxNumberOfPlayingItems;
- (void)_startPlaybackForRecords:(id)a3;
- (void)_stopPlaybackForRecords:(id)a3;
- (void)_updateActive;
- (void)_updateCanCreateRecords;
- (void)_updateLowPowerModeEnabled;
- (void)_updatePlaybackEnabled;
- (void)_updatePlayingRecords;
- (void)_updatePlayingRecordsImmediately;
- (void)_updateVisibilityOfRecords;
- (void)checkInPlaybackRecordForDisplayAsset:(id)a3;
- (void)checkInPlaybackRecordForDisplayAssets:(id)a3 record:(id)a4;
- (void)removeAllRecords;
- (void)setActive:(BOOL)a3;
- (void)setApplicationActive:(BOOL)a3;
- (void)setAutoplaySettingEnabled:(BOOL)a3;
- (void)setIsContentViewVisible:(BOOL)a3;
- (void)setIsContextMenuInteractionActive:(BOOL)a3;
- (void)setIsDragSessionActive:(BOOL)a3;
- (void)setIsOneUpVisible:(BOOL)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setNeedsUpdate;
- (void)setPlaybackEnabled:(BOOL)a3;
- (void)willCheckInPlaybackRecordForDisplayAsset:(id)a3;
@end

@implementation PXGridInlinePlaybackController

- (PXGridInlinePlaybackController)init
{
  v27.receiver = self;
  v27.super_class = PXGridInlinePlaybackController;
  v2 = [(PXGridInlinePlaybackController *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photos.cl-playback-controller.records", 0);
    recordsQueue = v2->_recordsQueue;
    v2->_recordsQueue = v3;

    v2->_lookupLock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lookupLock_recordsByDisplayAsset = v2->_lookupLock_recordsByDisplayAsset;
    v2->_lookupLock_recordsByDisplayAsset = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentlyPlayingRecords = v2->_currentlyPlayingRecords;
    v2->_currentlyPlayingRecords = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    visibleRecords = v2->_visibleRecords;
    v2->_visibleRecords = v9;

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_shouldCoalescePlayingRecordsUpdates = [v11 BOOLForKey:@"disableCoalescedPlayingRecordsUpdates"] ^ 1;

    if ([(PXGridInlinePlaybackController *)v2 shouldCoalescePlayingRecordsUpdates])
    {
      v12 = +[PXPhotosGridSettings sharedInstance];
      [v12 playingRecordsUpdateRateLimit];
      v14 = v13;

      v15 = [MEMORY[0x277D3CD30] rateLimitingCoalescerWithRate:v14];
      playingRecordsEventCoalescer = v2->_playingRecordsEventCoalescer;
      v2->_playingRecordsEventCoalescer = v15;

      [(PXEventCoalescer *)v2->_playingRecordsEventCoalescer registerObserver:v2];
    }

    v17 = +[PXPhotosGridSettings sharedInstance];
    [v17 playbackVisibleRectEdgeInset];

    PXEdgeInsetsMake();
    v2->_criticallyVisibleEdgeInsets.top = v18;
    v2->_criticallyVisibleEdgeInsets.left = v19;
    v2->_criticallyVisibleEdgeInsets.bottom = v20;
    v2->_criticallyVisibleEdgeInsets.right = v21;
    v22 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v2 needsUpdateSelector:sel_setNeedsUpdate];
    updater = v2->_updater;
    v2->_updater = v22;

    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateActive needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateLowPowerModeEnabled needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateCanCreateRecords needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updatePlaybackEnabled needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updatePlayingRecords needsUpdate:1];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateVisibilityOfRecords needsUpdate:1];
    [(PXGridInlinePlaybackController *)v2 setActive:1];
    [(PXGridInlinePlaybackController *)v2 setApplicationActive:1];
    v24 = +[PXGridZeroSettingsProvider sharedInstance];
    -[PXGridInlinePlaybackController setAutoplaySettingEnabled:](v2, "setAutoplaySettingEnabled:", [v24 isVideoAutoplayEnabled]);

    [(PXGridInlinePlaybackController *)v2 _updateLowPowerModeEnabled];
    [(PXGridInlinePlaybackController *)v2 _updatePlaybackEnabled];
    [(PXGridInlinePlaybackController *)v2 _updateCanCreateRecords];
    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v2 selector:sel__processInfoPowerStateDidChange_ name:*MEMORY[0x277CCA5E8] object:0];
    [v25 addObserver:v2 selector:sel__applicationDidResignActive_ name:*MEMORY[0x277D76768] object:0];
    [v25 addObserver:v2 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    [v25 addObserver:v2 selector:sel__gridPreferencesDidChange_ name:@"PXGridZeroSettingsChangedNotification" object:0];
  }

  return v2;
}

- (void)_updateCanCreateRecords
{
  if ([(PXGridInlinePlaybackController *)self autoplaySettingEnabled])
  {
    v3 = [(PXGridInlinePlaybackController *)self lowPowerModeEnabled]^ 1;
  }

  else
  {
    v3 = 0;
  }

  [(PXGridInlinePlaybackController *)self setCanCreateRecords:v3];
}

- (void)setNeedsUpdate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PXGridInlinePlaybackController_setNeedsUpdate__block_invoke;
  block[3] = &unk_278299118;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateLowPowerModeEnabled
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  -[PXGridInlinePlaybackController setLowPowerModeEnabled:](self, "setLowPowerModeEnabled:", [v3 isLowPowerModeEnabled]);
}

- (void)_updatePlaybackEnabled
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(PXGridInlinePlaybackController *)self autoplaySettingEnabled]&& [(PXGridInlinePlaybackController *)self isContentViewVisible]&& ![(PXGridInlinePlaybackController *)self isContextMenuInteractionActive]&& ![(PXGridInlinePlaybackController *)self isDragSessionActive]&& [(PXGridInlinePlaybackController *)self applicationActive]&& ![(PXGridInlinePlaybackController *)self lowPowerModeEnabled]&& [(PXGridInlinePlaybackController *)self shouldEnablePlayback];
  [(PXGridInlinePlaybackController *)self setPlaybackEnabled:v3];
  v4 = PFGridInlinePlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(PXGridInlinePlaybackController *)self autoplaySettingEnabled];
    v6 = [(PXGridInlinePlaybackController *)self isContentViewVisible];
    v7 = [(PXGridInlinePlaybackController *)self isContextMenuInteractionActive];
    v8 = [(PXGridInlinePlaybackController *)self isDragSessionActive];
    v9 = [(PXGridInlinePlaybackController *)self applicationActive];
    v10 = [(PXGridInlinePlaybackController *)self lowPowerModeEnabled];
    v11 = [(PXGridInlinePlaybackController *)self shouldEnablePlayback];
    v12 = [(PXGridInlinePlaybackController *)self debugDescription];
    v13[0] = 67111170;
    v13[1] = v3;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_21ABF3000, v4, OS_LOG_TYPE_DEBUG, "Playback enabled = %d (autoplaySettingEnabled=%d, isContentViewVisible=%d, isContextMenuInteractionActive=%d, isDragSessionActive=%d, applicationActive=%d, lowPowerModeEnabled=%d, shouldEnablePlayback=%d) for %@", v13, 0x3Cu);
  }
}

- (void)_updateActive
{
  v3 = [(PXGridInlinePlaybackController *)self isOneUpVisible]^ 1;

  [(PXGridInlinePlaybackController *)self setActive:v3];
}

- (void)_updatePlayingRecords
{
  if ([(PXGridInlinePlaybackController *)self canUpdatePlayingRecords]&& ([(PXGridInlinePlaybackController *)self _hasAnyPlaybackRecords]|| [(NSMutableArray *)self->_currentlyPlayingRecords count]) && [(PXGridInlinePlaybackController *)self canProvideGeometriesForRecords]&& [(PXGridInlinePlaybackController *)self active])
  {
    if ([(PXGridInlinePlaybackController *)self playbackEnabled])
    {
      if ([(PXGridInlinePlaybackController *)self shouldCoalescePlayingRecordsUpdates])
      {
        v4 = [(PXGridInlinePlaybackController *)self playingRecordsEventCoalescer];
        [v4 inputEvent];
      }

      else
      {

        [(PXGridInlinePlaybackController *)self _updatePlayingRecordsImmediately];
      }
    }

    else
    {
      [(PXGridInlinePlaybackController *)self _stopPlaybackForRecords:self->_currentlyPlayingRecords];
      currentlyPlayingRecords = self->_currentlyPlayingRecords;

      [(NSMutableArray *)currentlyPlayingRecords removeAllObjects];
    }
  }
}

- (BOOL)_hasAnyPlaybackRecords
{
  os_unfair_lock_lock(&self->_lookupLock);
  v3 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset count]!= 0;
  os_unfair_lock_unlock(&self->_lookupLock);
  return v3;
}

- (void)_updateVisibilityOfRecords
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lookupLock);
  if ([(PXGridInlinePlaybackController *)self isContentViewVisible])
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v3 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v16 + 1) + 8 * i) prepareForVisible];
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v3 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
    v8 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * j) prepareForInvisible];
        }

        v9 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (UIEdgeInsets)criticallyVisibleEdgeInsets
{
  top = self->_criticallyVisibleEdgeInsets.top;
  left = self->_criticallyVisibleEdgeInsets.left;
  bottom = self->_criticallyVisibleEdgeInsets.bottom;
  right = self->_criticallyVisibleEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSArray)currentRecords
{
  os_unfair_lock_lock(&self->_lookupLock);
  v3 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lookupLock);

  return v4;
}

- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)a3
{
  v3 = a3;
  v4 = +[PXPhotosGridSettings sharedInstance];
  if (([v4 forcePlayback] & 1) != 0 || (objc_msgSend(v4, "minAutoplaySuggestionScore"), v5 == 0.0))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isEligibleForAutoPlayback];
  }

  return v6;
}

- (void)_stopPlaybackForRecords:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDesiredPlayState:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_startPlaybackForRecords:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDesiredPlayState:1];
        [v8 setDiagnosticLog:@"▶ Playing"];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_updatePlayingRecordsImmediately
{
  v71 = *MEMORY[0x277D85DE8];
  if (_updatePlayingRecordsImmediately_onceToken != -1)
  {
    dispatch_once(&_updatePlayingRecordsImmediately_onceToken, &__block_literal_global_3323);
  }

  os_unfair_lock_lock(&self->_lookupLock);
  v52 = self->_visibleRecords;
  [(NSMutableArray *)v52 removeAllObjects];
  v54 = self;
  if ([(PXGridInlinePlaybackController *)self shouldPlayOnHover])
  {
    v3 = [(PXGridInlinePlaybackController *)self currentHoveredDisplayAsset];
    v4 = v3;
    if (v3)
    {
      lookupLock_recordsByDisplayAsset = self->_lookupLock_recordsByDisplayAsset;
      v6 = [v3 uuid];
      v7 = [(NSMapTable *)lookupLock_recordsByDisplayAsset objectForKey:v6];

      if (v7)
      {
        [(NSMutableArray *)v52 addObject:v7];
      }
    }
  }

  else
  {
    [(PXGridInlinePlaybackController *)self currentVisibleRect];
    PXRectGetCenter();
    [(PXGridInlinePlaybackController *)self criticallyVisibleEdgeInsets];
    PXEdgeInsetsInsetRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v16 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0x277D3CFE0];
      v20 = *v64;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v64 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v63 + 1) + 8 * i);
          if ([v22 isInvalid])
          {
            v23 = v22;
            v24 = @"Record has been invalidated";
          }

          else
          {
            *buf = *v19;
            [(PXGridInlinePlaybackController *)v54 frameForPlaybackRecord:v22 minPlayableSize:buf];
            x = v72.origin.x;
            y = v72.origin.y;
            width = v72.size.width;
            height = v72.size.height;
            if (!CGRectIsNull(v72) && ((PXSizeIsNull() & 1) != 0 || PXSizeApproximatelyEqualOrBiggerThanSizeWithTolerance()))
            {
              v73.origin.x = x;
              v73.origin.y = y;
              v73.size.width = width;
              v73.size.height = height;
              v75.origin.x = v9;
              v75.origin.y = v11;
              v75.size.width = v13;
              v75.size.height = v15;
              v29 = CGRectIntersectsRect(v73, v75);
              v51 = 0x3F847AE147AE147BLL;
              if (PXRectContainsRectWithTolerance())
              {
                v29 |= 2uLL;
              }

              v74.origin.x = v9;
              v74.origin.y = v11;
              v74.size.width = v13;
              v74.size.height = v15;
              v76.origin.x = x;
              v76.origin.y = y;
              v76.size.width = width;
              v76.size.height = height;
              if (CGRectContainsRect(v74, v76))
              {
                v30 = v29 | 4;
              }

              else
              {
                v30 = v29;
              }

              if (v30)
              {
                [v22 setVisibilityScore:0x3F847AE147AE147BLL];
                PXRectGetCenter();
                PXDistanceBetweenPoints();
                [v22 setDistanceToCenterScore:?];
                [v22 setCellSizeScore:width * height];
                [(NSMutableArray *)v52 addObject:v22];
                v24 = @"Scores are too low";
              }

              else
              {
                v24 = @"Cell is not visible";
              }
            }

            else
            {
              v24 = @"Cell size is too small";
            }

            v23 = v22;
          }

          [v23 setDiagnosticLog:{v24, v51}];
        }

        v18 = [v16 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v18);
    }

    self = v54;
  }

  [(NSMutableArray *)v52 sortUsingDescriptors:_updatePlayingRecordsImmediately_recordSortDescriptors];
  v31 = [(PXGridInlinePlaybackController *)self filterSortedRecordsToPlay:v52];
  [(NSMutableArray *)self->_currentlyPlayingRecords removeAllObjects];
  v32 = [(PXGridInlinePlaybackController *)self maxNumberOfPlayingItems];
  if ([v31 count] && v32 >= 1)
  {
    v33 = 1;
    do
    {
      currentlyPlayingRecords = self->_currentlyPlayingRecords;
      v35 = [v31 objectAtIndexedSubscript:v33 - 1];
      [(NSMutableArray *)currentlyPlayingRecords addObject:v35];

      if (v33 >= [v31 count])
      {
        break;
      }
    }

    while (v33++ < v32);
  }

  v53 = v31;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v37 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
  v38 = [v37 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v60;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v59 + 1) + 8 * j);
        if ((-[NSMutableArray containsObject:](self->_currentlyPlayingRecords, "containsObject:", v42) & 1) == 0 && ([v42 isInvalid] & 1) == 0)
        {
          [v42 setDesiredPlayState:0];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v39);
  }

  [(PXGridInlinePlaybackController *)self _startPlaybackForRecords:self->_currentlyPlayingRecords];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v43 = [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset objectEnumerator];
  v44 = [v43 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v56;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v55 + 1) + 8 * k);
        v49 = PFGridInlinePlaybackGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = [v48 diagnosticLog];
          *buf = 138412546;
          *&buf[4] = v50;
          *&buf[12] = 2112;
          *&buf[14] = v48;
          _os_log_impl(&dword_21ABF3000, v49, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v45);
  }

  [(NSMutableArray *)v52 removeAllObjects];
  os_unfair_lock_unlock(&v54->_lookupLock);
  [(PXGridInlinePlaybackController *)v54 didUpdatePlayingRecords];
}

void __66__PXGridInlinePlaybackController__updatePlayingRecordsImmediately__block_invoke()
{
  v17[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCAC98];
  v1 = NSStringFromSelector(sel_visibilityScore);
  v2 = [v0 sortDescriptorWithKey:v1 ascending:0];
  v3 = MEMORY[0x277CCAC98];
  v4 = NSStringFromSelector(sel_cellSizeScore);
  v5 = [v3 sortDescriptorWithKey:v4 ascending:{0, v2}];
  v17[1] = v5;
  v6 = MEMORY[0x277CCAC98];
  v7 = NSStringFromSelector(sel_distanceToCenterScore);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:1];
  v17[2] = v8;
  v9 = MEMORY[0x277CCAC98];
  v10 = NSStringFromSelector(sel_videoScore);
  v11 = [v9 sortDescriptorWithKey:v10 ascending:0];
  v17[3] = v11;
  v12 = MEMORY[0x277CCAC98];
  v13 = NSStringFromSelector(sel_curationScore);
  v14 = [v12 sortDescriptorWithKey:v13 ascending:0];
  v17[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
  v16 = _updatePlayingRecordsImmediately_recordSortDescriptors;
  _updatePlayingRecordsImmediately_recordSortDescriptors = v15;
}

void __60__PXGridInlinePlaybackController__gridPreferencesDidChange___block_invoke(uint64_t a1)
{
  v2 = +[PXGridZeroSettingsProvider sharedInstance];
  [*(a1 + 32) setAutoplaySettingEnabled:{objc_msgSend(v2, "isVideoAutoplayEnabled")}];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayingRecords];
  }
}

- (void)setPlaybackEnabled:(BOOL)a3
{
  if (self->_playbackEnabled != a3)
  {
    self->_playbackEnabled = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayingRecords];
  }
}

- (void)setAutoplaySettingEnabled:(BOOL)a3
{
  if (self->_autoplaySettingEnabled != a3)
  {
    self->_autoplaySettingEnabled = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCanCreateRecords];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  if (self->_lowPowerModeEnabled != a3)
  {
    self->_lowPowerModeEnabled = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCanCreateRecords];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
  }
}

- (void)setApplicationActive:(BOOL)a3
{
  if (self->_applicationActive != a3)
  {
    self->_applicationActive = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
  }
}

- (void)setIsDragSessionActive:(BOOL)a3
{
  if (self->_isDragSessionActive != a3)
  {
    self->_isDragSessionActive = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
  }
}

- (void)setIsContextMenuInteractionActive:(BOOL)a3
{
  if (self->_isContextMenuInteractionActive != a3)
  {
    self->_isContextMenuInteractionActive = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
  }
}

- (void)setIsOneUpVisible:(BOOL)a3
{
  if (self->_isOneUpVisible != a3)
  {
    self->_isOneUpVisible = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateActive];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateVisibilityOfRecords];
  }
}

- (void)setIsContentViewVisible:(BOOL)a3
{
  if (self->_isContentViewVisible != a3)
  {
    self->_isContentViewVisible = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlaybackEnabled];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateVisibilityOfRecords];
  }
}

- (void)removeAllRecords
{
  [(PXGridInlinePlaybackController *)self _stopPlaybackForRecords:self->_currentlyPlayingRecords];
  [(NSMutableArray *)self->_currentlyPlayingRecords removeAllObjects];
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMapTable *)self->_lookupLock_recordsByDisplayAsset removeAllObjects];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (int64_t)maxNumberOfPlayingItems
{
  v2 = +[PXPhotosGridSettings sharedInstance];
  v3 = [v2 maxNumberOfPlayingItems];

  return v3;
}

- (BOOL)canPlayAsset:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:246 description:{@"Method %s is a responsibility of subclass %@", "-[PXGridInlinePlaybackController canPlayAsset:]", v8}];

  abort();
}

- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:226 description:{@"Method %s is a responsibility of subclass %@", "-[PXGridInlinePlaybackController frameForPlaybackRecord:minPlayableSize:]", v9}];

  abort();
}

- (PXDisplayAsset)currentHoveredDisplayAsset
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:222 description:{@"Method %s is a responsibility of subclass %@", "-[PXGridInlinePlaybackController currentHoveredDisplayAsset]", v6}];

  abort();
}

- (CGRect)currentVisibleRect
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:218 description:{@"Method %s is a responsibility of subclass %@", "-[PXGridInlinePlaybackController currentVisibleRect]", v6}];

  abort();
}

- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [MEMORY[0x277CCA890] currentHandler];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:214 description:{@"Method %s is a responsibility of subclass %@", "-[PXGridInlinePlaybackController createPlaybackRecordForDisplayAsset:mediaProvider:geometryReference:spriteSize:displayScale:]", v16}];

  abort();
}

- (BOOL)isPlayingDisplayAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(PXGridInlinePlaybackController *)self canPlayAsset:v4])
  {
    recordsQueue = self->_recordsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PXGridInlinePlaybackController_isPlayingDisplayAsset___block_invoke;
    block[3] = &unk_278297F60;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(recordsQueue, block);
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__PXGridInlinePlaybackController_isPlayingDisplayAsset___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];

  *(*(*(a1 + 48) + 8) + 24) = [v4 isPlaying];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

- (void)checkInPlaybackRecordForDisplayAssets:(id)a3 record:(id)a4
{
  v6 = a3;
  v7 = a4;
  recordsQueue = self->_recordsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__PXGridInlinePlaybackController_checkInPlaybackRecordForDisplayAssets_record___block_invoke;
  block[3] = &unk_278298EE0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(recordsQueue, block);
}

void __79__PXGridInlinePlaybackController_checkInPlaybackRecordForDisplayAssets_record___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        if (!v8 || (v9 = *(*(a1 + 32) + 24), [*(*(&v14 + 1) + 8 * v6) uuid], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v8 == v11))
        {
          v12 = *(*(a1 + 32) + 24);
          v13 = [v7 uuid];
          [v12 removeObjectForKey:v13];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

- (void)checkInPlaybackRecordForDisplayAsset:(id)a3
{
  v4 = a3;
  recordsQueue = self->_recordsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__PXGridInlinePlaybackController_checkInPlaybackRecordForDisplayAsset___block_invoke;
  v7[3] = &unk_278298598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(recordsQueue, v7);
}

void __71__PXGridInlinePlaybackController_checkInPlaybackRecordForDisplayAsset___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uuid];
  [v2 removeObjectForKey:v3];

  v4 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v4);
}

- (void)willCheckInPlaybackRecordForDisplayAsset:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGridInlinePlaybackController.m" lineNumber:150 description:{@"%s must be called on the main thread", "-[PXGridInlinePlaybackController willCheckInPlaybackRecordForDisplayAsset:]"}];
  }

  recordsQueue = self->_recordsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PXGridInlinePlaybackController_willCheckInPlaybackRecordForDisplayAsset___block_invoke;
  block[3] = &unk_278298598;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(recordsQueue, block);
}

void __75__PXGridInlinePlaybackController_willCheckInPlaybackRecordForDisplayAsset___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uuid];
  v7 = [v2 objectForKey:v3];

  if (v7)
  {
    [v7 setIsInvalid:1];
  }

  else
  {
    v4 = [[PXGridInlinePlaybackRecord alloc] initWithDisplayAsset:0 mediaProvider:0 geometryReference:0];
    [(PXGridInlinePlaybackRecord *)v4 setIsInvalid:1];
    v5 = *(*(a1 + 32) + 24);
    v6 = [*(a1 + 40) uuid];
    [v5 setObject:v4 forKey:v6];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

- (id)checkOutPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7 configurationBlock:(id)a8
{
  height = a6.height;
  width = a6.width;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if ([(PXGridInlinePlaybackController *)self canCreateRecords]&& [(PXGridInlinePlaybackController *)self canPlayAsset:v15]&& [(PXGridInlinePlaybackController *)self isDisplayAssetEligibleForAutoPlayback:v15])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3444;
    v35 = __Block_byref_object_dispose__3445;
    v36 = 0;
    recordsQueue = self->_recordsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __147__PXGridInlinePlaybackController_checkOutPlaybackRecordForDisplayAsset_mediaProvider_geometryReference_spriteSize_displayScale_configurationBlock___block_invoke;
    block[3] = &unk_278297F38;
    block[4] = self;
    v27 = &v31;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v28 = width;
    v29 = height;
    v30 = a7;
    v26 = v18;
    dispatch_sync(recordsQueue, block);
    px_dispatch_on_main_queue();
    v20 = v32[5];

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __147__PXGridInlinePlaybackController_checkOutPlaybackRecordForDisplayAsset_mediaProvider_geometryReference_spriteSize_displayScale_configurationBlock___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v7 = [*(a1 + 32) createPlaybackRecordForDisplayAsset:*(a1 + 40) mediaProvider:*(a1 + 48) geometryReference:*(a1 + 56) spriteSize:*(a1 + 80) displayScale:{*(a1 + 88), *(a1 + 96)}];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, *(*(*(a1 + 72) + 8) + 40));
    }

    os_unfair_lock_lock((*(a1 + 32) + 16));
    v11 = *(*(a1 + 32) + 24);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    v13 = [*(a1 + 40) uuid];
    [v11 setObject:v12 forKey:v13];

    v14 = (*(a1 + 32) + 16);

    os_unfair_lock_unlock(v14);
  }
}

@end