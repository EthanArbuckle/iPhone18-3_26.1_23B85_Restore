@interface HUClipScrubberDataSource
- (BOOL)isSpacerAtIndexPath:(id)a3;
- (BOOL)isValidRecordingEventAtIndexPath:(id)a3;
- (HFCameraPlaybackEngine)playbackEngine;
- (HFCameraRecordingEvent)currentEvent;
- (HFCameraRecordingEvent)lastUpdatedEvent;
- (HUClipScrubberDataSource)initWithPlaybackEngine:(id)a3;
- (NSArray)currentEvents;
- (UICollectionView)clipCollectionView;
- (double)offsetForEvent:(id)a3;
- (double)posterFrameWidth;
- (double)scrubbingResolutionForClip:(id)a3;
- (id)_snapshotForEvents:(id)a3 updatedIdentifiers:(id)a4 replacedIdentifiers:(id)a5;
- (id)eventForSection:(unint64_t)a3;
- (id)indexPathsForClip:(id)a3;
- (id)previousEventForSection:(unint64_t)a3;
- (id)reachabilitySectionCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5;
- (id)recordingSectionCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5;
- (id)selectedDateFromCell:(id)a3 atCurrentOffset:(double)a4;
- (id)spacerCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5;
- (id)startDateFromCell:(id)a3;
- (void)_addDiffableDataSource;
- (void)_updateSnapshot;
- (void)_updateSnapshotForEditing;
- (void)_updateSnapshotForEditingFor:(id)a3;
- (void)_updateSnapshotWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4;
- (void)_updateSnapshotWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4 forEvents:(id)a5;
- (void)beginTimeScaleTrackingForPinchGesture:(id)a3;
- (void)changeTimeScaleForNewScale:(double)a3;
- (void)changeTimeScaleForPinchGesture:(id)a3;
- (void)expandToMaximumZoom;
- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4;
- (void)reloadEvents;
- (void)setClipCollectionView:(id)a3;
- (void)setCurrentEvent:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setPlaybackEngine:(id)a3;
- (void)setSelectionViewHidden:(BOOL)a3;
- (void)shrinkToMinimumZoom;
- (void)toggleSelectionStateForItemAtIndexPath:(id)a3;
- (void)updateMostRecentClipIndex;
- (void)updateSelectionViewIfNeeded;
- (void)updateToClipAtIndexPath:(id)a3;
@end

@implementation HUClipScrubberDataSource

- (NSArray)currentEvents
{
  v3 = [(HUClipScrubberDataSource *)self isEditing];
  v4 = [(HUClipScrubberDataSource *)self playbackEngine];
  v5 = v4;
  if (v3)
  {
    [v4 cameraClips];
  }

  else
  {
    [v4 cameraEvents];
  }
  v6 = ;

  return v6;
}

- (HUClipScrubberDataSource)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HUClipScrubberDataSource;
  v5 = [(HUClipScrubberDataSource *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(HUClipScrubberDataSource *)v5 setPlaybackEngine:v4];
    v7 = objc_alloc_init(HUClipScrubberTimeController);
    timeController = v6->_timeController;
    v6->_timeController = v7;

    v6->_lastSelectedClipIndex = -1;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.Home.HUClipScrubberDataSource.snapshotQueue", v9);
    snapshotQueue = v6->_snapshotQueue;
    v6->_snapshotQueue = v10;

    [(HUClipScrubberDataSource *)v6 reloadEvents];
    v12 = [v4 cameraEvents];
    v13 = [v12 lastObject];
    objc_storeWeak(&v6->_currentEvent, v13);

    WeakRetained = objc_loadWeakRetained(&v6->_currentEvent);
    v15 = [WeakRetained dateOfOccurrence];
    currentDate = v6->_currentDate;
    v6->_currentDate = v15;
  }

  return v6;
}

