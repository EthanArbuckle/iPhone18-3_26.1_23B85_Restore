@interface HUCameraEventRecordingCell
- (CALayer)badgeLayer;
- (HMCameraClip)recordingEvent;
- (HUCameraEventRecordingCell)initWithFrame:(CGRect)frame;
- (HUClipScrubberTimeController)timeController;
- (HURecordingEventCellFamiliarFacesView)familiarFacesView;
- (UIView)dayBoundaryView;
- (UIView)posterFramesContainerView;
- (id)_badgeImageForSignificantEventReasons:(id)reasons;
- (id)accessibilityLabel;
- (unint64_t)numberOfFramesNeeded;
- (void)_updateBadgeLayerWithImage:(id)image inRect:(CGRect)rect;
- (void)addDayBoundaryIfNeeded;
- (void)addDebugMarker;
- (void)addPosterFrameViews;
- (void)dealloc;
- (void)displayReachabilityErrorUI;
- (void)drawEventMarkers;
- (void)hideFamiliarFaces;
- (void)prepareForReuse;
- (void)preparePosterFrameViewsForReuse;
- (void)showFamiliarFacesWithMaxWidth:(double)width;
- (void)updateBadgeLayerWithEvents:(id)events inRect:(CGRect)rect;
- (void)updateFamiliarFaces;
- (void)updateVideoCacheMarker;
- (void)updateWithCameraClipEvent:(id)event mode:(unint64_t)mode portraitMode:(BOOL)portraitMode timeController:(id)controller;
- (void)videoCacheDidAddVideo:(id)video;
- (void)videoCacheDidRemoveVideo:(id)video;
@end

@implementation HUCameraEventRecordingCell

- (HUCameraEventRecordingCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUCameraEventRecordingCell;
  v3 = [(HUCameraEventRecordingCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    posterFramesContainerView = [(HUCameraEventRecordingCell *)v3 posterFramesContainerView];
    [(HUCameraEventRecordingCell *)v4 addSubview:posterFramesContainerView];

    dayBoundaryView = [(HUCameraEventRecordingCell *)v4 dayBoundaryView];
    [(HUCameraEventRecordingCell *)v4 addSubview:dayBoundaryView];

    layer = [(HUCameraEventRecordingCell *)v4 layer];
    [layer setCornerRadius:8.0];

    [(HUCameraEventRecordingCell *)v4 setOpaque:0];
    familiarFacesView = [(HUCameraEventRecordingCell *)v4 familiarFacesView];
    [(HUCameraEventRecordingCell *)v4 addSubview:familiarFacesView];

    if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel_videoCacheDidAddVideo_ name:*MEMORY[0x277D137A8] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v4 selector:sel_videoCacheDidRemoveVideo_ name:*MEMORY[0x277D137B0] object:0];
    }
  }

  return v4;
}

- (void)dealloc
{
  if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = HUCameraEventRecordingCell;
  [(HUCameraEventRecordingCell *)&v4 dealloc];
}

- (void)videoCacheDidAddVideo:(id)video
{
  userInfo = [video userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"uniqueIdentifier"];
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  uniqueIdentifier = [recordingEvent uniqueIdentifier];
  v8 = [v5 isEqual:uniqueIdentifier];

  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HUCameraEventRecordingCell_videoCacheDidAddVideo___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __52__HUCameraEventRecordingCell_videoCacheDidAddVideo___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) debugMarkerLayer];
  [v1 setHidden:0];
}

- (void)videoCacheDidRemoveVideo:(id)video
{
  userInfo = [video userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"uniqueIdentifier"];
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  uniqueIdentifier = [recordingEvent uniqueIdentifier];
  v8 = [v5 isEqual:uniqueIdentifier];

  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HUCameraEventRecordingCell_videoCacheDidRemoveVideo___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __55__HUCameraEventRecordingCell_videoCacheDidRemoveVideo___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) debugMarkerLayer];
  [v1 setHidden:1];
}

- (HURecordingEventCellFamiliarFacesView)familiarFacesView
{
  familiarFacesView = self->_familiarFacesView;
  if (!familiarFacesView)
  {
    v4 = [[HURecordingEventCellFamiliarFacesView alloc] initWithFrame:-38.0, -40.0, 118.0, 40.0];
    v5 = self->_familiarFacesView;
    self->_familiarFacesView = v4;

    layer = [(HURecordingEventCellFamiliarFacesView *)self->_familiarFacesView layer];
    [layer setOpacity:0.0];

    familiarFacesView = self->_familiarFacesView;
  }

  return familiarFacesView;
}

