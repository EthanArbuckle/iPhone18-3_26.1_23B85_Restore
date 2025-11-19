@interface HUClipScrubberViewController
- (BOOL)_cellBoundsContainsPlayhead:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)userIsScrubbing;
- (HFCameraPlaybackEngine)playbackEngine;
- (HMCameraClipFetchVideoAssetContextOperation)exportDownloadOperation;
- (HUClipScrubberView)scrubberView;
- (HUClipScrubberViewController)initWithPlaybackEngine:(id)a3;
- (UIButton)feedbackButton;
- (UIButton)nearbyAccessoriesButton;
- (UIButton)selectionButton;
- (UIView)feedbackPlatter;
- (UIView)nearbyAccessoriesPlatter;
- (UIView)selectionPlatter;
- (double)currentScrubberResolution;
- (id)_displayableURLForCameraClipURL:(id)a3;
- (id)_feedbackClip;
- (id)platterWithView:(id)a3;
- (unint64_t)displayMode;
- (void)_addConstraints;
- (void)_createAndStartDisplayLink;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4;
- (void)_removeDisplayLink;
- (void)_scrubberDisplayLinkTick:(id)a3;
- (void)changeToLiveMode;
- (void)changeToLiveModeIfNeeded;
- (void)consentController:(id)a3 didFinishConsentWithAnswer:(BOOL)a4;
- (void)dealloc;
- (void)deleteClip;
- (void)didDoubleTap:(id)a3;
- (void)didPinch:(id)a3;
- (void)didSelectFeedbackButton;
- (void)didSelectRightActionButton:(id)a3;
- (void)didTap:(id)a3;
- (void)dismissEditInterface;
- (void)donateAllClips;
- (void)donateClip:(id)a3;
- (void)exportCurrentClipWithCompletion:(id)a3;
- (void)exportLocalClipAtURL:(id)a3;
- (void)loadView;
- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4;
- (void)presentFeedbackConsent;
- (void)presentFeedbackOptions;
- (void)presentPreviouslySubmittedClipAlert;
- (void)reloadClipManager:(id)a3;
- (void)removeLiveButtonHighlighting;
- (void)showAssociatedAccessories;
- (void)showDeleteInterface;
- (void)showEditInterface;
- (void)submitCurrentClip;
- (void)togglePlayPause;
- (void)updateAccessoryViews;
- (void)updateDisplayForLiveMode;
- (void)updatePlaybackPosition:(id)a3 animated:(BOOL)a4;
- (void)updateScrubberDisplayLinkState;
- (void)updateScrubberViewAndAssociatedConstraints;
- (void)updateSelectionPlatterDisplay;
- (void)verifySubmitAllClips;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUClipScrubberViewController

- (HUClipScrubberViewController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HUClipScrubberViewController;
  v5 = [(HUClipScrubberViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playbackEngine, v4);
    v8 = [MEMORY[0x277D144C8] defaultOptions];
    [v4 addObserver:v6 withOptions:v8];

    v9 = [v4 cameraProfile];
    v10 = [v9 clipManager];
    [(HUClipScrubberViewController *)v6 reloadClipManager:v10];
  }

  return v6;
}

- (void)dealloc
{
  +[HUPosterFrameViewCache purgeCache];
  v3 = [MEMORY[0x277D14670] sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 dealloc];
}

- (void)reloadClipManager:(id)a3
{
  v4 = [(HUClipScrubberViewController *)self dataSource];

  if (v4)
  {
    v5 = [(HUClipScrubberViewController *)self dataSource];
    [v5 reloadEvents];
  }

  else
  {
    v6 = [HUClipScrubberDataSource alloc];
    v7 = [(HUClipScrubberViewController *)self playbackEngine];
    v8 = [(HUClipScrubberDataSource *)v6 initWithPlaybackEngine:v7];
    [(HUClipScrubberViewController *)self setDataSource:v8];

    v9 = [(HUClipScrubberViewController *)self playbackEngine];
    v10 = [(HUClipScrubberViewController *)self dataSource];
    [v10 setPlaybackEngine:v9];

    v11 = [[HUClipScrubberScrollDelegate alloc] initWithDataSource:self->_dataSource];
    [(HUClipScrubberViewController *)self setClipScrollDelegate:v11];

    v12 = [(HUClipScrubberViewController *)self playbackEngine];
    v13 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [v13 setPlaybackEngine:v12];

    v14 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    v15 = [(HUClipScrubberViewController *)self scrubberView];
    v16 = [v15 clipCollectionView];
    [v16 setDelegate:v14];

    v17 = [(HUClipScrubberViewController *)self scrubberView];
    v18 = [v17 clipCollectionView];
    v19 = [(HUClipScrubberViewController *)self dataSource];
    [v19 setClipCollectionView:v18];

    v5 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    v20 = [(HUClipScrubberViewController *)self scrubberView];
    v21 = [v20 clipCollectionView];
    [v5 updateCollectionView:v21];
  }

  [(HUClipScrubberViewController *)self updateSelectionPlatterDisplay];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUClipScrubberViewController *)self setView:v4];

  v5 = [(HUClipScrubberViewController *)self view];
  v6 = [(HUClipScrubberViewController *)self scrubberView];
  [v5 addSubview:v6];

  v7 = [(HUClipScrubberViewController *)self view];
  v8 = [(HUClipScrubberViewController *)self selectionPlatter];
  [v7 addSubview:v8];

  v9 = [(HUClipScrubberViewController *)self view];
  v10 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  [v9 addSubview:v10];

  v11 = [(HUClipScrubberViewController *)self view];
  v12 = [(HUClipScrubberViewController *)self feedbackPlatter];
  [v11 addSubview:v12];

  [(HUClipScrubberViewController *)self changeToLiveModeIfNeeded];
  [(HUClipScrubberViewController *)self updateAccessoryViews];
  v13 = [(HUClipScrubberViewController *)self scrubberView];
  [v13 updateDisplayMode:0];

  [(HUClipScrubberViewController *)self updateScrubberViewAndAssociatedConstraints];
  v14 = [MEMORY[0x277D14670] sharedInstance];
  [v14 addObserver:self];
}

- (void)updateScrubberViewAndAssociatedConstraints
{
  v3 = [(HUClipScrubberViewController *)self dataSource];
  v4 = [v3 isEditing];

  v5 = 0.0;
  v6 = 0.0;
  if ((v4 & 1) == 0)
  {
    v7 = [(HUClipScrubberViewController *)self traitCollection];
    v8 = [v7 hu_hasExtendedWidth];

    v9 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatterTopAnchorConstraint];
    v10 = v9;
    if (v8)
    {
      v5 = 63.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (v8)
    {
      v6 = -63.0;
    }

    else
    {
      v6 = 0.0;
    }

    [v9 setConstant:v5];

    v11 = [(HUClipScrubberViewController *)self selectionPlatterTopAnchorConstraint];
    [v11 setConstant:v5];
  }

  v12 = [(HUClipScrubberViewController *)self scrubberViewLeftAnchorConstraint];
  [v12 setConstant:v5];

  v13 = [(HUClipScrubberViewController *)self scrubberViewRightAnchorConstraint];
  [v13 setConstant:v6];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = HUClipScrubberViewController;
  v7 = a4;
  [(HUClipScrubberViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(HUClipScrubberViewController *)self dataSource];
  [v8 setSelectionViewHidden:1];

  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HUClipScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_277DB79B8;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HUClipScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_277DB79B8;
  [v7 animateAlongsideTransition:v10 completion:v9];
}

uint64_t __83__HUClipScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 hu_hasExtendedWidth];

  if (v3)
  {
    v4 = [*(a1 + 32) dataSource];
    v5 = [v4 displayMode];

    if (!v5)
    {
      v6 = [*(a1 + 32) scrubberView];
      [v6 updateDisplayMode:0];
    }
  }

  v7 = *(a1 + 32);

  return [v7 updateScrubberViewAndAssociatedConstraints];
}

