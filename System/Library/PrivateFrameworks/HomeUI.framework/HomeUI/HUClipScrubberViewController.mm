@interface HUClipScrubberViewController
- (BOOL)_cellBoundsContainsPlayhead:(id)playhead;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)userIsScrubbing;
- (HFCameraPlaybackEngine)playbackEngine;
- (HMCameraClipFetchVideoAssetContextOperation)exportDownloadOperation;
- (HUClipScrubberView)scrubberView;
- (HUClipScrubberViewController)initWithPlaybackEngine:(id)engine;
- (UIButton)feedbackButton;
- (UIButton)nearbyAccessoriesButton;
- (UIButton)selectionButton;
- (UIView)feedbackPlatter;
- (UIView)nearbyAccessoriesPlatter;
- (UIView)selectionPlatter;
- (double)currentScrubberResolution;
- (id)_displayableURLForCameraClipURL:(id)l;
- (id)_feedbackClip;
- (id)platterWithView:(id)view;
- (unint64_t)displayMode;
- (void)_addConstraints;
- (void)_createAndStartDisplayLink;
- (void)_presentAlertWithTitle:(id)title message:(id)message;
- (void)_removeDisplayLink;
- (void)_scrubberDisplayLinkTick:(id)tick;
- (void)changeToLiveMode;
- (void)changeToLiveModeIfNeeded;
- (void)consentController:(id)controller didFinishConsentWithAnswer:(BOOL)answer;
- (void)dealloc;
- (void)deleteClip;
- (void)didDoubleTap:(id)tap;
- (void)didPinch:(id)pinch;
- (void)didSelectFeedbackButton;
- (void)didSelectRightActionButton:(id)button;
- (void)didTap:(id)tap;
- (void)dismissEditInterface;
- (void)donateAllClips;
- (void)donateClip:(id)clip;
- (void)exportCurrentClipWithCompletion:(id)completion;
- (void)exportLocalClipAtURL:(id)l;
- (void)loadView;
- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error;
- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position;
- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status;
- (void)presentFeedbackConsent;
- (void)presentFeedbackOptions;
- (void)presentPreviouslySubmittedClipAlert;
- (void)reloadClipManager:(id)manager;
- (void)removeLiveButtonHighlighting;
- (void)showAssociatedAccessories;
- (void)showDeleteInterface;
- (void)showEditInterface;
- (void)submitCurrentClip;
- (void)togglePlayPause;
- (void)updateAccessoryViews;
- (void)updateDisplayForLiveMode;
- (void)updatePlaybackPosition:(id)position animated:(BOOL)animated;
- (void)updateScrubberDisplayLinkState;
- (void)updateScrubberViewAndAssociatedConstraints;
- (void)updateSelectionPlatterDisplay;
- (void)verifySubmitAllClips;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUClipScrubberViewController

- (HUClipScrubberViewController)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = HUClipScrubberViewController;
  v5 = [(HUClipScrubberViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playbackEngine, engineCopy);
    defaultOptions = [MEMORY[0x277D144C8] defaultOptions];
    [engineCopy addObserver:v6 withOptions:defaultOptions];

    cameraProfile = [engineCopy cameraProfile];
    clipManager = [cameraProfile clipManager];
    [(HUClipScrubberViewController *)v6 reloadClipManager:clipManager];
  }

  return v6;
}

- (void)dealloc
{
  +[HUPosterFrameViewCache purgeCache];
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  [mEMORY[0x277D14670] removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 dealloc];
}

- (void)reloadClipManager:(id)manager
{
  dataSource = [(HUClipScrubberViewController *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(HUClipScrubberViewController *)self dataSource];
    [dataSource2 reloadEvents];
  }

  else
  {
    v6 = [HUClipScrubberDataSource alloc];
    playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
    v8 = [(HUClipScrubberDataSource *)v6 initWithPlaybackEngine:playbackEngine];
    [(HUClipScrubberViewController *)self setDataSource:v8];

    playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
    dataSource3 = [(HUClipScrubberViewController *)self dataSource];
    [dataSource3 setPlaybackEngine:playbackEngine2];

    v11 = [[HUClipScrubberScrollDelegate alloc] initWithDataSource:self->_dataSource];
    [(HUClipScrubberViewController *)self setClipScrollDelegate:v11];

    playbackEngine3 = [(HUClipScrubberViewController *)self playbackEngine];
    clipScrollDelegate = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [clipScrollDelegate setPlaybackEngine:playbackEngine3];

    clipScrollDelegate2 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    scrubberView = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView = [scrubberView clipCollectionView];
    [clipCollectionView setDelegate:clipScrollDelegate2];

    scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView2 = [scrubberView2 clipCollectionView];
    dataSource4 = [(HUClipScrubberViewController *)self dataSource];
    [dataSource4 setClipCollectionView:clipCollectionView2];

    dataSource2 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    scrubberView3 = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView3 = [scrubberView3 clipCollectionView];
    [dataSource2 updateCollectionView:clipCollectionView3];
  }

  [(HUClipScrubberViewController *)self updateSelectionPlatterDisplay];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUClipScrubberViewController *)self setView:v4];

  view = [(HUClipScrubberViewController *)self view];
  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  [view addSubview:scrubberView];

  view2 = [(HUClipScrubberViewController *)self view];
  selectionPlatter = [(HUClipScrubberViewController *)self selectionPlatter];
  [view2 addSubview:selectionPlatter];

  view3 = [(HUClipScrubberViewController *)self view];
  nearbyAccessoriesPlatter = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  [view3 addSubview:nearbyAccessoriesPlatter];

  view4 = [(HUClipScrubberViewController *)self view];
  feedbackPlatter = [(HUClipScrubberViewController *)self feedbackPlatter];
  [view4 addSubview:feedbackPlatter];

  [(HUClipScrubberViewController *)self changeToLiveModeIfNeeded];
  [(HUClipScrubberViewController *)self updateAccessoryViews];
  scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
  [scrubberView2 updateDisplayMode:0];

  [(HUClipScrubberViewController *)self updateScrubberViewAndAssociatedConstraints];
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  [mEMORY[0x277D14670] addObserver:self];
}

