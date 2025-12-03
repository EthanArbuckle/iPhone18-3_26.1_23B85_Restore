@interface HUClipScrubberDataSource
- (BOOL)isSpacerAtIndexPath:(id)path;
- (BOOL)isValidRecordingEventAtIndexPath:(id)path;
- (HFCameraPlaybackEngine)playbackEngine;
- (HFCameraRecordingEvent)currentEvent;
- (HFCameraRecordingEvent)lastUpdatedEvent;
- (HUClipScrubberDataSource)initWithPlaybackEngine:(id)engine;
- (NSArray)currentEvents;
- (UICollectionView)clipCollectionView;
- (double)offsetForEvent:(id)event;
- (double)posterFrameWidth;
- (double)scrubbingResolutionForClip:(id)clip;
- (id)_snapshotForEvents:(id)events updatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers;
- (id)eventForSection:(unint64_t)section;
- (id)indexPathsForClip:(id)clip;
- (id)previousEventForSection:(unint64_t)section;
- (id)reachabilitySectionCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path;
- (id)recordingSectionCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path;
- (id)selectedDateFromCell:(id)cell atCurrentOffset:(double)offset;
- (id)spacerCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path;
- (id)startDateFromCell:(id)cell;
- (void)_addDiffableDataSource;
- (void)_updateSnapshot;
- (void)_updateSnapshotForEditing;
- (void)_updateSnapshotForEditingFor:(id)for;
- (void)_updateSnapshotWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers;
- (void)_updateSnapshotWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers forEvents:(id)events;
- (void)beginTimeScaleTrackingForPinchGesture:(id)gesture;
- (void)changeTimeScaleForNewScale:(double)scale;
- (void)changeTimeScaleForPinchGesture:(id)gesture;
- (void)expandToMaximumZoom;
- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache;
- (void)reloadEvents;
- (void)setClipCollectionView:(id)view;
- (void)setCurrentEvent:(id)event;
- (void)setEditing:(BOOL)editing;
- (void)setPlaybackEngine:(id)engine;
- (void)setSelectionViewHidden:(BOOL)hidden;
- (void)shrinkToMinimumZoom;
- (void)toggleSelectionStateForItemAtIndexPath:(id)path;
- (void)updateMostRecentClipIndex;
- (void)updateSelectionViewIfNeeded;
- (void)updateToClipAtIndexPath:(id)path;
@end

@implementation HUClipScrubberDataSource

- (NSArray)currentEvents
{
  isEditing = [(HUClipScrubberDataSource *)self isEditing];
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  v5 = playbackEngine;
  if (isEditing)
  {
    [playbackEngine cameraClips];
  }

  else
  {
    [playbackEngine cameraEvents];
  }
  v6 = ;

  return v6;
}

- (HUClipScrubberDataSource)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v18.receiver = self;
  v18.super_class = HUClipScrubberDataSource;
  v5 = [(HUClipScrubberDataSource *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(HUClipScrubberDataSource *)v5 setPlaybackEngine:engineCopy];
    v7 = objc_alloc_init(HUClipScrubberTimeController);
    timeController = v6->_timeController;
    v6->_timeController = v7;

    v6->_lastSelectedClipIndex = -1;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.Home.HUClipScrubberDataSource.snapshotQueue", v9);
    snapshotQueue = v6->_snapshotQueue;
    v6->_snapshotQueue = v10;

    [(HUClipScrubberDataSource *)v6 reloadEvents];
    cameraEvents = [engineCopy cameraEvents];
    lastObject = [cameraEvents lastObject];
    objc_storeWeak(&v6->_currentEvent, lastObject);

    WeakRetained = objc_loadWeakRetained(&v6->_currentEvent);
    dateOfOccurrence = [WeakRetained dateOfOccurrence];
    currentDate = v6->_currentDate;
    v6->_currentDate = dateOfOccurrence;
  }

  return v6;
}

- (void)reloadEvents
{
  v14 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  isCameraPortraitMode = [playbackEngine isCameraPortraitMode];
  timeController = [(HUClipScrubberDataSource *)self timeController];
  [timeController setPortraitMode:isCameraPortraitMode];

  [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
  timeController2 = [(HUClipScrubberDataSource *)self timeController];
  playbackEngine2 = [(HUClipScrubberDataSource *)self playbackEngine];
  clipWithLongestDuration = [playbackEngine2 clipWithLongestDuration];
  [timeController2 recalculateMaximumPosterFrameDuration:clipWithLongestDuration];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine3 = [(HUClipScrubberDataSource *)self playbackEngine];
    cameraEvents = [playbackEngine3 cameraEvents];
    v12 = 134217984;
    v13 = [cameraEvents count];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Reloaded clip data source with %lu clips.", &v12, 0xCu);
  }

  [(HUClipScrubberDataSource *)self _updateSnapshot];
}

