@interface HUCameraEventRecordingCell
- (CALayer)badgeLayer;
- (HMCameraClip)recordingEvent;
- (HUCameraEventRecordingCell)initWithFrame:(CGRect)a3;
- (HUClipScrubberTimeController)timeController;
- (HURecordingEventCellFamiliarFacesView)familiarFacesView;
- (UIView)dayBoundaryView;
- (UIView)posterFramesContainerView;
- (id)_badgeImageForSignificantEventReasons:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)numberOfFramesNeeded;
- (void)_updateBadgeLayerWithImage:(id)a3 inRect:(CGRect)a4;
- (void)addDayBoundaryIfNeeded;
- (void)addDebugMarker;
- (void)addPosterFrameViews;
- (void)dealloc;
- (void)displayReachabilityErrorUI;
- (void)drawEventMarkers;
- (void)hideFamiliarFaces;
- (void)prepareForReuse;
- (void)preparePosterFrameViewsForReuse;
- (void)showFamiliarFacesWithMaxWidth:(double)a3;
- (void)updateBadgeLayerWithEvents:(id)a3 inRect:(CGRect)a4;
- (void)updateFamiliarFaces;
- (void)updateVideoCacheMarker;
- (void)updateWithCameraClipEvent:(id)a3 mode:(unint64_t)a4 portraitMode:(BOOL)a5 timeController:(id)a6;
- (void)videoCacheDidAddVideo:(id)a3;
- (void)videoCacheDidRemoveVideo:(id)a3;
@end

@implementation HUCameraEventRecordingCell

- (HUCameraEventRecordingCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUCameraEventRecordingCell;
  v3 = [(HUCameraEventRecordingCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUCameraEventRecordingCell *)v3 posterFramesContainerView];
    [(HUCameraEventRecordingCell *)v4 addSubview:v5];

    v6 = [(HUCameraEventRecordingCell *)v4 dayBoundaryView];
    [(HUCameraEventRecordingCell *)v4 addSubview:v6];

    v7 = [(HUCameraEventRecordingCell *)v4 layer];
    [v7 setCornerRadius:8.0];

    [(HUCameraEventRecordingCell *)v4 setOpaque:0];
    v8 = [(HUCameraEventRecordingCell *)v4 familiarFacesView];
    [(HUCameraEventRecordingCell *)v4 addSubview:v8];

    if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v4 selector:sel_videoCacheDidAddVideo_ name:*MEMORY[0x277D137A8] object:0];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:v4 selector:sel_videoCacheDidRemoveVideo_ name:*MEMORY[0x277D137B0] object:0];
    }
  }

  return v4;
}

- (void)dealloc
{
  if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = HUCameraEventRecordingCell;
  [(HUCameraEventRecordingCell *)&v4 dealloc];
}

- (void)videoCacheDidAddVideo:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
  v6 = [(HUCameraEventRecordingCell *)self recordingEvent];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 isEqual:v7];

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

- (void)videoCacheDidRemoveVideo:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"uniqueIdentifier"];
  v6 = [(HUCameraEventRecordingCell *)self recordingEvent];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 isEqual:v7];

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

    v6 = [(HURecordingEventCellFamiliarFacesView *)self->_familiarFacesView layer];
    [v6 setOpacity:0.0];

    familiarFacesView = self->_familiarFacesView;
  }

  return familiarFacesView;
}

- (void)updateBadgeLayerWithEvents:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(HUCameraEventRecordingCell *)self timeController];
  [v10 posterFrameWidth];
  v12 = v11;

  v13 = [(HUCameraEventRecordingCell *)self timeController];
  [v13 timeScale];
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
  v18 = [(HUCameraEventRecordingCell *)self recordingEvent];
  v58 = [v18 dateOfOccurrence];

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
  v21 = v9;
  v46 = v17;
  v37 = v21;
  v41 = v57;
  v44 = v15;
  v22 = v19;
  v38 = v22;
  v39 = self;
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
  v29 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v29 setFrame:{v25, v26, v27, v28}];

  v30 = [v23 CGImage];
  v31 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v31 setContents:v30];

  v32 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v32 setHidden:0];

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

- (void)_updateBadgeLayerWithImage:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  x = a4.origin.x;
  v7 = a3;
  [v7 size];
  v9 = v8;
  [v7 size];
  v11 = v10;
  v12 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v12 setFrame:{x + -9.0, height * 0.5 + -9.0, v9, v11}];

  v13 = [v7 CGImage];
  v14 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v14 setContents:v13];

  v15 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v15 setHidden:0];
}