void __83__HUClipScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSource];
  [v1 updateSelectionViewIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewWillAppear:a3];
  [(HUClipScrubberViewController *)self setIsVisible:1];
  [(HUClipScrubberViewController *)self _addConstraints];
  [(HUClipScrubberViewController *)self _createAndStartDisplayLink];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewWillDisappear:a3];
  [(HUClipScrubberViewController *)self _removeDisplayLink];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewDidDisappear:a3];
  [(HUClipScrubberViewController *)self setIsVisible:0];
}

- (void)_createAndStartDisplayLink
{
  v3 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];

  if (v3)
  {
    v4 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
    [v4 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__scrubberDisplayLinkTick_];
  [(HUClipScrubberViewController *)self setScrubberUpdateDisplayLink:v5];

  v6 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];

  [(HUClipScrubberViewController *)self updateScrubberDisplayLinkState];
}

- (void)_removeDisplayLink
{
  v2 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  [v2 invalidate];
}

- (void)_addConstraints
{
  v75[16] = *MEMORY[0x277D85DE8];
  v3 = [(HUClipScrubberViewController *)self scrubberView];
  v4 = [v3 rightAnchor];
  v5 = [(HUClipScrubberViewController *)self view];
  v6 = [v5 rightAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [(HUClipScrubberViewController *)self setScrubberViewRightAnchorConstraint:v7];

  v8 = [(HUClipScrubberViewController *)self scrubberView];
  v9 = [v8 leftAnchor];
  v10 = [(HUClipScrubberViewController *)self view];
  v11 = [v10 leftAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [(HUClipScrubberViewController *)self setScrubberViewLeftAnchorConstraint:v12];

  v13 = [(HUClipScrubberViewController *)self selectionPlatter];
  v14 = [v13 topAnchor];
  v15 = [(HUClipScrubberViewController *)self view];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [(HUClipScrubberViewController *)self setSelectionPlatterTopAnchorConstraint:v17];

  v18 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  v19 = [v18 topAnchor];
  v20 = [(HUClipScrubberViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [(HUClipScrubberViewController *)self setNearbyAccessoriesPlatterTopAnchorConstraint:v22];

  v23 = [(HUClipScrubberViewController *)self feedbackPlatter];
  v24 = [v23 topAnchor];
  v25 = [(HUClipScrubberViewController *)self view];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [(HUClipScrubberViewController *)self setFeedbackPlatterTopAnchorConstraint:v27];

  v74 = [(HUClipScrubberViewController *)self scrubberViewLeftAnchorConstraint];
  v75[0] = v74;
  v73 = [(HUClipScrubberViewController *)self scrubberViewRightAnchorConstraint];
  v75[1] = v73;
  v72 = [(HUClipScrubberViewController *)self scrubberView];
  v71 = [v72 heightAnchor];
  v70 = [v71 constraintEqualToConstant:47.0];
  v75[2] = v70;
  v69 = [(HUClipScrubberViewController *)self scrubberView];
  v67 = [v69 topAnchor];
  v68 = [(HUClipScrubberViewController *)self view];
  v66 = [v68 topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:63.0];
  v75[3] = v65;
  v64 = [(HUClipScrubberViewController *)self selectionPlatter];
  v62 = [v64 leftAnchor];
  v63 = [(HUClipScrubberViewController *)self view];
  v61 = [v63 leftAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v75[4] = v60;
  v59 = [(HUClipScrubberViewController *)self selectionPlatter];
  v58 = [v59 widthAnchor];
  v57 = [v58 constraintEqualToConstant:54.0];
  v75[5] = v57;
  v56 = [(HUClipScrubberViewController *)self selectionPlatter];
  v55 = [v56 heightAnchor];
  v54 = [v55 constraintEqualToConstant:47.0];
  v75[6] = v54;
  v53 = [(HUClipScrubberViewController *)self selectionPlatterTopAnchorConstraint];
  v75[7] = v53;
  v52 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  v50 = [v52 rightAnchor];
  v51 = [(HUClipScrubberViewController *)self view];
  v49 = [v51 rightAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v75[8] = v48;
  v47 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  v45 = [v47 heightAnchor];
  v44 = [v45 constraintEqualToConstant:47.0];
  v75[9] = v44;
  v43 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  v42 = [v43 widthAnchor];
  v41 = [v42 constraintEqualToConstant:54.0];
  v75[10] = v41;
  v40 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatterTopAnchorConstraint];
  v75[11] = v40;
  v39 = [(HUClipScrubberViewController *)self feedbackPlatter];
  v38 = [v39 rightAnchor];
  v28 = [(HUClipScrubberViewController *)self view];
  v29 = [v28 rightAnchor];
  v30 = [v38 constraintEqualToAnchor:v29];
  v75[12] = v30;
  v31 = [(HUClipScrubberViewController *)self feedbackPlatter];
  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant:45.0];
  v75[13] = v33;
  v34 = [(HUClipScrubberViewController *)self feedbackPlatter];
  v35 = [v34 widthAnchor];
  v36 = [v35 constraintEqualToConstant:45.0];
  v75[14] = v36;
  v37 = [(HUClipScrubberViewController *)self feedbackPlatterTopAnchorConstraint];
  v75[15] = v37;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:16];

  [MEMORY[0x277CCAAD0] activateConstraints:v46];
}

- (void)togglePlayPause
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v3 timeControlStatus];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4 != 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User toggled playback engine [Playing:%{BOOL}d].", v8, 8u);
  }

  v6 = [(HUClipScrubberViewController *)self playbackEngine];
  v7 = v6;
  if (v4)
  {
    [v6 pause];
  }

  else
  {
    [v6 play];
  }
}

- (void)changeToLiveModeIfNeeded
{
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v3 currentClip];
  if (v4)
  {
    v5 = v4;
    v6 = [(HUClipScrubberViewController *)self playbackEngine];
    v7 = [v6 playbackPosition];
    v8 = [v7 contentType];

    if (v8)
    {
      return;
    }
  }

  else
  {
  }

  [(HUClipScrubberViewController *)self changeToLiveMode];
}

- (void)changeToLiveMode
{
  v3 = [MEMORY[0x277D144D0] livePosition];
  v4 = [(HUClipScrubberViewController *)self playbackEngine];
  [v4 setPlaybackPosition:v3];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v7 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = [(HUClipScrubberViewController *)self scrubberView];
    v6 = [v5 rightActionButton];
    [v6 setBackgroundColor:v7];
  }
}

