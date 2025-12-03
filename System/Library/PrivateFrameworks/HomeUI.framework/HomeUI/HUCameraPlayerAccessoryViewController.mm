@interface HUCameraPlayerAccessoryViewController
+ (id)_newLabel;
- (BOOL)_shouldShortCircuitBlurEffect;
- (BOOL)shouldShortCircuitLoadingIndicator;
- (HFCameraPlaybackEngine)playbackEngine;
- (HFCameraRecordingEvent)lastDisplayedEvent;
- (HUCameraLoadingActivityIndicatorView)loadingActivityIndicator;
- (HUCameraPlayerAccessoryViewController)initWithPlaybackEngine:(id)engine;
- (UIImageView)noResponseView;
- (UILabel)noActivityLabel;
- (UILabel)primaryErrorLabel;
- (UILabel)secondaryErrorLabel;
- (UIView)loadingOverlayView;
- (id)_errorStringDetailsForError:(id)error;
- (void)_displayReachabilityMessageForEvent:(id)event;
- (void)_updateAllOverlayStateAnimated:(BOOL)animated;
- (void)_updateErrorStateAnimated:(BOOL)animated;
- (void)_updateLoadingStateAnimated:(BOOL)animated;
- (void)_updateNoActivityStateAnimated:(BOOL)animated;
- (void)_updateStateAnimated:(BOOL)animated usingBlock:(id)block;
- (void)hu_reloadData;
- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error;
- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status;
- (void)setCanShowOverlayContent:(BOOL)content;
- (void)setPlaybackEngine:(id)engine;
- (void)setShouldShowLoadingIndicatorForClipPlayback:(BOOL)playback;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerAccessoryViewController

- (void)setPlaybackEngine:(id)engine
{
  obj = engine;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_playbackEngine);
    [v5 removeObserver:self];

    objc_storeWeak(&self->_playbackEngine, obj);
    v6 = objc_alloc_init(MEMORY[0x277D144C8]);
    [v6 setPeriodicTimeUpdateInterval:&unk_2824933D0];
    v7 = objc_loadWeakRetained(&self->_playbackEngine);
    [v7 addObserver:self withOptions:v6];
  }
}