- (void)setPlaybackEngine:(id)engine
{
  obj = engine;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_playbackEngine);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_playbackEngine, obj);
    defaultOptions = [MEMORY[0x277D144C8] defaultOptions];
    [obj addObserver:self withOptions:defaultOptions];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    [(HUClipScrubberDataSource *)self setDisplayMode:editing];
    [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
    if (editingCopy)
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

- (void)toggleSelectionStateForItemAtIndexPath:(id)path
{
  pathCopy = path;
  isEditing = [(HUClipScrubberDataSource *)self isEditing];
  clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
  v7 = clipCollectionView;
  if (isEditing)
  {
    [clipCollectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }

  else
  {
    [clipCollectionView deselectItemAtIndexPath:pathCopy animated:0];
  }
}

- (void)updateToClipAtIndexPath:(id)path
{
  pathCopy = path;
  -[HUClipScrubberDataSource setLastSelectedClipIndex:](self, "setLastSelectedClipIndex:", [pathCopy section]);
  v4 = -[HUClipScrubberDataSource eventForSection:](self, "eventForSection:", [pathCopy section]);
  [(HUClipScrubberDataSource *)self setCurrentEvent:v4];

  [(HUClipScrubberDataSource *)self setCurrentTimelineState:2];
  if ([pathCopy section])
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{objc_msgSend(pathCopy, "section")}];
  }

  else
  {
    v5 = pathCopy;
  }

  v6 = v5;
  clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
  v8 = [clipCollectionView cellForItemAtIndexPath:v6];

  if (v8)
  {
    selectionView = [(HUClipScrubberDataSource *)self selectionView];
    [selectionView updateFrameToMatchView:v8];
  }
}

- (void)setCurrentEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_currentEvent);

  if (WeakRetained != eventCopy)
  {
    objc_storeWeak(&self->_currentEvent, eventCopy);
    currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
    v7 = [currentEvents indexOfObject:eventCopy];

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
        v14 = eventCopy;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Updating last selected index after current clip change to %@", &v13, 0xCu);
      }

      [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v7];
      if ([(HUClipScrubberDataSource *)self isEditing])
      {
        [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v7];
        [(HUClipScrubberDataSource *)self updateSelectionViewIfNeeded];
        clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
        v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{-[HUClipScrubberDataSource lastSelectedClipIndex](self, "lastSelectedClipIndex")}];
        v11 = [clipCollectionView cellForItemAtIndexPath:v10];

        selectionView = [(HUClipScrubberDataSource *)self selectionView];
        [selectionView updateFrameToMatchView:v11];
      }
    }
  }
}