- (void)reloadEvents
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HUClipScrubberDataSource *)self playbackEngine];
  v4 = [v3 isCameraPortraitMode];
  v5 = [(HUClipScrubberDataSource *)self timeController];
  [v5 setPortraitMode:v4];

  [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
  v6 = [(HUClipScrubberDataSource *)self timeController];
  v7 = [(HUClipScrubberDataSource *)self playbackEngine];
  v8 = [v7 clipWithLongestDuration];
  [v6 recalculateMaximumPosterFrameDuration:v8];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HUClipScrubberDataSource *)self playbackEngine];
    v11 = [v10 cameraEvents];
    v12 = 134217984;
    v13 = [v11 count];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Reloaded clip data source with %lu clips.", &v12, 0xCu);
  }

  [(HUClipScrubberDataSource *)self _updateSnapshot];
}

- (void)setPlaybackEngine:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_playbackEngine);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_playbackEngine, obj);
    v7 = [MEMORY[0x277D144C8] defaultOptions];
    [obj addObserver:self withOptions:v7];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v3 = a3;
    self->_editing = a3;
    [(HUClipScrubberDataSource *)self setDisplayMode:a3];
    [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
    if (v3)
    {

      [(HUClipScrubberDataSource *)self _updateSnapshotForEditing];
    }

    else
    {
      [(HUClipScrubberDataSource *)self _updateSnapshot];

      [(HUClipScrubberDataSource *)self setSelectionViewHidden:1];
    }
  }
}

- (void)toggleSelectionStateForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUClipScrubberDataSource *)self isEditing];
  v6 = [(HUClipScrubberDataSource *)self clipCollectionView];
  v7 = v6;
  if (v5)
  {
    [v6 selectItemAtIndexPath:v4 animated:0 scrollPosition:0];
  }

  else
  {
    [v6 deselectItemAtIndexPath:v4 animated:0];
  }
}

- (void)updateToClipAtIndexPath:(id)a3
{
  v10 = a3;
  -[HUClipScrubberDataSource setLastSelectedClipIndex:](self, "setLastSelectedClipIndex:", [v10 section]);
  v4 = -[HUClipScrubberDataSource eventForSection:](self, "eventForSection:", [v10 section]);
  [(HUClipScrubberDataSource *)self setCurrentEvent:v4];

  [(HUClipScrubberDataSource *)self setCurrentTimelineState:2];
  if ([v10 section])
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{objc_msgSend(v10, "section")}];
  }

  else
  {
    v5 = v10;
  }

  v6 = v5;
  v7 = [(HUClipScrubberDataSource *)self clipCollectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  if (v8)
  {
    v9 = [(HUClipScrubberDataSource *)self selectionView];
    [v9 updateFrameToMatchView:v8];
  }
}

- (void)setCurrentEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentEvent);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_currentEvent, v4);
    v6 = [(HUClipScrubberDataSource *)self currentEvents];
    v7 = [v6 indexOfObject:v4];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(HUClipScrubberDataSource *)self isEditing];
    }

    else
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Updating last selected index after current clip change to %@", &v13, 0xCu);
      }

      [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v7];
      if ([(HUClipScrubberDataSource *)self isEditing])
      {
        [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v7];
        [(HUClipScrubberDataSource *)self updateSelectionViewIfNeeded];
        v9 = [(HUClipScrubberDataSource *)self clipCollectionView];
        v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{-[HUClipScrubberDataSource lastSelectedClipIndex](self, "lastSelectedClipIndex")}];
        v11 = [v9 cellForItemAtIndexPath:v10];

        v12 = [(HUClipScrubberDataSource *)self selectionView];
        [v12 updateFrameToMatchView:v11];
      }
    }
  }
}

- (BOOL)isSpacerAtIndexPath:(id)a3
{
  v3 = a3;
  if ([v3 section])
  {
    v4 = [v3 row] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)posterFrameWidth
{
  v2 = [(HUClipScrubberDataSource *)self playbackEngine];
  v3 = [v2 liveCameraSource];
  [v3 aspectRatio];
  if (v4 >= 1.0)
  {
    v5 = 58.0;
  }

  else
  {
    v5 = 33.0;
  }

  return v5;
}

- (void)setClipCollectionView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_clipCollectionView);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_clipCollectionView, obj);
    [(HUClipScrubberDataSource *)self _addDiffableDataSource];
    [(HUClipScrubberDataSource *)self _updateSnapshot];
  }
}

