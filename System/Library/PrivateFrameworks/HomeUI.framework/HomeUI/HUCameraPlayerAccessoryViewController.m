@interface HUCameraPlayerAccessoryViewController
+ (id)_newLabel;
- (BOOL)_shouldShortCircuitBlurEffect;
- (BOOL)shouldShortCircuitLoadingIndicator;
- (HFCameraPlaybackEngine)playbackEngine;
- (HFCameraRecordingEvent)lastDisplayedEvent;
- (HUCameraLoadingActivityIndicatorView)loadingActivityIndicator;
- (HUCameraPlayerAccessoryViewController)initWithPlaybackEngine:(id)a3;
- (UIImageView)noResponseView;
- (UILabel)noActivityLabel;
- (UILabel)primaryErrorLabel;
- (UILabel)secondaryErrorLabel;
- (UIView)loadingOverlayView;
- (id)_errorStringDetailsForError:(id)a3;
- (void)_displayReachabilityMessageForEvent:(id)a3;
- (void)_updateAllOverlayStateAnimated:(BOOL)a3;
- (void)_updateErrorStateAnimated:(BOOL)a3;
- (void)_updateLoadingStateAnimated:(BOOL)a3;
- (void)_updateNoActivityStateAnimated:(BOOL)a3;
- (void)_updateStateAnimated:(BOOL)a3 usingBlock:(id)a4;
- (void)hu_reloadData;
- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4;
- (void)setCanShowOverlayContent:(BOOL)a3;
- (void)setPlaybackEngine:(id)a3;
- (void)setShouldShowLoadingIndicatorForClipPlayback:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerAccessoryViewController

- (void)setPlaybackEngine:(id)a3
{
  obj = a3;
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

- (HUCameraPlayerAccessoryViewController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAccessoryViewController;
  v5 = [(HUCameraPlayerAccessoryViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUCameraPlayerAccessoryViewController *)v5 setPlaybackEngine:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v83[12] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = HUCameraPlayerAccessoryViewController;
  [(HUCameraPlayerAccessoryViewController *)&v82 viewDidLoad];
  v3 = [(HUCameraPlayerAccessoryViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(HUCameraPlayerAccessoryViewController *)self view];
  v5 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
  [v4 addSubview:v5];

  v6 = [(HUCameraPlayerAccessoryViewController *)self view];
  v7 = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  [v6 naui_addAutoLayoutSubview:v7];

  v8 = [(HUCameraPlayerAccessoryViewController *)self view];
  v9 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  [v8 addSubview:v9];

  v10 = [(HUCameraPlayerAccessoryViewController *)self view];
  v11 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  [v10 addSubview:v11];

  v12 = [(HUCameraPlayerAccessoryViewController *)self view];
  v13 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  [v12 addSubview:v13];

  v14 = [(HUCameraPlayerAccessoryViewController *)self view];
  [v14 center];
  v16 = v15;
  v18 = v17;
  v19 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
  [v19 setCenter:{v16, v18}];

  v55 = MEMORY[0x277CCAAD0];
  v81 = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  v79 = [v81 centerYAnchor];
  v80 = [(HUCameraPlayerAccessoryViewController *)self view];
  v78 = [v80 centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v83[0] = v77;
  v76 = [(HUCameraPlayerAccessoryViewController *)self noActivityLabel];
  v74 = [v76 centerXAnchor];
  v75 = [(HUCameraPlayerAccessoryViewController *)self view];
  v73 = [v75 centerXAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v83[1] = v72;
  v71 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  v69 = [v71 centerXAnchor];
  v70 = [(HUCameraPlayerAccessoryViewController *)self view];
  v68 = [v70 centerXAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v83[2] = v67;
  v66 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  v64 = [v66 centerYAnchor];
  v65 = [(HUCameraPlayerAccessoryViewController *)self view];
  v63 = [v65 centerYAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v83[3] = v62;
  v61 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  v59 = [v61 widthAnchor];
  v60 = [(HUCameraPlayerAccessoryViewController *)self view];
  v58 = [v60 readableContentGuide];
  v57 = [v58 widthAnchor];
  v56 = [v59 constraintEqualToAnchor:v57];
  v83[4] = v56;
  v54 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  v52 = [v54 topAnchor];
  v53 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  v51 = [v53 bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:6.0];
  v83[5] = v50;
  v49 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  v47 = [v49 leadingAnchor];
  v48 = [(HUCameraPlayerAccessoryViewController *)self view];
  v46 = [v48 safeAreaLayoutGuide];
  v45 = [v46 leadingAnchor];
  v44 = [v47 constraintEqualToAnchor:v45 constant:10.0];
  v83[6] = v44;
  v43 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  v41 = [v43 trailingAnchor];
  v42 = [(HUCameraPlayerAccessoryViewController *)self view];
  v40 = [v42 safeAreaLayoutGuide];
  v39 = [v40 trailingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39 constant:-10.0];
  v83[7] = v38;
  v37 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  v35 = [v37 bottomAnchor];
  v36 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:-10.0];
  v83[8] = v33;
  v32 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  v30 = [v32 centerXAnchor];
  v31 = [(HUCameraPlayerAccessoryViewController *)self view];
  v29 = [v31 centerXAnchor];
  v20 = [v30 constraintEqualToAnchor:v29];
  v83[9] = v20;
  v21 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  v22 = [v21 widthAnchor];
  v23 = [v22 constraintEqualToConstant:61.0];
  v83[10] = v23;
  v24 = [(HUCameraPlayerAccessoryViewController *)self noResponseView];
  v25 = [v24 heightAnchor];
  v26 = [v25 constraintEqualToConstant:50.0];
  v83[11] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:12];
  v28 = [v27 na_arrayByFlattening];
  [v55 activateConstraints:v28];

  [(HUCameraPlayerAccessoryViewController *)self _updateAllOverlayStateAnimated:0];
}

- (void)setCanShowOverlayContent:(BOOL)a3
{
  if (self->_canShowOverlayContent != a3)
  {
    self->_canShowOverlayContent = a3;
    [(HUCameraPlayerAccessoryViewController *)self _updateAllOverlayStateAnimated:1];
  }
}

- (void)setShouldShowLoadingIndicatorForClipPlayback:(BOOL)a3
{
  if (self->_shouldShowLoadingIndicatorForClipPlayback != a3)
  {
    self->_shouldShowLoadingIndicatorForClipPlayback = a3;
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

- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HUCameraPlayerAccessoryViewController_playbackEngine_didUpdateTimeControlStatus___block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4
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

- (void)_updateAllOverlayStateAnimated:(BOOL)a3
{
  v3 = a3;
  [(HUCameraPlayerAccessoryViewController *)self _updateLoadingStateAnimated:?];
  [(HUCameraPlayerAccessoryViewController *)self _updateNoActivityStateAnimated:v3];

  [(HUCameraPlayerAccessoryViewController *)self _updateErrorStateAnimated:v3];
}

- (void)_updateLoadingStateAnimated:(BOOL)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(HUCameraPlayerAccessoryViewController *)self shouldShortCircuitLoadingIndicator])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v32 = 134217984;
      *v33 = [v5 timeControlStatus];
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Short-circuiting accessory view loading UI. %lu", &v32, 0xCu);
    }

    v6 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
    [v6 setAlpha:0.0];

    v7 = [(HUCameraPlayerAccessoryViewController *)self loadingOverlayView];
    [v7 setAlpha:0.0];

    [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:0];
    return;
  }

  v8 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
  v9 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v10 = [v9 playbackPosition];
  v11 = [v10 contentType];

  v12 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v13 = v12;
  if (v11 == 1)
  {
    if ([v12 timelineState] == 3)
    {

LABEL_13:
      [(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent];
LABEL_14:
      [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:0];
      goto LABEL_15;
    }

    v17 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v18 = [v17 timelineState];

    if (v18 == 4)
    {
      goto LABEL_13;
    }

    v14 = [(HUCameraPlayerAccessoryViewController *)self shouldShowLoadingIndicatorForClipPlayback];
  }

  else
  {
    v14 = [v12 timeControlStatus] == 1;
  }

  if (![(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent]|| !v14)
  {
    goto LABEL_14;
  }

  v15 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v16 = [v15 playbackError];
  [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:v16 == 0];

LABEL_15:
  if ([(HUCameraPlayerAccessoryViewController *)self forceLoadingIndicatorToDisplay])
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingLoadingIndicator:1];
  }

  v19 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
  v20 = HFLogForCategory();
  v21 = v20;
  if (v8 == v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
      v27 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v28 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v29 = [v28 playbackPosition];
      v30 = [v29 contentType];
      v31 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v32 = 67109890;
      *v33 = v26;
      *&v33[4] = 2112;
      *&v33[6] = v27;
      v34 = 2048;
      v35 = v30;
      v36 = 2048;
      v37 = [v31 timeControlStatus];
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

    v22 = [(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator];
    v23 = [(HUCameraPlayerAccessoryViewController *)self loadingActivityIndicator];
    [v23 setAlpha:v22];

    if ([(HUCameraPlayerAccessoryViewController *)self showingLoadingIndicator])
    {
      v24 = 0.5;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [(HUCameraPlayerAccessoryViewController *)self loadingOverlayView];
    [v25 setAlpha:v24];
  }
}

- (void)_updateNoActivityStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUCameraPlayerAccessoryViewController *)self showingNoActivity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke;
  v7[3] = &unk_277DBA888;
  v7[4] = self;
  [(HUCameraPlayerAccessoryViewController *)self setShowingNoActivity:__72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke(v7) != 0];
  if (v5 != [(HUCameraPlayerAccessoryViewController *)self showingNoActivity])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__HUCameraPlayerAccessoryViewController__updateNoActivityStateAnimated___block_invoke_2;
    v6[3] = &unk_277DB8488;
    v6[4] = self;
    [(HUCameraPlayerAccessoryViewController *)self _updateStateAnimated:v3 usingBlock:v6];
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

- (void)_updateErrorStateAnimated:(BOOL)a3
{
  v3 = a3;
  v70 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    return;
  }

  v52 = v3;
  v5 = [(HUCameraPlayerAccessoryViewController *)self showingError];
  v6 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v53 = [v6 playbackError];

  if ([(HUCameraPlayerAccessoryViewController *)self canShowOverlayContent]&& v53)
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingError:1];
  }

  else
  {
    v7 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v8 = [v7 cameraProfile];
    -[HUCameraPlayerAccessoryViewController setShowingError:](self, "setShowingError:", [v8 hf_shouldDisableLiveStream]);
  }

  v9 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v10 = [v9 playbackPosition];
  v11 = [v10 contentType];

  if (v11 == 1)
  {
    [(HUCameraPlayerAccessoryViewController *)self setShowingError:0];
  }

  v12 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v13 = [v12 timelineState];

  if (v13 == 3 && ((-[HUCameraPlayerAccessoryViewController setShowingError:](self, "setShowingError:", 1), -[HUCameraPlayerAccessoryViewController reachabilityEventWasOffline](self, "reachabilityEventWasOffline")) || (-[HUCameraPlayerAccessoryViewController lastDisplayedEvent](self, "lastDisplayedEvent"), v14 = objc_claimAutoreleasedReturnValue(), -[HUCameraPlayerAccessoryViewController playbackEngine](self, "playbackEngine"), v15 = objc_claimAutoreleasedReturnValue(), [v15 currentClip], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqual:", v16), v16, v15, v14, (v17 & 1) == 0)))
  {
    v19 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v20 = [v19 currentClip];
    [(HUCameraPlayerAccessoryViewController *)self setLastDisplayedEvent:v20];

    objc_opt_class();
    v21 = [(HUCameraPlayerAccessoryViewController *)self lastDisplayedEvent];
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = [v23 endEvent];

    [(HUCameraPlayerAccessoryViewController *)self setReachabilityEventWasOffline:v24 == 0];
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v25 = [(HUCameraPlayerAccessoryViewController *)self currentAccessMode];
  v26 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v27 = [v26 cameraProfile];
  v28 = [v27 userSettings];
  v29 = [v28 currentAccessMode];

  if (v25 != v29)
  {
    v30 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v31 = [v30 cameraProfile];
    v32 = [v31 userSettings];
    -[HUCameraPlayerAccessoryViewController setCurrentAccessMode:](self, "setCurrentAccessMode:", [v32 currentAccessMode]);

    v18 = 1;
  }

  v33 = [(HUCameraPlayerAccessoryViewController *)self lastEngineMode];
  v34 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  if (v33 == [v34 engineMode])
  {
    v35 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v36 = [v35 engineMode];

    if (v36)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v37 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  -[HUCameraPlayerAccessoryViewController setLastEngineMode:](self, "setLastEngineMode:", [v37 engineMode]);

  v18 = 1;
LABEL_23:
  v38 = [(HUCameraPlayerAccessoryViewController *)self showingError];
  if (v18 || v5 != v38)
  {
    v39 = HFLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v51 = [v40 cameraProfile];
      v50 = [v51 userSettings];
      v48 = [v50 hu_currentAccessModeDescription];
      v49 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v41 = [v49 cameraProfile];
      v42 = [v41 hf_shouldDisableLiveStream];
      v43 = [(HUCameraPlayerAccessoryViewController *)self showingError];
      v44 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v45 = [v44 timelineStateDescription];
      v46 = [(HUCameraPlayerAccessoryViewController *)self lastDisplayedEvent];
      *buf = 138413570;
      v59 = v48;
      v60 = 1024;
      v61 = v42;
      v62 = 1024;
      v63 = v43;
      v64 = 2112;
      v65 = v45;
      v66 = 1024;
      v67 = [v46 containerType] == 1;
      v68 = 1024;
      v69 = [(HUCameraPlayerAccessoryViewController *)self reachabilityEventWasOffline];
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "Update AccessoryController cameraAccessMode:%@ liveStreamDisabled:%{BOOL}d showingError:%{BOOL}d timelineState:%@ containerTypeRecording:%{BOOL}d offline:%{BOOL}d", buf, 0x2Eu);
    }

    objc_initWeak(buf, self);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __67__HUCameraPlayerAccessoryViewController__updateErrorStateAnimated___block_invoke;
    v55[3] = &unk_277DBA860;
    objc_copyWeak(&v57, buf);
    v56 = v53;
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

- (void)_updateStateAnimated:(BOOL)a3 usingBlock:(id)a4
{
  if (a3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:a4 animations:0.3];
  }

  else
  {
    (*(a4 + 2))(a4);
  }
}

- (id)_errorStringDetailsForError:(id)a3
{
  [a3 code];
  v3 = HFLocalizedString();

  return v3;
}

- (BOOL)shouldShortCircuitLoadingIndicator
{
  if ([(HUCameraPlayerAccessoryViewController *)self forceLoadingIndicatorToDisplay])
  {
    return 0;
  }

  v4 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  if ([v4 timeControlStatus])
  {
    v5 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    v6 = [v5 cameraProfile];
    if ([v6 hf_shouldDisableLiveStream])
    {
      v7 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v8 = [v7 playbackPosition];
      v3 = [v8 contentType] == 0;
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

  v4 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
  v5 = [v4 playbackPosition];
  if ([v5 contentType])
  {
    v6 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
    if ([v6 timeControlStatus] == 2)
    {
      v7 = [(HUCameraPlayerAccessoryViewController *)self playbackEngine];
      v3 = [v7 timelineState] == 2;
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

- (void)_displayReachabilityMessageForEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

  v9 = [(HUCameraPlayerAccessoryViewController *)self primaryErrorLabel];
  [v9 setText:&stru_2823E0EE8];

  v10 = [v7 displayDescription];
  v11 = [(HUCameraPlayerAccessoryViewController *)self secondaryErrorLabel];
  [v11 setText:v10];
}

- (HUCameraLoadingActivityIndicatorView)loadingActivityIndicator
{
  loadingActivityIndicator = self->_loadingActivityIndicator;
  if (!loadingActivityIndicator)
  {
    v4 = [HUCameraLoadingActivityIndicatorView alloc];
    v5 = [(HUCameraPlayerAccessoryViewController *)self view];
    [v5 bounds];
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
    v4 = [objc_opt_class() _newLabel];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v4 setFont:v5];

    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setAlpha:0.0];
    v6 = self->_primaryErrorLabel;
    self->_primaryErrorLabel = v4;

    primaryErrorLabel = self->_primaryErrorLabel;
  }

  return primaryErrorLabel;
}

- (UILabel)secondaryErrorLabel
{
  secondaryErrorLabel = self->_secondaryErrorLabel;
  if (!secondaryErrorLabel)
  {
    v4 = [objc_opt_class() _newLabel];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4 setFont:v5];

    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setAlpha:0.0];
    v6 = self->_secondaryErrorLabel;
    self->_secondaryErrorLabel = v4;

    secondaryErrorLabel = self->_secondaryErrorLabel;
  }

  return secondaryErrorLabel;
}

- (UILabel)noActivityLabel
{
  noActivityLabel = self->_noActivityLabel;
  if (!noActivityLabel)
  {
    v4 = [objc_opt_class() _newLabel];
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraPlayerNoActivity", @"HUCameraPlayerNoActivity", 1);
    v6 = [v5 localizedUppercaseString];
    [(UILabel *)v4 setText:v6];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v4 setFont:v7];

    [(UILabel *)v4 setAlpha:0.0];
    v8 = self->_noActivityLabel;
    self->_noActivityLabel = v4;

    noActivityLabel = self->_noActivityLabel;
  }

  return noActivityLabel;
}

+ (id)_newLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D75348] lightTextColor];
  [v3 setTextColor:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 setFont:v5];

  [v3 setTextAlignment:1];
  v6 = [v3 layer];
  [v6 setShadowRadius:3.0];

  v7 = [v3 layer];
  LODWORD(v8) = *"333?";
  [v7 setShadowOpacity:v8];

  v9 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.7];
  v10 = [v9 CGColor];
  v11 = [v3 layer];
  [v11 setShadowColor:v10];

  v12 = [v3 layer];
  [v12 setShadowOffset:{0.0, 0.0}];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

- (UIImageView)noResponseView
{
  noResponseView = self->_noResponseView;
  if (!noResponseView)
  {
    v4 = [MEMORY[0x277D755B8] hu_cameraErrorImage];
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v4];
    [(UIImageView *)v5 setContentMode:1];
    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)v5 setTintColor:v6];

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