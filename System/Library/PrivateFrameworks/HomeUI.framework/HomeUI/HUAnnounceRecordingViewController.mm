@interface HUAnnounceRecordingViewController
- (BOOL)_areAllHomePodsOffline;
- (BOOL)_isHomeContext;
- (BOOL)_isRoomContext;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (HUAnnounceRecordingViewController)initWithServiceContext:(id)context blurEffectStyle:(int64_t)style;
- (id)_contentViewBackgroundColor;
- (id)_fontForTimeCodeLabel;
- (id)_stringForDuration:(double)duration;
- (id)_waveformColor;
- (void)_commonInit;
- (void)_deleteAudioFile;
- (void)_deleteRecording:(id)recording;
- (void)_didPan:(id)pan;
- (void)_didTap:(id)tap;
- (void)_dismissDownRecordingView:(id)view;
- (void)_dismissUpRecordingView:(id)view;
- (void)_dismissViewOrDisplayError:(id)error;
- (void)_hideRecordingUI;
- (void)_restoreRecordingUI;
- (void)_submitAnalyticsForAnnounceRecordingCompletdSuccessfully:(BOOL)successfully interruptedByUser:(BOOL)user;
- (void)_updateUIBasedOnReachabilityStatus;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateReachableTransports:(id)transports;
- (void)audioRecorderDidStartRecording:(id)recording;
- (void)audioRecorderFailedToFinishRecording:(id)recording;
- (void)audioRecorderFinishedRecording:(id)recording audioFile:(id)file;
- (void)beginRecording:(id)recording;
- (void)dealloc;
- (void)didUpdateAveragePower:(float)power;
- (void)sendAnnouncement:(id)announcement;
- (void)stopRecordAndSend:(id)send;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUAnnounceRecordingViewController

- (HUAnnounceRecordingViewController)initWithServiceContext:(id)context blurEffectStyle:(int64_t)style
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = HUAnnounceRecordingViewController;
  v8 = [(HUAnnounceRecordingViewController *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:style];
    blurEffect = v8->_blurEffect;
    v8->_blurEffect = v9;

    objc_storeStrong(&v8->_serviceContext, context);
    v11 = objc_alloc_init(MEMORY[0x277D755F0]);
    feedbackGenerator = v8->_feedbackGenerator;
    v8->_feedbackGenerator = v11;

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__didTap_];
    tapGestureRecognizer = v8->_tapGestureRecognizer;
    v8->_tapGestureRecognizer = v13;

    [(UITapGestureRecognizer *)v8->_tapGestureRecognizer setDelegate:v8];
    view = [(HUAnnounceRecordingViewController *)v8 view];
    [view addGestureRecognizer:v8->_tapGestureRecognizer];

    v16 = objc_alloc_init(MEMORY[0x277CEAB30]);
    announce = v8->_announce;
    v8->_announce = v16;

    [(HUAnnounceRecordingViewController *)v8 _commonInit];
  }

  return v8;
}

- (void)_commonInit
{
  serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
  homeIdentifier = [serviceContext homeIdentifier];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  allHomesFuture = [mEMORY[0x277D146E8] allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HUAnnounceRecordingViewController__commonInit__block_invoke;
  v9[3] = &unk_277DBE8D0;
  v10 = homeIdentifier;
  selfCopy = self;
  v7 = homeIdentifier;
  v8 = [allHomesFuture addCompletionBlock:v9];
}

void __48__HUAnnounceRecordingViewController__commonInit__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Error fetching HomeKit Homes: %@", buf, 0xCu);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__HUAnnounceRecordingViewController__commonInit__block_invoke_2;
    v13[3] = &unk_277DBE8A8;
    v14 = *(a1 + 32);
    v8 = [v5 na_firstObjectPassingTest:v13];
    [*(a1 + 40) setCurrentHome:v8];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) currentHome];
      v11 = [v10 uniqueIdentifier];
      v12 = *(a1 + 32);
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Fetched HomeKit Homes: [%@] currentHome ID = [%@] ANHomeID = [%@]", buf, 0x20u);
    }

    [*(a1 + 40) _updateUIBasedOnReachabilityStatus];
    v7 = v14;
  }
}