- (void)updateScrubberViewAndAssociatedConstraints
{
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  isEditing = [dataSource isEditing];

  v5 = 0.0;
  v6 = 0.0;
  if ((isEditing & 1) == 0)
  {
    traitCollection = [(HUClipScrubberViewController *)self traitCollection];
    hu_hasExtendedWidth = [traitCollection hu_hasExtendedWidth];

    nearbyAccessoriesPlatterTopAnchorConstraint = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatterTopAnchorConstraint];
    v10 = nearbyAccessoriesPlatterTopAnchorConstraint;
    if (hu_hasExtendedWidth)
    {
      v5 = 63.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (hu_hasExtendedWidth)
    {
      v6 = -63.0;
    }

    else
    {
      v6 = 0.0;
    }

    [nearbyAccessoriesPlatterTopAnchorConstraint setConstant:v5];

    selectionPlatterTopAnchorConstraint = [(HUClipScrubberViewController *)self selectionPlatterTopAnchorConstraint];
    [selectionPlatterTopAnchorConstraint setConstant:v5];
  }

  scrubberViewLeftAnchorConstraint = [(HUClipScrubberViewController *)self scrubberViewLeftAnchorConstraint];
  [scrubberViewLeftAnchorConstraint setConstant:v5];

  scrubberViewRightAnchorConstraint = [(HUClipScrubberViewController *)self scrubberViewRightAnchorConstraint];
  [scrubberViewRightAnchorConstraint setConstant:v6];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = HUClipScrubberViewController;
  coordinatorCopy = coordinator;
  [(HUClipScrubberViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  [dataSource setSelectionViewHidden:1];

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
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewWillAppear:appear];
  [(HUClipScrubberViewController *)self setIsVisible:1];
  [(HUClipScrubberViewController *)self _addConstraints];
  [(HUClipScrubberViewController *)self _createAndStartDisplayLink];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewWillDisappear:disappear];
  [(HUClipScrubberViewController *)self _removeDisplayLink];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUClipScrubberViewController;
  [(HUClipScrubberViewController *)&v4 viewDidDisappear:disappear];
  [(HUClipScrubberViewController *)self setIsVisible:0];
}

