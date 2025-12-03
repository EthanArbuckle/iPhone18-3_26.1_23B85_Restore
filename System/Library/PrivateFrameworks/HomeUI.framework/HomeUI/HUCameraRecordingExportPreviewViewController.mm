@interface HUCameraRecordingExportPreviewViewController
- (AVQueuePlayer)queuePlayer;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HMCameraClip)cameraClip;
- (HMCameraProfile)cameraProfile;
- (HUCameraRecordingExportPreviewViewController)initWithCameraClip:(id)clip cameraProfile:(id)profile completionHandler:(id)handler;
- (HUCameraRecordingPlayerView)playerView;
- (UIButton)submitButton;
- (UILabel)descriptionLabel;
- (UITextView)learnMoreTextView;
- (void)_addConstraints;
- (void)_displayFailureToSubmitAlert;
- (void)_loadLoadingInterface;
- (void)_loadPreviewInterface;
- (void)_stripAndTruncateRecording;
- (void)cancelSubmission;
- (void)playVideoFile;
- (void)prepareRecordingForExport;
- (void)showPrivacyInformation;
- (void)submitCurrentClip;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCameraRecordingExportPreviewViewController

- (HUCameraRecordingExportPreviewViewController)initWithCameraClip:(id)clip cameraProfile:(id)profile completionHandler:(id)handler
{
  clipCopy = clip;
  profileCopy = profile;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HUCameraRecordingExportPreviewViewController;
  v11 = [(HUCameraRecordingExportPreviewViewController *)&v18 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cameraClip, clipCopy);
    objc_storeWeak(&v12->_cameraProfile, profileCopy);
    v13 = _Block_copy(handlerCopy);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    backgroundSessionQueue = v12->_backgroundSessionQueue;
    v12->_backgroundSessionQueue = v15;

    [(HUCameraRecordingExportPreviewViewController *)v12 prepareRecordingForExport];
  }

  return v12;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v10 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUCameraRecordingExportPreviewViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackNavigationTitle", @"HUCameraExportFeedbackNavigationTitle", 1);
  [(HUCameraRecordingExportPreviewViewController *)self setTitle:v5];

  v6 = objc_alloc(MEMORY[0x277D751E0]);
  v7 = _HULocalizedStringWithDefaultValue(@"HUCameraCancelText", @"HUCameraCancelText", 1);
  v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_cancelSubmission];
  navigationItem = [(HUCameraRecordingExportPreviewViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v8];

  if ([(HUCameraRecordingExportPreviewViewController *)self hasVideoPreview])
  {
    [(HUCameraRecordingExportPreviewViewController *)self _loadPreviewInterface];
  }

  else
  {
    [(HUCameraRecordingExportPreviewViewController *)self _loadLoadingInterface];
  }
}

- (void)_loadPreviewInterface
{
  playerView = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  superview = [playerView superview];

  if (!superview)
  {
    view = [(HUCameraRecordingExportPreviewViewController *)self view];
    playerView2 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
    [view addSubview:playerView2];

    view2 = [(HUCameraRecordingExportPreviewViewController *)self view];
    descriptionLabel = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
    [view2 addSubview:descriptionLabel];

    view3 = [(HUCameraRecordingExportPreviewViewController *)self view];
    learnMoreTextView = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
    [view3 addSubview:learnMoreTextView];

    view4 = [(HUCameraRecordingExportPreviewViewController *)self view];
    submitButton = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
    [view4 addSubview:submitButton];

    [(HUCameraRecordingExportPreviewViewController *)self _addConstraints];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v7 traitCollectionDidChange:change];
  traitCollection = [(HUCameraRecordingExportPreviewViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v5 = ;
  loadingIndicatorView = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
  [loadingIndicatorView setColor:v5];
}

- (void)_loadLoadingInterface
{
  loadingIndicatorView = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];

  if (!loadingIndicatorView)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    [(HUCameraRecordingExportPreviewViewController *)self setLoadingIndicatorView:v4];

    traitCollection = [(HUCameraRecordingExportPreviewViewController *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }
    v6 = ;
    loadingIndicatorView2 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [loadingIndicatorView2 setColor:v6];

    loadingIndicatorView3 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [loadingIndicatorView3 startAnimating];

    view = [(HUCameraRecordingExportPreviewViewController *)self view];
    [view center];
    v11 = v10;
    v13 = v12;
    loadingIndicatorView4 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [loadingIndicatorView4 setCenter:{v11, v13}];

    view2 = [(HUCameraRecordingExportPreviewViewController *)self view];
    loadingIndicatorView5 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [view2 addSubview:loadingIndicatorView5];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v4 viewWillAppear:appear];
  if ([(HUCameraRecordingExportPreviewViewController *)self hasVideoPreview])
  {
    [(HUCameraRecordingExportPreviewViewController *)self playVideoFile];
  }
}

- (void)playVideoFile
{
  objc_initWeak(&location, self);
  queuePlayer = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
  CMTimeMakeWithSeconds(&v10, 0.017, 60);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HUCameraRecordingExportPreviewViewController_playVideoFile__block_invoke;
  v8[3] = &unk_277DBCB68;
  objc_copyWeak(&v9, &location);
  v6 = [queuePlayer addPeriodicTimeObserverForInterval:&v10 queue:v4 usingBlock:v8];
  [(HUCameraRecordingExportPreviewViewController *)self setQueuePlayerObserver:v6];

  queuePlayer2 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
  [queuePlayer2 play];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__HUCameraRecordingExportPreviewViewController_playVideoFile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queuePlayer];
  v3 = [v2 currentItem];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  v6 = [WeakRetained queuePlayer];
  v7 = [v6 currentItem];
  v8 = v7;
  if (v7)
  {
    [v7 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = Seconds / CMTimeGetSeconds(&time);
  v10 = [WeakRetained playerView];
  v11 = [v10 progressView];
  *&v12 = v9;
  [v11 setProgress:v12];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v7 viewWillDisappear:disappear];
  queuePlayerObserver = [(HUCameraRecordingExportPreviewViewController *)self queuePlayerObserver];

  if (queuePlayerObserver)
  {
    queuePlayer = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
    queuePlayerObserver2 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayerObserver];
    [queuePlayer removeTimeObserver:queuePlayerObserver2];
  }
}