- (BOOL)isSpacerAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v4 = [pathCopy row] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)posterFrameWidth
{
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  liveCameraSource = [playbackEngine liveCameraSource];
  [liveCameraSource aspectRatio];
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

- (void)setClipCollectionView:(id)view
{
  obj = view;
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
  clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__HUClipScrubberDataSource__addDiffableDataSource__block_invoke;
  v10 = &unk_277DBC7F0;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithCollectionView:clipCollectionView cellProvider:&v7];
  [(HUClipScrubberDataSource *)self setDiffableDataSource:v5, v7, v8, v9, v10];

  diffableDataSource = [(HUClipScrubberDataSource *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:&__block_literal_global_97];

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

- (void)_updateSnapshotWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers
{
  identifiersCopy = identifiers;
  replacedIdentifiersCopy = replacedIdentifiers;
  [(HUClipScrubberDataSource *)self setIsUpdating:1];
  currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUClipScrubberDataSource *)self _updateSnapshotWithUpdatedIdentifiers:identifiersCopy replacedIdentifiers:replacedIdentifiersCopy forEvents:currentEvents];
  }

  else
  {
    objc_initWeak(&location, self);
    snapshotQueue = [(HUClipScrubberDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers___block_invoke;
    block[3] = &unk_277DBC838;
    objc_copyWeak(&v14, &location);
    v11 = identifiersCopy;
    v12 = replacedIdentifiersCopy;
    v13 = currentEvents;
    dispatch_async(snapshotQueue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __86__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateSnapshotWithUpdatedIdentifiers:*(a1 + 32) replacedIdentifiers:*(a1 + 40) forEvents:*(a1 + 48)];
}

- (id)_snapshotForEvents:(id)events updatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers
{
  v35[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  identifiersCopy = identifiers;
  replacedIdentifiersCopy = replacedIdentifiers;
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
  v12 = eventsCopy;
  v26 = v12;
  [v12 enumerateObjectsUsingBlock:&v21];
  v35[0] = @"Live";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{1, v21, v22, v23, v24}];
  [v11 appendSectionsWithIdentifiers:v13];

  v34 = @"Live";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v11 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:@"Live"];

  v15 = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_31(v29[5], identifiersCopy);
  allObjects = [v15 allObjects];

  [v11 reconfigureItemsWithIdentifiers:allObjects];
  v17 = __86__HUClipScrubberDataSource__snapshotForEvents_updatedIdentifiers_replacedIdentifiers___block_invoke_31(v29[5], replacedIdentifiersCopy);
  allObjects2 = [v17 allObjects];

  [v11 reloadItemsWithIdentifiers:allObjects2];
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

- (void)_updateSnapshotWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers forEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replacedIdentifiersCopy = replacedIdentifiers;
  eventsCopy = events;
  v11 = [(HUClipScrubberDataSource *)self _snapshotForEvents:eventsCopy updatedIdentifiers:identifiersCopy replacedIdentifiers:replacedIdentifiersCopy];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[HUClipScrubberDataSource _updateSnapshotWithUpdatedIdentifiers:replacedIdentifiers:forEvents:]";
    v18 = 2048;
    numberOfSections = [v11 numberOfSections];
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%s, applying snapshot with (%ld) sections", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  diffableDataSource = [(HUClipScrubberDataSource *)self diffableDataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__HUClipScrubberDataSource__updateSnapshotWithUpdatedIdentifiers_replacedIdentifiers_forEvents___block_invoke;
  v14[3] = &unk_277DB8770;
  objc_copyWeak(&v15, buf);
  [diffableDataSource applySnapshot:v11 animatingDifferences:0 completion:v14];

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
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  cameraClips = [playbackEngine cameraClips];

  [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUClipScrubberDataSource *)self _updateSnapshotForEditingFor:cameraClips];
  }

  else
  {
    objc_initWeak(&location, self);
    snapshotQueue = [(HUClipScrubberDataSource *)self snapshotQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HUClipScrubberDataSource__updateSnapshotForEditing__block_invoke;
    block[3] = &unk_277DBA860;
    objc_copyWeak(&v8, &location);
    v7 = cameraClips;
    dispatch_async(snapshotQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __53__HUClipScrubberDataSource__updateSnapshotForEditing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSnapshotForEditingFor:*(a1 + 32)];
}

- (void)_updateSnapshotForEditingFor:(id)for
{
  forCopy = for;
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
  v7 = forCopy;
  v14 = v7;
  [v7 na_each:v12];
  objc_initWeak(&location, self);
  diffableDataSource = [(HUClipScrubberDataSource *)self diffableDataSource];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUClipScrubberDataSource__updateSnapshotForEditingFor___block_invoke_2;
  v9[3] = &unk_277DB8770;
  objc_copyWeak(&v10, &location);
  [diffableDataSource applySnapshot:v6 animatingDifferences:0 completion:v9];

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

- (id)recordingSectionCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path
{
  viewCopy = view;
  eventCopy = event;
  pathCopy = path;
  v11 = objc_opt_class();
  v12 = eventCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_7:
    v14 = 0;
  }

  if ([(HUClipScrubberDataSource *)self isSpacerAtIndexPath:pathCopy])
  {
    v17 = [(HUClipScrubberDataSource *)self spacerCellForCollectionView:viewCopy forEvent:v12 atIndexPath:pathCopy];
  }

  else
  {
    v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"HUCameraEventRecordingCellIdentifier" forIndexPath:pathCopy];
    displayMode = [(HUClipScrubberDataSource *)self displayMode];
    playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
    isCameraPortraitMode = [playbackEngine isCameraPortraitMode];
    timeController = [(HUClipScrubberDataSource *)self timeController];
    [v17 updateWithCameraClipEvent:v14 mode:displayMode portraitMode:isCameraPortraitMode timeController:timeController];

    lastSelectedClipIndex = [(HUClipScrubberDataSource *)self lastSelectedClipIndex];
    if (lastSelectedClipIndex == [pathCopy section])
    {
      selectionView = [(HUClipScrubberDataSource *)self selectionView];
      [selectionView updateFrameToMatchView:v17];
    }
  }

  return v17;
}