- (void)updateBadgeLayerWithEvents:(id)events inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  eventsCopy = events;
  timeController = [(HUCameraEventRecordingCell *)self timeController];
  [timeController posterFrameWidth];
  v12 = v11;

  timeController2 = [(HUCameraEventRecordingCell *)self timeController];
  [timeController2 timeScale];
  v15 = v14;

  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  if (fmod(width, v12) < 18.0)
  {
    v16 = (width / v12);
  }

  else
  {
    v16 = (width / v12) + 1;
  }

  v60 = v16;
  v17 = v16 == 1;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__9;
  v57[4] = __Block_byref_object_dispose__9;
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  dateOfOccurrence = [recordingEvent dateOfOccurrence];

  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x4010000000;
  v50 = &unk_20D68B106;
  v51 = 0;
  v52 = height * 0.5 + -9.0;
  v53 = v12;
  v54 = 0x4040800000000000;
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __64__HUCameraEventRecordingCell_updateBadgeLayerWithEvents_inRect___block_invoke;
  v36 = &unk_277DBC140;
  v40 = v59;
  v21 = eventsCopy;
  v46 = v17;
  v37 = v21;
  v41 = v57;
  v44 = v15;
  v22 = v19;
  v38 = v22;
  selfCopy = self;
  v42 = v55;
  v43 = &v47;
  v45 = v12;
  v23 = [v20 imageWithActions:&v33];
  v24 = v48;
  v48[6] = width;
  v24[7] = height;
  v24[4] = x + -9.0;
  v24[5] = y;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v25 = v48[4];
  v26 = v48[5];
  v27 = v48[6];
  v28 = v48[7];
  badgeLayer = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer setFrame:{v25, v26, v27, v28}];

  cGImage = [v23 CGImage];
  badgeLayer2 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer2 setContents:cGImage];

  badgeLayer3 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer3 setHidden:0];

  [MEMORY[0x277CD9FF0] commit];
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);

  _Block_object_dispose(v59, 8);
}

void __64__HUCameraEventRecordingCell_updateBadgeLayerWithEvents_inRect___block_invoke(uint64_t a1, __n128 a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24) >= 1)
  {
    a2.n128_u64[0] = 138412802;
    v18 = a2;
    do
    {
      v3 = [MEMORY[0x277CBEB58] set];
      v4 = *(a1 + 32);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__HUCameraEventRecordingCell_updateBadgeLayerWithEvents_inRect___block_invoke_2;
      v19[3] = &unk_277DBC118;
      v24 = *(a1 + 104);
      v5 = v3;
      v6 = *(a1 + 64);
      v20 = v5;
      v22 = v6;
      v23 = *(a1 + 88);
      v21 = *(a1 + 40);
      [v4 enumerateObjectsUsingBlock:v19];
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(*(a1 + 56) + 8) + 24);
        v9 = [*(a1 + 48) recordingEvent];
        v10 = [v9 uniqueIdentifier];
        *buf = v18.n128_u32[0];
        v26 = v5;
        v27 = 1024;
        v28 = v8;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Rendering image for reasons:%@ badge count %d for clip:%@", buf, 0x1Cu);
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || [v5 count])
      {
        v11 = [*(a1 + 48) _badgeImageForSignificantEventReasons:v5];
        [v11 size];
        v12 = *(*(a1 + 80) + 8);
        *(v12 + 48) = v13;
        *(v12 + 56) = v14;
        [v11 drawInRect:{*(*(*(a1 + 80) + 8) + 32), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 80) + 8) + 48), *(*(*(a1 + 80) + 8) + 56)}];
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      *(*(*(a1 + 80) + 8) + 32) = *(a1 + 96) + *(*(*(a1 + 80) + 8) + 32);
      v15 = [*(*(*(a1 + 64) + 8) + 40) dateByAddingTimeInterval:*(a1 + 88)];
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      --*(*(*(a1 + 56) + 8) + 24);
    }

    while (*(*(*(a1 + 56) + 8) + 24) > 0);
  }
}

void __64__HUCameraEventRecordingCell_updateBadgeLayerWithEvents_inRect___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v17 = v6;
  if (*(a1 + 64) == 1)
  {
    if ([v6 confidenceLevel] != 100)
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "reason")}];
    goto LABEL_4;
  }

  v10 = [v6 dateOfOccurrence];
  [v10 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
  v12 = v11;

  if (v12 >= 0.0 && v12 <= *(a1 + 56) && [v17 confidenceLevel] == 100)
  {
    v13 = *(a1 + 40);
    v14 = [v17 uniqueIdentifier];
    LOBYTE(v13) = [v13 containsObject:v14];

    if ((v13 & 1) == 0)
    {
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "reason")}];
      [v15 addObject:v16];

      v7 = *(a1 + 40);
      v8 = [v17 uniqueIdentifier];