- (void)_createAndStartDisplayLink
{
  scrubberUpdateDisplayLink = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];

  if (scrubberUpdateDisplayLink)
  {
    scrubberUpdateDisplayLink2 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
    [scrubberUpdateDisplayLink2 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__scrubberDisplayLinkTick_];
  [(HUClipScrubberViewController *)self setScrubberUpdateDisplayLink:v5];

  scrubberUpdateDisplayLink3 = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [scrubberUpdateDisplayLink3 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  [(HUClipScrubberViewController *)self updateScrubberDisplayLinkState];
}

- (void)_removeDisplayLink
{
  scrubberUpdateDisplayLink = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  [scrubberUpdateDisplayLink invalidate];
}

- (void)_addConstraints
{
  v75[16] = *MEMORY[0x277D85DE8];
  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  rightAnchor = [scrubberView rightAnchor];
  view = [(HUClipScrubberViewController *)self view];
  rightAnchor2 = [view rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [(HUClipScrubberViewController *)self setScrubberViewRightAnchorConstraint:v7];

  scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
  leftAnchor = [scrubberView2 leftAnchor];
  view2 = [(HUClipScrubberViewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [(HUClipScrubberViewController *)self setScrubberViewLeftAnchorConstraint:v12];

  selectionPlatter = [(HUClipScrubberViewController *)self selectionPlatter];
  topAnchor = [selectionPlatter topAnchor];
  view3 = [(HUClipScrubberViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(HUClipScrubberViewController *)self setSelectionPlatterTopAnchorConstraint:v17];

  nearbyAccessoriesPlatter = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  topAnchor3 = [nearbyAccessoriesPlatter topAnchor];
  view4 = [(HUClipScrubberViewController *)self view];
  topAnchor4 = [view4 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [(HUClipScrubberViewController *)self setNearbyAccessoriesPlatterTopAnchorConstraint:v22];

  feedbackPlatter = [(HUClipScrubberViewController *)self feedbackPlatter];
  topAnchor5 = [feedbackPlatter topAnchor];
  view5 = [(HUClipScrubberViewController *)self view];
  topAnchor6 = [view5 topAnchor];
  v27 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [(HUClipScrubberViewController *)self setFeedbackPlatterTopAnchorConstraint:v27];

  scrubberViewLeftAnchorConstraint = [(HUClipScrubberViewController *)self scrubberViewLeftAnchorConstraint];
  v75[0] = scrubberViewLeftAnchorConstraint;
  scrubberViewRightAnchorConstraint = [(HUClipScrubberViewController *)self scrubberViewRightAnchorConstraint];
  v75[1] = scrubberViewRightAnchorConstraint;
  scrubberView3 = [(HUClipScrubberViewController *)self scrubberView];
  heightAnchor = [scrubberView3 heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:47.0];
  v75[2] = v70;
  scrubberView4 = [(HUClipScrubberViewController *)self scrubberView];
  topAnchor7 = [scrubberView4 topAnchor];
  view6 = [(HUClipScrubberViewController *)self view];
  topAnchor8 = [view6 topAnchor];
  v65 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:63.0];
  v75[3] = v65;
  selectionPlatter2 = [(HUClipScrubberViewController *)self selectionPlatter];
  leftAnchor3 = [selectionPlatter2 leftAnchor];
  view7 = [(HUClipScrubberViewController *)self view];
  leftAnchor4 = [view7 leftAnchor];
  v60 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v75[4] = v60;
  selectionPlatter3 = [(HUClipScrubberViewController *)self selectionPlatter];
  widthAnchor = [selectionPlatter3 widthAnchor];
  v57 = [widthAnchor constraintEqualToConstant:54.0];
  v75[5] = v57;
  selectionPlatter4 = [(HUClipScrubberViewController *)self selectionPlatter];
  heightAnchor2 = [selectionPlatter4 heightAnchor];
  v54 = [heightAnchor2 constraintEqualToConstant:47.0];
  v75[6] = v54;
  selectionPlatterTopAnchorConstraint = [(HUClipScrubberViewController *)self selectionPlatterTopAnchorConstraint];
  v75[7] = selectionPlatterTopAnchorConstraint;
  nearbyAccessoriesPlatter2 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  rightAnchor3 = [nearbyAccessoriesPlatter2 rightAnchor];
  view8 = [(HUClipScrubberViewController *)self view];
  rightAnchor4 = [view8 rightAnchor];
  v48 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v75[8] = v48;
  nearbyAccessoriesPlatter3 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  heightAnchor3 = [nearbyAccessoriesPlatter3 heightAnchor];
  v44 = [heightAnchor3 constraintEqualToConstant:47.0];
  v75[9] = v44;
  nearbyAccessoriesPlatter4 = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatter];
  widthAnchor2 = [nearbyAccessoriesPlatter4 widthAnchor];
  v41 = [widthAnchor2 constraintEqualToConstant:54.0];
  v75[10] = v41;
  nearbyAccessoriesPlatterTopAnchorConstraint = [(HUClipScrubberViewController *)self nearbyAccessoriesPlatterTopAnchorConstraint];
  v75[11] = nearbyAccessoriesPlatterTopAnchorConstraint;
  feedbackPlatter2 = [(HUClipScrubberViewController *)self feedbackPlatter];
  rightAnchor5 = [feedbackPlatter2 rightAnchor];
  view9 = [(HUClipScrubberViewController *)self view];
  rightAnchor6 = [view9 rightAnchor];
  v30 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v75[12] = v30;
  feedbackPlatter3 = [(HUClipScrubberViewController *)self feedbackPlatter];
  heightAnchor4 = [feedbackPlatter3 heightAnchor];
  v33 = [heightAnchor4 constraintEqualToConstant:45.0];
  v75[13] = v33;
  feedbackPlatter4 = [(HUClipScrubberViewController *)self feedbackPlatter];
  widthAnchor3 = [feedbackPlatter4 widthAnchor];
  v36 = [widthAnchor3 constraintEqualToConstant:45.0];
  v75[14] = v36;
  feedbackPlatterTopAnchorConstraint = [(HUClipScrubberViewController *)self feedbackPlatterTopAnchorConstraint];
  v75[15] = feedbackPlatterTopAnchorConstraint;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:16];

  [MEMORY[0x277CCAAD0] activateConstraints:v46];
}

- (void)togglePlayPause
{
  v9 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  timeControlStatus = [playbackEngine timeControlStatus];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = timeControlStatus != 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User toggled playback engine [Playing:%{BOOL}d].", v8, 8u);
  }

  playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
  v7 = playbackEngine2;
  if (timeControlStatus)
  {
    [playbackEngine2 pause];
  }

  else
  {
    [playbackEngine2 play];
  }
}

- (void)changeToLiveModeIfNeeded
{
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  currentClip = [playbackEngine currentClip];
  if (currentClip)
  {
    v5 = currentClip;
    playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
    playbackPosition = [playbackEngine2 playbackPosition];
    contentType = [playbackPosition contentType];

    if (contentType)
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
  livePosition = [MEMORY[0x277D144D0] livePosition];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  [playbackEngine setPlaybackPosition:livePosition];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    scrubberView = [(HUClipScrubberViewController *)self scrubberView];
    rightActionButton = [scrubberView rightActionButton];
    [rightActionButton setBackgroundColor:systemOrangeColor];
  }
}

- (void)updateDisplayForLiveMode
{
  selectionButton = [(HUClipScrubberViewController *)self selectionButton];
  [selectionButton setEnabled:0];

  clipScrollDelegate = [(HUClipScrubberViewController *)self clipScrollDelegate];
  isUserScrubbing = [clipScrollDelegate isUserScrubbing];

  if ((isUserScrubbing & 1) == 0)
  {
    clipScrollDelegate2 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [clipScrollDelegate2 setShouldIgnoreScrolling:1];

    scrubberView = [(HUClipScrubberViewController *)self scrubberView];
    [scrubberView navigateToLivePosition];

    clipScrollDelegate3 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [clipScrollDelegate3 setShouldIgnoreScrolling:0];
  }
}

- (void)showAssociatedAccessories
{
  accessoryButtonHandler = [(HUClipScrubberViewController *)self accessoryButtonHandler];
  accessoryButtonHandler[2]();
}

- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position
{
  v12 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  positionCopy = position;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = [engineCopy isUserScrubbing];
    v10 = 2112;
    v11 = positionCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User Scrubbing:%{BOOL}d updated playback position:%@", v9, 0x12u);
  }

  [(HUClipScrubberViewController *)self updateAccessoryViews];
  [(HUClipScrubberViewController *)self updatePlaybackPosition:positionCopy animated:1];
}

- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status
{
  v10 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    timeControlStatusDescription = [engineCopy timeControlStatusDescription];
    v8 = 138412290;
    v9 = timeControlStatusDescription;
  }

  [(HUClipScrubberViewController *)self updateAccessoryViews];
  [(HUClipScrubberViewController *)self updateScrubberDisplayLinkState];
}

- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUClipScrubberViewController_playbackEngine_didUpdatePlaybackError___block_invoke;
  v7[3] = &unk_277DB7558;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
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
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  currentClip = [playbackEngine currentClip];

  if (currentClip)
  {
    dataSource = [(HUClipScrubberViewController *)self dataSource];
    [dataSource scrubbingResolutionForClip:currentClip];
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
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  if ([playbackEngine timeControlStatus])
  {
    v3 = [(HUClipScrubberViewController *)self isVisible]^ 1;
  }

  else
  {
    v3 = 1;
  }

  scrubberUpdateDisplayLink = [(HUClipScrubberViewController *)self scrubberUpdateDisplayLink];
  [scrubberUpdateDisplayLink setPaused:v3];
}

- (void)_scrubberDisplayLinkTick:(id)tick
{
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  [(HUClipScrubberViewController *)self updatePlaybackPosition:playbackPosition animated:0];
}

- (void)updateAccessoryViews
{
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  v4 = [playbackEngine timelineState] == 2;
  selectionButton = [(HUClipScrubberViewController *)self selectionButton];
  [selectionButton setEnabled:v4];

  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
  [scrubberView didUpdatePlaybackEngine:playbackEngine2];
}

- (void)updatePlaybackPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  v40 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  clipPlaybackDate = [positionCopy clipPlaybackDate];
  lastEngineMode = [(HUClipScrubberViewController *)self lastEngineMode];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  engineMode = [playbackEngine engineMode];

  if (lastEngineMode != engineMode)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      lastEngineMode2 = [(HUClipScrubberViewController *)self lastEngineMode];
      playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
      *buf = 134218240;
      v37 = lastEngineMode2;
      v38 = 2048;
      engineMode2 = [playbackEngine2 engineMode];
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Updating the last engine mode from %lu to %lu", buf, 0x16u);
    }

    playbackEngine3 = [(HUClipScrubberViewController *)self playbackEngine];
    -[HUClipScrubberViewController setLastEngineMode:](self, "setLastEngineMode:", [playbackEngine3 engineMode]);

    [(HUClipScrubberViewController *)self updateAccessoryViews];
    if ([positionCopy contentType] && objc_msgSend(dataSource, "currentTimelineState") != 1)
    {
      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_11;
      }

      clearColor = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(HUClipScrubberViewController *)self updateDisplayForLiveMode];
      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_11;
      }

      clearColor = [MEMORY[0x277D75348] orangeColor];
    }

    v17 = clearColor;
    scrubberView = [(HUClipScrubberViewController *)self scrubberView];
    rightActionButton = [scrubberView rightActionButton];
    [rightActionButton setBackgroundColor:v17];
  }

LABEL_11:
  if ([positionCopy contentType])
  {
    [dataSource setCurrentDate:clipPlaybackDate];
    clipScrollDelegate = [(HUClipScrubberViewController *)self clipScrollDelegate];
    isUserScrubbing = [clipScrollDelegate isUserScrubbing];

    if ((isUserScrubbing & 1) == 0)
    {
      clip = [positionCopy clip];
      v23 = clip;
      if (clip)
      {
        currentClip = clip;
      }

      else
      {
        playbackEngine4 = [(HUClipScrubberViewController *)self playbackEngine];
        currentClip = [playbackEngine4 currentClip];
      }

      [dataSource setCurrentEvent:currentClip];
      clipPlaybackDate2 = [positionCopy clipPlaybackDate];
      [dataSource setCurrentDate:clipPlaybackDate2];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__HUClipScrubberViewController_updatePlaybackPosition_animated___block_invoke;
      aBlock[3] = &unk_277DB8810;
      v27 = currentClip;
      v33 = v27;
      selfCopy = self;
      v35 = dataSource;
      v28 = _Block_copy(aBlock);
      v29 = v28;
      if (animatedCopy)
      {
        clipScrollDelegate2 = [(HUClipScrubberViewController *)self clipScrollDelegate];
        [clipScrollDelegate2 setShouldIgnoreScrolling:1];

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
  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  clipCollectionView = [scrubberView clipCollectionView];
  isTracking = [clipCollectionView isTracking];

  return isTracking;
}

- (void)didPinch:(id)pinch
{
  pinchCopy = pinch;
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  timeController = [dataSource timeController];
  [timeController setUserControlled:1];

  state = [pinchCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(HUClipScrubberViewController *)self setPinchGestureCount:[(HUClipScrubberViewController *)self pinchGestureCount]+ 1];
      clipScrollDelegate = [(HUClipScrubberViewController *)self clipScrollDelegate];
      [clipScrollDelegate setShouldIgnoreScrolling:1];

      dataSource2 = [(HUClipScrubberViewController *)self dataSource];
      [dataSource2 beginTimeScaleTrackingForPinchGesture:pinchCopy];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_10;
      }

      dataSource2 = [(HUClipScrubberViewController *)self dataSource];
      [dataSource2 changeTimeScaleForPinchGesture:pinchCopy];
    }

    goto LABEL_9;
  }

  if (state == 3 || state == 5)
  {
    dataSource2 = [(HUClipScrubberViewController *)self clipScrollDelegate];
    [dataSource2 setShouldIgnoreScrolling:0];
LABEL_9:
  }