- (void)_addDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D752D0]);
  v4 = [(HUClipScrubberDataSource *)self clipCollectionView];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__HUClipScrubberDataSource__addDiffableDataSource__block_invoke;
  v10 = &unk_277DBC7F0;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithCollectionView:v4 cellProvider:&v7];
  [(HUClipScrubberDataSource *)self setDiffableDataSource:v5, v7, v8, v9, v10];

  v6 = [(HUClipScrubberDataSource *)self diffableDataSource];
  [v6 setSupplementaryViewProvider:&__block_literal_global_97];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __50__HUClipScrubberDataSource__addDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Requesting cell for ip:%@ ii:%@", &v15, 0x16u);
    }

    if ([v9 isEqual:@"Live"] && (objc_msgSend(WeakRetained, "isEditing") & 1) == 0)
    {
      v13 = [v7 dequeueReusableCellWithReuseIdentifier:@"liveSpacer" forIndexPath:v8];
    }

    else
    {
      v12 = [WeakRetained eventForSection:{objc_msgSend(v8, "section")}];
      if ([v12 containerType] == 2)
      {
        [WeakRetained reachabilitySectionCellForCollectionView:v7 forEvent:v12 atIndexPath:v8];
      }

      else
      {
        [WeakRetained recordingSectionCellForCollectionView:v7 forEvent:v12 atIndexPath:v8];
      }
      v13 = ;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __50__HUClipScrubberDataSource__addDiffableDataSource__block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Requesting supplementary cell for ip:%@ ii:%@", &v13, 0x16u);
  }

  if (*MEMORY[0x277D767D0] == v6)
  {
    v10 = @"footer";
  }

  else
  {
    v10 = @"header";
  }

  v11 = [v8 dequeueReusableSupplementaryViewOfKind:v6 withReuseIdentifier:v10 forIndexPath:v7];

  return v11;
}

- (void)_updateSnapshot
{
  v4 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  [(HUClipScrubberDataSource *)self _updateSnapshotWithUpdatedIdentifiers:v4 replacedIdentifiers:v3];
}

- (void)_updateSnapshotWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HUClipScrubberDataSource *)self setIsUpdating:1];
  v8 = [(HUClipScrubberDataSource *)self currentEvents];
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUClipScrubberDataSource *)self _updateSnapshotWithUpdatedIdentifiers:v6 replacedIdentifiers:v7 forEvents:v8];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = [(HUClipScrubberDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers___block_invoke;
    block[3] = &unk_277DBC838;
    objc_copyWeak(&v14, &location);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    dispatch_async(v9, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __86__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateSnapshotWithUpdatedIdentifiers:*(a1 + 32) replacedIdentifiers:*(a1 + 40) forEvents:*(a1 + 48)];
}

- (id)_snapshotForEvents:(id)a3 updatedIdentifiers:(id)a4 replacedIdentifiers:(id)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CFB890]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = [MEMORY[0x277CBEB58] set];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke;
  v24 = &unk_277DBC860;
  v27 = &v28;
  v11 = v10;
  v25 = v11;
  v12 = v7;
  v26 = v12;
  [v12 enumerateObjectsUsingBlock:&v21];
  v35[0] = @"Live";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{1, v21, v22, v23, v24}];
  [v11 appendSectionsWithIdentifiers:v13];

  v34 = @"Live";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v11 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:@"Live"];

  v15 = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_31(v29[5], v8);
  v16 = [v15 allObjects];

  [v11 reconfigureItemsWithIdentifiers:v16];
  v17 = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_31(v29[5], v9);
  v18 = [v17 allObjects];

  [v11 reloadItemsWithIdentifiers:v18];
  v19 = v11;

  _Block_object_dispose(&v28, 8);

  return v19;
}