LABEL_4:
      v9 = v8;
      [v7 addObject:v8];
    }
  }

  else if (v12 > *(a1 + 56))
  {
    *a4 = 1;
  }

LABEL_12:
  if ([*(a1 + 32) count] >= 4)
  {
    *a4 = 1;
  }
}

- (void)_updateBadgeLayerWithImage:(id)image inRect:(CGRect)rect
{
  height = rect.size.height;
  x = rect.origin.x;
  imageCopy = image;
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  v11 = v10;
  badgeLayer = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer setFrame:{x + -9.0, height * 0.5 + -9.0, v9, v11}];

  cGImage = [imageCopy CGImage];
  badgeLayer2 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer2 setContents:cGImage];

  badgeLayer3 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer3 setHidden:0];
}

- (id)_badgeImageForSignificantEventReasons:(id)reasons
{
  reasonsCopy = reasons;
  v4 = [@"CameraEventMarker" mutableCopy];
  if ([reasonsCopy containsObject:&unk_282491358])
  {
    v5 = @"_InsufficientAnalysis";
LABEL_11:
    [v4 appendString:v5];
    goto LABEL_12;
  }

  if ([reasonsCopy containsObject:&unk_282491370])
  {
    [v4 appendString:@"_Person"];
  }

  if ([reasonsCopy containsObject:&unk_282491388])
  {
    [v4 appendString:@"_Animal"];
  }

  if ([reasonsCopy containsObject:&unk_2824913A0])
  {
    [v4 appendString:@"_Vehicle"];
  }

  if ([reasonsCopy containsObject:&unk_2824913B8])
  {
    v5 = @"_Package";
    goto LABEL_11;
  }

LABEL_12:
  v6 = HUImageNamed(v4);

  return v6;
}