LABEL_10:
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy numberOfTouches] == 1)
  {
    scrubberView = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView = [scrubberView clipCollectionView];
    [tapCopy locationOfTouch:0 inView:clipCollectionView];
    v7 = v6;
    v9 = v8;

    scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView2 = [scrubberView2 clipCollectionView];
    v12 = [clipCollectionView2 indexPathForItemAtPoint:{v7, v9}];

    dataSource = [(HUClipScrubberViewController *)self dataSource];
    LODWORD(clipCollectionView2) = [dataSource isValidRecordingEventAtIndexPath:v12];

    if (!clipCollectionView2)
    {
LABEL_15:

      goto LABEL_16;
    }

    dataSource2 = [(HUClipScrubberViewController *)self dataSource];
    [dataSource2 updateToClipAtIndexPath:v12];

    scrubberView3 = [(HUClipScrubberViewController *)self scrubberView];
    clipCollectionView3 = [scrubberView3 clipCollectionView];
    v17 = [clipCollectionView3 cellForItemAtIndexPath:v12];

    LODWORD(scrubberView3) = [(HUClipScrubberViewController *)self _cellBoundsContainsPlayhead:v17];
    dataSource3 = [(HUClipScrubberViewController *)self dataSource];
    v19 = dataSource3;
    if (scrubberView3)
    {
      [dataSource3 selectedDateFromCell:v17 atOffset:v7];
    }

    else
    {
      [dataSource3 startDateFromCell:v17];
    }
    v20 = ;

    objc_opt_class();
    dataSource4 = [(HUClipScrubberViewController *)self dataSource];
    currentEvent = [dataSource4 currentEvent];
    if (objc_opt_isKindOfClass())
    {
      v23 = currentEvent;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
    [playbackEngine updatePlaybackPositionToDate:v20 usingClip:v24];

    dataSource5 = [(HUClipScrubberViewController *)self dataSource];
    LODWORD(playbackEngine) = [dataSource5 isEditing];

    if (playbackEngine)
    {
      scrubberView4 = [(HUClipScrubberViewController *)self scrubberView];
      clipCollectionView4 = [scrubberView4 clipCollectionView];
      [clipCollectionView4 selectItemAtIndexPath:v12 animated:0 scrollPosition:0];
    }

    else
    {
      dataSource6 = [(HUClipScrubberViewController *)self dataSource];
      timeController = [dataSource6 timeController];
      isAtMinimumZoom = [timeController isAtMinimumZoom];

      if (!isAtMinimumZoom)
      {
LABEL_14:

        goto LABEL_15;
      }

      scrubberView4 = [(HUClipScrubberViewController *)self playbackEngine];
      [scrubberView4 play];
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)didDoubleTap:(id)tap
{
  v19 = *MEMORY[0x277D85DE8];
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  timeController = [dataSource timeController];
  [timeController setUserControlled:1];

  dataSource2 = [(HUClipScrubberViewController *)self dataSource];
  timeController2 = [dataSource2 timeController];
  isAtMinimumZoom = [timeController2 isAtMinimumZoom];

  dataSource3 = [(HUClipScrubberViewController *)self dataSource];
  v10 = dataSource3;
  if (isAtMinimumZoom)
  {
    [dataSource3 expandToMaximumZoom];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      dataSource4 = [(HUClipScrubberViewController *)self dataSource];
      timeController3 = [dataSource4 timeController];
      [timeController3 timeScale];
      v17 = 134217984;
      v18 = v14;
      v15 = "Double tapped the time scale = %.2f to zoom in.";
LABEL_6:
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
    }
  }

  else
  {
    [dataSource3 shrinkToMinimumZoom];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      dataSource4 = [(HUClipScrubberViewController *)self dataSource];
      timeController3 = [dataSource4 timeController];
      [timeController3 timeScale];
      v17 = 134217984;
      v18 = v16;
      v15 = "Double tapped the time scale = %.2f to zoom out.";
      goto LABEL_6;
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  singleTapGestureRecognizer = [(HUClipScrubberViewController *)self singleTapGestureRecognizer];
  v9 = [recognizerCopy isEqual:singleTapGestureRecognizer];

  if (v9)
  {
    doubleTapGestureRecognizer = [(HUClipScrubberViewController *)self doubleTapGestureRecognizer];
    v11 = [gestureRecognizerCopy isEqual:doubleTapGestureRecognizer];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)didSelectRightActionButton:(id)button
{
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  displayMode = [dataSource displayMode];

  if (displayMode)
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
    clipCollectionView = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [clipCollectionView setDelegate:clipScrollDelegate];

    playPauseButton = [(HUClipScrubberView *)self->_scrubberView playPauseButton];
    [playPauseButton addTarget:self action:sel_togglePlayPause forControlEvents:64];

    rightActionButton = [(HUClipScrubberView *)self->_scrubberView rightActionButton];
    [rightActionButton addTarget:self action:sel_didSelectRightActionButton_ forControlEvents:64];

    v11 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_didPinch_];
    view = [(HUClipScrubberViewController *)self view];
    [view addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTap_];
    singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
    self->_singleTapGestureRecognizer = v13;

    [(UITapGestureRecognizer *)self->_singleTapGestureRecognizer setDelegate:self];
    clipCollectionView2 = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [clipCollectionView2 addGestureRecognizer:self->_singleTapGestureRecognizer];

    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didDoubleTap_];
    doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
    self->_doubleTapGestureRecognizer = v16;

    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setMaximumIntervalBetweenSuccessiveTaps:0.15];
    clipCollectionView3 = [(HUClipScrubberView *)self->_scrubberView clipCollectionView];
    [clipCollectionView3 addGestureRecognizer:self->_doubleTapGestureRecognizer];

    if ([MEMORY[0x277D14500] internalCameraFeedbackSupported])
    {
      feedbackButton = [(HUClipScrubberViewController *)self feedbackButton];
      [feedbackButton addTarget:self action:sel_didSelectFeedbackButton forControlEvents:64];
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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:systemWhiteColor];

    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"square.and.arrow.up"];
    hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
    v8 = [v6 imageWithConfiguration:hu_standardSymbolConfiguration];

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
    hu_clipScrubberNearbyAccessoryButton = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    [(UIButton *)hu_clipScrubberNearbyAccessoryButton addTarget:self action:sel_showAssociatedAccessories forControlEvents:64];
    v5 = self->_nearbyAccessoriesButton;
    self->_nearbyAccessoriesButton = hu_clipScrubberNearbyAccessoryButton;

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
    layer = [(UIButton *)v4 layer];
    [layer setCornerRadius:8.0];

    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.bubble.middle.bottom"];
    hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
    v8 = [v6 imageWithConfiguration:hu_standardSymbolConfiguration];

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
    feedbackButton = [(HUClipScrubberViewController *)self feedbackButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:feedbackButton];

    [(UIView *)v5 setHidden:1];
    v6 = self->_feedbackPlatter;
    self->_feedbackPlatter = v5;

    feedbackPlatter = self->_feedbackPlatter;
  }

  return feedbackPlatter;
}