uint64_t __48__HUAnnounceRecordingViewController__commonInit__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)viewDidLoad
{
  v272[1] = *MEMORY[0x277D85DE8];
  v270.receiver = self;
  v270.super_class = HUAnnounceRecordingViewController;
  [(HUAnnounceRecordingViewController *)&v270 viewDidLoad];
  view = [(HUAnnounceRecordingViewController *)self view];
  [view setAlpha:0.0];

  v4 = [objc_alloc(MEMORY[0x277D14428]) initWithAudioRecorderDelegate:self];
  [(HUAnnounceRecordingViewController *)self setAudioRecorder:v4];

  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder prepareRecording];

  audioRecorder2 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder2 playAlertSoundForType:0 withCompletion:0];

  audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [audioWaveformView clearPowerLevels];

  v8 = MEMORY[0x277D75D00];
  blurEffect = [(HUAnnounceRecordingViewController *)self blurEffect];
  v10 = [v8 effectForBlurEffect:blurEffect style:1];

  v266 = v10;
  v11 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v10];
  dismissLabelVisualEffectView = self->_dismissLabelVisualEffectView;
  self->_dismissLabelVisualEffectView = v11;

  view2 = [(HUAnnounceRecordingViewController *)self view];
  [view2 naui_addAutoLayoutSubview:self->_dismissLabelVisualEffectView];

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  dismissLabel = self->_dismissLabel;
  self->_dismissLabel = v14;

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_dismissLabel setFont:v16];

  [(UILabel *)self->_dismissLabel setTextAlignment:1];
  v17 = self->_dismissLabel;
  v18 = _HULocalizedStringWithDefaultValue(@"HUAnnounceDismissLabel_Title", @"HUAnnounceDismissLabel_Title", 1);
  [(UILabel *)v17 setText:v18];

  v19 = self->_dismissLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v19 setTextColor:whiteColor];

  [(UILabel *)self->_dismissLabel setAlpha:0.0];
  contentView = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView contentView];
  [contentView naui_addAutoLayoutSubview:self->_dismissLabel];

  text = [(UILabel *)self->_dismissLabel text];
  view3 = [(HUAnnounceRecordingViewController *)self view];
  [view3 bounds];
  v25 = v24;
  v271 = *MEMORY[0x277D740A8];
  font = [(UILabel *)self->_dismissLabel font];
  v272[0] = font;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:&v271 count:1];
  [text boundingRectWithSize:1 options:v27 attributes:0 context:{v25, 3.40282347e38}];
  v29 = v28;

  v30 = [MEMORY[0x277D75220] buttonWithType:7];
  closeButton = self->_closeButton;
  self->_closeButton = v30;

  glassButtonConfiguration = [MEMORY[0x277D75230] glassButtonConfiguration];
  [(UIButton *)self->_closeButton setConfiguration:glassButtonConfiguration];

  [(UIButton *)self->_closeButton addTarget:self action:sel__dismissDownRecordingView_ forControlEvents:64];
  view4 = [(HUAnnounceRecordingViewController *)self view];
  [view4 naui_addAutoLayoutSubview:self->_closeButton];

  v34 = objc_alloc(MEMORY[0x277D75D18]);
  v36 = *MEMORY[0x277CBF3A0];
  v35 = *(MEMORY[0x277CBF3A0] + 8);
  v38 = *(MEMORY[0x277CBF3A0] + 16);
  v37 = *(MEMORY[0x277CBF3A0] + 24);
  v39 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], v35, v38, v37}];
  contentView = self->_contentView;
  self->_contentView = v39;

  v41 = self->_contentView;
  _contentViewBackgroundColor = [(HUAnnounceRecordingViewController *)self _contentViewBackgroundColor];
  [(UIView *)v41 setBackgroundColor:_contentViewBackgroundColor];

  [(UIView *)self->_contentView _setContinuousCornerRadius:26.0];
  [(UIView *)self->_contentView setAlpha:0.0];
  view5 = [(HUAnnounceRecordingViewController *)self view];
  [view5 naui_addAutoLayoutSubview:self->_contentView];

  v265 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__didPan_];
  [(UIView *)self->_contentView addGestureRecognizer:?];
  v44 = objc_alloc_init(MEMORY[0x277D756B8]);
  largeTitleLabel = self->_largeTitleLabel;
  self->_largeTitleLabel = v44;

  v46 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v47 = [v46 fontDescriptorWithSymbolicTraits:2];

  v48 = [MEMORY[0x277D74300] fontWithDescriptor:v47 size:0.0];
  [(UILabel *)self->_largeTitleLabel setFont:v48];

  [(UILabel *)self->_largeTitleLabel setTextAlignment:1];
  v49 = self->_largeTitleLabel;
  _largeTitleTextColor = [(HUAnnounceRecordingViewController *)self _largeTitleTextColor];
  [(UILabel *)v49 setTextColor:_largeTitleTextColor];

  [(UILabel *)self->_largeTitleLabel setAlpha:0.0];
  [(UILabel *)self->_largeTitleLabel setLineBreakMode:4];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_largeTitleLabel];
  v51 = objc_alloc_init(MEMORY[0x277D756B8]);
  subTitleLabel = self->_subTitleLabel;
  self->_subTitleLabel = v51;

  v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  [(UILabel *)self->_subTitleLabel setFont:v53];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subTitleLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_subTitleLabel setTextAlignment:1];
  [(UILabel *)self->_subTitleLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_subTitleLabel];
  v55 = [HUWaveformView alloc];
  _waveformColor = [(HUAnnounceRecordingViewController *)self _waveformColor];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v58 = [(HUWaveformView *)v55 initWithFrame:_waveformColor waveformColor:systemGrayColor backgroundColor:v36, v35, v38, v37];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v58;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_audioWaveformView];
  serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
  roomName = [serviceContext roomName];
  v62 = roomName;
  if (roomName)
  {
    homeName = roomName;
  }

  else
  {
    serviceContext2 = [(HUAnnounceRecordingViewController *)self serviceContext];
    homeName = [serviceContext2 homeName];
  }

  v65 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v36, v35, v38, v37}];
  announcementDeliveryFailureLabel = self->_announcementDeliveryFailureLabel;
  self->_announcementDeliveryFailureLabel = v65;

  [(UILabel *)self->_announcementDeliveryFailureLabel setAlpha:0.0];
  v67 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_announcementDeliveryFailureLabel setFont:v67];

  [(UILabel *)self->_announcementDeliveryFailureLabel setTextAlignment:1];
  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_announcementDeliveryFailureLabel setTextColor:secondaryLabelColor2];

  v264 = homeName;
  v75 = HULocalizedStringWithFormat(@"HUAnnounceNotDeliveredLabel_Description", @"%@", v69, v70, v71, v72, v73, v74, homeName);
  [(UILabel *)self->_announcementDeliveryFailureLabel setText:v75];

  [(UILabel *)self->_announcementDeliveryFailureLabel setNumberOfLines:0];
  [(UILabel *)self->_announcementDeliveryFailureLabel setLineBreakMode:0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_announcementDeliveryFailureLabel];
  v76 = [[HURecordingButton alloc] initWithSize:64.0, 64.0];
  recordButton = self->_recordButton;
  self->_recordButton = v76;

  [(HURecordingButton *)self->_recordButton setAlpha:0.0];
  [(HURecordingButton *)self->_recordButton addTarget:self action:sel_beginRecording_ forControlEvents:64];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_recordButton];
  v78 = objc_alloc_init(MEMORY[0x277D756B8]);
  recordingStateChangeLabel = self->_recordingStateChangeLabel;
  self->_recordingStateChangeLabel = v78;

  v80 = *MEMORY[0x277D76968];
  v81 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_recordingStateChangeLabel setFont:v81];

  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_recordingStateChangeLabel setTextColor:systemGrayColor2];

  [(UILabel *)self->_recordingStateChangeLabel setTextAlignment:1];
  [(UILabel *)self->_recordingStateChangeLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_recordingStateChangeLabel setAlpha:0.0];
  [(UILabel *)self->_recordingStateChangeLabel setIsAccessibilityElement:0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_recordingStateChangeLabel];
  v83 = objc_alloc_init(MEMORY[0x277D756B8]);
  errorStatusLabel = self->_errorStatusLabel;
  self->_errorStatusLabel = v83;

  v85 = [MEMORY[0x277D74300] preferredFontForTextStyle:v80];
  [(UILabel *)self->_errorStatusLabel setFont:v85];

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [(UILabel *)self->_errorStatusLabel setTextColor:systemRedColor];

  [(UILabel *)self->_errorStatusLabel setTextAlignment:1];
  [(UILabel *)self->_errorStatusLabel setNumberOfLines:0];
  [(UILabel *)self->_errorStatusLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_errorStatusLabel];
  v87 = objc_opt_new();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v90 = self->_dismissLabelVisualEffectView;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    centerXAnchor = [(UIVisualEffectView *)v90 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
    safeAreaLayoutGuide = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v87 addObject:safeAreaLayoutGuide];
  }

  else
  {
    centerXAnchor = [(UIVisualEffectView *)v90 leadingAnchor];
    centerXAnchor2 = [(HUAnnounceRecordingViewController *)self view];
    safeAreaLayoutGuide = [centerXAnchor2 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
    v95 = [centerXAnchor constraintEqualToAnchor:leadingAnchor];
    [v87 addObject:v95];
  }

  trailingAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  view6 = [(HUAnnounceRecordingViewController *)self view];
  safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v100 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v87 addObject:v100];

  topAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  view7 = [(HUAnnounceRecordingViewController *)self view];
  safeAreaLayoutGuide3 = [view7 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v105 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-25.0];
  dismissLabelTopConstraint = self->_dismissLabelTopConstraint;
  self->_dismissLabelTopConstraint = v105;

  [v87 addObject:self->_dismissLabelTopConstraint];
  heightAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v108 = [heightAnchor constraintEqualToConstant:v29];
  [v87 addObject:v108];

  leadingAnchor2 = [(UILabel *)self->_dismissLabel leadingAnchor];
  leadingAnchor3 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView leadingAnchor];
  v111 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  [v87 addObject:v111];

  trailingAnchor3 = [(UILabel *)self->_dismissLabel trailingAnchor];
  trailingAnchor4 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v114 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v87 addObject:v114];

  topAnchor3 = [(UILabel *)self->_dismissLabel topAnchor];
  topAnchor4 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v117 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v87 addObject:v117];

  heightAnchor2 = [(UILabel *)self->_dismissLabel heightAnchor];
  heightAnchor3 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v120 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v87 addObject:v120];

  topAnchor5 = [(UIButton *)self->_closeButton topAnchor];
  view8 = [(HUAnnounceRecordingViewController *)self view];
  topAnchor6 = [view8 topAnchor];
  v124 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:30.0];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v124;

  [v87 addObject:self->_closeButtonTopConstraint];
  trailingAnchor5 = [(UIButton *)self->_closeButton trailingAnchor];
  view9 = [(HUAnnounceRecordingViewController *)self view];
  safeAreaLayoutGuide4 = [view9 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide4 trailingAnchor];
  v130 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  [v87 addObject:v130];

  heightAnchor4 = [(UIButton *)self->_closeButton heightAnchor];
  v132 = [heightAnchor4 constraintEqualToConstant:44.0];
  [v87 addObject:v132];

  widthAnchor = [(UIButton *)self->_closeButton widthAnchor];
  heightAnchor5 = [(UIButton *)self->_closeButton heightAnchor];
  v135 = [widthAnchor constraintEqualToAnchor:heightAnchor5];
  [v87 addObject:v135];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v138 = v137;

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v141 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
  topAnchor7 = [(UIView *)self->_contentView topAnchor];
  if (v141 == 1)
  {
    view10 = [(HUAnnounceRecordingViewController *)self view];
    topAnchor8 = [view10 topAnchor];
    v145 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:44.0];
    contentViewTopConstraint = self->_contentViewTopConstraint;
    self->_contentViewTopConstraint = v145;

    [v87 addObject:self->_contentViewTopConstraint];
    serviceContext3 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [serviceContext3 animationOriginRect];
    v275.origin.x = v36;
    v275.origin.y = v35;
    v275.size.width = v38;
    v275.size.height = v37;
    v148 = CGRectEqualToRect(v273, v275);

    if (v148)
    {
      trailingAnchor7 = [(UIView *)self->_contentView trailingAnchor];
      leadingAnchor4 = [(UIButton *)self->_closeButton leadingAnchor];
      safeAreaLayoutGuide5 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
      [v87 addObject:safeAreaLayoutGuide5];
LABEL_12:

      goto LABEL_16;
    }

    serviceContext4 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [serviceContext4 animationOriginRect];
    v160 = v138 - v159 + 44.0;

    trailingAnchor8 = [(UIView *)self->_contentView trailingAnchor];
    leadingAnchor5 = [(UIButton *)self->_closeButton leadingAnchor];
    v163 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor5 constant:v160];
    contentViewTrailingConstraint = self->_contentViewTrailingConstraint;
    self->_contentViewTrailingConstraint = v163;

    v165 = self->_contentViewTrailingConstraint;
  }

  else
  {
    bottomAnchor = [(UIButton *)self->_closeButton bottomAnchor];
    v153 = [topAnchor7 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v87 addObject:v153];

    serviceContext5 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [serviceContext5 animationOriginRect];
    v276.origin.x = v36;
    v276.origin.y = v35;
    v276.size.width = v38;
    v276.size.height = v37;
    v155 = CGRectEqualToRect(v274, v276);

    if (v155)
    {
      trailingAnchor7 = [(UIView *)self->_contentView trailingAnchor];
      leadingAnchor4 = [(HUAnnounceRecordingViewController *)self view];
      safeAreaLayoutGuide5 = [leadingAnchor4 safeAreaLayoutGuide];
      trailingAnchor9 = [safeAreaLayoutGuide5 trailingAnchor];
      v157 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor9 constant:-10.0];
      [v87 addObject:v157];

      goto LABEL_12;
    }

    serviceContext6 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [serviceContext6 animationOriginRect];
    v168 = v138 - v167;

    trailingAnchor10 = [(UIView *)self->_contentView trailingAnchor];
    view11 = [(HUAnnounceRecordingViewController *)self view];
    safeAreaLayoutGuide6 = [view11 safeAreaLayoutGuide];
    trailingAnchor11 = [safeAreaLayoutGuide6 trailingAnchor];
    v173 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-v168];
    v174 = self->_contentViewTrailingConstraint;
    self->_contentViewTrailingConstraint = v173;

    v165 = self->_contentViewTrailingConstraint;
  }

  [v87 addObject:v165];