- (void)updateWithCameraClipEvent:(id)event mode:(unint64_t)mode portraitMode:(BOOL)portraitMode timeController:(id)controller
{
  portraitModeCopy = portraitMode;
  controllerCopy = controller;
  eventCopy = event;
  [(HUCameraEventRecordingCell *)self setDisplayMode:mode];
  [(HUCameraEventRecordingCell *)self setRecordingEvent:eventCopy];

  [(HUCameraEventRecordingCell *)self setPortraitMode:portraitModeCopy];
  [(HUCameraEventRecordingCell *)self setTimeController:controllerCopy];

  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  if ([recordingEvent hf_isPlayable])
  {
    [objc_opt_class() backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v13 = ;
  posterFramesContainerView = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  [posterFramesContainerView setBackgroundColor:v13];

  [(HUCameraEventRecordingCell *)self addPosterFrameViews];
  [(HUCameraEventRecordingCell *)self addDayBoundaryIfNeeded];
  [(HUCameraEventRecordingCell *)self drawEventMarkers];
  [(HUCameraEventRecordingCell *)self updateFamiliarFaces];

  [(HUCameraEventRecordingCell *)self addDebugMarker];
}

- (unint64_t)numberOfFramesNeeded
{
  timeController = [(HUCameraEventRecordingCell *)self timeController];
  [timeController posterFrameWidth];
  v5 = v4;

  [(HUCameraEventRecordingCell *)self frame];
  return vcvtpd_s64_f64(v6 / v5);
}

- (void)addPosterFrameViews
{
  timeController = [(HUCameraEventRecordingCell *)self timeController];
  [timeController posterFrameWidth];
  v5 = v4;

  numberOfFramesNeeded = [(HUCameraEventRecordingCell *)self numberOfFramesNeeded];
  if (numberOfFramesNeeded)
  {
    v7 = numberOfFramesNeeded;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = [HUPosterFrameViewCache dequeuePosterFrameViewForWidth:v5];
      [v10 setFrame:{v9, 0.0, v5, 33.0}];
      posterFramesContainerView = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
      [posterFramesContainerView addSubview:v10];

      recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
      [v10 displayImageForClip:recordingEvent atTimeOffset:v8];

      [v10 setShouldShowLineSeparator:--v7 != 0];
      v9 = v5 + v9;
      timeController2 = [(HUCameraEventRecordingCell *)self timeController];
      [timeController2 timeScale];
      v8 = v8 + v14;
    }

    while (v7);
  }
}

- (void)addDayBoundaryIfNeeded
{
  v3 = MEMORY[0x277D14500];
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  v17 = [v3 percentageOfDurationUntilNextDayForEvent:recordingEvent];

  if (v17 || (-[HUCameraEventRecordingCell recordingEvent](self, "recordingEvent"), v5 = objc_claimAutoreleasedReturnValue(), [v5 dateOfOccurrence], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_isMidnight"), v6, v5, v7))
  {
    [(HUCameraEventRecordingCell *)self bounds];
    v9 = v8;
    [v17 floatValue];
    v11 = v9 * v10;
    [(HUCameraEventRecordingCell *)self bounds];
    v13 = v12 + -14.0;
    dayBoundaryView = [(HUCameraEventRecordingCell *)self dayBoundaryView];
    [dayBoundaryView setFrame:{v11, 7.0, 1.0, v13}];

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  dayBoundaryView2 = [(HUCameraEventRecordingCell *)self dayBoundaryView];
  [dayBoundaryView2 setHidden:v15];
}

- (void)displayReachabilityErrorUI
{
  v3 = HUImageNamed(@"CameraEventMarkerCameraOffline");
  [(HUCameraEventRecordingCell *)self bounds];
  [(HUCameraEventRecordingCell *)self _updateBadgeLayerWithImage:v3 inRect:?];
}

- (void)drawEventMarkers
{
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];

  if (recordingEvent)
  {
    recordingEvent2 = [(HUCameraEventRecordingCell *)self recordingEvent];
    hf_sortedSignificantEvents = [recordingEvent2 hf_sortedSignificantEvents];
    [(HUCameraEventRecordingCell *)self bounds];
    [(HUCameraEventRecordingCell *)self updateBadgeLayerWithEvents:hf_sortedSignificantEvents inRect:?];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Attempting to display a cell without a recording event.", buf, 2u);
    }

    [(HUCameraEventRecordingCell *)self displayReachabilityErrorUI];
  }
}

- (void)addDebugMarker
{
  if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
  {
    posterFramesContainerView = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
    [posterFramesContainerView bounds];
    v5 = v4;
    v7 = v6;

    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    debugMarkerLayer = self->_debugMarkerLayer;
    self->_debugMarkerLayer = v8;

    [(CALayer *)self->_debugMarkerLayer setFrame:v5, 0.0, v7, 4.0];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    -[CALayer setBackgroundColor:](self->_debugMarkerLayer, "setBackgroundColor:", [systemGreenColor CGColor]);

    [(CALayer *)self->_debugMarkerLayer setHidden:1];
    posterFramesContainerView2 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
    layer = [posterFramesContainerView2 layer];
    [layer addSublayer:self->_debugMarkerLayer];
  }
}

- (void)updateFamiliarFaces
{
  v18 = *MEMORY[0x277D85DE8];
  recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
  hf_allEventsContainingPeopleInClip = [recordingEvent hf_allEventsContainingPeopleInClip];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    recordingEvent2 = [(HUCameraEventRecordingCell *)self recordingEvent];
    recordingEvent3 = [(HUCameraEventRecordingCell *)self recordingEvent];
    hf_sortedSignificantEvents = [recordingEvent3 hf_sortedSignificantEvents];
    v12 = 138412802;
    v13 = hf_allEventsContainingPeopleInClip;
    v14 = 2112;
    v15 = recordingEvent2;
    v16 = 2112;
    v17 = hf_sortedSignificantEvents;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "PersonEvents:%@ for clip:%@, with events:%@", &v12, 0x20u);
  }

  v6 = [hf_allEventsContainingPeopleInClip count];
  if (v6)
  {
    familiarFacesView = [(HUCameraEventRecordingCell *)self familiarFacesView];
    recordingEvent4 = [(HUCameraEventRecordingCell *)self recordingEvent];
    [familiarFacesView updateWithPersonEvents:hf_allEventsContainingPeopleInClip forCameraClip:recordingEvent4];
  }

  [(HUCameraEventRecordingCell *)self setHasFamiliarFaces:v6 != 0];
}

- (void)showFamiliarFacesWithMaxWidth:(double)width
{
  hasFamiliarFaces = [(HUCameraEventRecordingCell *)self hasFamiliarFaces];
  familiarFacesView = [(HUCameraEventRecordingCell *)self familiarFacesView];
  layer = [familiarFacesView layer];
  v8 = layer;
  if (hasFamiliarFaces)
  {
    LODWORD(v7) = 1.0;
    [layer setOpacity:v7];

    familiarFacesView = [(HUCameraEventRecordingCell *)self familiarFacesView];
    [familiarFacesView resizeWithMaxWidth:width];
  }

  else
  {
    [layer setOpacity:0.0];
  }
}