- (id)platterWithView:(id)view
{
  v3 = MEMORY[0x277CB8590];
  viewCopy = view;
  v5 = objc_alloc_init(v3);
  [v5 bounds];
  [viewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];
  [v5 addSubview:viewCopy applyingMaterialStyle:0 tintEffectStyle:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setContinuousCornerRadius:8.0];

  return v5;
}

- (UIView)selectionPlatter
{
  selectionPlatter = self->_selectionPlatter;
  if (!selectionPlatter)
  {
    selectionButton = [(HUClipScrubberViewController *)self selectionButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:selectionButton];

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
    nearbyAccessoriesButton = [(HUClipScrubberViewController *)self nearbyAccessoriesButton];
    v5 = [(HUClipScrubberViewController *)self platterWithView:nearbyAccessoriesButton];

    v6 = self->_nearbyAccessoriesPlatter;
    self->_nearbyAccessoriesPlatter = v5;

    nearbyAccessoriesPlatter = self->_nearbyAccessoriesPlatter;
  }

  return nearbyAccessoriesPlatter;
}

- (BOOL)_cellBoundsContainsPlayhead:(id)playhead
{
  playheadCopy = playhead;
  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  clipCollectionView = [scrubberView clipCollectionView];
  [playheadCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
  [clipCollectionView convertRect:scrubberView2 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  scrubberView3 = [(HUClipScrubberViewController *)self scrubberView];
  playheadView = [scrubberView3 playheadView];
  [playheadView frame];
  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  LOBYTE(scrubberView) = CGRectIntersectsRect(v27, v28);

  return scrubberView;
}

- (unint64_t)displayMode
{
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  displayMode = [dataSource displayMode];

  return displayMode;
}

- (void)presentFeedbackConsent
{
  v5 = [[HUFeedbackConsentViewController alloc] initWithConsentDelegate:self];
  v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v3 setModalPresentationStyle:2];
  parentViewController = [(HUClipScrubberViewController *)self parentViewController];
  [parentViewController presentViewController:v3 animated:1 completion:0];
}

- (void)consentController:(id)controller didFinishConsentWithAnswer:(BOOL)answer
{
  if (answer)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __77__HUClipScrubberViewController_consentController_didFinishConsentWithAnswer___block_invoke;
    v4[3] = &unk_277DB8488;
    v4[4] = self;
    [(HUClipScrubberViewController *)self dismissViewControllerAnimated:1 completion:v4];
  }
}