void __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 uniqueIdentifier];
  if (v6)
  {
    if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v6] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v16 = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      [v7 appendSectionsWithIdentifiers:v8];

      if (a3 && [*(a1 + 40) count] != a3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"spacer-%@", v6];
        v12 = *(a1 + 32);
        v14[0] = v10;
        v14[1] = v6;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
        [v12 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v6];
      }

      else
      {
        v9 = *(a1 + 32);
        v15 = v6;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
        [v9 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:v6];
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[HUClipScrubberDataSource _snapshotForEvents:updatedIdentifiers:replacedIdentifiers:]_block_invoke";
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%s event's uniqueIdentifier is nil: %@", buf, 0x16u);
    }
  }
}

id __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_31(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_2;
    v7[3] = &unk_277DBC888;
    v8 = v3;
    v5 = [v4 na_filter:v7];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "identifier not present in exitingIdentifiers: %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (void)_updateSnapshotWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4 forEvents:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HUClipScrubberDataSource *)self _snapshotForEvents:v10 updatedIdentifiers:v8 replacedIdentifiers:v9];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[HUClipScrubberDataSource _updateSnapshotWithUpdatedIdentifiers:replacedIdentifiers:forEvents:]";
    v18 = 2048;
    v19 = [v11 numberOfSections];
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%s, applying snapshot with (%ld) sections", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v13 = [(HUClipScrubberDataSource *)self diffableDataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers_forEvents___block_invoke;
  v14[3] = &unk_277DB8770;
  objc_copyWeak(&v15, buf);
  [v13 applySnapshot:v11 animatingDifferences:0 completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __96__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers_forEvents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsUpdating:0];
}

- (void)_updateSnapshotForEditing
{
  v3 = [(HUClipScrubberDataSource *)self playbackEngine];
  v4 = [v3 cameraClips];

  [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUClipScrubberDataSource *)self _updateSnapshotForEditingFor:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(HUClipScrubberDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HUClipScrubberDataSource__updateSnapshotForEditing__block_invoke;
    block[3] = &unk_277DBA860;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __53__HUClipScrubberDataSource__updateSnapshotForEditing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSnapshotForEditingFor:*(a1 + 32)];
}

- (void)_updateSnapshotForEditingFor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFB890]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = -1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__10;
  v17[4] = __Block_byref_object_dispose__10;
  v18 = [MEMORY[0x277CBEB58] set];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HUClipScrubberDataSource__updateSnapshotForEditingFor___block_invoke;
  v12[3] = &unk_277DBC8B0;
  v15 = v17;
  v16 = v19;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  v14 = v7;
  [v7 na_each:v12];
  objc_initWeak(&location, self);
  v8 = [(HUClipScrubberDataSource *)self diffableDataSource];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUClipScrubberDataSource__updateSnapshotForEditingFor___block_invoke_2;
  v9[3] = &unk_277DB8770;
  objc_copyWeak(&v10, &location);
  [v8 applySnapshot:v6 animatingDifferences:0 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __57__HUClipScrubberDataSource__updateSnapshotForEditingFor___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 uniqueIdentifier];
  if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v3] & 1) == 0)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v4 = *(a1 + 32);
    v13[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v4 appendSectionsWithIdentifiers:v5];

    v6 = *(*(*(a1 + 56) + 8) + 24);
    if (v6 && v6 != [*(a1 + 40) count])
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"spacer-%@", v3];
      v9 = *(a1 + 32);
      v11[0] = v8;
      v11[1] = v3;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      [v9 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:v3];
    }

    else
    {
      v7 = *(a1 + 32);
      v12 = v3;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
      [v7 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v3];
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }
}