- (void)_addConstraints
{
  v82[16] = *MEMORY[0x277D85DE8];
  playerView = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  heightAnchor = [playerView heightAnchor];
  v79 = [heightAnchor constraintEqualToConstant:220.0];
  v82[0] = v79;
  playerView2 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  widthAnchor = [playerView2 widthAnchor];
  v76 = [widthAnchor constraintEqualToConstant:390.0];
  v82[1] = v76;
  playerView3 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  topAnchor = [playerView3 topAnchor];
  view = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v82[2] = v70;
  playerView4 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  centerXAnchor = [playerView4 centerXAnchor];
  view2 = [(HUCameraRecordingExportPreviewViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v65 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v82[3] = v65;
  descriptionLabel = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  topAnchor3 = [descriptionLabel topAnchor];
  playerView5 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  bottomAnchor = [playerView5 bottomAnchor];
  v60 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v82[4] = v60;
  descriptionLabel2 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  leftAnchor = [descriptionLabel2 leftAnchor];
  view3 = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v54 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  v82[5] = v54;
  descriptionLabel3 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  rightAnchor = [descriptionLabel3 rightAnchor];
  view4 = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v48 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  v82[6] = v48;
  submitButton = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  bottomAnchor2 = [submitButton bottomAnchor];
  view5 = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide4 bottomAnchor];
  v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-20.0];
  v82[7] = v42;
  submitButton2 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  heightAnchor2 = [submitButton2 heightAnchor];
  v39 = [heightAnchor2 constraintEqualToConstant:47.0];
  v82[8] = v39;
  submitButton3 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  centerXAnchor3 = [submitButton3 centerXAnchor];
  view6 = [(HUCameraRecordingExportPreviewViewController *)self view];
  centerXAnchor4 = [view6 centerXAnchor];
  v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v82[9] = v33;
  submitButton4 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  leftAnchor3 = [submitButton4 leftAnchor];
  view7 = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide5 leftAnchor];
  v27 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:20.0];
  v82[10] = v27;
  submitButton5 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  rightAnchor3 = [submitButton5 rightAnchor];
  view8 = [(HUCameraRecordingExportPreviewViewController *)self view];
  safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide6 rightAnchor];
  v21 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-20.0];
  v82[11] = v21;
  learnMoreTextView = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  heightAnchor3 = [learnMoreTextView heightAnchor];
  v18 = [heightAnchor3 constraintEqualToConstant:80.0];
  v82[12] = v18;
  learnMoreTextView2 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  bottomAnchor4 = [learnMoreTextView2 bottomAnchor];
  submitButton6 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  topAnchor4 = [submitButton6 topAnchor];
  v13 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:-10.0];
  v82[13] = v13;
  learnMoreTextView3 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  leftAnchor5 = [learnMoreTextView3 leftAnchor];
  submitButton7 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  leftAnchor6 = [submitButton7 leftAnchor];
  v7 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v82[14] = v7;
  learnMoreTextView4 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  rightAnchor5 = [learnMoreTextView4 rightAnchor];
  submitButton8 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  rightAnchor6 = [submitButton8 rightAnchor];
  v12 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v82[15] = v12;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:16];

  [MEMORY[0x277CCAAD0] activateConstraints:v35];
}