- (HUCameraPlayerAccessoryViewController)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAccessoryViewController;
  v5 = [(HUCameraPlayerAccessoryViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUCameraPlayerAccessoryViewController *)v5 setPlaybackEngine:engineCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v83[12] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = HUCameraPlayerAccessoryViewController;
  [(HUCameraPlayerAccessoryViewController *)&v82 viewDidLoad];
  view = [(HUCameraPlayerAccessoryViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(HUCameraPlayerAccessoryViewController *)self view];
  loadingActivityIndicator = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
  [view2 addSubview:loadingActivityIndicator];

  view3 = [(HUCameraPlayerAccessoryViewController *)self view];
  noActivityLabel = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  [view3 naui_addAutoLayoutSubview:noActivityLabel];

  view4 = [(HUCameraPlayerAccessoryViewController *)self view];
  primaryErrorLabel = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  [view4 addSubview:primaryErrorLabel];

  view5 = [(HUCameraPlayerAccessoryViewController *)self view];
  secondaryErrorLabel = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  [view5 addSubview:secondaryErrorLabel];

  view6 = [(HUCameraPlayerAccessoryViewController *)self view];
  noResponseView = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  [view6 addSubview:noResponseView];

  view7 = [(HUCameraPlayerAccessoryViewController *)self view];
  [view7 center];
  v16 = v15;
  v18 = v17;
  loadingActivityIndicator2 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
  [loadingActivityIndicator2 setCenter:{v16, v18}];

  v55 = MEMORY[0x277CCAAD0];
  noActivityLabel2 = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  centerYAnchor = [noActivityLabel2 centerYAnchor];
  view8 = [(HUCameraPlayerAccessoryViewController *)self view];
  centerYAnchor2 = [view8 centerYAnchor];
  v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v83[0] = v77;
  noActivityLabel3 = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  centerXAnchor = [noActivityLabel3 centerXAnchor];
  view9 = [(HUCameraPlayerAccessoryViewController *)self view];
  centerXAnchor2 = [view9 centerXAnchor];
  v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v83[1] = v72;
  primaryErrorLabel2 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  centerXAnchor3 = [primaryErrorLabel2 centerXAnchor];
  view10 = [(HUCameraPlayerAccessoryViewController *)self view];
  centerXAnchor4 = [view10 centerXAnchor];
  v67 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v83[2] = v67;
  primaryErrorLabel3 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  centerYAnchor3 = [primaryErrorLabel3 centerYAnchor];
  view11 = [(HUCameraPlayerAccessoryViewController *)self view];
  centerYAnchor4 = [view11 centerYAnchor];
  v62 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v83[3] = v62;
  primaryErrorLabel4 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  widthAnchor = [primaryErrorLabel4 widthAnchor];
  view12 = [(HUCameraPlayerAccessoryViewController *)self view];
  readableContentGuide = [view12 readableContentGuide];
  widthAnchor2 = [readableContentGuide widthAnchor];
  v56 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v83[4] = v56;
  secondaryErrorLabel2 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  topAnchor = [secondaryErrorLabel2 topAnchor];
  primaryErrorLabel5 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  bottomAnchor = [primaryErrorLabel5 bottomAnchor];
  v50 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
  v83[5] = v50;
  secondaryErrorLabel3 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  leadingAnchor = [secondaryErrorLabel3 leadingAnchor];
  view13 = [(HUCameraPlayerAccessoryViewController *)self view];
  safeAreaLayoutGuide = [view13 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v83[6] = v44;
  secondaryErrorLabel4 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  trailingAnchor = [secondaryErrorLabel4 trailingAnchor];
  view14 = [(HUCameraPlayerAccessoryViewController *)self view];
  safeAreaLayoutGuide2 = [view14 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v83[7] = v38;
  noResponseView2 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  bottomAnchor2 = [noResponseView2 bottomAnchor];
  primaryErrorLabel6 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  topAnchor2 = [primaryErrorLabel6 topAnchor];
  v33 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:-10.0];
  v83[8] = v33;
  noResponseView3 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  centerXAnchor5 = [noResponseView3 centerXAnchor];
  view15 = [(HUCameraPlayerAccessoryViewController *)self view];
  centerXAnchor6 = [view15 centerXAnchor];
  v20 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v83[9] = v20;
  noResponseView4 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  widthAnchor3 = [noResponseView4 widthAnchor];
  v23 = [widthAnchor3 constraintEqualToConstant:61.0];
  v83[10] = v23;
  noResponseView5 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  heightAnchor = [noResponseView5 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:50.0];
  v83[11] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:12];
  na_arrayByFlattening = [v27 na_arrayByFlattening];
  [v55 activateConstraints:na_arrayByFlattening];

  [(HUCameraPlayerAccessoryViewController *)self _updateAllOverlayStateAnimated:0];
}

- (void)setCanShowOverlayContent:(BOOL)content
{
  if (self->_canShowOverlayContent != content)
  {
    self->_canShowOverlayContent = content;
    [(HUCameraPlayerAccessoryViewController *)self _updateAllOverlayStateAnimated:1];
  }
}

- (void)setShouldShowLoadingIndicatorForClipPlayback:(BOOL)playback
{
  if (self->_shouldShowLoadingIndicatorForClipPlayback != playback)
  {
    self->_shouldShowLoadingIndicatorForClipPlayback = playback;
    [(HUCameraPlayerAccessoryViewController *)self _updateLoadingStateAnimated:1];
  }
}

- (void)hu_reloadData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HUCameraPlayerAccessoryViewController_hu_reloadData__block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HUCameraPlayerAccessoryViewController_playbackEngine_didUpdateTimeControlStatus___block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HUCameraPlayerAccessoryViewController_playbackEngine_didUpdatePlaybackError___block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __79__HUCameraPlayerAccessoryViewController_playbackEngine_didUpdatePlaybackError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateErrorStateAnimated:1];
  v2 = *(a1 + 32);

  return [v2 _updateLoadingStateAnimated:1];
}

- (void)_updateAllOverlayStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(HUCameraPlayerAccessoryViewController *)self _updateLoadingStateAnimated:?];
  [(HUCameraPlayerAccessoryViewController *)self _updateNoActivityStateAnimated:animatedCopy];

  [(HUCameraPlayerAccessoryViewController *)self _updateErrorStateAnimated:animatedCopy];
}