LABEL_16:
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v176 = [widthAnchor2 constraintEqualToConstant:100.0];
  contentViewWidthConstraint = self->_contentViewWidthConstraint;
  self->_contentViewWidthConstraint = v176;

  [v87 addObject:self->_contentViewWidthConstraint];
  heightAnchor6 = [(UIView *)self->_contentView heightAnchor];
  v179 = [heightAnchor6 constraintEqualToConstant:0.0];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v179;

  [v87 addObject:self->_contentViewHeightConstraint];
  topAnchor9 = [(UILabel *)self->_largeTitleLabel topAnchor];
  topAnchor10 = [(UIView *)self->_contentView topAnchor];
  v183 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:48.0];
  [v87 addObject:v183];

  centerXAnchor3 = [(UILabel *)self->_largeTitleLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_contentView centerXAnchor];
  v186 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v87 addObject:v186];

  leadingAnchor6 = [(UILabel *)self->_largeTitleLabel leadingAnchor];
  leadingAnchor7 = [(UIView *)self->_contentView leadingAnchor];
  v189 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v87 addObject:v189];

  trailingAnchor12 = [(UILabel *)self->_largeTitleLabel trailingAnchor];
  trailingAnchor13 = [(UIView *)self->_contentView trailingAnchor];
  v192 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  [v87 addObject:v192];

  topAnchor11 = [(UILabel *)self->_subTitleLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_largeTitleLabel bottomAnchor];
  v195 = [topAnchor11 constraintEqualToAnchor:bottomAnchor2];
  [v87 addObject:v195];

  centerXAnchor5 = [(UILabel *)self->_subTitleLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_contentView centerXAnchor];
  v198 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v87 addObject:v198];

  leadingAnchor8 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  leadingAnchor9 = [(UIView *)self->_contentView leadingAnchor];
  v201 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  [v87 addObject:v201];

  trailingAnchor14 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  trailingAnchor15 = [(UIView *)self->_contentView trailingAnchor];
  v204 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
  [v87 addObject:v204];

  centerYAnchor = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_contentView centerYAnchor];
  v207 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v87 addObject:v207];

  heightAnchor7 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v209 = [heightAnchor7 constraintEqualToConstant:100.0];
  [v87 addObject:v209];

  topAnchor12 = [(HUWaveformView *)self->_audioWaveformView topAnchor];
  bottomAnchor3 = [(UILabel *)self->_subTitleLabel bottomAnchor];
  v212 = [topAnchor12 constraintEqualToAnchor:bottomAnchor3 constant:20.0];

  LODWORD(v213) = 1132068864;
  [v212 setPriority:v213];
  [v87 addObject:v212];
  leadingAnchor10 = [(UILabel *)self->_announcementDeliveryFailureLabel leadingAnchor];
  leadingAnchor11 = [(UIView *)self->_contentView leadingAnchor];
  v216 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  [v87 addObject:v216];

  trailingAnchor16 = [(UILabel *)self->_announcementDeliveryFailureLabel trailingAnchor];
  trailingAnchor17 = [(UIView *)self->_contentView trailingAnchor];
  v219 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
  [v87 addObject:v219];

  centerYAnchor3 = [(UILabel *)self->_announcementDeliveryFailureLabel centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_contentView centerYAnchor];
  v222 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v87 addObject:v222];

  topAnchor13 = [(HURecordingButton *)self->_recordButton topAnchor];
  bottomAnchor4 = [(UILabel *)self->_announcementDeliveryFailureLabel bottomAnchor];
  v225 = [topAnchor13 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
  [v87 addObject:v225];

  heightAnchor8 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v227 = [heightAnchor8 constraintEqualToConstant:64.0];
  [v87 addObject:v227];

  widthAnchor3 = [(HURecordingButton *)self->_recordButton widthAnchor];
  v229 = [widthAnchor3 constraintEqualToConstant:64.0];
  [v87 addObject:v229];

  centerXAnchor7 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  centerXAnchor8 = [(UIView *)self->_contentView centerXAnchor];
  v232 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v87 addObject:v232];

  centerXAnchor9 = [(UILabel *)self->_recordingStateChangeLabel centerXAnchor];
  centerXAnchor10 = [(UIView *)self->_contentView centerXAnchor];
  v235 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v87 addObject:v235];

  topAnchor14 = [(UILabel *)self->_recordingStateChangeLabel topAnchor];
  bottomAnchor5 = [(HURecordingButton *)self->_recordButton bottomAnchor];
  v238 = [topAnchor14 constraintEqualToAnchor:bottomAnchor5 constant:8.0];
  [v87 addObject:v238];

  bottomAnchor6 = [(UILabel *)self->_recordingStateChangeLabel bottomAnchor];
  bottomAnchor7 = [(UIView *)self->_contentView bottomAnchor];
  v241 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-20.0];
  [v87 addObject:v241];

  topAnchor15 = [(HURecordingButton *)self->_recordButton topAnchor];
  bottomAnchor8 = [(UILabel *)self->_errorStatusLabel bottomAnchor];
  v244 = [topAnchor15 constraintEqualToAnchor:bottomAnchor8 constant:20.0];
  [v87 addObject:v244];

  centerXAnchor11 = [(UILabel *)self->_errorStatusLabel centerXAnchor];
  centerXAnchor12 = [(UIView *)self->_contentView centerXAnchor];
  v247 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  [v87 addObject:v247];

  leadingAnchor12 = [(UILabel *)self->_errorStatusLabel leadingAnchor];
  leadingAnchor13 = [(UIView *)self->_contentView leadingAnchor];
  v250 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  [v87 addObject:v250];

  trailingAnchor18 = [(UILabel *)self->_errorStatusLabel trailingAnchor];
  trailingAnchor19 = [(UIView *)self->_contentView trailingAnchor];
  v253 = [trailingAnchor18 constraintEqualToAnchor:trailingAnchor19];
  [v87 addObject:v253];

  [MEMORY[0x277CCAAD0] activateConstraints:v87];
  view12 = [(HUAnnounceRecordingViewController *)self view];
  [view12 layoutIfNeeded];

  largeTitleLabel = [(HUAnnounceRecordingViewController *)self largeTitleLabel];
  [largeTitleLabel becomeFirstResponder];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] addAccessoryObserver:self];

  serviceContext7 = [(HUAnnounceRecordingViewController *)self serviceContext];
  roomName2 = [serviceContext7 roomName];
  v259 = roomName2;
  if (roomName2)
  {
    homeName2 = roomName2;
  }

  else
  {
    serviceContext8 = [(HUAnnounceRecordingViewController *)self serviceContext];
    homeName2 = [serviceContext8 homeName];
  }

  v262 = MEMORY[0x277D75D18];
  v267[4] = self;
  v268[0] = MEMORY[0x277D85DD0];
  v268[1] = 3221225472;
  v268[2] = __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke;
  v268[3] = &unk_277DB7558;
  v268[4] = self;
  v269 = homeName2;
  v267[0] = MEMORY[0x277D85DD0];
  v267[1] = 3221225472;
  v267[2] = __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke_3;
  v267[3] = &unk_277DB8C28;
  v263 = homeName2;
  [v262 animateWithDuration:v268 animations:v267 completion:0.5];
}