void __57__HUClipScrubberDataSource__updateSnapshotForEditingFor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMostRecentClipIndex];
  v1 = [WeakRetained selectionView];

  if (!v1)
  {
    v2 = +[HUClipScrubberSelectionView selectionView];
    [WeakRetained setSelectionView:v2];

    v3 = [WeakRetained clipCollectionView];
    v4 = [WeakRetained selectionView];
    [v3 addSubview:v4];
  }

  [WeakRetained setSelectionViewHidden:1];
  v5 = [WeakRetained currentEvent];

  if (v5)
  {
    objc_opt_class();
    v6 = [WeakRetained currentEvent];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [WeakRetained diffableDataSource];
      v10 = [v8 uniqueIdentifier];
      v11 = [v9 indexForSectionIdentifier:v10];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [WeakRetained mostRecentClipIndex];
      }

      [WeakRetained setLastSelectedClipIndex:v11];
    }
  }

  [WeakRetained updateSelectionViewIfNeeded];
}

- (id)recordingSectionCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v9;
  if (!v12)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (!v13)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_7:
    v14 = 0;
  }

  if ([(HUClipScrubberDataSource *)self isSpacerAtIndexPath:v10])
  {
    v17 = [(HUClipScrubberDataSource *)self spacerCellForCollectionView:v8 forEvent:v12 atIndexPath:v10];
  }

  else
  {
    v17 = [v8 dequeueReusableCellWithReuseIdentifier:@"HUCameraEventRecordingCellIdentifier" forIndexPath:v10];
    v18 = [(HUClipScrubberDataSource *)self displayMode];
    v19 = [(HUClipScrubberDataSource *)self playbackEngine];
    v20 = [v19 isCameraPortraitMode];
    v21 = [(HUClipScrubberDataSource *)self timeController];
    [v17 updateWithCameraClipEvent:v14 mode:v18 portraitMode:v20 timeController:v21];

    v22 = [(HUClipScrubberDataSource *)self lastSelectedClipIndex];
    if (v22 == [v10 section])
    {
      v23 = [(HUClipScrubberDataSource *)self selectionView];
      [v23 updateFrameToMatchView:v17];
    }
  }

  return v17;
}

- (id)reachabilitySectionCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  objc_opt_class();
  v11 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([(HUClipScrubberDataSource *)self isSpacerAtIndexPath:v9])
  {
    v14 = [(HUClipScrubberDataSource *)self spacerCellForCollectionView:v10 forEvent:v11 atIndexPath:v9];
  }

  else
  {
    v14 = [v10 dequeueReusableCellWithReuseIdentifier:@"HUCameraEventReachabilityCellIdentifier" forIndexPath:v9];

    [v14 updateWithReachabilityEventContainer:v13 mode:{-[HUClipScrubberDataSource displayMode](self, "displayMode")}];
    v15 = [(HUClipScrubberDataSource *)self lastSelectedClipIndex];
    if (v15 != [v9 section])
    {
      goto LABEL_9;
    }

    v10 = [(HUClipScrubberDataSource *)self selectionView];
    [v10 updateFrameToMatchView:v14];
  }

LABEL_9:

  return v14;
}

- (id)spacerCellForCollectionView:(id)a3 forEvent:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 dequeueReusableCellWithReuseIdentifier:@"HUCameraEventSpacerCellIdentifier" forIndexPath:v9];
  v11 = [(HUClipScrubberDataSource *)self playbackEngine];
  if ([v11 isFirstEventOfTheDay:v8])
  {
    v12 = [v8 dateOfOccurrence];
    v13 = [v12 hf_isMidnight] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  if ([v9 section] < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = -[HUClipScrubberDataSource previousEventForSection:](self, "previousEventForSection:", [v9 section]);
  }

  [v10 updateWithRecordingEvent:v8 previousEvent:v14 spanningMultipleDays:v13];

  return v10;
}

- (void)beginTimeScaleTrackingForPinchGesture:(id)a3
{
  v5 = a3;
  [(HUClipScrubberDataSource *)self lastGestureScale];
  if (v4 < 1.0)
  {
    [(HUClipScrubberDataSource *)self setLastGestureScale:1.0];
  }

  [(HUClipScrubberDataSource *)self lastGestureScale];
  [v5 setScale:?];
}

