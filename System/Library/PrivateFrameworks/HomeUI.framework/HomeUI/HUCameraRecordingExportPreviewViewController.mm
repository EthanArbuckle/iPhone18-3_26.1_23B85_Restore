@interface HUCameraRecordingExportPreviewViewController
- (AVQueuePlayer)queuePlayer;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HMCameraClip)cameraClip;
- (HMCameraProfile)cameraProfile;
- (HUCameraRecordingExportPreviewViewController)initWithCameraClip:(id)a3 cameraProfile:(id)a4 completionHandler:(id)a5;
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
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCameraRecordingExportPreviewViewController

- (HUCameraRecordingExportPreviewViewController)initWithCameraClip:(id)a3 cameraProfile:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HUCameraRecordingExportPreviewViewController;
  v11 = [(HUCameraRecordingExportPreviewViewController *)&v18 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cameraClip, v8);
    objc_storeWeak(&v12->_cameraProfile, v9);
    v13 = _Block_copy(v10);
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUCameraRecordingExportPreviewViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackNavigationTitle", @"HUCameraExportFeedbackNavigationTitle", 1);
  [(HUCameraRecordingExportPreviewViewController *)self setTitle:v5];

  v6 = objc_alloc(MEMORY[0x277D751E0]);
  v7 = _HULocalizedStringWithDefaultValue(@"HUCameraCancelText", @"HUCameraCancelText", 1);
  v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_cancelSubmission];
  v9 = [(HUCameraRecordingExportPreviewViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v8];

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
  v3 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(HUCameraRecordingExportPreviewViewController *)self view];
    v6 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
    [v5 addSubview:v6];

    v7 = [(HUCameraRecordingExportPreviewViewController *)self view];
    v8 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
    [v7 addSubview:v8];

    v9 = [(HUCameraRecordingExportPreviewViewController *)self view];
    v10 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
    [v9 addSubview:v10];

    v11 = [(HUCameraRecordingExportPreviewViewController *)self view];
    v12 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
    [v11 addSubview:v12];

    [(HUCameraRecordingExportPreviewViewController *)self _addConstraints];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v7 traitCollectionDidChange:a3];
  v4 = [(HUCameraRecordingExportPreviewViewController *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v5 = ;
  v6 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
  [v6 setColor:v5];
}

- (void)_loadLoadingInterface
{
  v3 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    [(HUCameraRecordingExportPreviewViewController *)self setLoadingIndicatorView:v4];

    v5 = [(HUCameraRecordingExportPreviewViewController *)self traitCollection];
    if ([v5 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }
    v6 = ;
    v7 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [v7 setColor:v6];

    v8 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [v8 startAnimating];

    v9 = [(HUCameraRecordingExportPreviewViewController *)self view];
    [v9 center];
    v11 = v10;
    v13 = v12;
    v14 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [v14 setCenter:{v11, v13}];

    v16 = [(HUCameraRecordingExportPreviewViewController *)self view];
    v15 = [(HUCameraRecordingExportPreviewViewController *)self loadingIndicatorView];
    [v16 addSubview:v15];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v4 viewWillAppear:a3];
  if ([(HUCameraRecordingExportPreviewViewController *)self hasVideoPreview])
  {
    [(HUCameraRecordingExportPreviewViewController *)self playVideoFile];
  }
}

- (void)playVideoFile
{
  objc_initWeak(&location, self);
  v3 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
  CMTimeMakeWithSeconds(&v10, 0.017, 60);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HUCameraRecordingExportPreviewViewController_playVideoFile__block_invoke;
  v8[3] = &unk_277DBCB68;
  objc_copyWeak(&v9, &location);
  v6 = [v3 addPeriodicTimeObserverForInterval:&v10 queue:v4 usingBlock:v8];
  [(HUCameraRecordingExportPreviewViewController *)self setQueuePlayerObserver:v6];

  v7 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
  [v7 play];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingExportPreviewViewController;
  [(HUCameraRecordingExportPreviewViewController *)&v7 viewWillDisappear:a3];
  v4 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayerObserver];

  if (v4)
  {
    v5 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayer];
    v6 = [(HUCameraRecordingExportPreviewViewController *)self queuePlayerObserver];
    [v5 removeTimeObserver:v6];
  }
}