- (void)_updateLoadingStateAnimated:(BOOL)animated
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(HUCameraPlayerAccessoryViewController *)self shouldShortCircuitLoadingIndicator])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      playbackEngine = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v32 = 134217984;
      *v33 = [playbackEngine timeControlStatus];
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Short-circuiting accessory view loading UI. %lu", &v32, 0xCu);
    }

    loadingActivityIndicator = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
    [loadingActivityIndicator setAlpha:0.0];

    loadingOverlayView = [(HUCameraPlayerAccessoryViewController *)self loadingOverlayView];
    [loadingOverlayView setAlpha:0.0];

    [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:0];
    return;
  }

  showingLoadingIndicator = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
  playbackEngine2 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  playbackPosition = [playbackEngine2 playbackPosition];
  contentType = [playbackPosition contentType];

  playbackEngine3 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v13 = playbackEngine3;
  if (contentType == 1)
  {
    if ([playbackEngine3 timelineState] == 3)
    {

LABEL_13:
      [(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent];
LABEL_14:
      [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:0];
      goto LABEL_15;
    }

    playbackEngine4 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    timelineState = [playbackEngine4 timelineState];

    if (timelineState == 4)
    {
      goto LABEL_13;
    }

    shouldShowLoadingIndicatorForClipPlayback = [(HUCameraPlayerAccessoryViewController *)self shouldShowLoadingIndicatorForClipPlayback];
  }

  else
  {
    shouldShowLoadingIndicatorForClipPlayback = [playbackEngine3 timeControlStatus] == 1;
  }

  if (![(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent]|| !shouldShowLoadingIndicatorForClipPlayback)
  {
    goto LABEL_14;
  }

  playbackEngine5 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  playbackError = [playbackEngine5 playbackError];
  [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:playbackError == 0];

LABEL_15:
  if ([(HUCameraPlayerAccessoryViewController *)self forceLoadingIndicatorToDisplay])
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:1];
  }

  showingLoadingIndicator2 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
  v20 = HFLogForCategory();
  v21 = v20;
  if (showingLoadingIndicator == showingLoadingIndicator2)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      showingLoadingIndicator3 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
      playbackEngine6 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      playbackEngine7 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      playbackPosition2 = [playbackEngine7 playbackPosition];
      contentType2 = [playbackPosition2 contentType];
      playbackEngine8 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v32 = 67109890;
      *v33 = showingLoadingIndicator3;
      *&v33[4] = 2112;
      *&v33[6] = playbackEngine6;
      v34 = 2048;
      v35 = contentType2;
      v36 = 2048;
      timeControlStatus = [playbackEngine8 timeControlStatus];
      _os_log_debug_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEBUG, "Loading state unchanged. Showing:%{BOOL}d for engine:%@ contentType:%lu timeControlStatus:%lu.", &v32, 0x26u);
    }
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67109120;
      *v33 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Loading state updated. Showing:%{BOOL}d.", &v32, 8u);
    }

    showingLoadingIndicator4 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
    loadingActivityIndicator2 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
    [loadingActivityIndicator2 setAlpha:showingLoadingIndicator4];

    if ([(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator])
    {
      v24 = 0.5;
    }

    else
    {
      v24 = 0.0;
    }

    loadingOverlayView2 = [(HUCameraPlayerAccessoryViewController *)self loadingOverlayView];
    [loadingOverlayView2 setAlpha:v24];
  }
}

- (void)_updateNoActivityStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  showingNoActivity = [(HUCameraPlayerAccessoryViewController *)self showingNoActivity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke;
  v7[3] = &unk_277DBA888;
  v7[4] = self;
  [(HUCameraPlayerAccessoryViewController *)self setShowingNoActivity:__72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke(v7) != 0];
  if (showingNoActivity != [(HUCameraPlayerAccessoryViewController *)self showingNoActivity])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke_2;
    v6[3] = &unk_277DB8488;
    v6[4] = self;
    [(HUCameraPlayerAccessoryViewController *)self _updateStateAnimated:animatedCopy usingBlock:v6];
  }
}

uint64_t __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 playbackPosition];

  if ([*(a1 + 32) canShowOverlayContent] && objc_msgSend(v3, "contentType") == 1)
  {
    v4 = [*(a1 + 32) playbackEngine];
    if ([v4 timelineState] == 4)
    {
      v5 = [*(a1 + 32) playbackEngine];
      v6 = [v5 isUserScrubbing];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) showingNoActivity];
  v3 = [*(a1 + 32) noActivityLabel];
  [v3 setAlpha:v2];
}