- (void)changeTimeScaleForPinchGesture:(id)a3
{
  v6 = a3;
  v4 = [(HUClipScrubberDataSource *)self currentEvent];

  if (v4)
  {
    v5 = [(HUClipScrubberDataSource *)self timeController];
    [v6 scale];
    [v5 clampGestureScale:?];
    [v6 setScale:?];

    [v6 scale];
    [(HUClipScrubberDataSource *)self changeTimeScaleForNewScale:?];
  }
}

- (void)changeTimeScaleForNewScale:(double)a3
{
  [(HUClipScrubberDataSource *)self lastGestureScale];
  if (vabdd_f64(v5, a3) >= 0.011)
  {
    v6 = [(HUClipScrubberDataSource *)self timeController];
    [v6 updateTimeScaleForGestureScale:a3];

    v7 = [(HUClipScrubberDataSource *)self clipCollectionView];
    [v7 reloadData];

    [(HUClipScrubberDataSource *)self setLastGestureScale:a3];
  }
}

- (double)offsetForEvent:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUClipScrubberDataSource *)self diffableDataSource];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 indexForSectionIdentifier:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v8 = [(HUClipScrubberDataSource *)self currentEvents];
  if ([v8 count])
  {
    v9 = [v4 isComplete];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HUClipScrubberDataSource *)self playbackEngine];
    v11 = [v10 cameraClips];
    v8 = [v11 lastObject];

    v12 = [(HUClipScrubberDataSource *)self diffableDataSource];
    v13 = [v8 uniqueIdentifier];
    v7 = [v12 indexForSectionIdentifier:v13];

    v14 = HFLogForCategory();
    v15 = v14;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v43 = 138412290;
        v44 = v4;
        _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "Clip:%@ not found in current clips.", &v43, 0xCu);
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412546;
      v44 = v8;
      v45 = 2112;
      v46 = *&v4;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Jumping to the most recent clip in the timeline:%@ for requested event:%@", &v43, 0x16u);
    }

    v19 = MEMORY[0x277D144D0];
    v20 = [v8 dateOfOccurrence];
    v21 = [v19 clipPositionWithDate:v20 inClip:v8];
    v22 = [(HUClipScrubberDataSource *)self playbackEngine];
    [v22 setPlaybackPosition:v21];

    v23 = [(HUClipScrubberDataSource *)self playbackEngine];
    [v23 play];

LABEL_14:
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:v7 != 0 inSection:v7];
    v24 = [(HUClipScrubberDataSource *)self clipCollectionView];
    v25 = [v24 layoutAttributesForItemAtIndexPath:v16];

    if (v25)
    {
      [v25 frame];
      v17 = v26;
      v28 = v27;
    }

    else
    {
      v29 = [(HUClipScrubberDataSource *)self clipCollectionView];
      v30 = [v29 cellForItemAtIndexPath:v16];

      if (!v30)
      {
        v39 = HFLogForCategory();
        v17 = 0.0;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v42 = [v4 hf_prettyDescription];
          v43 = 136315650;
          v44 = "[HUClipScrubberDataSource offsetForEvent:]";
          v45 = 2112;
          v46 = *&v16;
          v47 = 2112;
          v48 = v42;
          _os_log_error_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_ERROR, "%s: Could not determine offset for indexPath: %@; event: %@", &v43, 0x20u);
        }

        goto LABEL_25;
      }

      [v30 frame];
      v17 = v31;
      v28 = v32;
    }

    v33 = [(HUClipScrubberDataSource *)self currentDate];
    v34 = [v4 dateOfOccurrence];
    [v33 timeIntervalSinceDate:v34];
    v36 = v35;

    if (v36 < 1.0)
    {
      goto LABEL_26;
    }

    [v4 hf_duration];
    *&v37 = fmin(v36 / v37, 1.0);
    v38 = *&v37;
    v17 = v17 + v28 * *&v37;
    if (v17 != INFINITY)
    {
      goto LABEL_26;
    }

    v39 = HFLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [v4 hf_duration];
      v43 = 134218752;
      v44 = 0x7FF0000000000000;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      v48 = v41;
      v49 = 2048;
      v50 = v38;
      _os_log_error_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_ERROR, "Offset is invalid: %lf, elapsed: %lf, duration: %lf, percentWidth: %lf", &v43, 0x2Au);
    }

    v17 = INFINITY;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