void __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke_2;
  v10[3] = &unk_277DB7558;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v10 animations:{v7, v8, v9}];
}

void __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewHeightConstraint];
  [v2 setConstant:500.0];

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = *(a1 + 32);
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v9 = [v5 view];
    [v9 bounds];
    v11 = v10 + -20.0;
    v12 = [*(a1 + 32) contentViewWidthConstraint];
    [v12 setConstant:v11];

    v13 = [*(a1 + 32) contentViewTrailingConstraint];

    v8 = -10.0;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [v5 contentViewWidthConstraint];
  [v6 setConstant:395.0];

  v7 = [*(a1 + 32) contentViewTrailingConstraint];

  v8 = -8.0;
  if (v7)
  {
LABEL_5:
    v14 = [*(a1 + 32) contentViewTrailingConstraint];
    [v14 setConstant:v8];
  }

LABEL_6:
  v15 = [*(a1 + 32) contentView];
  [v15 setAlpha:1.0];

  v16 = [*(a1 + 32) view];
  [v16 setAlpha:1.0];

  v17 = [*(a1 + 32) largeTitleLabel];
  [v17 setAlpha:1.0];

  v18 = [*(a1 + 32) subTitleLabel];
  [v18 setAlpha:1.0];

  v19 = [*(a1 + 32) recordButton];
  [v19 setAlpha:1.0];

  v20 = [*(a1 + 32) recordingStateChangeLabel];
  [v20 setAlpha:1.0];

  v21 = [*(a1 + 32) largeTitleLabel];
  v28 = HULocalizedStringWithFormat(@"HUAnnounceRecipient_Title", @"%@", v22, v23, v24, v25, v26, v27, *(a1 + 40));
  [v21 setText:v28];

  v29 = [*(a1 + 32) subTitleLabel];
  v30 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSubtitle_Title", @"HUAnnounceSubtitle_Title", 1);
  [v29 setText:v30];

  v31 = [*(a1 + 32) recordingStateChangeLabel];
  v32 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
  [v31 setText:v32];

  v33 = [*(a1 + 32) view];
  [v33 layoutIfNeeded];
}