- (void)updateDisplayForLiveMode
{
  v3 = [(HUClipScrubberViewController *)self selectionButton];
  [v3 setEnabled:0];

  v4 = [(HUClipScrubberViewController *)self clipScrollDelegate];
  v5 = [v4 isUserScrubbing];

  if ((v5 & 1) == 0)
  {
    v6 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [v6 setShouldIgnoreScrolling:1];

    v7 = [(HUClipScrubberViewController *)self scrubberView];
    [v7 navigateToLivePosition];

    v8 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [v8 setShouldIgnoreScrolling:0];
  }
}

- (void)showAssociatedAccessories
{
  v2 = [(HUClipScrubberViewController *)self accessoryButtonHandler];
  v2[2]();
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = [v6 isUserScrubbing];
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User Scrubbing:%{BOOL}d updated playback position:%@", v9, 0x12u);
  }

  [(HUClipScrubberViewController *)self updateAccessoryViews];
  [(HUClipScrubberViewController *)self updatePlaybackPosition:v7 animated:1];
}

- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 timeControlStatusDescription];
    v8 = 138412290;
    v9 = v7;
  }

  [(HUClipScrubberViewController *)self updateAccessoryViews];
  [(HUClipScrubberViewController *)self updateScrubberDisplayLinkState];
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUClipScrubberViewController_playbackEngine_didUpdatePlaybackError___block_invoke;
  v7[3] = &unk_277DB7558;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __70__HUClipScrubberViewController_playbackEngine_didUpdatePlaybackError___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) removeLiveButtonHighlighting];
  }

  return result;
}

- (double)currentScrubberResolution
{
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v3 currentClip];

  if (v4)
  {
    v5 = [(HUClipScrubberViewController *)self dataSource];
    [v5 scrubbingResolutionForClip:v4];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)updateScrubberDisplayLinkState
{
  v5 = [(HUClipScrubberViewController *)self playbackEngine];
  if ([v5 timeControlStatus])
  {
    v3 = [(HUClipScrubberViewController *)self isVisible]^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  [v4 setPaused:v3];
}

- (void)_scrubberDisplayLinkTick:(id)a3
{
  v5 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v5 playbackPosition];
  [(HUClipScrubberViewController *)self updatePlaybackPosition:v4 animated:0];
}

- (void)updateAccessoryViews
{
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v3 timelineState] == 2;
  v5 = [(HUClipScrubberViewController *)self selectionButton];
  [v5 setEnabled:v4];

  v7 = [(HUClipScrubberViewController *)self scrubberView];
  v6 = [(HUClipScrubberViewController *)self playbackEngine];
  [v7 didUpdatePlaybackEngine:v6];
}

- (void)updatePlaybackPosition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUClipScrubberViewController *)self dataSource];
  v8 = [v6 clipPlaybackDate];
  v9 = [(HUClipScrubberViewController *)self lastEngineMode];
  v10 = [(HUClipScrubberViewController *)self playbackEngine];
  v11 = [v10 engineMode];

  if (v9 != v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HUClipScrubberViewController *)self lastEngineMode];
      v14 = [(HUClipScrubberViewController *)self playbackEngine];
      *buf = 134218240;
      v37 = v13;
      v38 = 2048;
      v39 = [v14 engineMode];
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Updating the last engine mode from %lu to %lu", buf, 0x16u);
    }

    v15 = [(HUClipScrubberViewController *)self playbackEngine];
    -[HUClipScrubberViewController setLastEngineMode:](self, "setLastEngineMode:", [v15 engineMode]);

    [(HUClipScrubberViewController *)self updateAccessoryViews];
    if ([v6 contentType] && objc_msgSend(v7, "currentTimelineState") != 1)
    {
      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_11;
      }

      v16 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(HUClipScrubberViewController *)self updateDisplayForLiveMode];
      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_11;
      }

      v16 = [MEMORY[0x277D75348] orangeColor];
    }

    v17 = v16;
    v18 = [(HUClipScrubberViewController *)self scrubberView];
    v19 = [v18 rightActionButton];
    [v19 setBackgroundColor:v17];
  }

LABEL_11:
  if ([v6 contentType])
  {
    [v7 setCurrentDate:v8];
    v20 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    v21 = [v20 isUserScrubbing];

    if ((v21 & 1) == 0)
    {
      v22 = [v6 clip];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v25 = [(HUClipScrubberViewController *)self playbackEngine];
        v24 = [v25 currentClip];
      }

      [v7 setCurrentEvent:v24];
      v26 = [v6 clipPlaybackDate];
      [v7 setCurrentDate:v26];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__HUClipScrubberViewController_updatePlaybackPosition_animated___block_invoke;
      aBlock[3] = &unk_277DB8810;
      v27 = v24;
      v33 = v27;
      v34 = self;
      v35 = v7;
      v28 = _Block_copy(aBlock);
      v29 = v28;
      if (v4)
      {
        v30 = [(HUClipScrubberViewController *)self clipScrollDelegate];
        [v30 setShouldIgnoreScrolling:1];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __64__HUClipScrubberViewController_updatePlaybackPosition_animated___block_invoke_2;
        v31[3] = &unk_277DB8C28;
        v31[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v29 animations:v31 completion:0.2];
      }

      else
      {
        (*(v28 + 2))(v28);
      }
    }
  }

  else
  {
    [(HUClipScrubberViewController *)self updateDisplayForLiveMode];
  }
}

void __64__HUClipScrubberViewController_updatePlaybackPosition_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) scrubberView];
    [*(a1 + 48) offsetForEvent:*(a1 + 32)];
    [v2 navigateToOffset:?];
  }
}

void __64__HUClipScrubberViewController_updatePlaybackPosition_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clipScrollDelegate];
  [v1 setShouldIgnoreScrolling:0];
}

- (BOOL)userIsScrubbing
{
  v2 = [(HUClipScrubberViewController *)self scrubberView];
  v3 = [v2 clipCollectionView];
  v4 = [v3 isTracking];

  return v4;
}

- (void)didPinch:(id)a3
{
  v9 = a3;
  v4 = [(HUClipScrubberViewController *)self dataSource];
  v5 = [v4 timeController];
  [v5 setUserControlled:1];

  v6 = [v9 state];
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      [(HUClipScrubberViewController *)self setPinchGestureCount:[(HUClipScrubberViewController *)self pinchGestureCount]+ 1];
      v8 = [(HUClipScrubberViewController *)self clipScrollDelegate];
      [v8 setShouldIgnoreScrolling:1];

      v7 = [(HUClipScrubberViewController *)self dataSource];
      [v7 beginTimeScaleTrackingForPinchGesture:v9];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_10;
      }

      v7 = [(HUClipScrubberViewController *)self dataSource];
      [v7 changeTimeScaleForPinchGesture:v9];
    }

    goto LABEL_9;
  }

  if (v6 == 3 || v6 == 5)
  {
    v7 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [v7 setShouldIgnoreScrolling:0];
LABEL_9:
  }

LABEL_10:
}