- (void)_addConstraints
{
  v82[16] = *MEMORY[0x277D85DE8];
  v81 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v80 = [v81 heightAnchor];
  v79 = [v80 constraintEqualToConstant:220.0];
  v82[0] = v79;
  v78 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v77 = [v78 widthAnchor];
  v76 = [v77 constraintEqualToConstant:390.0];
  v82[1] = v76;
  v75 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v73 = [v75 topAnchor];
  v74 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v72 = [v74 safeAreaLayoutGuide];
  v71 = [v72 topAnchor];
  v70 = [v73 constraintEqualToAnchor:v71 constant:20.0];
  v82[2] = v70;
  v69 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v67 = [v69 centerXAnchor];
  v68 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v66 = [v68 centerXAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v82[3] = v65;
  v64 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  v62 = [v64 topAnchor];
  v63 = [(HUCameraRecordingExportPreviewViewController *)self playerView];
  v61 = [v63 bottomAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:10.0];
  v82[4] = v60;
  v59 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  v57 = [v59 leftAnchor];
  v58 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v56 = [v58 safeAreaLayoutGuide];
  v55 = [v56 leftAnchor];
  v54 = [v57 constraintEqualToAnchor:v55 constant:10.0];
  v82[5] = v54;
  v53 = [(HUCameraRecordingExportPreviewViewController *)self descriptionLabel];
  v51 = [v53 rightAnchor];
  v52 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v50 = [v52 safeAreaLayoutGuide];
  v49 = [v50 rightAnchor];
  v48 = [v51 constraintEqualToAnchor:v49 constant:-10.0];
  v82[6] = v48;
  v47 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v45 = [v47 bottomAnchor];
  v46 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v44 = [v46 safeAreaLayoutGuide];
  v43 = [v44 bottomAnchor];
  v42 = [v45 constraintEqualToAnchor:v43 constant:-20.0];
  v82[7] = v42;
  v41 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v40 = [v41 heightAnchor];
  v39 = [v40 constraintEqualToConstant:47.0];
  v82[8] = v39;
  v38 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v36 = [v38 centerXAnchor];
  v37 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v34 = [v37 centerXAnchor];
  v33 = [v36 constraintEqualToAnchor:v34];
  v82[9] = v33;
  v32 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v30 = [v32 leftAnchor];
  v31 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v29 = [v31 safeAreaLayoutGuide];
  v28 = [v29 leftAnchor];
  v27 = [v30 constraintEqualToAnchor:v28 constant:20.0];
  v82[10] = v27;
  v26 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v24 = [v26 rightAnchor];
  v25 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v23 = [v25 safeAreaLayoutGuide];
  v22 = [v23 rightAnchor];
  v21 = [v24 constraintEqualToAnchor:v22 constant:-20.0];
  v82[11] = v21;
  v20 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  v19 = [v20 heightAnchor];
  v18 = [v19 constraintEqualToConstant:80.0];
  v82[12] = v18;
  v17 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  v15 = [v17 bottomAnchor];
  v16 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v14 = [v16 topAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:-10.0];
  v82[13] = v13;
  v3 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  v4 = [v3 leftAnchor];
  v5 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v6 = [v5 leftAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v82[14] = v7;
  v8 = [(HUCameraRecordingExportPreviewViewController *)self learnMoreTextView];
  v9 = [v8 rightAnchor];
  v10 = [(HUCameraRecordingExportPreviewViewController *)self submitButton];
  v11 = [v10 rightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v82[15] = v12;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:16];

  [MEMORY[0x277CCAAD0] activateConstraints:v35];
}

- (void)showPrivacyInformation
{
  v22 = objc_alloc_init(HUCameraRecordingPrivacyTextViewController);
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUCameraRecordingPrivacyTextViewController *)v22 view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  v7 = [v5 initWithTitle:v6 style:0 target:self action:sel_didDismissPrivacyViewController];
  v8 = [(HUCameraRecordingPrivacyTextViewController *)v22 navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  [v9 setModalPresentationStyle:2];
  v10 = [(HUCameraRecordingExportPreviewViewController *)self view];
  v11 = [v9 popoverPresentationController];
  [v11 setSourceView:v10];

  v12 = [(HUCameraRecordingExportPreviewViewController *)self view];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v9 popoverPresentationController];
  [v21 setSourceRect:{v14, v16, v18, v20}];

  [(HUCameraRecordingExportPreviewViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)submitCurrentClip
{
  v3 = [(HUCameraRecordingExportPreviewViewController *)self completionHandler];
  v3[2](v3, 1);

  [(HUCameraRecordingExportPreviewViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelSubmission
{
  v3 = [(HUCameraRecordingExportPreviewViewController *)self completionHandler];
  v3[2](v3, 0);

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
    v4 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Starting Strip and truncate operation for clip:%@", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277D14480]);
  v6 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HUCameraRecordingExportPreviewViewController__stripAndTruncateRecording__block_invoke;
  v9[3] = &unk_277DBCB90;
  v9[4] = self;
  v7 = [v5 initWithCameraClip:v6 completionHandler:v9];

  v8 = [(HUCameraRecordingExportPreviewViewController *)self backgroundSessionQueue];
  [v8 addOperation:v7];
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
  v4 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
  LODWORD(v3) = [v3 hasCachedRecordingForCameraClip:v4];

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
    v7 = [(HUCameraRecordingExportPreviewViewController *)self cameraProfile];
    v8 = [v7 clipManager];
    v9 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    v10 = [v6 initWithClipManager:v8 clip:v9];

    v11 = MEMORY[0x277D14500];
    v12 = [(HUCameraRecordingExportPreviewViewController *)self cameraClip];
    v13 = [v11 videoDestinationURLForCameraClip:v12];
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
    v5 = [(HUCameraRecordingExportPreviewViewController *)self exportURL];
    v6 = [v4 playerItemWithURL:v5];

    v7 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(HUCameraRecordingExportPreviewViewController *)self setQueuePlayer:v7];
    v8 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v7 templateItem:v6];
    [(HUCameraRecordingExportPreviewViewController *)self setLooper:v8];

    v9 = [[HUCameraRecordingPlayerView alloc] initWithPlayer:v7 displayingProgressView:1];
    v10 = [(HUCameraRecordingPlayerView *)v9 layer];
    [v10 setCornerRadius:8.0];

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
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:v5];

    v6 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4 setBackgroundColor:v6];

    v7 = [(UIButton *)v4 layer];
    [v7 setCornerRadius:8.0];

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
    v9 = [MEMORY[0x277D75348] systemGrayColor];
    v15[0] = v9;
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  if (!a6)
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