- (void)_updateErrorStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v70 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    return;
  }

  v52 = animatedCopy;
  showingError = [(HUCameraPlayerAccessoryViewController *)self showingError];
  playbackEngine = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  playbackError = [playbackEngine playbackError];

  if ([(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent]&& playbackError)
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingError:1];
  }

  else
  {
    playbackEngine2 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    cameraProfile = [playbackEngine2 cameraProfile];
    -[HUCameraPlayerAccessoryViewController setShowingError:](self, "setShowingError:", [cameraProfile hf_shouldDisableLiveStream]);
  }

  playbackEngine3 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  playbackPosition = [playbackEngine3 playbackPosition];
  contentType = [playbackPosition contentType];

  if (contentType == 1)
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingError:0];
  }

  playbackEngine4 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  timelineState = [playbackEngine4 timelineState];

  if (timelineState == 3 && ((-[HUCameraPlayerAccessoryViewController setShowingError:](self, "setShowingError:", 1), -[HUCameraPlayerAccessoryViewController reachabilityEventWasOffline](self, "reachabilityEventWasOffline")) || (-[HUCameraPlayerAccessoryViewController lastDisplayedEvent](self, "lastDisplayedEvent"), v14 = objc_claimAutoreleasedReturnValue(), -[HUCameraPlayerAccessoryViewController playbackEngine](self, "playbackEngine"), v15 = objc_claimAutoreleasedReturnValue(), [v15 currentClip], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqual:", v16), v16, v15, v14, (v17 & 1) == 0)))
  {
    playbackEngine5 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    currentClip = [playbackEngine5 currentClip];
    [(HUCameraPlayerAccessoryViewController *)self setLastDisplayedEvent:currentClip];

    objc_opt_class();
    lastDisplayedEvent = [(HUCameraPlayerAccessoryViewController *)self lastDisplayedEvent];
    if (objc_opt_isKindOfClass())
    {
      v22 = lastDisplayedEvent;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    endEvent = [v23 endEvent];

    [(HUCameraPlayerAccessoryViewController *)self setReachabilityEventWasOffline:endEvent == 0];
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  currentAccessMode = [(HUCameraPlayerAccessoryViewController *)self currentAccessMode];
  playbackEngine6 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  cameraProfile2 = [playbackEngine6 cameraProfile];
  userSettings = [cameraProfile2 userSettings];
  currentAccessMode2 = [userSettings currentAccessMode];

  if (currentAccessMode != currentAccessMode2)
  {
    playbackEngine7 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    cameraProfile3 = [playbackEngine7 cameraProfile];
    userSettings2 = [cameraProfile3 userSettings];
    -[HUCameraPlayerAccessoryViewController setCurrentAccessMode:](self, "setCurrentAccessMode:", [userSettings2 currentAccessMode]);

    v18 = 1;
  }

  lastEngineMode = [(HUCameraPlayerAccessoryViewController *)self lastEngineMode];
  playbackEngine8 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  if (lastEngineMode == [playbackEngine8 engineMode])
  {
    playbackEngine9 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    engineMode = [playbackEngine9 engineMode];

    if (engineMode)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  playbackEngine10 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  -[HUCameraPlayerAccessoryViewController setLastEngineMode:](self, "setLastEngineMode:", [playbackEngine10 engineMode]);

  v18 = 1;
LABEL_23:
  showingError2 = [(HUCameraPlayerAccessoryViewController *)self showingError];
  if (v18 || showingError != showingError2)
  {
    v39 = HFLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      playbackEngine11 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      cameraProfile4 = [playbackEngine11 cameraProfile];
      userSettings3 = [cameraProfile4 userSettings];
      hu_currentAccessModeDescription = [userSettings3 hu_currentAccessModeDescription];
      playbackEngine12 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      cameraProfile5 = [playbackEngine12 cameraProfile];
      hf_shouldDisableLiveStream = [cameraProfile5 hf_shouldDisableLiveStream];
      showingError3 = [(HUCameraPlayerAccessoryViewController *)self showingError];
      playbackEngine13 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      timelineStateDescription = [playbackEngine13 timelineStateDescription];
      lastDisplayedEvent2 = [(HUCameraPlayerAccessoryViewController *)self lastDisplayedEvent];
      *buf = 138413570;
      v59 = hu_currentAccessModeDescription;
      v60 = 1024;
      v61 = hf_shouldDisableLiveStream;
      v62 = 1024;
      v63 = showingError3;
      v64 = 2112;
      v65 = timelineStateDescription;
      v66 = 1024;
      v67 = [lastDisplayedEvent2 containerType] == 1;
      v68 = 1024;
      reachabilityEventWasOffline = [(HUCameraPlayerAccessoryViewController *)self reachabilityEventWasOffline];
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "Update AccessoryController cameraAccessMode:%@ liveStreamDisabled:%{BOOL}d showingError:%{BOOL}d timelineState:%@ containerTypeRecording:%{BOOL}d offline:%{BOOL}d", buf, 0x2Eu);
    }

    objc_initWeak(buf, self);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __67__HUCameraPlayerAccessoryViewController__updateErrorStateAnimated___block_invoke;
    v55[3] = &unk_277DBA860;
    objc_copyWeak(&v57, buf);
    v56 = playbackError;
    [(HUCameraPlayerAccessoryViewController *)self _updateStateAnimated:v52 usingBlock:v55];
    v47 = HFLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v54 = 0;
      _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "Accessory controller did update error state after change.", v54, 2u);
    }

    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);
  }
}