- (void)didTap:(id)a3
{
  v32 = a3;
  if ([v32 numberOfTouches] == 1)
  {
    v4 = [(HUClipScrubberViewController *)self scrubberView];
    v5 = [v4 clipCollectionView];
    [v32 locationOfTouch:0 inView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(HUClipScrubberViewController *)self scrubberView];
    v11 = [v10 clipCollectionView];
    v12 = [v11 indexPathForItemAtPoint:{v7, v9}];

    v13 = [(HUClipScrubberViewController *)self dataSource];
    LODWORD(v11) = [v13 isValidRecordingEventAtIndexPath:v12];

    if (!v11)
    {
LABEL_15:

      goto LABEL_16;
    }

    v14 = [(HUClipScrubberViewController *)self dataSource];
    [v14 updateToClipAtIndexPath:v12];

    v15 = [(HUClipScrubberViewController *)self scrubberView];
    v16 = [v15 clipCollectionView];
    v17 = [v16 cellForItemAtIndexPath:v12];

    LODWORD(v15) = [(HUClipScrubberViewController *)self _cellBoundsContainsPlayhead:v17];
    v18 = [(HUClipScrubberViewController *)self dataSource];
    v19 = v18;
    if (v15)
    {
      [v18 selectedDateFromCell:v17 atOffset:v7];
    }

    else
    {
      [v18 startDateFromCell:v17];
    }
    v20 = ;

    objc_opt_class();
    v21 = [(HUClipScrubberViewController *)self dataSource];
    v22 = [v21 currentEvent];
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [(HUClipScrubberViewController *)self playbackEngine];
    [v25 updatePlaybackPositionToDate:v20 usingClip:v24];

    v26 = [(HUClipScrubberViewController *)self dataSource];
    LODWORD(v25) = [v26 isEditing];

    if (v25)
    {
      v27 = [(HUClipScrubberViewController *)self scrubberView];
      v28 = [v27 clipCollectionView];
      [v28 selectItemAtIndexPath:v12 animated:0 scrollPosition:0];
    }

    else
    {
      v29 = [(HUClipScrubberViewController *)self dataSource];
      v30 = [v29 timeController];
      v31 = [v30 isAtMinimumZoom];

      if (!v31)
      {
LABEL_14:

        goto LABEL_15;
      }

      v27 = [(HUClipScrubberViewController *)self playbackEngine];
      [v27 play];
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)didDoubleTap:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(HUClipScrubberViewController *)self dataSource];
  v5 = [v4 timeController];
  [v5 setUserControlled:1];

  v6 = [(HUClipScrubberViewController *)self dataSource];
  v7 = [v6 timeController];
  v8 = [v7 isAtMinimumZoom];

  v9 = [(HUClipScrubberViewController *)self dataSource];
  v10 = v9;
  if (v8)
  {
    [v9 expandToMaximumZoom];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HUClipScrubberViewController *)self dataSource];
      v13 = [v12 timeController];
      [v13 timeScale];
      v17 = 134217984;
      v18 = v14;
      v15 = "Double tapped the time scale = %.2f to zoom in.";
LABEL_6:
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
    }
  }

  else
  {
    [v9 shrinkToMinimumZoom];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HUClipScrubberViewController *)self dataSource];
      v13 = [v12 timeController];
      [v13 timeScale];
      v17 = 134217984;
      v18 = v16;
      v15 = "Double tapped the time scale = %.2f to zoom out.";
      goto LABEL_6;
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUClipScrubberViewController *)self singleTapGestureRecognizer];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HUClipScrubberViewController *)self doubleTapGestureRecognizer];
    v11 = [v6 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)didSelectRightActionButton:(id)a3
{
  v4 = [(HUClipScrubberViewController *)self dataSource];
  v5 = [v4 displayMode];

  if (v5)
  {

    [(HUClipScrubberViewController *)self showDeleteInterface];
  }

  else
  {

    [(HUClipScrubberViewController *)self changeToLiveMode];
  }
}

- (HUClipScrubberView)scrubberView
{
  scrubberView = self->_scrubberView;
  if (!scrubberView)
  {
    v4 = [HUClipScrubberView alloc];
    v5 = [(HUClipScrubberView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_scrubberView;
    self->_scrubberView = v5;

    [(HUClipScrubberView *)self->_scrubberView setTranslatesAutoresizingMaskIntoConstraints:0];
    clipScrollDelegate = self->_clipScrollDelegate;
    v8 = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [v8 setDelegate:clipScrollDelegate];

    v9 = [(HUClipScrubberView *)self->_scrubberView playPauseButton];
    [v9 addTarget:self action:sel_togglePlayPause forControlEvents:64];

    v10 = [(HUClipScrubberView *)self->_scrubberView rightActionButton];
    [v10 addTarget:self action:sel_didSelectRightActionButton_ forControlEvents:64];

    v11 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_didPinch_];
    v12 = [(HUClipScrubberViewController *)self view];
    [v12 addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTap_];
    singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
    self->_singleTapGestureRecognizer = v13;

    [(UITapGestureRecognizer *)self->_singleTapGestureRecognizer setDelegate:self];
    v15 = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [v15 addGestureRecognizer:self->_singleTapGestureRecognizer];

    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didDoubleTap_];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v16;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setMaximumIntervalBetweenSuccessiveTaps:0.15];
    v18 = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [v18 addGestureRecognizer:self->_doubleTapGestureRecognizer];

    if ([MEMORY[0x277D14500] internalCameraFeedbackSupported])
    {
      v19 = [(HUClipScrubberViewController *)self feedbackButton];
      [v19 addTarget:self action:sel_didSelectFeedbackButton forControlEvents:64];
    }

    scrubberView = self->_scrubberView;
  }

  return scrubberView;
}

- (UIButton)selectionButton
{
  selectionButton = self->_selectionButton;
  if (!selectionButton)
  {
    v4 = [HUClipScrubberControlButton buttonWithType:1];
    [(UIButton *)v4 addTarget:self action:sel_showEditInterface forControlEvents:64];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:v5];

    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"square.and.arrow.up"];
    v7 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
    v8 = [v6 imageWithConfiguration:v7];

    [(UIButton *)v4 setImage:v8 forState:0];
    v9 = self->_selectionButton;
    self->_selectionButton = v4;

    selectionButton = self->_selectionButton;
  }

  return selectionButton;
}

- (UIButton)nearbyAccessoriesButton
{
  nearbyAccessoriesButton = self->_nearbyAccessoriesButton;
  if (!nearbyAccessoriesButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    [(UIButton *)v4 addTarget:self action:sel_showAssociatedAccessories forControlEvents:64];
    v5 = self->_nearbyAccessoriesButton;
    self->_nearbyAccessoriesButton = v4;

    nearbyAccessoriesButton = self->_nearbyAccessoriesButton;
  }

  return nearbyAccessoriesButton;
}

- (UIButton)feedbackButton
{
  feedbackButton = self->_feedbackButton;
  if (!feedbackButton)
  {
    v4 = [HUClipScrubberControlButton buttonWithType:1];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(UIButton *)v4 layer];
    [v5 setCornerRadius:8.0];

    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.bubble.middle.bottom"];
    v7 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
    v8 = [v6 imageWithConfiguration:v7];

    [(UIButton *)v4 setImage:v8 forState:0];
    v9 = self->_feedbackButton;
    self->_feedbackButton = v4;

    feedbackButton = self->_feedbackButton;
  }

  return feedbackButton;
}