uint64_t __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke_3(uint64_t result, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) _areAllHomePodsOffline];
    if ([*(v2 + 32) _isRoomContext])
    {
      v4 = [*(v2 + 32) currentHome];
      v5 = objc_alloc(MEMORY[0x277CCAD78]);
      v6 = [*(v2 + 32) serviceContext];
      v7 = [v6 roomIdentifier];
      v8 = [v5 initWithUUIDString:v7];
      v9 = [v4 hf_roomWithIdentifier:v8];

      v10 = [v9 hf_hasAtLeastOneAnnounceSupportedAccessory];
      if (v10)
      {
        v11 = [v9 hf_hasAtLeastOneReachableHomeMediaAccessory];
      }

      else
      {
        v11 = 0;
      }

      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 uniqueIdentifier];
        v21 = 138412802;
        *v22 = v15;
        *&v22[8] = 1024;
        v23 = v10;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Room ID [%@], hasAtleastOneHomePodInThisRoom:%{BOOL}d, isAtleastOneHomePodOnlineInThisRoom:%{BOOL}d", &v21, 0x18u);
      }

      v12 = v10 ^ 1;
      v13 = v11 ^ 1;
    }

    else
    {
      v12 = 1;
      v13 = 1;
    }

    if ([*(v2 + 32) _isRoomContext])
    {
      v16 = v12 | (v12 | v13) ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = [*(v2 + 32) _isHomeContext] & (v3 ^ 1);
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109376;
      *v22 = v16 & 1;
      *&v22[4] = 1024;
      *&v22[6] = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "shouldBeginRecordingForRoom:%{BOOL}d, shouldBeginRecordingForHome:%{BOOL}d", &v21, 0xEu);
    }

    v19 = *(v2 + 32);
    if ((v16 | v17))
    {
      v20 = [v19 feedbackGenerator];
      [v20 prepare];

      return [*(v2 + 32) beginRecording:0];
    }

    else
    {
      return [v19 _updateUIBasedOnReachabilityStatus];
    }
  }

  return result;
}

- (void)dealloc
{
  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if (isRecording)
  {
    audioRecorder2 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [audioRecorder2 stopRecording];
  }

  [(HUAnnounceRecordingViewController *)self _deleteAudioFile];
  v6.receiver = self;
  v6.super_class = HUAnnounceRecordingViewController;
  [(HUAnnounceRecordingViewController *)&v6 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  contentView = [(HUAnnounceRecordingViewController *)self contentView];
  _contentViewBackgroundColor = [(HUAnnounceRecordingViewController *)self _contentViewBackgroundColor];
  [contentView setBackgroundColor:_contentViewBackgroundColor];

  largeTitleLabel = [(HUAnnounceRecordingViewController *)self largeTitleLabel];
  _largeTitleTextColor = [(HUAnnounceRecordingViewController *)self _largeTitleTextColor];
  [largeTitleLabel setTextColor:_largeTitleTextColor];

  audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  _waveformColor = [(HUAnnounceRecordingViewController *)self _waveformColor];
  [audioWaveformView setWaveformColor:_waveformColor];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = HUAnnounceRecordingViewController;
  [(HUAnnounceRecordingViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    contentViewWidthConstraint = [(HUAnnounceRecordingViewController *)self contentViewWidthConstraint];
    [contentViewWidthConstraint setConstant:395.0];
  }
}

- (void)beginRecording:(id)recording
{
  view = [(HUAnnounceRecordingViewController *)self view];
  [view layoutIfNeeded];

  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];

  if (!audioRecorder)
  {
    v6 = [objc_alloc(MEMORY[0x277D14428]) initWithAudioRecorderDelegate:self];
    [(HUAnnounceRecordingViewController *)self setAudioRecorder:v6];

    audioRecorder2 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [audioRecorder2 prepareRecording];

    audioRecorder3 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [audioRecorder3 playAlertSoundForType:0 withCompletion:0];

    audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [audioWaveformView clearPowerLevels];
  }

  audioRecorder4 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  isRecording = [audioRecorder4 isRecording];

  if ((isRecording & 1) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x277CEAB30]);
    [v12 prewarmWithHandler:0];
    feedbackGenerator = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
    [feedbackGenerator impactOccurredWithIntensity:1.0];

    feedbackGenerator2 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
    [feedbackGenerator2 prepare];

    audioRecorder5 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [audioRecorder5 setRecordingDurationLimit:60.0];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Calling startRecording", buf, 2u);
    }

    audioRecorder6 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [audioRecorder6 startRecording];

    recordingStateChangeLabel = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v19 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordingStopLabel_Title", @"HUAnnounceRecordingStopLabel_Title", 1);
    [recordingStateChangeLabel setText:v19];

    recordingStateChangeLabel2 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    [recordingStateChangeLabel2 setEnabled:1];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__HUAnnounceRecordingViewController_beginRecording___block_invoke;
    v22[3] = &unk_277DB8488;
    v22[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.25];
    recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton startRecording];
  }
}

void __52__HUAnnounceRecordingViewController_beginRecording___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioWaveformView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) announcementDeliveryFailureLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) errorStatusLabel];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Waveform is now shown", v7, 2u);
  }
}

- (void)stopRecordAndSend:(id)send
{
  feedbackGenerator = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [feedbackGenerator prepare];

  recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton setEnabled:0];

  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder stopRecording];
}