- (id)reachabilitySectionCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path
{
  eventCopy = event;
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v11 = eventCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([(HUClipScrubberDataSource *)self isSpacerAtIndexPath:pathCopy])
  {
    v14 = [(HUClipScrubberDataSource *)self spacerCellForCollectionView:viewCopy forEvent:v11 atIndexPath:pathCopy];
  }

  else
  {
    v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"HUCameraEventReachabilityCellIdentifier" forIndexPath:pathCopy];

    [v14 updateWithReachabilityEventContainer:v13 mode:{-[HUClipScrubberDataSource displayMode](self, "displayMode")}];
    lastSelectedClipIndex = [(HUClipScrubberDataSource *)self lastSelectedClipIndex];
    if (lastSelectedClipIndex != [pathCopy section])
    {
      goto LABEL_9;
    }

    viewCopy = [(HUClipScrubberDataSource *)self selectionView];
    [viewCopy updateFrameToMatchView:v14];
  }

LABEL_9:

  return v14;
}

- (id)spacerCellForCollectionView:(id)view forEvent:(id)event atIndexPath:(id)path
{
  eventCopy = event;
  pathCopy = path;
  v10 = [view dequeueReusableCellWithReuseIdentifier:@"HUCameraEventSpacerCellIdentifier" forIndexPath:pathCopy];
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  if ([playbackEngine isFirstEventOfTheDay:eventCopy])
  {
    dateOfOccurrence = [eventCopy dateOfOccurrence];
    v13 = [dateOfOccurrence hf_isMidnight] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  if ([pathCopy section] < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = -[HUClipScrubberDataSource previousEventForSection:](self, "previousEventForSection:", [pathCopy section]);
  }

  [v10 updateWithRecordingEvent:eventCopy previousEvent:v14 spanningMultipleDays:v13];

  return v10;
}

- (void)beginTimeScaleTrackingForPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  [(HUClipScrubberDataSource *)self lastGestureScale];
  if (v4 < 1.0)
  {
    [(HUClipScrubberDataSource *)self setLastGestureScale:1.0];
  }

  [(HUClipScrubberDataSource *)self lastGestureScale];
  [gestureCopy setScale:?];
}

- (void)changeTimeScaleForPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  currentEvent = [(HUClipScrubberDataSource *)self currentEvent];

  if (currentEvent)
  {
    timeController = [(HUClipScrubberDataSource *)self timeController];
    [gestureCopy scale];
    [timeController clampGestureScale:?];
    [gestureCopy setScale:?];

    [gestureCopy scale];
    [(HUClipScrubberDataSource *)self changeTimeScaleForNewScale:?];
  }
}

- (void)changeTimeScaleForNewScale:(double)scale
{
  [(HUClipScrubberDataSource *)self lastGestureScale];
  if (vabdd_f64(v5, scale) >= 0.011)
  {
    timeController = [(HUClipScrubberDataSource *)self timeController];
    [timeController updateTimeScaleForGestureScale:scale];

    clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
    [clipCollectionView reloadData];

    [(HUClipScrubberDataSource *)self setLastGestureScale:scale];
  }
}

- (double)offsetForEvent:(id)event
{
  v51 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  diffableDataSource = [(HUClipScrubberDataSource *)self diffableDataSource];
  uniqueIdentifier = [eventCopy uniqueIdentifier];
  v7 = [diffableDataSource indexForSectionIdentifier:uniqueIdentifier];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
  if ([currentEvents count])
  {
    isComplete = [eventCopy isComplete];

    if (!isComplete)
    {
      goto LABEL_9;
    }

    playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
    cameraClips = [playbackEngine cameraClips];
    currentEvents = [cameraClips lastObject];

    diffableDataSource2 = [(HUClipScrubberDataSource *)self diffableDataSource];
    uniqueIdentifier2 = [currentEvents uniqueIdentifier];
    v7 = [diffableDataSource2 indexForSectionIdentifier:uniqueIdentifier2];

    v14 = HFLogForCategory();
    v15 = v14;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v43 = 138412290;
        v44 = eventCopy;
        _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "Clip:%@ not found in current clips.", &v43, 0xCu);
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412546;
      v44 = currentEvents;
      v45 = 2112;
      v46 = *&eventCopy;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Jumping to the most recent clip in the timeline:%@ for requested event:%@", &v43, 0x16u);
    }

    v19 = MEMORY[0x277D144D0];
    dateOfOccurrence = [currentEvents dateOfOccurrence];
    v21 = [v19 clipPositionWithDate:dateOfOccurrence inClip:currentEvents];
    playbackEngine2 = [(HUClipScrubberDataSource *)self playbackEngine];
    [playbackEngine2 setPlaybackPosition:v21];

    playbackEngine3 = [(HUClipScrubberDataSource *)self playbackEngine];
    [playbackEngine3 play];