- (UIView)feedbackPlatter
{
  feedbackPlatter = self->_feedbackPlatter;
  if (!feedbackPlatter)
  {
    v4 = [(HUClipScrubberViewController *)self feedbackButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:v4];

    [(UIView *)v5 setHidden:1];
    v6 = self->_feedbackPlatter;
    self->_feedbackPlatter = v5;

    feedbackPlatter = self->_feedbackPlatter;
  }

  return feedbackPlatter;
}

- (id)platterWithView:(id)a3
{
  v3 = MEMORY[0x277CB8590];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [v5 addSubview:v4 applyingMaterialStyle:0 tintEffectStyle:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setContinuousCornerRadius:8.0];

  return v5;
}

- (UIView)selectionPlatter
{
  selectionPlatter = self->_selectionPlatter;
  if (!selectionPlatter)
  {
    v4 = [(HUClipScrubberViewController *)self selectionButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:v4];

    v6 = self->_selectionPlatter;
    self->_selectionPlatter = v5;

    selectionPlatter = self->_selectionPlatter;
  }

  return selectionPlatter;
}

- (UIView)nearbyAccessoriesPlatter
{
  nearbyAccessoriesPlatter = self->_nearbyAccessoriesPlatter;
  if (!nearbyAccessoriesPlatter)
  {
    v4 = [(HUClipScrubberViewController *)self nearbyAccessoriesButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:v4];

    v6 = self->_nearbyAccessoriesPlatter;
    self->_nearbyAccessoriesPlatter = v5;

    nearbyAccessoriesPlatter = self->_nearbyAccessoriesPlatter;
  }

  return nearbyAccessoriesPlatter;
}

- (BOOL)_cellBoundsContainsPlayhead:(id)a3
{
  v4 = a3;
  v5 = [(HUClipScrubberViewController *)self scrubberView];
  v6 = [v5 clipCollectionView];
  [v4 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(HUClipScrubberViewController *)self scrubberView];
  [v6 convertRect:v15 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(HUClipScrubberViewController *)self scrubberView];
  v25 = [v24 playheadView];
  [v25 frame];
  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  LOBYTE(v5) = CGRectIntersectsRect(v27, v28);

  return v5;
}

- (unint64_t)displayMode
{
  v2 = [(HUClipScrubberViewController *)self dataSource];
  v3 = [v2 displayMode];

  return v3;
}

- (void)presentFeedbackConsent
{
  v5 = [[HUFeedbackConsentViewController alloc] initWithConsentDelegate:self];
  v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v3 setModalPresentationStyle:2];
  v4 = [(HUClipScrubberViewController *)self parentViewController];
  [v4 presentViewController:v3 animated:1 completion:0];
}

- (void)consentController:(id)a3 didFinishConsentWithAnswer:(BOOL)a4
{
  if (a4)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __77__HUClipScrubberViewController_consentController_didFinishConsentWithAnswer___block_invoke;
    v4[3] = &unk_277DB8488;
    v4[4] = self;
    [(HUClipScrubberViewController *)self dismissViewControllerAnimated:1 completion:v4];
  }
}

- (void)exportCurrentClipWithCompletion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUClipScrubberViewController *)self dataSource];
  v6 = [v5 currentEvent];
  v7 = [v6 containerType];

  if (v7 == 2)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(HUClipScrubberViewController *)self dataSource];
      v10 = [v9 currentEvent];
      *buf = 138412290;
      v36 = v10;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Unable to share event:%@.", buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    v11 = [(HUClipScrubberViewController *)self dataSource];
    v12 = [v11 currentEvent];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v8 = v13;

    if (v8)
    {
      v14 = [objc_alloc(MEMORY[0x277D14450]) initWithCameraClip:v8];
      [(HUClipScrubberViewController *)self setExportSessionEvent:v14];

      v15 = [MEMORY[0x277D14500] videoDestinationURLForCameraClip:v8];
      v16 = [MEMORY[0x277D14470] hasCachedRecordingForCameraClip:v8];
      v17 = HFLogForCategory();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          *buf = 138412290;
          v36 = v15;
          _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Exportable file already exists at path:%@.", buf, 0xCu);
        }

        v4[2](v4);
        [(HUClipScrubberViewController *)self exportLocalClipAtURL:v15];
      }

      else
      {
        if (v18)
        {
          *buf = 138412290;
          v36 = v8;
          _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Requesting downloaded video asset for export for clip:%@", buf, 0xCu);
        }

        v21 = objc_alloc(MEMORY[0x277CD18E8]);
        v22 = [(HUClipScrubberViewController *)self dataSource];
        v23 = [v22 playbackEngine];
        v24 = [v23 cameraProfile];
        v25 = [v24 clipManager];
        v26 = [v21 initWithClipManager:v25 clip:v8];

        [v26 setClipDestinationFileURL:v15];
        [v26 setDownloadProgressHandler:&__block_literal_global_211];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke_64;
        v30 = &unk_277DC18E0;
        v31 = v8;
        v32 = self;
        v34 = v4;
        v15 = v15;
        v33 = v15;
        [v26 setFetchVideoAssetContextCompletionBlock:&v27];
        [v26 start];
        [(HUClipScrubberViewController *)self setExportDownloadOperation:v26];
      }
    }

    else
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_ERROR, "Unable to share nil clip.", buf, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
      v20 = [MEMORY[0x277D14640] sharedHandler];
      [v20 handleError:v15];
    }
  }
}

void __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Exporting with progress ...%lu", &v4, 0xCu);
  }
}

void __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke_64(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error: %@ fetching clip: %@.", buf, 0x16u);
    }

    if ([v4 code] != 12)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke_65;
      v12[3] = &unk_277DB7558;
      v9 = v4;
      v10 = *(a1 + 40);
      v13 = v9;
      v14 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v6, v7, v8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 40) exportLocalClipAtURL:*(a1 + 48)];
  }
}

uint64_t __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke_65(uint64_t a1)
{
  v2 = [MEMORY[0x277D14640] sharedHandler];
  [v2 handleError:*(a1 + 32)];

  v3 = [*(a1 + 40) exportSessionEvent];
  v4 = [v3 sendEventForState:1];

  v5 = *(a1 + 40);

  return [v5 setExportSessionEvent:0];
}