LABEL_8:

LABEL_9:
  v16 = HFLogForCategory();
  v17 = 0.0;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = [v4 hf_prettyDescription];
    v43 = 136315394;
    v44 = "[HUClipScrubberDataSource offsetForEvent:]";
    v45 = 2112;
    v46 = *&v18;
    _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "%s: Offset not found for event: %@", &v43, 0x16u);
  }

LABEL_27:

  return v17;
}

- (BOOL)isValidRecordingEventAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(HUClipScrubberDataSource *)self currentEvents];
  v7 = [v6 count];

  v8 = 0;
  if (v4 && v5 < v7)
  {
    v9 = -[HUClipScrubberDataSource eventForSection:](self, "eventForSection:", [v4 section]);
    v8 = [v9 containerType] == 1;
  }

  return v8;
}

- (id)eventForSection:(unint64_t)a3
{
  v5 = [(HUClipScrubberDataSource *)self currentEvents];
  v6 = [v5 count];

  v7 = [(HUClipScrubberDataSource *)self currentEvents];
  v8 = v7;
  if (v6 <= a3)
  {
    [v7 lastObject];
  }

  else
  {
    [v7 objectAtIndexedSubscript:a3];
  }
  v9 = ;

  return v9;
}

- (id)previousEventForSection:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(HUClipScrubberDataSource *)self eventForSection:a3 - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)startDateFromCell:(id)a3
{
  v4 = a3;
  [v4 frame];
  v5 = [(HUClipScrubberDataSource *)self selectedDateFromCell:v4 atCurrentOffset:?];

  return v5;
}

- (id)selectedDateFromCell:(id)a3 atCurrentOffset:(double)a4
{
  v6 = a3;
  [v6 frame];
  MaxX = CGRectGetMaxX(v21);
  v8 = a4;
  v9 = (MaxX - v8);
  [v6 frame];
  v11 = v10;

  v12 = 1.0 - v9 / v11;
  v13 = v12;
  v14 = [(HUClipScrubberDataSource *)self currentEvent];
  [v14 hf_duration];
  *&v13 = v15 * v13;

  v16 = [(HUClipScrubberDataSource *)self currentEvent];
  v17 = [v16 dateOfOccurrence];
  v18 = [v17 dateByAddingTimeInterval:*&v13];

  [(HUClipScrubberDataSource *)self setCurrentDate:v18];

  return v18;
}

- (double)scrubbingResolutionForClip:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = [(HUClipScrubberDataSource *)self indexPathsForClip:?];
  if (v4)
  {
    v5 = [(HUClipScrubberDataSource *)self clipCollectionView];
    v6 = [v5 cellForItemAtIndexPath:v4];

    [v6 bounds];
    v8 = v7;
    [v6 contentScaleFactor];
    v10 = v9 * v8;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4
{
  v20 = a4;
  v5 = [(HUClipScrubberDataSource *)self isEditing];
  v6 = [(HUClipScrubberDataSource *)self playbackEngine];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 cameraClips];
    v9 = [v8 count];

    if (v9)
    {
      if ([(HUClipScrubberDataSource *)self lastSelectedClipIndex]>= v9)
      {
        [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v9 - 1];
      }

      v10 = [(HUClipScrubberDataSource *)self playbackEngine];
      v11 = [v10 cameraClips];
      v12 = [v11 objectAtIndexedSubscript:{-[HUClipScrubberDataSource lastSelectedClipIndex](self, "lastSelectedClipIndex")}];
      [(HUClipScrubberDataSource *)self setCurrentEvent:v12];
    }

    [(HUClipScrubberDataSource *)self _updateSnapshotForEditing];
  }

  else
  {
    v13 = [v6 isCameraPortraitMode];
    v14 = [(HUClipScrubberDataSource *)self timeController];
    [v14 setPortraitMode:v13];

    [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
    v15 = [(HUClipScrubberDataSource *)self timeController];
    v16 = [(HUClipScrubberDataSource *)self playbackEngine];
    v17 = [v16 clipWithLongestDuration];
    [v15 recalculateMaximumPosterFrameDuration:v17];

    v18 = [v20 updatedIdentifiers];
    v19 = [v20 replacedIdentifiers];
    [(HUClipScrubberDataSource *)self _updateSnapshotWithUpdatedIdentifiers:v18 replacedIdentifiers:v19];
  }
}