- (void)exportCurrentClipWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  currentEvent = [dataSource currentEvent];
  containerType = [currentEvent containerType];

  if (containerType == 2)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      dataSource2 = [(HUClipScrubberViewController *)self dataSource];
      currentEvent2 = [dataSource2 currentEvent];
      *buf = 138412290;
      v36 = currentEvent2;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Unable to share event:%@.", buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    dataSource3 = [(HUClipScrubberViewController *)self dataSource];
    currentEvent3 = [dataSource3 currentEvent];
    if (objc_opt_isKindOfClass())
    {
      v13 = currentEvent3;
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

        completionCopy[2](completionCopy);
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
        dataSource4 = [(HUClipScrubberViewController *)self dataSource];
        playbackEngine = [dataSource4 playbackEngine];
        cameraProfile = [playbackEngine cameraProfile];
        clipManager = [cameraProfile clipManager];
        v26 = [v21 initWithClipManager:clipManager clip:v8];

        [v26 setClipDestinationFileURL:v15];
        [v26 setDownloadProgressHandler:&__block_literal_global_211];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __64__HUClipScrubberViewController_exportCurrentClipWithCompletion___block_invoke_64;
        v30 = &unk_277DC18E0;
        v31 = v8;
        selfCopy = self;
        v34 = completionCopy;
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
      mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
      [mEMORY[0x277D14640] handleError:v15];
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

- (void)exportLocalClipAtURL:(id)l
{
  lCopy = l;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HUClipScrubberViewController_exportLocalClipAtURL___block_invoke;
  v6[3] = &unk_277DB7558;
  v6[4] = self;
  v7 = lCopy;
  v5 = lCopy;
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

- (id)_displayableURLForCameraClipURL:(id)l
{
  v45 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = MEMORY[0x277D14470];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  cameraProfile = [playbackEngine cameraProfile];
  accessory = [cameraProfile accessory];
  name = [accessory name];
  playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
  currentClip = [playbackEngine2 currentClip];
  dateOfOccurrence = [currentClip dateOfOccurrence];
  v13 = [v5 userFriendlyExportURLForCameraName:name withStartDate:dateOfOccurrence];

  if (!v13)
  {
    goto LABEL_5;
  }

  absoluteString = [v13 absoluteString];
  if ([absoluteString isEqualToString:@"null"])
  {

LABEL_5:
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      dataSource = [(HUClipScrubberViewController *)self dataSource];
      currentEvent = [dataSource currentEvent];
      uniqueIdentifier = [currentEvent uniqueIdentifier];
      playbackEngine3 = [(HUClipScrubberViewController *)self playbackEngine];
      cameraProfile2 = [playbackEngine3 cameraProfile];
      accessory2 = [cameraProfile2 accessory];
      name2 = [accessory2 name];
      *buf = 138412546;
      v42 = uniqueIdentifier;
      v43 = 2112;
      v44 = name2;
      _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "Failure to create URL using clip:%@ and camera profile:%@", buf, 0x16u);
    }

    v18 = lCopy;
LABEL_8:
    v19 = v18;
    goto LABEL_9;
  }

  absoluteString2 = [v13 absoluteString];
  v16 = [absoluteString2 isEqualToString:@"(null)"];

  if (v16)
  {
    goto LABEL_5;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  [defaultManager copyItemAtURL:lCopy toURL:v13 error:&v40];
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

    v19 = lCopy;
    goto LABEL_9;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v39 = v22;
  [defaultManager2 removeItemAtPath:path error:&v39];
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

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    [defaultManager3 copyItemAtURL:lCopy toURL:v13 error:&v38];
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
    v44 = lCopy;
    _os_log_error_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_ERROR, "Failure to remove file at displayableURL:%@. Bailing and using url:%@", buf, 0x16u);
  }

  v19 = lCopy;
LABEL_9:

  return v19;
}

- (void)updateSelectionPlatterDisplay
{
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  isEditing = [dataSource isEditing];

  if (isEditing)
  {
    selectionPlatter = [(HUClipScrubberViewController *)self selectionPlatter];
    [selectionPlatter setHidden:1];
  }

  else
  {
    selectionPlatter = [(HUClipScrubberViewController *)self playbackEngine];
    hasRecordingEvents = [selectionPlatter hasRecordingEvents];
    selectionPlatter2 = [(HUClipScrubberViewController *)self selectionPlatter];
    [selectionPlatter2 setHidden:hasRecordingEvents ^ 1u];
  }
}