- (void)exportLocalClipAtURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke;
  v6[3] = &unk_277DB7558;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _displayableURLForCameraClipURL:*(a1 + 40)];
  [MEMORY[0x277D14500] durationOfRecordingAtURL:v2];
  v4 = v3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = v2;
    v52 = 2048;
    v53 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Preparing file for export at path:%@ for duration:%.2f.", buf, 0x16u);
  }

  v6 = [*(a1 + 32) exportSessionEvent];
  [v6 setRecordingDuration:v4];

  v7 = [*(a1 + 32) exportSessionEvent];
  v8 = [v7 sendEventForState:0];

  [*(a1 + 32) setExportSessionEvent:0];
  v9 = [[HUClipExporterItemProvider alloc] initWithURL:v2];
  v10 = objc_opt_class();
  v11 = [*(a1 + 32) dataSource];
  v12 = [v11 currentEvent];
  if (!v12)
  {
    goto LABEL_9;
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
    [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];

LABEL_9:
    v14 = 0;
  }

  if (v14)
  {
    objc_initWeak(buf, *(a1 + 32));
    v17 = [HUCameraRecordingFeedbackActivity alloc];
    v18 = [*(a1 + 32) playbackEngine];
    v19 = [v18 cameraProfile];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_69;
    v44[3] = &unk_277DC1908;
    objc_copyWeak(&v46, buf);
    v20 = v14;
    v45 = v20;
    v21 = [(HUCameraRecordingFeedbackActivity *)v17 initWithCameraClip:v20 cameraProfile:v19 completionHandler:v44];

    if ([MEMORY[0x277D14CE8] isInternalInstall])
    {
      v49 = v21;
      v22 = &v49;
    }

    else
    {
      if (![v20 canAskForUserFeedback])
      {
        v23 = 0;
        goto LABEL_18;
      }

      v48 = v21;
      v22 = &v48;
    }

    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
LABEL_18:

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);
    goto LABEL_19;
  }

  v23 = 0;
LABEL_19:
  v24 = objc_alloc(MEMORY[0x277D546D8]);
  v47 = v9;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v26 = [v24 initWithActivityItems:v25 applicationActivities:v23];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_3;
  v42[3] = &unk_277DC1930;
  v43 = v2;
  v27 = v2;
  [v26 setCompletionWithItemsHandler:v42];
  [v26 setExcludedActivityTypes:&unk_282492C48];
  v29 = *(a1 + 32);
  v28 = (a1 + 32);
  v30 = [v29 view];
  v31 = [v26 popoverPresentationController];
  [v31 setSourceView:v30];

  v32 = [*v28 scrubberView];
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [v26 popoverPresentationController];
  [v41 setSourceRect:{v34, v36, v38, v40}];

  [*v28 presentViewController:v26 animated:1 completion:0];
}

void __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_69(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_2;
    v4[3] = &unk_277DB7558;
    v5 = *(a1 + 32);
    v6 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:v4];
  }
}

uint64_t __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isDonated];
  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 presentPreviouslySubmittedClipAlert];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v3 donateClip:v5];
  }
}

void __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke_3(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [*(a1 + 32) path];
  v17 = 0;
  [v10 removeItemAtPath:v11 error:&v17];
  v12 = v17;

  if (v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v19 = v16;
      v20 = 2112;
      *v21 = v12;
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "Unable to remove file:%@ with error:%@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v19 = v8;
    v20 = 1024;
    *v21 = a3;
    *&v21[4] = 1024;
    *&v21[6] = v14;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Finished export activity for activityType:%@ completed:%{BOOL}d removedClip:%{BOOL}d with error:%@", buf, 0x22u);
  }
}

- (id)_displayableURLForCameraClipURL:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D14470];
  v6 = [(HUClipScrubberViewController *)self playbackEngine];
  v7 = [v6 cameraProfile];
  v8 = [v7 accessory];
  v9 = [v8 name];
  v10 = [(HUClipScrubberViewController *)self playbackEngine];
  v11 = [v10 currentClip];
  v12 = [v11 dateOfOccurrence];
  v13 = [v5 userFriendlyExportURLForCameraName:v9 withStartDate:v12];

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = [v13 absoluteString];
  if ([v14 isEqualToString:@"null"])
  {

LABEL_5:
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = [(HUClipScrubberViewController *)self dataSource];
      v29 = [v28 currentEvent];
      v30 = [v29 uniqueIdentifier];
      v31 = [(HUClipScrubberViewController *)self playbackEngine];
      v32 = [v31 cameraProfile];
      v33 = [v32 accessory];
      v34 = [v33 name];
      *buf = 138412546;
      v42 = v30;
      v43 = 2112;
      v44 = v34;
      _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "Failure to create URL using clip:%@ and camera profile:%@", buf, 0x16u);
    }

    v18 = v4;
LABEL_8:
    v19 = v18;
    goto LABEL_9;
  }

  v15 = [v13 absoluteString];
  v16 = [v15 isEqualToString:@"(null)"];

  if (v16)
  {
    goto LABEL_5;
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  [v21 copyItemAtURL:v4 toURL:v13 error:&v40];
  v22 = v40;

  if (!v22)
  {
    goto LABEL_25;
  }

  if ([v22 code] != 516)
  {
    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v22;
      goto LABEL_29;
    }

LABEL_19:

    v19 = v4;
    goto LABEL_9;
  }

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = [v13 path];
  v39 = v22;
  [v23 removeItemAtPath:v24 error:&v39];
  v25 = v39;

  v26 = HFLogForCategory();
  v27 = v26;
  if (!v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v13;
      _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "Second attempt to copy file after removal for displayableURL:%@.", buf, 0xCu);
    }

    v36 = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    [v36 copyItemAtURL:v4 toURL:v13 error:&v38];
    v22 = v38;

    if (v22)
    {
      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v22;
LABEL_29:
        _os_log_error_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_ERROR, "Failure creating user-friendly export link: %@", buf, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

LABEL_25:
    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v13;
      _os_log_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEFAULT, "Displaying user-friendly export link: %@", buf, 0xCu);
    }

    v18 = v13;
    goto LABEL_8;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v42 = v13;
    v43 = 2112;
    v44 = v4;
    _os_log_error_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_ERROR, "Failure to remove file at displayableURL:%@. Bailing and using url:%@", buf, 0x16u);
  }

  v19 = v4;
LABEL_9:

  return v19;
}

- (void)updateSelectionPlatterDisplay
{
  v3 = [(HUClipScrubberViewController *)self dataSource];
  v4 = [v3 isEditing];

  if (v4)
  {
    v7 = [(HUClipScrubberViewController *)self selectionPlatter];
    [v7 setHidden:1];
  }

  else
  {
    v7 = [(HUClipScrubberViewController *)self playbackEngine];
    v5 = [v7 hasRecordingEvents];
    v6 = [(HUClipScrubberViewController *)self selectionPlatter];
    [v6 setHidden:v5 ^ 1u];
  }
}

- (void)deleteClip
{
  location[3] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUClipScrubberViewController *)self dataSource];
  v4 = [v3 currentEvent];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    objc_initWeak(location, self);
    v7 = [(HUClipScrubberViewController *)self playbackEngine];
    v8 = [v7 cameraProfile];
    v9 = [v8 clipManager];
    v10 = [v6 uniqueIdentifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__HUClipScrubberViewController_deleteClip__block_invoke;
    v14[3] = &unk_277DB9368;
    objc_copyWeak(&v16, location);
    v15 = v6;
    [v9 deleteClipWithUUID:v10 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HUClipScrubberViewController *)self dataSource];
      v13 = [v12 currentEvent];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v13;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Unable to delete clip:%@", location, 0xCu);
    }
  }
}

void __42__HUClipScrubberViewController_deleteClip__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = HFLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) uniqueIdentifier];
      v13 = [v12 UUIDString];
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Unable to delete clip:%@ %@.", &v14, 0x16u);
    }

    v7 = HFLocalizedString();
    v8 = HFLocalizedString();
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v6 = HFLocalizedString();

    v10 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:0];
    [v9 addAction:v10];
    [WeakRetained presentViewController:v9 animated:1 completion:0];

    goto LABEL_7;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) uniqueIdentifier];
    v11 = [v8 UUIDString];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Deleted clip:%@.", &v14, 0xCu);