- (void)sendAnnouncement:(id)announcement
{
  v20[1] = *MEMORY[0x277D85DE8];
  serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
  roomIdentifier = [serviceContext roomIdentifier];

  announce = [(HUAnnounceRecordingViewController *)self announce];
  recordedAnnouncementURL = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  serviceContext2 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v10 = serviceContext2;
  if (roomIdentifier)
  {
    roomIdentifier2 = [serviceContext2 roomIdentifier];
    v12 = [v8 initWithUUIDString:roomIdentifier2];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    serviceContext3 = [(HUAnnounceRecordingViewController *)self serviceContext];
    homeIdentifier = [serviceContext3 homeIdentifier];
    v17 = [v14 initWithUUIDString:homeIdentifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke;
    v19[3] = &unk_277DBE8F8;
    v19[4] = self;
    [announce sendAnnouncement:recordedAnnouncementURL toRoomsWithIDs:v13 andZonesWithIDs:MEMORY[0x277CBEBF8] inHomeWithID:v17 completion:v19];
  }

  else
  {
    roomIdentifier2 = [serviceContext2 homeIdentifier];
    v12 = [v8 initWithUUIDString:roomIdentifier2];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke_2;
    v18[3] = &unk_277DBE8F8;
    v18[4] = self;
    [announce sendAnnouncement:recordedAnnouncementURL toHomeWithID:v12 completion:v18];
  }
}

void __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) serviceContext];
      v8 = [v7 roomIdentifier];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error sending announcement to Room with ID [%@] - [%@]", buf, 0x16u);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke_138;
  v9[3] = &unk_277DB7558;
  v9[4] = *(a1 + 32);
  v10 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) serviceContext];
      v8 = [v7 homeIdentifier];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error sending announcement to Home with ID [%@] - [%@]", buf, 0x16u);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke_140;
  v9[3] = &unk_277DB7558;
  v9[4] = *(a1 + 32);
  v10 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  view = [touch view];
  recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
  if (view == recordButton)
  {
    tapGestureRecognizer = [(HUAnnounceRecordingViewController *)self tapGestureRecognizer];
    v9 = tapGestureRecognizer != recognizerCopy;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_didTap:(id)tap
{
  tapCopy = tap;
  view = [(HUAnnounceRecordingViewController *)self view];
  [tapCopy locationOfTouch:0 inView:view];
  v7 = v6;
  v9 = v8;

  contentView = [(HUAnnounceRecordingViewController *)self contentView];
  [contentView frame];
  v12 = v11;
  contentView2 = [(HUAnnounceRecordingViewController *)self contentView];
  [contentView2 frame];
  if (v9 > v12 + v14)
  {
    v17 = 1;
  }

  else
  {
    contentView3 = [(HUAnnounceRecordingViewController *)self contentView];
    [contentView3 frame];
    v17 = v9 < v16;
  }

  contentView4 = [(HUAnnounceRecordingViewController *)self contentView];
  [contentView4 frame];
  v20 = v7 < v19;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v17 || v20) || v17)
  {
    [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:1 interruptedByUser:1];

    [(HUAnnounceRecordingViewController *)self _dismissUpRecordingView:0];
  }
}

- (void)_didPan:(id)pan
{
  panCopy = pan;
  view = [(HUAnnounceRecordingViewController *)self view];
  [panCopy translationInView:view];
  v7 = v6;

  state = [panCopy state];
  if (state == 3)
  {
    closeButtonTopConstraint = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint constant];
    v11 = v10;

    if (v11 > 176.0)
    {

      [(HUAnnounceRecordingViewController *)self _dismissDownRecordingView:0];
      return;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      contentViewTopConstraint = [(HUAnnounceRecordingViewController *)self contentViewTopConstraint];
      [contentViewTopConstraint setConstant:44.0];
    }

    closeButtonTopConstraint2 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint2 setConstant:44.0];

    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:-25.0];
    [(UILabel *)self->_dismissLabel setAlpha:0.0];
    view2 = [(HUAnnounceRecordingViewController *)self view];
    [view2 setNeedsLayout];
    goto LABEL_15;
  }

  if (v7 > 49.0)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      contentViewTopConstraint2 = [(HUAnnounceRecordingViewController *)self contentViewTopConstraint];
      [contentViewTopConstraint2 setConstant:v7];
    }

    closeButtonTopConstraint3 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint3 setConstant:v7];

    v16 = v7 + -25.0;
    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:v16];
    dismissLabel = [(HUAnnounceRecordingViewController *)self dismissLabel];
    [dismissLabel setAlpha:v16 / 176.0];

    view3 = [(HUAnnounceRecordingViewController *)self view];
    [view3 layoutIfNeeded];

    closeButtonTopConstraint4 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint4 constant];
    v21 = v20;

    if (v21 > 176.0)
    {
      view2 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
      [view2 impactOccurredWithIntensity:1.0];
LABEL_15:
    }
  }
}

- (void)_dismissUpRecordingView:(id)view
{
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke;
  v4[3] = &unk_277DB8488;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke_3;
  v3[3] = &unk_277DB8C28;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:v3 animations:0.25 completion:0.0];
}

uint64_t __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissLabel];
  [v2 setAlpha:0.0];

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [*(a1 + 32) contentViewTrailingConstraint];

  if (v6)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = [*(a1 + 32) serviceContext];
    [v9 animationOriginRect];
    v11 = v10;

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = v5 - (v11 + 8.0);
    }

    else
    {
      v12 = -(v5 - v11);
    }

    v13 = [*(a1 + 32) contentViewTrailingConstraint];
    [v13 setConstant:v12];
  }

  v14 = [*(a1 + 32) contentViewHeightConstraint];
  [v14 setConstant:0.0];

  v15 = [*(a1 + 32) contentViewWidthConstraint];
  [v15 setConstant:100.0];

  v16 = [*(a1 + 32) contentView];
  [v16 setAlpha:0.0];

  v17 = [*(a1 + 32) view];
  [v17 setAlpha:0.0];

  v18 = [*(a1 + 32) largeTitleLabel];
  [v18 setAlpha:0.0];

  v19 = [*(a1 + 32) subTitleLabel];
  [v19 setAlpha:0.0];

  v20 = [*(a1 + 32) recordButton];
  [v20 setAlpha:0.0];

  v21 = [*(a1 + 32) recordingStateChangeLabel];
  [v21 setAlpha:0.0];

  v22 = [*(a1 + 32) parentViewController];
  v23 = [v22 view];
  [v23 setAlpha:0.0];

  v24 = [*(a1 + 32) view];
  [v24 layoutIfNeeded];
}

void __61__HUAnnounceRecordingViewController__dismissUpRecordingView___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) serviceContext];
    v2 = [v3 remoteViewControllerProxy];
    [v2 invalidate];
  }
}

- (void)_dismissDownRecordingView:(id)view
{
  [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:1 interruptedByUser:1];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke;
  v5[3] = &unk_277DB8488;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_3;
  v4[3] = &unk_277DB8C28;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:v4 animations:0.5 completion:0.0];
}