void __67__HUCameraPlayerAccessoryViewController__updateErrorStateAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained playbackEngine];
  v3 = [v2 cameraProfile];
  v4 = [v3 hf_shouldDisableLiveStream];

  v5 = [WeakRetained playbackEngine];
  v6 = [v5 cameraProfile];
  v7 = v6;
  if (!v4)
  {
    v14 = [v6 hf_thermalShutdownMode];

    if (v14 != 1 && v14 != 2)
    {
      v15 = *(a1 + 32);
      if (!v15)
      {
        goto LABEL_15;
      }

      [v15 code];
      v16 = HFLocalizedString();
      v17 = [WeakRetained primaryErrorLabel];
      [v17 setText:v16];

      v18 = [WeakRetained _errorStringDetailsForError:*(a1 + 32)];
      goto LABEL_14;
    }

LABEL_13:
    v19 = HFLocalizedString();
    v20 = [WeakRetained primaryErrorLabel];
    [v20 setText:v19];

    v18 = HFLocalizedString();
LABEL_14:
    v21 = v18;
    v22 = [WeakRetained secondaryErrorLabel];
    [v22 setText:v21];

    goto LABEL_15;
  }

  v8 = [v6 userSettings];
  v9 = [v8 currentAccessMode];

  v10 = [WeakRetained playbackEngine];
  v11 = [v10 cameraProfile];
  v12 = [v11 userSettings];
  v13 = [v12 isCameraManuallyDisabled];

  if (v13 || v9 == 3 || !v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  v23 = [WeakRetained playbackEngine];
  v24 = [v23 timelineState];

  if (v24 == 3)
  {
    v25 = [WeakRetained playbackEngine];
    v26 = [v25 currentClip];
    [WeakRetained _displayReachabilityMessageForEvent:v26];
  }

  v27 = [WeakRetained showingError];
  v28 = [WeakRetained primaryErrorLabel];
  [v28 setAlpha:v27];

  v29 = [WeakRetained showingError];
  v30 = [WeakRetained secondaryErrorLabel];
  [v30 setAlpha:v29];

  if ([WeakRetained showingError])
  {
    v31 = 0.5;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = [WeakRetained noResponseView];
  [v32 setAlpha:v31];
}

- (void)_updateStateAnimated:(BOOL)animated usingBlock:(id)block
{
  if (animated)
  {
    [MEMORY[0x277D75D18] animateWithDuration:block animations:0.3];
  }

  else
  {
    (*(block + 2))(block);
  }
}

- (id)_errorStringDetailsForError:(id)error
{
  [error code];
  v3 = HFLocalizedString();

  return v3;
}

- (BOOL)shouldShortCircuitLoadingIndicator
{
  if ([(HUCameraPlayerAccessoryViewController *)self forceLoadingIndicatorToDisplay])
  {
    return 0;
  }

  playbackEngine = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  if ([playbackEngine timeControlStatus])
  {
    playbackEngine2 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    cameraProfile = [playbackEngine2 cameraProfile];
    if ([cameraProfile hf_shouldDisableLiveStream])
    {
      playbackEngine3 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      playbackPosition = [playbackEngine3 playbackPosition];
      v3 = [playbackPosition contentType] == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_shouldShortCircuitBlurEffect
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    return 1;
  }

  if ([(HUCameraPlayerAccessoryViewController *)self showingError])
  {
    return 0;
  }

  playbackEngine = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  if ([playbackPosition contentType])
  {
    playbackEngine2 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    if ([playbackEngine2 timeControlStatus] == 2)
    {
      playbackEngine3 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v3 = [playbackEngine3 timelineState] == 2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_displayReachabilityMessageForEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  v5 = eventCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Unable to display a reachability message for a non-reachability event:%@", &v12, 0xCu);
    }
  }

  primaryErrorLabel = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  [primaryErrorLabel setText:&stru_2823E0EE8];

  displayDescription = [v7 displayDescription];
  secondaryErrorLabel = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  [secondaryErrorLabel setText:displayDescription];
}

- (HUCameraLoadingActivityIndicatorView)loadingActivityIndicator
{
  loadingActivityIndicator = self->_loadingActivityIndicator;
  if (!loadingActivityIndicator)
  {
    v4 = [HUCameraLoadingActivityIndicatorView alloc];
    view = [(HUCameraPlayerAccessoryViewController *)self view];
    [view bounds];
    v6 = [(HUCameraLoadingActivityIndicatorView *)v4 initWithFrame:?];
    v7 = self->_loadingActivityIndicator;
    self->_loadingActivityIndicator = v6;

    [(HUCameraLoadingActivityIndicatorView *)self->_loadingActivityIndicator setAutoresizingMask:18];
    loadingActivityIndicator = self->_loadingActivityIndicator;
  }

  return loadingActivityIndicator;
}

- (UILabel)primaryErrorLabel
{
  primaryErrorLabel = self->_primaryErrorLabel;
  if (!primaryErrorLabel)
  {
    _newLabel = [objc_opt_class() _newLabel];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)_newLabel setFont:v5];

    [(UILabel *)_newLabel setNumberOfLines:0];
    [(UILabel *)_newLabel setAlpha:0.0];
    v6 = self->_primaryErrorLabel;
    self->_primaryErrorLabel = _newLabel;

    primaryErrorLabel = self->_primaryErrorLabel;
  }

  return primaryErrorLabel;
}