- (id)indexPathsForClip:(id)a3
{
  v4 = a3;
  v5 = [(HUClipScrubberDataSource *)self diffableDataSource];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 indexPathForItemIdentifier:v6];

  return v7;
}

- (void)updateMostRecentClipIndex
{
  v3 = [(HUClipScrubberDataSource *)self currentEvents];
  self->_mostRecentClipIndex = [v3 count] - 1;
}

- (void)setSelectionViewHidden:(BOOL)a3
{
  v3 = !a3;
  v6 = [(HUClipScrubberDataSource *)self selectionView];
  v4 = [v6 layer];
  *&v5 = v3;
  [v4 setOpacity:v5];
}

- (void)updateSelectionViewIfNeeded
{
  if ([(HUClipScrubberDataSource *)self isEditing])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v3 = [(HUClipScrubberDataSource *)self clipCollectionView];
    v4 = [v3 visibleCells];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HUClipScrubberDataSource_updateSelectionViewIfNeeded__block_invoke;
    v8[3] = &unk_277DBC8D8;
    v8[4] = self;
    v8[5] = &v9;
    [v4 enumerateObjectsUsingBlock:v8];

    if ((v10[3] & 1) == 0)
    {
      v5 = [(HUClipScrubberDataSource *)self currentEvents];
      v6 = [v5 count];

      if (v6)
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v6 - 1];
        [(HUClipScrubberDataSource *)self updateToClipAtIndexPath:v7];
      }
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __55__HUClipScrubberDataSource_updateSelectionViewIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) clipCollectionView];
  v4 = [v3 indexPathForCell:v8];

  v5 = [v4 section];
  if (v5 == [*(a1 + 32) lastSelectedClipIndex] && objc_msgSend(*(a1 + 32), "isValidEventAtIndexPath:", v4))
  {
    [*(a1 + 32) toggleSelectionStateForItemAtIndexPath:v4];
    v6 = [*(a1 + 32) selectionView];
    [v6 updateFrameToMatchView:v8];

    [*(a1 + 32) setSelectionViewHidden:0];
    [*(a1 + 32) updateToClipAtIndexPath:v4];
    v7 = [*(a1 + 32) clipCollectionView];
    [v7 selectItemAtIndexPath:v4 animated:0 scrollPosition:0];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)expandToMaximumZoom
{
  v3 = [(HUClipScrubberDataSource *)self timeController];
  [v3 expandTimelineToMaximumZoom];

  v4 = [(HUClipScrubberDataSource *)self clipCollectionView];
  [v4 reloadData];
}

- (void)shrinkToMinimumZoom
{
  v3 = [(HUClipScrubberDataSource *)self timeController];
  [v3 shrinkTimelineToMinimumZoom];

  v4 = [(HUClipScrubberDataSource *)self clipCollectionView];
  [v4 reloadData];
}

- (HFCameraRecordingEvent)currentEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEvent);

  return WeakRetained;
}

- (UICollectionView)clipCollectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_clipCollectionView);

  return WeakRetained;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (HFCameraRecordingEvent)lastUpdatedEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_lastUpdatedEvent);

  return WeakRetained;
}

@end