uint64_t __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = [*(a1 + 32) view];
    [v4 bounds];
    v6 = v5;
    v7 = [*(a1 + 32) contentViewTopConstraint];
    [v7 setConstant:v6];
  }

  v8 = [*(a1 + 32) view];
  [v8 bounds];
  v10 = v9;
  v11 = [*(a1 + 32) closeButtonTopConstraint];
  [v11 setConstant:v10];

  v12 = [*(a1 + 32) dismissLabel];
  [v12 setAlpha:0.0];

  v13 = [*(a1 + 32) view];
  [v13 layoutIfNeeded];
}

uint64_t __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) contentView];
    [v3 setAlpha:0.0];

    v4 = [*(v2 + 32) closeButton];
    [v4 setAlpha:0.0];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_4;
    v6[3] = &unk_277DB8488;
    v7 = *(v2 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_6;
    v5[3] = &unk_277DB8C28;
    v5[4] = v7;
    return [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.25];
  }

  return result;
}

uint64_t __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_5;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

void __63__HUAnnounceRecordingViewController__dismissDownRecordingView___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceContext];
  v1 = [v2 remoteViewControllerProxy];
  [v1 invalidate];
}

- (id)_fontForTimeCodeLabel
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:0x8000 options:0];
  v3 = *MEMORY[0x277D74388];
  v12[0] = *MEMORY[0x277D74398];
  v12[1] = v3;
  v13[0] = &unk_282491910;
  v13[1] = &unk_282491928;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v10 = *MEMORY[0x277D74338];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v2 fontDescriptorByAddingAttributes:v6];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (id)_stringForDuration:(double)duration
{
  if (qword_27C837F30 != -1)
  {
    dispatch_once(&qword_27C837F30, &__block_literal_global_134);
  }

  v4 = _MergedGlobals_3_5;

  return [v4 stringFromTimeInterval:duration];
}

uint64_t __56__HUAnnounceRecordingViewController__stringForDuration___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _MergedGlobals_3_5;
  _MergedGlobals_3_5 = v0;

  [_MergedGlobals_3_5 setUnitsStyle:0];
  [_MergedGlobals_3_5 setZeroFormattingBehavior:0x10000];
  v2 = _MergedGlobals_3_5;

  return [v2 setAllowedUnits:192];
}

- (void)_restoreRecordingUI
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    recordingStateChangeLabel = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v4 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
    [recordingStateChangeLabel setText:v4];

    recordingStateChangeLabel2 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    [recordingStateChangeLabel2 setAlpha:1.0];

    audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [audioWaveformView setAlpha:0.0];

    view = [(HUAnnounceRecordingViewController *)self view];
    [view layoutIfNeeded];

    recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton setEnabled:1];

    recordButton2 = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton2 stopRecording];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HUAnnounceRecordingViewController__restoreRecordingUI__block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (BOOL)_areAllHomePodsOffline
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(HUAnnounceRecordingViewController *)self _isRoomContext])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Checking reachability for context Room", &v17, 2u);
    }

    currentHome = [(HUAnnounceRecordingViewController *)self currentHome];
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
    roomIdentifier = [serviceContext roomIdentifier];
    v8 = [v5 initWithUUIDString:roomIdentifier];
    v9 = [currentHome hf_roomWithIdentifier:v8];

    v10 = [v9 hf_hasAtLeastOneReachableHomeMediaAccessory] ^ 1;
  }

  else if ([(HUAnnounceRecordingViewController *)self _isHomeContext])
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Checking reachability for context Home", &v17, 2u);
    }

    currentHome2 = [(HUAnnounceRecordingViewController *)self currentHome];
    hf_hasAtLeastOneReachableHomeMediaAccessory = [currentHome2 hf_hasAtLeastOneReachableHomeMediaAccessory];

    v10 = hf_hasAtLeastOneReachableHomeMediaAccessory ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (v10)
    {
      v15 = @"YES";
    }

    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "allHomePodsAreOffline = [%@]", &v17, 0xCu);
  }

  return v10;
}

- (void)_updateUIBasedOnReachabilityStatus
{
  _areAllHomePodsOffline = [(HUAnnounceRecordingViewController *)self _areAllHomePodsOffline];
  recordedAnnouncementURL = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];

  if (_areAllHomePodsOffline)
  {
    if (recordedAnnouncementURL)
    {
      goto LABEL_7;
    }

    recordingStateChangeLabel = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v6 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
    [recordingStateChangeLabel setText:v6];

    recordingStateChangeLabel2 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v8 = 1.0;
    [recordingStateChangeLabel2 setAlpha:1.0];

    recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton setEnabled:0];

    recordButton2 = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton2 stopRecording];

    errorStatusLabel = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
    v12 = _HULocalizedStringWithDefaultValue(@"HUAnnounceHomePodsUnavailable_Error_Message", @"HUAnnounceHomePodsUnavailable_Error_Message", 1);
    [errorStatusLabel setText:v12];
  }

  else
  {
    if (recordedAnnouncementURL)
    {
      goto LABEL_7;
    }

    errorStatusLabel = [(HUAnnounceRecordingViewController *)self recordButton];
    [errorStatusLabel setEnabled:1];
    v8 = 0.0;
  }

  errorStatusLabel2 = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
  [errorStatusLabel2 setAlpha:v8];

LABEL_7:
  view = [(HUAnnounceRecordingViewController *)self view];
  [view layoutIfNeeded];
}

- (BOOL)_isRoomContext
{
  serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
  roomIdentifier = [serviceContext roomIdentifier];
  if (roomIdentifier)
  {
    serviceContext2 = [(HUAnnounceRecordingViewController *)self serviceContext];
    homeIdentifier = [serviceContext2 homeIdentifier];
    v7 = homeIdentifier != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHomeContext
{
  serviceContext = [(HUAnnounceRecordingViewController *)self serviceContext];
  roomIdentifier = [serviceContext roomIdentifier];
  if (roomIdentifier)
  {
    v5 = 0;
  }

  else
  {
    serviceContext2 = [(HUAnnounceRecordingViewController *)self serviceContext];
    homeIdentifier = [serviceContext2 homeIdentifier];
    v5 = homeIdentifier != 0;
  }

  return v5;
}

- (void)_deleteRecording:(id)recording
{
  [(HUAnnounceRecordingViewController *)self _deleteAudioFile];
  audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [audioWaveformView clearPowerLevels];

  [(HUAnnounceRecordingViewController *)self _hideRecordingUI];
}

- (void)_deleteAudioFile
{
  v16 = *MEMORY[0x277D85DE8];
  recordedAnnouncementURL = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
  if (recordedAnnouncementURL)
  {
    v4 = recordedAnnouncementURL;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    recordedAnnouncementURL2 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
    path = [recordedAnnouncementURL2 path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      recordedAnnouncementURL3 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
      v13 = 0;
      [defaultManager2 removeItemAtURL:recordedAnnouncementURL3 error:&v13];
      v11 = v13;

      if (v11)
      {
        v12 = HFLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v11;
          _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Error deleting audio file [%@]", buf, 0xCu);
        }
      }
    }
  }

  [(HUAnnounceRecordingViewController *)self setRecordedAnnouncementURL:0];
}

- (void)_hideRecordingUI
{
  recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton stopRecording];

  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__HUAnnounceRecordingViewController__hideRecordingUI__block_invoke;
  v5[3] = &unk_277DB8488;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HUAnnounceRecordingViewController__hideRecordingUI__block_invoke_2;
  v4[3] = &unk_277DB8C28;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.25];
}