- (UILabel)secondaryErrorLabel
{
  secondaryErrorLabel = self->_secondaryErrorLabel;
  if (!secondaryErrorLabel)
  {
    _newLabel = [objc_opt_class() _newLabel];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)_newLabel setFont:v5];

    [(UILabel *)_newLabel setNumberOfLines:0];
    [(UILabel *)_newLabel setAlpha:0.0];
    v6 = self->_secondaryErrorLabel;
    self->_secondaryErrorLabel = _newLabel;

    secondaryErrorLabel = self->_secondaryErrorLabel;
  }

  return secondaryErrorLabel;
}

- (UILabel)noActivityLabel
{
  noActivityLabel = self->_noActivityLabel;
  if (!noActivityLabel)
  {
    _newLabel = [objc_opt_class() _newLabel];
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraPlayerNoActivity", @"HUCameraPlayerNoActivity", 1);
    localizedUppercaseString = [v5 localizedUppercaseString];
    [(UILabel *)_newLabel setText:localizedUppercaseString];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)_newLabel setFont:v7];

    [(UILabel *)_newLabel setAlpha:0.0];
    v8 = self->_noActivityLabel;
    self->_noActivityLabel = _newLabel;

    noActivityLabel = self->_noActivityLabel;
  }

  return noActivityLabel;
}

+ (id)_newLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [v3 setTextColor:lightTextColor];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 setFont:v5];

  [v3 setTextAlignment:1];
  layer = [v3 layer];
  [layer setShadowRadius:3.0];

  layer2 = [v3 layer];
  LODWORD(v8) = *"333?";
  [layer2 setShadowOpacity:v8];

  v9 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.7];
  cGColor = [v9 CGColor];
  layer3 = [v3 layer];
  [layer3 setShadowColor:cGColor];

  layer4 = [v3 layer];
  [layer4 setShadowOffset:{0.0, 0.0}];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

- (UIImageView)noResponseView
{
  noResponseView = self->_noResponseView;
  if (!noResponseView)
  {
    hu_cameraErrorImage = [MEMORY[0x277D755B8] hu_cameraErrorImage];
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:hu_cameraErrorImage];
    [(UIImageView *)v5 setContentMode:1];
    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)v5 setTintColor:systemGrayColor];

    [(UIImageView *)v5 setAlpha:0.0];
    v7 = self->_noResponseView;
    self->_noResponseView = v5;

    noResponseView = self->_noResponseView;
  }

  return noResponseView;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (UIView)loadingOverlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingOverlayView);

  return WeakRetained;
}

- (HFCameraRecordingEvent)lastDisplayedEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_lastDisplayedEvent);

  return WeakRetained;
}

@end