LABEL_7:
  }
}

- (void)showDeleteInterface
{
  v53 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v49 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D13850] code:40 userInfo:0];
    v3 = [MEMORY[0x277D14640] sharedHandler];
    [v3 handleError:v49];
  }

  else
  {
    v4 = [(HUClipScrubberViewController *)self playbackEngine];
    [v4 pause];

    v5 = [(HUClipScrubberViewController *)self dataSource];
    v6 = [v5 currentEvent];
    v7 = [v6 isComplete];

    if (v7)
    {
      v8 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeleteClipTitle", @"HUClipScrubberDeleteClipTitle", 1);
      v9 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeleteClipMessage", @"HUClipScrubberDeleteClipMessage", 1);
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:0];
      v11 = [(HUClipScrubberViewController *)self view];
      v12 = [v10 popoverPresentationController];
      [v12 setSourceView:v11];

      v13 = [(HUClipScrubberViewController *)self view];
      v14 = [(HUClipScrubberViewController *)self scrubberView];
      v15 = [v14 rightActionButton];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(HUClipScrubberViewController *)self scrubberView];
      [v13 convertRect:v24 fromView:{v17, v19, v21, v23}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [v10 popoverPresentationController];
      [v33 setSourceRect:{v26, v28, v30, v32}];

      v34 = MEMORY[0x277D750F8];
      v35 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeleteClipButtonTitle", @"HUClipScrubberDeleteClipButtonTitle", 1);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __51__HUClipScrubberViewController_showDeleteInterface__block_invoke;
      v50[3] = &unk_277DB7600;
      v50[4] = self;
      v36 = [v34 actionWithTitle:v35 style:2 handler:v50];

      [v10 addAction:v36];
      v37 = MEMORY[0x277D750F8];
      v38 = _HULocalizedStringWithDefaultValue(@"HUCameraCancelText", @"HUCameraCancelText", 1);
      v39 = [v37 actionWithTitle:v38 style:0 handler:0];

      [v10 addAction:v39];
      [(HUClipScrubberViewController *)self presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      v40 = HFLogForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [(HUClipScrubberViewController *)self dataSource];
        v42 = [v41 currentEvent];
        *buf = 138412290;
        v52 = v42;
        _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_DEFAULT, "Not allowing deletion of an in-progress clips. User is unable to delete clip: %@", buf, 0xCu);
      }

      v43 = MEMORY[0x277D75110];
      v44 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeletionBlockedTitle", @"HUClipScrubberDeletionBlockedTitle", 1);
      v45 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeletionBlockedMessage", @"HUClipScrubberDeletionBlockedMessage", 1);
      v8 = [v43 alertControllerWithTitle:v44 message:v45 preferredStyle:1];

      v46 = MEMORY[0x277D750F8];
      v47 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
      v48 = [v46 actionWithTitle:v47 style:0 handler:0];
      [v8 addAction:v48];

      [(HUClipScrubberViewController *)self presentViewController:v8 animated:1 completion:0];
    }
  }
}

- (void)removeLiveButtonHighlighting
{
  v5 = [MEMORY[0x277D75348] clearColor];
  v3 = [(HUClipScrubberViewController *)self scrubberView];
  v4 = [v3 rightActionButton];
  [v4 setBackgroundColor:v5];
}

- (void)dismissEditInterface
{
  v3 = [(HUClipScrubberViewController *)self exportDownloadOperation];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUClipScrubberViewController *)self exportDownloadOperation];
    v6 = [v5 isFinished];

    if ((v6 & 1) == 0)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling previous un-finished export operation.", buf, 2u);
      }

      v8 = [(HUClipScrubberViewController *)self exportDownloadOperation];
      [v8 cancel];

      [(HUClipScrubberViewController *)self setExportDownloadOperation:0];
    }
  }

  v9 = [(HUClipScrubberViewController *)self dataSource];
  [v9 setEditing:0];

  v10 = [(HUClipScrubberViewController *)self clipScrollDelegate];
  [v10 finishEditing];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HUClipScrubberViewController_dismissEditInterface__block_invoke;
  v11[3] = &unk_277DB8488;
  v11[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.2];
}

void __52__HUClipScrubberViewController_dismissEditInterface__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) endEditingHandler];
  v2[2]();

  if ([MEMORY[0x277D14500] internalCameraFeedbackSupported])
  {
    v3 = [*(a1 + 32) feedbackPlatter];
    [v3 setHidden:1];
  }

  v4 = [*(a1 + 32) nearbyAccessoriesPlatter];
  [v4 setHidden:0];

  v5 = [*(a1 + 32) selectionPlatter];
  [v5 setHidden:0];

  [*(a1 + 32) updateScrubberViewAndAssociatedConstraints];
  v6 = [*(a1 + 32) scrubberView];
  [v6 updateDisplayMode:0];

  v7 = [*(a1 + 32) scrubberView];
  v8 = [v7 rightActionButton];
  [v8 setEnabled:1];

  v9 = [*(a1 + 32) view];
  [v9 layoutIfNeeded];
}

- (void)showEditInterface
{
  if ([(HUClipScrubberViewController *)self displayMode]!= 1)
  {
    v3 = [(HUClipScrubberViewController *)self dataSource];
    [v3 setEditing:1];

    v4 = [(HUClipScrubberViewController *)self playbackEngine];
    v5 = [v4 playbackPosition];
    v6 = [MEMORY[0x277D144D0] livePosition];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [(HUClipScrubberViewController *)self dataSource];
      v9 = [v8 currentEvents];
      v10 = [v9 lastObject];

      if (v10)
      {
        v11 = [(HUClipScrubberViewController *)self playbackEngine];
        v12 = MEMORY[0x277D144D0];
        v13 = [v10 dateOfOccurrence];
        v14 = [v12 clipPositionWithDate:v13];
        [v11 setPlaybackPosition:v14];
      }

      else
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "Failure to find a valid clip when attempting to display edit mode.", buf, 2u);
        }

        v10 = 0;
      }
    }

    else
    {
      v15 = [(HUClipScrubberViewController *)self playbackEngine];
      v16 = [v15 timeControlStatus];

      if (!v16)
      {
LABEL_16:
        v19[4] = self;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__HUClipScrubberViewController_showEditInterface__block_invoke;
        v20[3] = &unk_277DB8488;
        v20[4] = self;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__HUClipScrubberViewController_showEditInterface__block_invoke_2;
        v19[3] = &unk_277DB8C28;
        [MEMORY[0x277D75D18] animateWithDuration:v20 animations:v19 completion:0.2];
        return;
      }

      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Pausing playback for switch to edit mode.", buf, 2u);
      }

      v10 = [(HUClipScrubberViewController *)self playbackEngine];
      [v10 pause];
    }

    goto LABEL_16;
  }

  [(HUClipScrubberViewController *)self showDeleteInterface];
}