- (id)_badgeImageForSignificantEventReasons:(id)a3
{
  v3 = a3;
  v4 = [@"CameraEventMarker" mutableCopy];
  if ([v3 containsObject:&unk_282491358])
  {
    v5 = @"_InsufficientAnalysis";
LABEL_11:
    [v4 appendString:v5];
    goto LABEL_12;
  }

  if ([v3 containsObject:&unk_282491370])
  {
    [v4 appendString:@"_Person"];
  }

  if ([v3 containsObject:&unk_282491388])
  {
    [v4 appendString:@"_Animal"];
  }

  if ([v3 containsObject:&unk_2824913A0])
  {
    [v4 appendString:@"_Vehicle"];
  }

  if ([v3 containsObject:&unk_2824913B8])
  {
    v5 = @"_Package";
    goto LABEL_11;
  }

LABEL_12:
  v6 = HUImageNamed(v4);

  return v6;
}

- (void)updateWithCameraClipEvent:(id)a3 mode:(unint64_t)a4 portraitMode:(BOOL)a5 timeController:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  [(HUCameraEventRecordingCell *)self setDisplayMode:a4];
  [(HUCameraEventRecordingCell *)self setRecordingEvent:v11];

  [(HUCameraEventRecordingCell *)self setPortraitMode:v6];
  [(HUCameraEventRecordingCell *)self setTimeController:v10];

  v12 = [(HUCameraEventRecordingCell *)self recordingEvent];
  if ([v12 hf_isPlayable])
  {
    [objc_opt_class() backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v13 = ;
  v14 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  [v14 setBackgroundColor:v13];

  [(HUCameraEventRecordingCell *)self addPosterFrameViews];
  [(HUCameraEventRecordingCell *)self addDayBoundaryIfNeeded];
  [(HUCameraEventRecordingCell *)self drawEventMarkers];
  [(HUCameraEventRecordingCell *)self updateFamiliarFaces];

  [(HUCameraEventRecordingCell *)self addDebugMarker];
}

- (unint64_t)numberOfFramesNeeded
{
  v3 = [(HUCameraEventRecordingCell *)self timeController];
  [v3 posterFrameWidth];
  v5 = v4;

  [(HUCameraEventRecordingCell *)self frame];
  return vcvtpd_s64_f64(v6 / v5);
}

- (void)addPosterFrameViews
{
  v3 = [(HUCameraEventRecordingCell *)self timeController];
  [v3 posterFrameWidth];
  v5 = v4;

  v6 = [(HUCameraEventRecordingCell *)self numberOfFramesNeeded];
  if (v6)
  {
    v7 = v6;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = [HUPosterFrameViewCache dequeuePosterFrameViewForWidth:v5];
      [v10 setFrame:{v9, 0.0, v5, 33.0}];
      v11 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
      [v11 addSubview:v10];

      v12 = [(HUCameraEventRecordingCell *)self recordingEvent];
      [v10 displayImageForClip:v12 atTimeOffset:v8];

      [v10 setShouldShowLineSeparator:--v7 != 0];
      v9 = v5 + v9;
      v13 = [(HUCameraEventRecordingCell *)self timeController];
      [v13 timeScale];
      v8 = v8 + v14;
    }

    while (v7);
  }
}

- (void)addDayBoundaryIfNeeded
{
  v3 = MEMORY[0x277D14500];
  v4 = [(HUCameraEventRecordingCell *)self recordingEvent];
  v17 = [v3 percentageOfDurationUntilNextDayForEvent:v4];

  if (v17 || (-[HUCameraEventRecordingCell recordingEvent](self, "recordingEvent"), v5 = objc_claimAutoreleasedReturnValue(), [v5 dateOfOccurrence], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_isMidnight"), v6, v5, v7))
  {
    [(HUCameraEventRecordingCell *)self bounds];
    v9 = v8;
    [v17 floatValue];
    v11 = v9 * v10;
    [(HUCameraEventRecordingCell *)self bounds];
    v13 = v12 + -14.0;
    v14 = [(HUCameraEventRecordingCell *)self dayBoundaryView];
    [v14 setFrame:{v11, 7.0, 1.0, v13}];

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = [(HUCameraEventRecordingCell *)self dayBoundaryView];
  [v16 setHidden:v15];
}

- (void)displayReachabilityErrorUI
{
  v3 = HUImageNamed(@"CameraEventMarkerCameraOffline");
  [(HUCameraEventRecordingCell *)self bounds];
  [(HUCameraEventRecordingCell *)self _updateBadgeLayerWithImage:v3 inRect:?];
}

- (void)drawEventMarkers
{
  v3 = [(HUCameraEventRecordingCell *)self recordingEvent];

  if (v3)
  {
    v6 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v4 = [v6 hf_sortedSignificantEvents];
    [(HUCameraEventRecordingCell *)self bounds];
    [(HUCameraEventRecordingCell *)self updateBadgeLayerWithEvents:v4 inRect:?];
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
    v3 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    debugMarkerLayer = self->_debugMarkerLayer;
    self->_debugMarkerLayer = v8;

    [(CALayer *)self->_debugMarkerLayer setFrame:v5, 0.0, v7, 4.0];
    v10 = [MEMORY[0x277D75348] systemGreenColor];
    -[CALayer setBackgroundColor:](self->_debugMarkerLayer, "setBackgroundColor:", [v10 CGColor]);

    [(CALayer *)self->_debugMarkerLayer setHidden:1];
    v12 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
    v11 = [v12 layer];
    [v11 addSublayer:self->_debugMarkerLayer];
  }
}

- (void)updateFamiliarFaces
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraEventRecordingCell *)self recordingEvent];
  v4 = [v3 hf_allEventsContainingPeopleInClip];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v10 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v11 = [v10 hf_sortedSignificantEvents];
    v12 = 138412802;
    v13 = v4;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "PersonEvents:%@ for clip:%@, with events:%@", &v12, 0x20u);
  }

  v6 = [v4 count];
  if (v6)
  {
    v7 = [(HUCameraEventRecordingCell *)self familiarFacesView];
    v8 = [(HUCameraEventRecordingCell *)self recordingEvent];
    [v7 updateWithPersonEvents:v4 forCameraClip:v8];
  }

  [(HUCameraEventRecordingCell *)self setHasFamiliarFaces:v6 != 0];
}