- (void)deleteClip
{
  location[3] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  dataSource = [(HUClipScrubberViewController *)self dataSource];
  currentEvent = [dataSource currentEvent];
  if (objc_opt_isKindOfClass())
  {
    v5 = currentEvent;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    objc_initWeak(location, self);
    playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
    cameraProfile = [playbackEngine cameraProfile];
    clipManager = [cameraProfile clipManager];
    uniqueIdentifier = [v6 uniqueIdentifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__HUClipScrubberViewController_deleteClip__block_invoke;
    v14[3] = &unk_277DB9368;
    objc_copyWeak(&v16, location);
    v15 = v6;
    [clipManager deleteClipWithUUID:uniqueIdentifier completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      dataSource2 = [(HUClipScrubberViewController *)self dataSource];
      currentEvent2 = [dataSource2 currentEvent];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = currentEvent2;
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
    mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
    [mEMORY[0x277D14640] handleError:v49];
  }

  else
  {
    playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
    [playbackEngine pause];

    dataSource = [(HUClipScrubberViewController *)self dataSource];
    currentEvent = [dataSource currentEvent];
    isComplete = [currentEvent isComplete];

    if (isComplete)
    {
      v8 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeleteClipTitle", @"HUClipScrubberDeleteClipTitle", 1);
      v9 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberDeleteClipMessage", @"HUClipScrubberDeleteClipMessage", 1);
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:0];
      view = [(HUClipScrubberViewController *)self view];
      popoverPresentationController = [v10 popoverPresentationController];
      [popoverPresentationController setSourceView:view];

      view2 = [(HUClipScrubberViewController *)self view];
      scrubberView = [(HUClipScrubberViewController *)self scrubberView];
      rightActionButton = [scrubberView rightActionButton];
      [rightActionButton frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      scrubberView2 = [(HUClipScrubberViewController *)self scrubberView];
      [view2 convertRect:scrubberView2 fromView:{v17, v19, v21, v23}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      popoverPresentationController2 = [v10 popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v26, v28, v30, v32}];

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
        dataSource2 = [(HUClipScrubberViewController *)self dataSource];
        currentEvent2 = [dataSource2 currentEvent];
        *buf = 138412290;
        v52 = currentEvent2;
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  scrubberView = [(HUClipScrubberViewController *)self scrubberView];
  rightActionButton = [scrubberView rightActionButton];
  [rightActionButton setBackgroundColor:clearColor];
}

- (void)dismissEditInterface
{
  exportDownloadOperation = [(HUClipScrubberViewController *)self exportDownloadOperation];
  if (exportDownloadOperation)
  {
    v4 = exportDownloadOperation;
    exportDownloadOperation2 = [(HUClipScrubberViewController *)self exportDownloadOperation];
    isFinished = [exportDownloadOperation2 isFinished];

    if ((isFinished & 1) == 0)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling previous un-finished export operation.", buf, 2u);
      }

      exportDownloadOperation3 = [(HUClipScrubberViewController *)self exportDownloadOperation];
      [exportDownloadOperation3 cancel];

      [(HUClipScrubberViewController *)self setExportDownloadOperation:0];
    }
  }

  dataSource = [(HUClipScrubberViewController *)self dataSource];
  [dataSource setEditing:0];

  clipScrollDelegate = [(HUClipScrubberViewController *)self clipScrollDelegate];
  [clipScrollDelegate finishEditing];

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
    dataSource = [(HUClipScrubberViewController *)self dataSource];
    [dataSource setEditing:1];

    playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
    playbackPosition = [playbackEngine playbackPosition];
    livePosition = [MEMORY[0x277D144D0] livePosition];
    v7 = [playbackPosition isEqual:livePosition];

    if (v7)
    {
      dataSource2 = [(HUClipScrubberViewController *)self dataSource];
      currentEvents = [dataSource2 currentEvents];
      lastObject = [currentEvents lastObject];

      if (lastObject)
      {
        playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
        v12 = MEMORY[0x277D144D0];
        dateOfOccurrence = [lastObject dateOfOccurrence];
        v14 = [v12 clipPositionWithDate:dateOfOccurrence];
        [playbackEngine2 setPlaybackPosition:v14];
      }

      else
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "Failure to find a valid clip when attempting to display edit mode.", buf, 2u);
        }

        lastObject = 0;
      }
    }

    else
    {
      playbackEngine3 = [(HUClipScrubberViewController *)self playbackEngine];
      timeControlStatus = [playbackEngine3 timeControlStatus];

      if (!timeControlStatus)
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

      lastObject = [(HUClipScrubberViewController *)self playbackEngine];
      [lastObject pause];
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

- (void)_presentAlertWithTitle:(id)title message:(id)message
{
  v5 = [MEMORY[0x277D75110] hu_alertControllerForAcknowledgementWithTitle:title message:message];
  [(HUClipScrubberViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)didSelectFeedbackButton
{
  v13 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  [playbackEngine pause];

  if ([MEMORY[0x277D14500] hasAcceptedCameraFeedbackEmployeeConsent])
  {
    _feedbackClip = [(HUClipScrubberViewController *)self _feedbackClip];
    v5 = _feedbackClip;
    if (_feedbackClip)
    {
      if ([_feedbackClip hf_isPlayable])
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
        uniqueIdentifier = [v5 uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];
        v11 = 138412290;
        v12 = uUIDString;
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
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  currentClip = [playbackEngine currentClip];
  playbackEngine2 = [(HUClipScrubberViewController *)self playbackEngine];
  v6 = playbackEngine2;
  if (currentClip)
  {
    currentClip2 = [playbackEngine2 currentClip];
  }

  else
  {
    cameraClips = [playbackEngine2 cameraClips];
    currentClip2 = [cameraClips lastObject];
  }

  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = currentClip2;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Internal install - allowing submission of feedback for clip:%@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  if ([currentClip2 canAskForUserFeedback])
  {
LABEL_9:
    v10 = currentClip2;
    goto LABEL_13;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = currentClip2;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Preventing submission of feedback for clip:%@", &v13, 0xCu);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)submitCurrentClip
{
  _feedbackClip = [(HUClipScrubberViewController *)self _feedbackClip];
  v4 = _feedbackClip;
  if (_feedbackClip)
  {
    if ([_feedbackClip isDonated])
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

- (void)donateClip:(id)clip
{
  clipCopy = clip;
  v5 = MEMORY[0x277D14478];
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  cameraProfile = [playbackEngine cameraProfile];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HUClipScrubberViewController_donateClip___block_invoke;
  v9[3] = &unk_277DB7E90;
  v10 = clipCopy;
  selfCopy = self;
  v8 = clipCopy;
  [v5 donateCameraClip:v8 forCameraProfile:cameraProfile completion:v9];
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
  playbackEngine = [(HUClipScrubberViewController *)self playbackEngine];
  cameraProfile = [playbackEngine cameraProfile];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HUClipScrubberViewController_donateAllClips__block_invoke;
  v6[3] = &unk_277DB8C00;
  v6[4] = self;
  [v3 donateAllCameraClipsForCameraProfile:cameraProfile completion:v6];
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