- (void)showPrivacyInformation
{
  v22 = objc_alloc_init(HUCameraRecordingPrivacyTextViewController);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUCameraRecordingPrivacyTextViewController *)v22 view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  v7 = [v5 initWithTitle:v6 style:0 target:self action:sel_didDismissPrivacyViewController];
  navigationItem = [(HUCameraRecordingPrivacyTextViewController *)v22 navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  [v9 setModalPresentationStyle:2];
  view2 = [(HUCameraRecordingExportPreviewViewController *)self view];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:view2];

  view3 = [(HUCameraRecordingExportPreviewViewController *)self view];
  [view3 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  popoverPresentationController2 = [v9 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v14, v16, v18, v20}];

  [(HUCameraRecordingExportPreviewViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)submitCurrentClip
{
  completionHandler = [(HUCameraRecordingExportPreviewViewController *)self completionHandler];
  completionHandler[2](completionHandler, 1);

  [(HUCameraRecordingExportPreviewViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelSubmission
{
  completionHandler = [(HUCameraRecordingExportPreviewViewController *)self completionHandler];
  completionHandler[2](completionHandler, 0);

  [(HUCameraRecordingExportPreviewViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_displayFailureToSubmitAlert
{
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackFailureToSubmitTitle", @"HUCameraFeedbackFailureToSubmitTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackFailureToSubmitMessage", @"HUCameraFeedbackFailureToSubmitMessage", 1);
  v4 = [MEMORY[0x277D75110] hu_alertControllerForAcknowledgementWithTitle:v5 message:v3];
  [(HUCameraRecordingExportPreviewViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_stripAndTruncateRecording
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraClip = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    *buf = 138412290;
    v11 = cameraClip;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Starting Strip and truncate operation for clip:%@", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277D14480]);
  cameraClip2 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HUCameraRecordingExportPreviewViewController__stripAndTruncateRecording__block_invoke;
  v9[3] = &unk_277DBCB90;
  v9[4] = self;
  v7 = [v5 initWithCameraClip:cameraClip2 completionHandler:v9];

  backgroundSessionQueue = [(HUCameraRecordingExportPreviewViewController *)self backgroundSessionQueue];
  [backgroundSessionQueue addOperation:v7];
}

void __74__HUCameraRecordingExportPreviewViewController__stripAndTruncateRecording__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Finally completed stripping the audio at %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HUCameraRecordingExportPreviewViewController__stripAndTruncateRecording__block_invoke_35;
  v7[3] = &unk_277DB7558;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __74__HUCameraRecordingExportPreviewViewController__stripAndTruncateRecording__block_invoke_35(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setExportURL:?];
    v2 = [*(a1 + 40) loadingIndicatorView];
    [v2 setHidden:1];

    [*(a1 + 40) setHasVideoPreview:1];
    [*(a1 + 40) _loadPreviewInterface];
    v3 = *(a1 + 40);

    return [v3 playVideoFile];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Unable to locate output URL after stripping audio. Try again later.", v6, 2u);
    }

    return [*(a1 + 40) _displayFailureToSubmitAlert];
  }
}

- (void)prepareRecordingForExport
{
  v3 = MEMORY[0x277D14470];
  cameraClip = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
  LODWORD(v3) = [v3 hasCachedRecordingForCameraClip:cameraClip];

  if (v3)
  {

    [(HUCameraRecordingExportPreviewViewController *)self _stripAndTruncateRecording];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Download file to prepare for export.", buf, 2u);
    }

    v6 = objc_alloc(MEMORY[0x277CD18E8]);
    cameraProfile = [(HUCameraRecordingExportPreviewViewController *)self cameraProfile];
    clipManager = [cameraProfile clipManager];
    cameraClip2 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    v10 = [v6 initWithClipManager:clipManager clip:cameraClip2];

    v11 = MEMORY[0x277D14500];
    cameraClip3 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    v13 = [v11 videoDestinationURLForCameraClip:cameraClip3];
    [v10 setClipDestinationFileURL:v13];

    [v10 setDownloadProgressHandler:&__block_literal_global_100];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HUCameraRecordingExportPreviewViewController_prepareRecordingForExport__block_invoke_42;
    v14[3] = &unk_277DBCBD8;
    objc_copyWeak(&v15, buf);
    [v10 setFetchVideoAssetContextCompletionBlock:v14];
    [v10 start];
    [(HUCameraRecordingExportPreviewViewController *)self setVideoDownloadOperation:v10];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __73__HUCameraRecordingExportPreviewViewController_prepareRecordingForExport__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Current clip download progress completion percentage: %lu.", &v4, 0xCu);
  }
}

void __73__HUCameraRecordingExportPreviewViewController_prepareRecordingForExport__block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 cameraClip];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Error: %@ downloading video file for clip: %@. THIS SHOULD NEVER HAPPEN.", &v9, 0x16u);
    }

    [v6 _displayFailureToSubmitAlert];
  }

  else
  {
    [WeakRetained _stripAndTruncateRecording];
    [v6 setVideoDownloadOperation:0];
  }
}

- (HUCameraRecordingPlayerView)playerView
{
  playerView = self->_playerView;
  if (!playerView)
  {
    v4 = MEMORY[0x277CE65B0];
    exportURL = [(HUCameraRecordingExportPreviewViewController *)self exportURL];
    v6 = [v4 playerItemWithURL:exportURL];

    v7 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(HUCameraRecordingExportPreviewViewController *)self setQueuePlayer:v7];
    v8 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v7 templateItem:v6];
    [(HUCameraRecordingExportPreviewViewController *)self setLooper:v8];

    v9 = [[HUCameraRecordingPlayerView alloc] initWithPlayer:v7 displayingProgressView:1];
    layer = [(HUCameraRecordingPlayerView *)v9 layer];
    [layer setCornerRadius:8.0];

    [(HUCameraRecordingPlayerView *)v9 setClipsToBounds:1];
    [(HUCameraRecordingPlayerView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = self->_playerView;
    self->_playerView = v9;

    playerView = self->_playerView;
  }

  return playerView;
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTextAlignment:1];
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackExplanation", @"HUCameraExportFeedbackExplanation", 1);
    [(UILabel *)v4 setText:v5];

    v6 = self->_descriptionLabel;
    self->_descriptionLabel = v4;

    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

- (UIButton)submitButton
{
  submitButton = self->_submitButton;
  if (!submitButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4 addTarget:self action:sel_submitCurrentClip forControlEvents:64];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:systemWhiteColor];

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4 setBackgroundColor:systemOrangeColor];

    layer = [(UIButton *)v4 layer];
    [layer setCornerRadius:8.0];

    v8 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackSubmitButtonTitle", @"HUCameraExportFeedbackSubmitButtonTitle", 1);
    [(UIButton *)v4 setTitle:v8 forState:0];

    v9 = self->_submitButton;
    self->_submitButton = v4;

    submitButton = self->_submitButton;
  }

  return submitButton;
}