- (void)showFamiliarFacesWithMaxWidth:(double)a3
{
  v5 = [(HUCameraEventRecordingCell *)self hasFamiliarFaces];
  v9 = [(HUCameraEventRecordingCell *)self familiarFacesView];
  v6 = [v9 layer];
  v8 = v6;
  if (v5)
  {
    LODWORD(v7) = 1.0;
    [v6 setOpacity:v7];

    v9 = [(HUCameraEventRecordingCell *)self familiarFacesView];
    [v9 resizeWithMaxWidth:a3];
  }

  else
  {
    [v6 setOpacity:0.0];
  }
}

- (void)hideFamiliarFaces
{
  v3 = [(HUCameraEventRecordingCell *)self familiarFacesView];
  v2 = [v3 layer];
  [v2 setOpacity:0.0];
}

- (void)preparePosterFrameViewsForReuse
{
  v3 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  v4 = [v3 subviews];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_84];

  v6 = [(HUCameraEventRecordingCell *)self posterFramesContainerView];
  v5 = [v6 subviews];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = HUCameraEventRecordingCell;
  [(HUCameraEventRecordingCell *)&v6 prepareForReuse];
  [(HUCameraEventRecordingCell *)self preparePosterFrameViewsForReuse];
  v3 = [(HUCameraEventRecordingCell *)self familiarFacesView];
  v4 = [v3 layer];
  [v4 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v5 = [(HUCameraEventRecordingCell *)self badgeLayer];
  [v5 setContents:0];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateVideoCacheMarker
{
  if ([MEMORY[0x277D14500] markCachedVideoAsGreenInTimeline])
  {
    v3 = MEMORY[0x277D14500];
    v4 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v6 = [v3 videoDestinationURLForCameraClip:v4];

    LODWORD(v3) = [v6 checkResourceIsReachableAndReturnError:0];
    v5 = [(HUCameraEventRecordingCell *)self debugMarkerLayer];
    [v5 setHidden:v3 ^ 1];
  }
}

- (id)accessibilityLabel
{
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v5 = [v4 uniqueIdentifier];
    v6 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v7 = [v6 dateOfOccurrence];
    v8 = [v3 stringWithFormat:@"Recording Event UUID:%@ Date:%@", v5, v7];
  }

  else
  {
    v4 = [(HUCameraEventRecordingCell *)self recordingEvent];
    v8 = [v4 hu_accessibilityStringForSignificantEvents];
  }

  return v8;
}

- (CALayer)badgeLayer
{
  badgeLayer = self->_badgeLayer;
  if (!badgeLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = [MEMORY[0x277D75348] clearColor];
    -[CALayer setBackgroundColor:](v4, "setBackgroundColor:", [v5 CGColor]);

    [(CALayer *)v4 setCornerRadius:9.0];
    [(CALayer *)v4 setOpaque:0];
    v6 = [(HUCameraEventRecordingCell *)self layer];
    [v6 addSublayer:v4];

    v7 = self->_badgeLayer;
    self->_badgeLayer = v4;

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
    v7 = [objc_opt_class() backgroundColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIView *)v6 setClipsToBounds:1];
    v8 = [(UIView *)v6 layer];
    [v8 setCornerRadius:8.0];

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
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v5 setBackgroundColor:v6];

    v7 = [(UIView *)v5 layer];
    [v7 setCornerRadius:2.0];

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