LABEL_14:
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:v7 != 0 inSection:v7];
    clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
    v25 = [clipCollectionView layoutAttributesForItemAtIndexPath:v16];

    if (v25)
    {
      [v25 frame];
      v17 = v26;
      v28 = v27;
    }

    else
    {
      clipCollectionView2 = [(HUClipScrubberDataSource *)self clipCollectionView];
      v30 = [clipCollectionView2 cellForItemAtIndexPath:v16];

      if (!v30)
      {
        v39 = HFLogForCategory();
        v17 = 0.0;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          hf_prettyDescription = [eventCopy hf_prettyDescription];
          v43 = 136315650;
          v44 = "[HUClipScrubberDataSource offsetForEvent:]";
          v45 = 2112;
          v46 = *&v16;
          v47 = 2112;
          v48 = hf_prettyDescription;
          _os_log_error_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_ERROR, "%s: Could not determine offset for indexPath: %@; event: %@", &v43, 0x20u);
        }

        goto LABEL_25;
      }

      [v30 frame];
      v17 = v31;
      v28 = v32;
    }

    currentDate = [(HUClipScrubberDataSource *)self currentDate];
    dateOfOccurrence2 = [eventCopy dateOfOccurrence];
    [currentDate timeIntervalSinceDate:dateOfOccurrence2];
    v36 = v35;

    if (v36 < 1.0)
    {
      goto LABEL_26;
    }

    [eventCopy hf_duration];
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
      [eventCopy hf_duration];
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
    hf_prettyDescription2 = [eventCopy hf_prettyDescription];
    v43 = 136315394;
    v44 = "[HUClipScrubberDataSource offsetForEvent:]";
    v45 = 2112;
    v46 = *&hf_prettyDescription2;
    _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "%s: Offset not found for event: %@", &v43, 0x16u);
  }

LABEL_27:

  return v17;
}

- (BOOL)isValidRecordingEventAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
  v7 = [currentEvents count];

  v8 = 0;
  if (pathCopy && section < v7)
  {
    v9 = -[HUClipScrubberDataSource eventForSection:](self, "eventForSection:", [pathCopy section]);
    v8 = [v9 containerType] == 1;
  }

  return v8;
}

- (id)eventForSection:(unint64_t)section
{
  currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
  v6 = [currentEvents count];

  currentEvents2 = [(HUClipScrubberDataSource *)self currentEvents];
  v8 = currentEvents2;
  if (v6 <= section)
  {
    [currentEvents2 lastObject];
  }

  else
  {
    [currentEvents2 objectAtIndexedSubscript:section];
  }
  v9 = ;

  return v9;
}