- (void)hideFamiliarFaces
{
  familiarFacesView = [(HUCameraEventRecordingCell *)self familiarFacesView];
  layer = [familiarFacesView layer];
  [layer setOpacity:0.0];
}

- (void)preparePosterFrameViewsForReuse
{
  posterFramesContainerView = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  subviews = [posterFramesContainerView subviews];
  [subviews enumerateObjectsUsingBlock:&__block_literal_global_84];

  posterFramesContainerView2 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  subviews2 = [posterFramesContainerView2 subviews];
  [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = HUCameraEventRecordingCell;
  [(HUCameraEventRecordingCell *)&v6 prepareForReuse];
  [(HUCameraEventRecordingCell *)self preparePosterFrameViewsForReuse];
  familiarFacesView = [(HUCameraEventRecordingCell *)self familiarFacesView];
  layer = [familiarFacesView layer];
  [layer setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  badgeLayer = [(HUCameraEventRecordingCell *)self badgeLayer];
  [badgeLayer setContents:0];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateVideoCacheMarker
{
  if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
  {
    v3 = MEMORY[0x277D14500];
    recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
    v6 = [v3 videoDestinationURLForCameraClip:recordingEvent];

    LODWORD(v3) = [v6 checkResourceIsReachableAndReturnError:0];
    debugMarkerLayer = [(HUCameraEventRecordingCell *)self debugMarkerLayer];
    [debugMarkerLayer setHidden:v3 ^ 1];
  }
}

- (id)accessibilityLabel
{
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v3 = MEMORY[0x277CCACA8];
    recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
    uniqueIdentifier = [recordingEvent uniqueIdentifier];
    recordingEvent2 = [(HUCameraEventRecordingCell *)self recordingEvent];
    dateOfOccurrence = [recordingEvent2 dateOfOccurrence];
    hu_accessibilityStringForSignificantEvents = [v3 stringWithFormat:@"Recording Event UUID:%@ Date:%@", uniqueIdentifier, dateOfOccurrence];
  }

  else
  {
    recordingEvent = [(HUCameraEventRecordingCell *)self recordingEvent];
    hu_accessibilityStringForSignificantEvents = [recordingEvent hu_accessibilityStringForSignificantEvents];
  }

  return hu_accessibilityStringForSignificantEvents;
}

- (CALayer)badgeLayer
{
  badgeLayer = self->_badgeLayer;
  if (!badgeLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CALayer setBackgroundColor:](layer, "setBackgroundColor:", [clearColor CGColor]);

    [(CALayer *)layer setCornerRadius:9.0];
    [(CALayer *)layer setOpaque:0];
    layer2 = [(HUCameraEventRecordingCell *)self layer];
    [layer2 addSublayer:layer];

    v7 = self->_badgeLayer;
    self->_badgeLayer = layer;

    badgeLayer = self->_badgeLayer;
  }

  return badgeLayer;
}

- (UIView)posterFramesContainerView
{
  posterFramesContainerView = self->_posterFramesContainerView;
  if (!posterFramesContainerView)
  {
    [(HUCameraEventRecordingCell *)self bounds];
    v6 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, 7.0, v5, 33.0}];
    [(UIView *)v6 setAutoresizingMask:18];
    backgroundColor = [objc_opt_class() backgroundColor];
    [(UIView *)v6 setBackgroundColor:backgroundColor];

    [(UIView *)v6 setClipsToBounds:1];
    layer = [(UIView *)v6 layer];
    [layer setCornerRadius:8.0];

    v9 = self->_posterFramesContainerView;
    self->_posterFramesContainerView = v6;

    posterFramesContainerView = self->_posterFramesContainerView;
  }

  return posterFramesContainerView;
}

- (UIView)dayBoundaryView
{
  dayBoundaryView = self->_dayBoundaryView;
  if (!dayBoundaryView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(HUCameraEventRecordingCell *)self bounds];
    v5 = [v4 initWithFrame:?];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v5 setBackgroundColor:systemWhiteColor];

    layer = [(UIView *)v5 layer];
    [layer setCornerRadius:2.0];

    v8 = self->_dayBoundaryView;
    self->_dayBoundaryView = v5;

    dayBoundaryView = self->_dayBoundaryView;
  }

  return dayBoundaryView;
}

- (HMCameraClip)recordingEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingEvent);

  return WeakRetained;
}

- (HUClipScrubberTimeController)timeController
{
  WeakRetained = objc_loadWeakRetained(&self->_timeController);

  return WeakRetained;
}

@end