- (UITextView)learnMoreTextView
{
  v15[1] = *MEMORY[0x277D85DE8];
  learnMoreTextView = self->_learnMoreTextView;
  if (!learnMoreTextView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C40]);
    [(UITextView *)v4 setEditable:0];
    v5 = MEMORY[0x277CCA898];
    v6 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackConsumerSubheadingText", @"HUCameraExportFeedbackConsumerSubheadingText", 1);
    v7 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackConsumerSubheadingLinkText", @"HUCameraExportFeedbackConsumerSubheadingLinkText", 1);
    v8 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2823E0EE8];
    v14 = *MEMORY[0x277D740C0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v15[0] = systemGrayColor;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v5 hf_attributedLinkStringForString:v6 linkString:v7 linkURL:v8 attributes:v10 additionalLinkAttributes:0];
    [(UITextView *)v4 setAttributedText:v11];

    [(UITextView *)v4 setDelegate:self];
    [(UITextView *)v4 setTextAlignment:1];
    [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = self->_learnMoreTextView;
    self->_learnMoreTextView = v4;

    learnMoreTextView = self->_learnMoreTextView;
  }

  return learnMoreTextView;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  if (!interaction)
  {
    [(HUCameraRecordingExportPreviewViewController *)self showPrivacyInformation];
  }

  return 0;
}

- (HMCameraClip)cameraClip
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraClip);

  return WeakRetained;
}

- (HMCameraProfile)cameraProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraProfile);

  return WeakRetained;
}

- (AVQueuePlayer)queuePlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_queuePlayer);

  return WeakRetained;
}

@end