void __53__HUAnnounceRecordingViewController__hideRecordingUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingStateChangeLabel];
  v3 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
  [v2 setText:v3];

  v4 = [*(a1 + 32) recordingStateChangeLabel];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) audioWaveformView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) recordButton];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

void __53__HUAnnounceRecordingViewController__hideRecordingUI__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) recordButton];
  [v2 setEnabled:1];

  [*(a1 + 32) setAudioRecorder:0];
  v3 = [*(a1 + 32) recordButton];
  [v3 removeTarget:*(a1 + 32) action:sel_stopRecordAndSend_ forControlEvents:64];

  v4 = [*(a1 + 32) recordButton];
  [v4 addTarget:*(a1 + 32) action:sel_beginRecording_ forControlEvents:64];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

- (id)_waveformColor
{
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  traitCollection = [(HUAnnounceRecordingViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];

    systemBlackColor = systemWhiteColor;
  }

  return systemBlackColor;
}

- (id)_contentViewBackgroundColor
{
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  traitCollection = [(HUAnnounceRecordingViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];

    systemWhiteColor = systemBlackColor;
  }

  return systemWhiteColor;
}

- (void)_dismissViewOrDisplayError:(id)error
{
  if (error)
  {
    audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [audioWaveformView setAlpha:0.0];

    announcementDeliveryFailureLabel = [(HUAnnounceRecordingViewController *)self announcementDeliveryFailureLabel];
    [announcementDeliveryFailureLabel setAlpha:1.0];

    errorStatusLabel = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
    [errorStatusLabel setAlpha:0.0];

    recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
    [recordButton setEnabled:1];
  }

  else
  {

    [(HUAnnounceRecordingViewController *)self _dismissUpRecordingView:?];
  }
}

- (void)didUpdateAveragePower:(float)power
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnnounceRecordingViewController.m" lineNumber:819 description:@"didUpdateAveragePower called from secondary thread"];
  }

  audioWaveformView = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [audioWaveformView appendPowerLevel:power];
}

- (void)audioRecorderDidStartRecording:(id)recording
{
  feedbackGenerator = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [feedbackGenerator impactOccurredWithIntensity:1.0];

  recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton setEnabled:1];

  recordingStateChangeLabel = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
  [recordingStateChangeLabel setEnabled:1];

  recordButton2 = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton2 removeTarget:self action:sel_beginRecording_ forControlEvents:64];

  recordButton3 = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton3 addTarget:self action:sel_stopRecordAndSend_ forControlEvents:64];
}

- (void)audioRecorderFailedToFinishRecording:(id)recording
{
  [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:0 interruptedByUser:0];

  [(HUAnnounceRecordingViewController *)self _restoreRecordingUI];
}

- (void)audioRecorderFinishedRecording:(id)recording audioFile:(id)file
{
  recordingCopy = recording;
  fileCopy = file;
  [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:1 interruptedByUser:0];
  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder currentRecordedDuration];
  if (v9 <= 0.5)
  {

    goto LABEL_6;
  }

  recordingStopSource = [recordingCopy recordingStopSource];

  if (recordingStopSource)
  {
LABEL_6:
    [(HUAnnounceRecordingViewController *)self _deleteRecording:0];
    goto LABEL_7;
  }

  feedbackGenerator = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [feedbackGenerator impactOccurredWithIntensity:1.0];

  [(HUAnnounceRecordingViewController *)self setRecordedAnnouncementURL:fileCopy];
  recordingStateChangeLabel = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
  v13 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
  [recordingStateChangeLabel setText:v13];

  recordButton = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton stopRecording];

  recordButton2 = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton2 removeTarget:self action:sel_stopRecordAndSend_ forControlEvents:64];

  recordButton3 = [(HUAnnounceRecordingViewController *)self recordButton];
  [recordButton3 addTarget:self action:sel_beginRecording_ forControlEvents:64];

  [(HUAnnounceRecordingViewController *)self sendAnnouncement:0];
  audioRecorder2 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder2 currentRecordedDuration];
  v19 = v18;

  if (v19 >= 60.0)
  {
    v20 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__HUAnnounceRecordingViewController_audioRecorderFinishedRecording_audioFile___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_after(v20, MEMORY[0x277D85CD0], block);
  }

LABEL_7:
}

void __78__HUAnnounceRecordingViewController_audioRecorderFinishedRecording_audioFile___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) recordButton];
  [v1 setEnabled:1];
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  if ([reachability hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)transports
{
  if ([transports hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  if ([controllable hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)_submitAnalyticsForAnnounceRecordingCompletdSuccessfully:(BOOL)successfully interruptedByUser:(BOOL)user
{
  userCopy = user;
  successfullyCopy = successfully;
  audioRecorder = [(HUAnnounceRecordingViewController *)self audioRecorder];
  recordingStopSource = [audioRecorder recordingStopSource];

  audioRecorder2 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [audioRecorder2 currentRecordedDuration];
  v11 = v10;

  v25 = objc_opt_new();
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v25 setObject:v12 forKey:*MEMORY[0x277D13428]];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:!successfullyCopy];
  [v25 setObject:v13 forKey:*MEMORY[0x277D13430]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUAnnounceRecordingViewController _isHomeContext](self, "_isHomeContext")}];
  [v25 setObject:v14 forKey:*MEMORY[0x277D13438]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUAnnounceRecordingViewController _isRoomContext](self, "_isRoomContext")}];
  [v25 setObject:v15 forKey:*MEMORY[0x277D13440]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:userCopy];
  [v25 setObject:v16 forKey:*MEMORY[0x277D13458]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:(recordingStopSource - 1) < 2];
  [v25 setObject:v17 forKey:*MEMORY[0x277D13450]];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:recordingStopSource == 3];
  [v25 setObject:v18 forKey:*MEMORY[0x277D13448]];

  audioRecorder3 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  routeChangeReason = [audioRecorder3 routeChangeReason];

  if (routeChangeReason)
  {
    audioRecorder4 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    routeChangeReason2 = [audioRecorder4 routeChangeReason];
    [v25 setObject:routeChangeReason2 forKey:*MEMORY[0x277D13690]];
  }

  v23 = MEMORY[0x277D143D8];
  v24 = [v25 copy];
  [v23 sendEvent:18 withData:v24];
}

@end