void __49__HUClipScrubberViewController_showEditInterface__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D14500] internalCameraFeedbackSupported])
  {
    v2 = [*(a1 + 32) feedbackPlatter];
    [v2 setHidden:0];
  }

  v3 = [*(a1 + 32) nearbyAccessoriesPlatter];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) selectionPlatter];
  [v4 setHidden:1];

  [*(a1 + 32) updateScrubberViewAndAssociatedConstraints];
  v5 = [*(a1 + 32) scrubberView];
  [v5 updateDisplayMode:1];

  v6 = [*(a1 + 32) beginEditingHandler];
  v6[2]();

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

void __49__HUClipScrubberViewController_showEditInterface__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clipScrollDelegate];
  [v1 beginEditing];
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4
{
  v5 = [MEMORY[0x277D75110] hu_alertControllerForAcknowledgementWithTitle:a3 message:a4];
  [(HUClipScrubberViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)didSelectFeedbackButton
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  [v3 pause];

  if ([MEMORY[0x277D14500] hasAcceptedCameraFeedbackEmployeeConsent])
  {
    v4 = [(HUClipScrubberViewController *)self _feedbackClip];
    v5 = v4;
    if (v4)
    {
      if ([v4 hf_isPlayable])
      {
        if ([v5 isDonated])
        {
          [(HUClipScrubberViewController *)self presentPreviouslySubmittedClipAlert];
        }

        else
        {
          [(HUClipScrubberViewController *)self presentFeedbackOptions];
        }

        goto LABEL_15;
      }

      v6 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackBadClipSubmissionTitle", @"HUCameraFeedbackBadClipSubmissionTitle", 1);
      v7 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackBadClipSubmissionMessage", @"HUCameraFeedbackBadClipSubmissionMessage", 1);
      [(HUClipScrubberViewController *)self _presentAlertWithTitle:v6 message:v7];
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 uniqueIdentifier];
        v10 = [v9 UUIDString];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Preventing submission of unplayable clip:%@.", &v11, 0xCu);
      }
    }

    else
    {
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Failed attempt to submit current clip when none available.", &v11, 2u);
      }
    }

LABEL_15:
    return;
  }

  [(HUClipScrubberViewController *)self presentFeedbackConsent];
}

- (void)presentFeedbackOptions
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAlertTitle", @"HUCameraFeedbackAlertTitle", 1);
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackLegalMessage", @"HUCameraFeedbackLegalMessage", 1);
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v6 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackSubmitOneTitle", @"HUCameraFeedbackSubmitOneTitle", 1);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUClipScrubberViewController_presentFeedbackOptions__block_invoke;
  v13[3] = &unk_277DB7600;
  v13[4] = self;
  v7 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v13];
  [v5 addAction:v7];
  v8 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackSubmitAllTitle", @"HUCameraFeedbackSubmitAllTitle", 1);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HUClipScrubberViewController_presentFeedbackOptions__block_invoke_2;
  v12[3] = &unk_277DB7600;
  v12[4] = self;
  v9 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v12];
  [v5 addAction:v9];
  v10 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackCancelTitle", @"HUCameraFeedbackCancelTitle", 1);

  v11 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:1 handler:&__block_literal_global_138];
  [v5 addAction:v11];
  [(HUClipScrubberViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)presentPreviouslySubmittedClipAlert
{
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAlreadySubmittedTitle", @"HUCameraFeedbackAlreadySubmittedTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAlreadySubmittedMessage", @"HUCameraFeedbackAlreadySubmittedMessage", 1);
  [(HUClipScrubberViewController *)self _presentAlertWithTitle:v4 message:v3];
}

- (id)_feedbackClip
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [v3 currentClip];
  v5 = [(HUClipScrubberViewController *)self playbackEngine];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 currentClip];
  }

  else
  {
    v8 = [v5 cameraClips];
    v7 = [v8 lastObject];
  }

  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Internal install - allowing submission of feedback for clip:%@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  if ([v7 canAskForUserFeedback])
  {
LABEL_9:
    v10 = v7;
    goto LABEL_13;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Preventing submission of feedback for clip:%@", &v13, 0xCu);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)submitCurrentClip
{
  v3 = [(HUClipScrubberViewController *)self _feedbackClip];
  v4 = v3;
  if (v3)
  {
    if ([v3 isDonated])
    {
      [(HUClipScrubberViewController *)self presentPreviouslySubmittedClipAlert];
    }

    else
    {
      [(HUClipScrubberViewController *)self donateClip:v4];
    }
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed attempt to submit current clip when none available.", v6, 2u);
    }
  }
}

- (void)verifySubmitAllClips
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackVerifyAlertTitle", @"HUCameraFeedbackVerifyAlertTitle", 1);
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackVerifyLegalMessage", @"HUCameraFeedbackVerifyLegalMessage", 1);
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v6 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackVerifyAcceptTitle", @"HUCameraFeedbackVerifyAcceptTitle", 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HUClipScrubberViewController_verifySubmitAllClips__block_invoke;
  v10[3] = &unk_277DB7600;
  v10[4] = self;
  v7 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v10];
  [v5 addAction:v7];
  v8 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackVerifyDeclineTitle", @"HUCameraFeedbackVerifyDeclineTitle", 1);

  v9 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:&__block_literal_global_158];
  [v5 addAction:v9];
  [(HUClipScrubberViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)donateClip:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D14478];
  v6 = [(HUClipScrubberViewController *)self playbackEngine];
  v7 = [v6 cameraProfile];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HUClipScrubberViewController_donateClip___block_invoke;
  v9[3] = &unk_277DB7E90;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v5 donateCameraClip:v8 forCameraProfile:v7 completion:v9];
}

void __43__HUClipScrubberViewController_donateClip___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) uniqueIdentifier];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error donating clip:%@. %@", &v9, 0x16u);
    }

    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackFailureToSubmitTitle", @"HUCameraFeedbackFailureToSubmitTitle", 1);
    v6 = @"HUCameraFeedbackFailureToSubmitMessage";
  }

  else
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackSubmittedTitle", @"HUCameraFeedbackSubmittedTitle", 1);
    v6 = @"HUCameraFeedbackSubmittedMessage";
  }

  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  [*(a1 + 40) _presentAlertWithTitle:v5 message:v7];
}

- (void)donateAllClips
{
  v3 = MEMORY[0x277D14478];
  v4 = [(HUClipScrubberViewController *)self playbackEngine];
  v5 = [v4 cameraProfile];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HUClipScrubberViewController_donateAllClips__block_invoke;
  v6[3] = &unk_277DB8C00;
  v6[4] = self;
  [v3 donateAllCameraClipsForCameraProfile:v5 completion:v6];
}

void __46__HUClipScrubberViewController_donateAllClips__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error donating all clips. %@", &v8, 0xCu);
    }

    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackFailureToSubmitTitle", @"HUCameraFeedbackFailureToSubmitTitle", 1);
    v6 = @"HUCameraFeedbackFailureToSubmitMessage";
  }

  else
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackSubmittedAllTitle", @"HUCameraFeedbackSubmittedAllTitle", 1);
    v6 = @"HUCameraFeedbackSubmittedAllMessage";
  }

  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  [*(a1 + 32) _presentAlertWithTitle:v5 message:v7];
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (HMCameraClipFetchVideoAssetContextOperation)exportDownloadOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_exportDownloadOperation);

  return WeakRetained;
}

@end