- (id)previousEventForSection:(unint64_t)section
{
  if (section)
  {
    v4 = [(HUClipScrubberDataSource *)self eventForSection:section - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)startDateFromCell:(id)cell
{
  cellCopy = cell;
  [cellCopy frame];
  v5 = [(HUClipScrubberDataSource *)self selectedDateFromCell:cellCopy atCurrentOffset:?];

  return v5;
}

- (id)selectedDateFromCell:(id)cell atCurrentOffset:(double)offset
{
  cellCopy = cell;
  [cellCopy frame];
  MaxX = CGRectGetMaxX(v21);
  offsetCopy = offset;
  v9 = (MaxX - offsetCopy);
  [cellCopy frame];
  v11 = v10;

  v12 = 1.0 - v9 / v11;
  v13 = v12;
  currentEvent = [(HUClipScrubberDataSource *)self currentEvent];
  [currentEvent hf_duration];
  *&v13 = v15 * v13;

  currentEvent2 = [(HUClipScrubberDataSource *)self currentEvent];
  dateOfOccurrence = [currentEvent2 dateOfOccurrence];
  v18 = [dateOfOccurrence dateByAddingTimeInterval:*&v13];

  [(HUClipScrubberDataSource *)self setCurrentDate:v18];

  return v18;
}

- (double)scrubbingResolutionForClip:(id)clip
{
  if (!clip)
  {
    return 0.0;
  }

  v4 = [(HUClipScrubberDataSource *)self indexPathsForClip:?];
  if (v4)
  {
    clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
    v6 = [clipCollectionView cellForItemAtIndexPath:v4];

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

- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache
{
  cacheCopy = cache;
  isEditing = [(HUClipScrubberDataSource *)self isEditing];
  playbackEngine = [(HUClipScrubberDataSource *)self playbackEngine];
  v7 = playbackEngine;
  if (isEditing)
  {
    cameraClips = [playbackEngine cameraClips];
    v9 = [cameraClips count];

    if (v9)
    {
      if ([(HUClipScrubberDataSource *)self lastSelectedClipIndex]>= v9)
      {
        [(HUClipScrubberDataSource *)self setLastSelectedClipIndex:v9 - 1];
      }

      playbackEngine2 = [(HUClipScrubberDataSource *)self playbackEngine];
      cameraClips2 = [playbackEngine2 cameraClips];
      v12 = [cameraClips2 objectAtIndexedSubscript:{-[HUClipScrubberDataSource lastSelectedClipIndex](self, "lastSelectedClipIndex")}];
      [(HUClipScrubberDataSource *)self setCurrentEvent:v12];
    }

    [(HUClipScrubberDataSource *)self _updateSnapshotForEditing];
  }

  else
  {
    isCameraPortraitMode = [playbackEngine isCameraPortraitMode];
    timeController = [(HUClipScrubberDataSource *)self timeController];
    [timeController setPortraitMode:isCameraPortraitMode];

    [(HUClipScrubberDataSource *)self updateMostRecentClipIndex];
    timeController2 = [(HUClipScrubberDataSource *)self timeController];
    playbackEngine3 = [(HUClipScrubberDataSource *)self playbackEngine];
    clipWithLongestDuration = [playbackEngine3 clipWithLongestDuration];
    [timeController2 recalculateMaximumPosterFrameDuration:clipWithLongestDuration];

    updatedIdentifiers = [cacheCopy updatedIdentifiers];
    replacedIdentifiers = [cacheCopy replacedIdentifiers];
    [(HUClipScrubberDataSource *)self _updateSnapshotWithUpdatedIdentifiers:updatedIdentifiers replacedIdentifiers:replacedIdentifiers];
  }
}

- (id)indexPathsForClip:(id)clip
{
  clipCopy = clip;
  diffableDataSource = [(HUClipScrubberDataSource *)self diffableDataSource];
  uniqueIdentifier = [clipCopy uniqueIdentifier];

  v7 = [diffableDataSource indexPathForItemIdentifier:uniqueIdentifier];

  return v7;
}

- (void)updateMostRecentClipIndex
{
  currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
  self->_mostRecentClipIndex = [currentEvents count] - 1;
}

- (void)setSelectionViewHidden:(BOOL)hidden
{
  v3 = !hidden;
  selectionView = [(HUClipScrubberDataSource *)self selectionView];
  layer = [selectionView layer];
  *&v5 = v3;
  [layer setOpacity:v5];
}

- (void)updateSelectionViewIfNeeded
{
  if ([(HUClipScrubberDataSource *)self isEditing])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
    visibleCells = [clipCollectionView visibleCells];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HUClipScrubberDataSource_updateSelectionViewIfNeeded__block_invoke;
    v8[3] = &unk_277DBC8D8;
    v8[4] = self;
    v8[5] = &v9;
    [visibleCells enumerateObjectsUsingBlock:v8];

    if ((v10[3] & 1) == 0)
    {
      currentEvents = [(HUClipScrubberDataSource *)self currentEvents];
      v6 = [currentEvents count];

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
  timeController = [(HUClipScrubberDataSource *)self timeController];
  [timeController expandTimelineToMaximumZoom];

  clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
  [clipCollectionView reloadData];
}

- (void)shrinkToMinimumZoom
{
  timeController = [(HUClipScrubberDataSource *)self timeController];
  [timeController shrinkTimelineToMinimumZoom];

  clipCollectionView = [(HUClipScrubberDataSource *)self clipCollectionView];
  [clipCollectionView reloadData];
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