@interface HUDropInViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (HUDropInViewController)initWithServiceContext:(id)context blurEffectStyle:(int64_t)style;
- (UIButton)doneButton;
- (UIButton)talkButton;
- (id)_contentViewBackgroundColor;
- (id)_displayedAccessoryName;
- (id)_waveformColor;
- (id)hu_preloadContent;
- (void)_cancelStartSessionRequestTimerIfNeeded;
- (void)_cleanUp;
- (void)_didPan:(id)pan;
- (void)_didTap:(id)tap;
- (void)_dismissDownRecordingView:(id)view;
- (void)_dismissRecordingUIWithError:(id)error;
- (void)_dismissUpRecordingView:(id)view;
- (void)_endDropInSession;
- (void)_hideSpinner;
- (void)_launchDropInSessionIfNeeded;
- (void)_preloadContent:(id)content;
- (void)_refreshHomeGraph:(id)graph;
- (void)_showSpinner;
- (void)_toggleMicrophone:(id)microphone;
- (void)_updateRecordingUIWithConnectedState;
- (void)_updateRecordingUIWithDefaultState;
- (void)_updateRecordingUIWithMicrophoneOff;
- (void)_updateRecordingUIWithMicrophoneOn;
- (void)controller:(id)controller didUpdateAudioPowerForDropInDevice:(float)device;
- (void)dealloc;
- (void)device:(id)device didUpdateState:(int64_t)state;
- (void)manager:(id)manager didAddDevice:(id)device;
- (void)manager:(id)manager didUpdateActiveSession:(id)session;
- (void)managerDidUpdateDevices:(id)devices;
- (void)serverDisconnectedForDropInCenter:(id)center;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateState:(unint64_t)state reason:(unint64_t)reason;
- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status;
- (void)streamControllerStateDidUpdate:(id)update;
- (void)subscriber:(id)subscriber didUpdateBulletins:(id)bulletins;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUDropInViewController

- (HUDropInViewController)initWithServiceContext:(id)context blurEffectStyle:(int64_t)style
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HUDropInViewController;
  v8 = [(HUDropInViewController *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:style];
    blurEffect = v8->_blurEffect;
    v8->_blurEffect = v9;

    objc_storeStrong(&v8->_serviceContext, context);
  }

  return v8;
}

- (void)viewDidLoad
{
  v377[1] = *MEMORY[0x277D85DE8];
  v374.receiver = self;
  v374.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v374 viewDidLoad];
  currentHome = [(HUDropInViewController *)self currentHome];
  if (!currentHome || (v4 = currentHome, [(HUDropInViewController *)self currentAccessory], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:87];
    [(HUDropInViewController *)self _dismissRecordingUIWithError:v6];
  }

  v7 = objc_alloc_init(MEMORY[0x277D755F0]);
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v7;

  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v9;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  view = [(HUDropInViewController *)self view];
  [view addGestureRecognizer:self->_tapGestureRecognizer];

  view2 = [(HUDropInViewController *)self view];
  [view2 setAlpha:0.0];

  v13 = MEMORY[0x277D75D00];
  blurEffect = [(HUDropInViewController *)self blurEffect];
  v15 = [v13 effectForBlurEffect:blurEffect style:1];

  v16 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v15];
  dismissLabelVisualEffectView = self->_dismissLabelVisualEffectView;
  self->_dismissLabelVisualEffectView = v16;

  view3 = [(HUDropInViewController *)self view];
  [view3 naui_addAutoLayoutSubview:self->_dismissLabelVisualEffectView];

  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  dismissLabel = self->_dismissLabel;
  self->_dismissLabel = v19;

  v367 = *MEMORY[0x277D76918];
  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
  [(UILabel *)self->_dismissLabel setFont:v21];

  [(UILabel *)self->_dismissLabel setTextAlignment:1];
  v22 = self->_dismissLabel;
  v23 = _HULocalizedStringWithDefaultValue(@"HUDropInDismissLabel_Title", @"HUDropInDismissLabel_Title", 1);
  [(UILabel *)v22 setText:v23];

  v24 = self->_dismissLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v24 setTextColor:whiteColor];

  [(UILabel *)self->_dismissLabel setAlpha:0.0];
  contentView = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView contentView];
  [contentView naui_addAutoLayoutSubview:self->_dismissLabel];

  text = [(UILabel *)self->_dismissLabel text];
  view4 = [(HUDropInViewController *)self view];
  [view4 bounds];
  v30 = v29;
  v376 = *MEMORY[0x277D740A8];
  font = [(UILabel *)self->_dismissLabel font];
  v377[0] = font;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v377 forKeys:&v376 count:1];
  [text boundingRectWithSize:1 options:v32 attributes:0 context:{v30, 3.40282347e38}];
  v366 = v33;

  v34 = MEMORY[0x277D75D00];
  v35 = [MEMORY[0x277D75210] effectWithStyle:4];
  v36 = [v34 effectForBlurEffect:v35 style:1];

  v370 = v36;
  v37 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v36];
  closeButtonVisualEffectView = self->_closeButtonVisualEffectView;
  self->_closeButtonVisualEffectView = v37;

  view5 = [(HUDropInViewController *)self view];
  [view5 naui_addAutoLayoutSubview:self->_closeButtonVisualEffectView];

  v40 = [MEMORY[0x277D75220] buttonWithType:1];
  closeButton = self->_closeButton;
  self->_closeButton = v40;

  [(UIButton *)self->_closeButton addTarget:self action:sel__dismissDownRecordingView_ forControlEvents:64];
  v42 = self->_closeButton;
  hu_closeButtonImage = [MEMORY[0x277D755B8] hu_closeButtonImage];
  [(UIButton *)v42 setImage:hu_closeButtonImage forState:0];

  contentView2 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView contentView];
  [contentView2 naui_addAutoLayoutSubview:self->_closeButton];

  v45 = objc_alloc(MEMORY[0x277D75D18]);
  v46 = *MEMORY[0x277CBF3A0];
  v47 = *(MEMORY[0x277CBF3A0] + 8);
  v48 = *(MEMORY[0x277CBF3A0] + 16);
  v49 = *(MEMORY[0x277CBF3A0] + 24);
  v50 = [v45 initWithFrame:{*MEMORY[0x277CBF3A0], v47, v48, v49}];
  contentView = self->_contentView;
  self->_contentView = v50;

  v52 = self->_contentView;
  _contentViewBackgroundColor = [(HUDropInViewController *)self _contentViewBackgroundColor];
  [(UIView *)v52 setBackgroundColor:_contentViewBackgroundColor];

  [(UIView *)self->_contentView _setContinuousCornerRadius:16.0];
  [(UIView *)self->_contentView setAlpha:0.0];
  view6 = [(HUDropInViewController *)self view];
  [view6 naui_addAutoLayoutSubview:self->_contentView];

  v55 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v46, v47, v48, v49}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v55;

  [(UIImageView *)self->_iconImageView setContentMode:4];
  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_iconImageView];
  v57 = [objc_alloc(MEMORY[0x277D180D0]) initWithFrame:1 contentMode:{v46, v47, v48, v49}];
  iconView = self->_iconView;
  self->_iconView = v57;

  [(HUIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = MEMORY[0x277D755D0];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v375[0] = systemWhiteColor;
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v375[1] = systemRedColor;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:2];
  v63 = [v59 configurationWithPaletteColors:v62];

  v64 = self->_iconView;
  v369 = v63;
  v65 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"waveform.badge.magnifyingglass.circle.fill" configuration:v63];
  [(HUIconView *)v64 updateWithIconDescriptor:v65 displayStyle:1 animated:0];

  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_iconView];
  v66 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v46, v47, v48, v49}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v66;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_titleLabel];
  v68 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{v46, v47, v48, v49}];
  descriptionTextView = self->_descriptionTextView;
  self->_descriptionTextView = v68;

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UITextView *)self->_descriptionTextView setTextColor:systemGrayColor];

  [(UITextView *)self->_descriptionTextView setScrollEnabled:0];
  [(UITextView *)self->_descriptionTextView setEditable:0];
  textContainer = [(UITextView *)self->_descriptionTextView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v72 = *MEMORY[0x277D768C8];
  v73 = *(MEMORY[0x277D768C8] + 8);
  v75 = *(MEMORY[0x277D768C8] + 16);
  v74 = *(MEMORY[0x277D768C8] + 24);
  [(UITextView *)self->_descriptionTextView setTextContainerInset:*MEMORY[0x277D768C8], v73, v75, v74];
  [(UITextView *)self->_descriptionTextView setContentInset:v72, v73, v75, v74];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_descriptionTextView setBackgroundColor:clearColor];

  [(UITextView *)self->_descriptionTextView setDataDetectorTypes:2];
  [(UITextView *)self->_descriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_descriptionTextView setAdjustsFontForContentSizeCategory:1];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_descriptionTextView];
  v77 = [MEMORY[0x277D180C8] preferredFontForTextStyle:v367 traits:32770];
  titleLabel = [(HUDropInViewController *)self titleLabel];
  [titleLabel setFont:v77];

  titleLabel2 = [(HUDropInViewController *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(HUDropInViewController *)self titleLabel];
  [titleLabel3 sizeToFit];

  v81 = *MEMORY[0x277D769C0];
  v82 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769C0] traits:0x8000];
  descriptionTextView = [(HUDropInViewController *)self descriptionTextView];
  [descriptionTextView setFont:v82];

  descriptionTextView2 = [(HUDropInViewController *)self descriptionTextView];
  textContainer2 = [descriptionTextView2 textContainer];
  [textContainer2 setMaximumNumberOfLines:0];

  descriptionTextView3 = [(HUDropInViewController *)self descriptionTextView];
  [descriptionTextView3 sizeToFit];

  v368 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__didPan_];
  [(UIView *)self->_contentView addGestureRecognizer:?];
  v87 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v87;

  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_spinner];
  v89 = objc_alloc_init(MEMORY[0x277D756B8]);
  spinnerLabel = self->_spinnerLabel;
  self->_spinnerLabel = v89;

  v91 = [MEMORY[0x277D74300] preferredFontForTextStyle:v81];
  [(UILabel *)self->_spinnerLabel setFont:v91];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_spinnerLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_spinnerLabel setTextAlignment:1];
  [(UILabel *)self->_spinnerLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_spinnerLabel];
  v93 = [HUWaveformView alloc];
  _waveformColor = [(HUDropInViewController *)self _waveformColor];
  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  v96 = [(HUWaveformView *)v93 initWithFrame:_waveformColor waveformColor:systemGrayColor2 backgroundColor:v46, v47, v48, v49];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v96;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_audioWaveformView];
  talkButton = [(HUDropInViewController *)self talkButton];
  [talkButton setAlpha:0.0];

  talkButton2 = [(HUDropInViewController *)self talkButton];
  [talkButton2 setIsAccessibilityElement:1];

  talkButton3 = [(HUDropInViewController *)self talkButton];
  [talkButton3 addTarget:self action:sel__toggleMicrophone_ forControlEvents:64];

  v101 = self->_contentView;
  talkButton4 = [(HUDropInViewController *)self talkButton];
  [(UIView *)v101 naui_addAutoLayoutSubview:talkButton4];

  doneButton = [(HUDropInViewController *)self doneButton];
  [doneButton setAlpha:0.0];

  doneButton2 = [(HUDropInViewController *)self doneButton];
  [doneButton2 setIsAccessibilityElement:1];

  doneButton3 = [(HUDropInViewController *)self doneButton];
  [doneButton3 addTarget:self action:sel__toggleMicrophone_ forControlEvents:64];

  v106 = self->_contentView;
  doneButton4 = [(HUDropInViewController *)self doneButton];
  [(UIView *)v106 naui_addAutoLayoutSubview:doneButton4];

  nearbyCameraProfile = [(HUDropInViewController *)self nearbyCameraProfile];

  if (nearbyCameraProfile)
  {
    liveStreamController = [(HUDropInViewController *)self liveStreamController];
    view7 = [liveStreamController view];
    liveCameraView = self->_liveCameraView;
    self->_liveCameraView = view7;

    [(UIView *)self->_liveCameraView _setContinuousCornerRadius:14.0];
    [(UIView *)self->_liveCameraView setClipsToBounds:1];
    [(UIView *)self->_liveCameraView setAlpha:0.0];
    [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_liveCameraView];
    v112 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    nearbyCameraProfile2 = [(HUDropInViewController *)self nearbyCameraProfile];
    streamControl = [nearbyCameraProfile2 streamControl];
    v115 = 0;
    if ([streamControl streamState] == 2)
    {
      v115 = _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
    }

    v116 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v117 = [v116 monospacedDigitSystemFontOfSize:? weight:?];
    v118 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769D0]];
    v119 = [v118 scaledFontForFont:v117];

    v120 = [HULegibilityLabel alloc];
    v121 = [(HULegibilityLabel *)v120 initWithSettings:v112 strength:v115 text:v119 font:*MEMORY[0x277D77500] options:*MEMORY[0x277D774E0]];
    descriptionLabel = self->_descriptionLabel;
    self->_descriptionLabel = v121;

    [(HULegibilityLabel *)self->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(HULegibilityLabel *)self->_descriptionLabel setTextAlignment:4];
    [(HULegibilityLabel *)self->_descriptionLabel setLineBreakMode:4];
    [(HULegibilityLabel *)self->_descriptionLabel setUserInteractionEnabled:0];
    [(HULegibilityLabel *)self->_descriptionLabel setAlpha:0.0];
    [(HULegibilityLabel *)self->_descriptionLabel setMaximumContentSizeCategory:*MEMORY[0x277D76818]];
    LODWORD(v123) = 1144766464;
    [(HULegibilityLabel *)self->_descriptionLabel setContentCompressionResistancePriority:0 forAxis:v123];
    LODWORD(v124) = 1132134400;
    [(HULegibilityLabel *)self->_descriptionLabel setContentHuggingPriority:0 forAxis:v124];
    [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_descriptionLabel];
  }

  v125 = objc_opt_new();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v128 = self->_dismissLabelVisualEffectView;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    centerXAnchor = [(UIVisualEffectView *)v128 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
    safeAreaLayoutGuide = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v125 addObject:safeAreaLayoutGuide];
  }

  else
  {
    centerXAnchor = [(UIVisualEffectView *)v128 leadingAnchor];
    centerXAnchor2 = [(HUDropInViewController *)self view];
    safeAreaLayoutGuide = [centerXAnchor2 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
    v133 = [centerXAnchor constraintEqualToAnchor:leadingAnchor];
    [v125 addObject:v133];
  }

  trailingAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  view8 = [(HUDropInViewController *)self view];
  safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v138 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v125 addObject:v138];

  topAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  view9 = [(HUDropInViewController *)self view];
  safeAreaLayoutGuide3 = [view9 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v143 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-25.0];
  dismissLabelTopConstraint = self->_dismissLabelTopConstraint;
  self->_dismissLabelTopConstraint = v143;

  [v125 addObject:self->_dismissLabelTopConstraint];
  heightAnchor = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v146 = [heightAnchor constraintEqualToConstant:v366];
  [v125 addObject:v146];

  leadingAnchor2 = [(UILabel *)self->_dismissLabel leadingAnchor];
  leadingAnchor3 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView leadingAnchor];
  v149 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  [v125 addObject:v149];

  trailingAnchor3 = [(UILabel *)self->_dismissLabel trailingAnchor];
  trailingAnchor4 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v152 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v125 addObject:v152];

  topAnchor3 = [(UILabel *)self->_dismissLabel topAnchor];
  topAnchor4 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v155 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v125 addObject:v155];

  heightAnchor2 = [(UILabel *)self->_dismissLabel heightAnchor];
  heightAnchor3 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v158 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v125 addObject:v158];

  topAnchor5 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView topAnchor];
  view10 = [(HUDropInViewController *)self view];
  topAnchor6 = [view10 topAnchor];
  v162 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:30.0];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v162;

  [v125 addObject:self->_closeButtonTopConstraint];
  trailingAnchor5 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView trailingAnchor];
  view11 = [(HUDropInViewController *)self view];
  safeAreaLayoutGuide4 = [view11 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide4 trailingAnchor];
  v168 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  [v125 addObject:v168];

  heightAnchor4 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v170 = [heightAnchor4 constraintEqualToConstant:30.0];
  [v125 addObject:v170];

  widthAnchor = [(UIVisualEffectView *)self->_closeButtonVisualEffectView widthAnchor];
  heightAnchor5 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v173 = [widthAnchor constraintEqualToAnchor:heightAnchor5];
  [v125 addObject:v173];

  topAnchor7 = [(UIButton *)self->_closeButton topAnchor];
  topAnchor8 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView topAnchor];
  v176 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v125 addObject:v176];

  trailingAnchor7 = [(UIButton *)self->_closeButton trailingAnchor];
  trailingAnchor8 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView trailingAnchor];
  v179 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v125 addObject:v179];

  heightAnchor6 = [(UIButton *)self->_closeButton heightAnchor];
  heightAnchor7 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v182 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
  [v125 addObject:v182];

  widthAnchor2 = [(UIButton *)self->_closeButton widthAnchor];
  heightAnchor8 = [(UIButton *)self->_closeButton heightAnchor];
  v185 = [widthAnchor2 constraintEqualToAnchor:heightAnchor8];
  [v125 addObject:v185];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v188 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
  topAnchor9 = [(UIView *)self->_contentView topAnchor];
  if (v188 == 1)
  {
    view12 = [(HUDropInViewController *)self view];
    topAnchor10 = [view12 topAnchor];
    v192 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:30.0];
    contentViewTopConstraint = self->_contentViewTopConstraint;
    self->_contentViewTopConstraint = v192;

    [v125 addObject:self->_contentViewTopConstraint];
    trailingAnchor9 = [(UIView *)self->_contentView trailingAnchor];
    leadingAnchor4 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView leadingAnchor];
    safeAreaLayoutGuide5 = [trailingAnchor9 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
    [v125 addObject:safeAreaLayoutGuide5];
  }

  else
  {
    bottomAnchor = [(UIVisualEffectView *)self->_closeButtonVisualEffectView bottomAnchor];
    v198 = [topAnchor9 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v125 addObject:v198];

    trailingAnchor9 = [(UIView *)self->_contentView trailingAnchor];
    leadingAnchor4 = [(HUDropInViewController *)self view];
    safeAreaLayoutGuide5 = [leadingAnchor4 safeAreaLayoutGuide];
    trailingAnchor10 = [safeAreaLayoutGuide5 trailingAnchor];
    v200 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-10.0];
    [v125 addObject:v200];
  }

  widthAnchor3 = [(UIView *)self->_contentView widthAnchor];
  v202 = [widthAnchor3 constraintEqualToConstant:100.0];
  contentViewWidthConstraint = self->_contentViewWidthConstraint;
  self->_contentViewWidthConstraint = v202;

  [v125 addObject:self->_contentViewWidthConstraint];
  heightAnchor9 = [(UIView *)self->_contentView heightAnchor];
  v205 = 0.0;
  v206 = [heightAnchor9 constraintEqualToConstant:0.0];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v206;

  [v125 addObject:self->_contentViewHeightConstraint];
  view13 = [(HUDropInViewController *)self view];
  [view13 frame];
  v211 = HUViewSizeSubclassForViewSize(v209, v210);

  v212 = [HUGridBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:HUCellSizeSubclassForViewSizeSubclass(v211)];
  iconView = [(HUDropInViewController *)self iconView];
  leadingAnchor5 = [iconView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_contentView leadingAnchor];
  [v212 leadingInset];
  v216 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  [v125 addObject:v216];

  iconImageView = [(HUDropInViewController *)self iconImageView];
  leadingAnchor7 = [iconImageView leadingAnchor];
  iconView2 = [(HUDropInViewController *)self iconView];
  leadingAnchor8 = [iconView2 leadingAnchor];
  v221 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v125 addObject:v221];

  iconView3 = [(HUDropInViewController *)self iconView];
  topAnchor11 = [iconView3 topAnchor];
  topAnchor12 = [(UIView *)self->_contentView topAnchor];
  [v212 titleTopInset];
  v225 = [topAnchor11 constraintEqualToAnchor:topAnchor12 constant:?];
  [v125 addObject:v225];

  iconImageView2 = [(HUDropInViewController *)self iconImageView];
  topAnchor13 = [iconImageView2 topAnchor];
  iconView4 = [(HUDropInViewController *)self iconView];
  topAnchor14 = [iconView4 topAnchor];
  v230 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  [v125 addObject:v230];

  iconView5 = [(HUDropInViewController *)self iconView];
  heightAnchor10 = [iconView5 heightAnchor];
  [v212 iconHeight];
  v233 = [heightAnchor10 constraintEqualToConstant:?];
  [v125 addObject:v233];

  iconImageView3 = [(HUDropInViewController *)self iconImageView];
  heightAnchor11 = [iconImageView3 heightAnchor];
  iconImageView4 = [(HUDropInViewController *)self iconImageView];
  image = [iconImageView4 image];
  if (image)
  {
    [v212 iconHeight];
    v205 = v238;
  }

  v239 = [heightAnchor11 constraintEqualToConstant:v205];
  [v125 addObject:v239];

  iconView6 = [(HUDropInViewController *)self iconView];
  widthAnchor4 = [iconView6 widthAnchor];
  iconView7 = [(HUDropInViewController *)self iconView];
  heightAnchor12 = [iconView7 heightAnchor];
  v244 = [widthAnchor4 constraintEqualToAnchor:heightAnchor12];
  [v125 addObject:v244];

  iconImageView5 = [(HUDropInViewController *)self iconImageView];
  widthAnchor5 = [iconImageView5 widthAnchor];
  iconImageView6 = [(HUDropInViewController *)self iconImageView];
  heightAnchor13 = [iconImageView6 heightAnchor];
  v249 = [widthAnchor5 constraintEqualToAnchor:heightAnchor13];
  [v125 addObject:v249];

  traitCollection = [(HUDropInViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v252 = *MEMORY[0x277D767F8];

  titleLabel4 = [(HUDropInViewController *)self titleLabel];
  topAnchor15 = [titleLabel4 topAnchor];
  if (preferredContentSizeCategory >= v252)
  {
    iconView8 = [(HUDropInViewController *)self iconView];
    bottomAnchor2 = [iconView8 bottomAnchor];
    [v212 verticalSpacingForLipElements];
    v264 = [topAnchor15 constraintEqualToAnchor:bottomAnchor2 constant:?];
    [v125 addObject:v264];

    titleLabel5 = [(HUDropInViewController *)self titleLabel];
    leadingAnchor9 = [titleLabel5 leadingAnchor];
    leadingAnchor10 = [(UIView *)self->_contentView leadingAnchor];
    [v212 leadingInset];
    trailingAnchor11 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:?];
    [v125 addObject:trailingAnchor11];
  }

  else
  {
    topAnchor16 = [(UIView *)self->_contentView topAnchor];
    [v212 titleTopInset];
    v256 = [topAnchor15 constraintEqualToAnchor:topAnchor16 constant:?];
    [v125 addObject:v256];

    titleLabel5 = [(HUDropInViewController *)self titleLabel];
    leadingAnchor9 = [titleLabel5 leadingAnchor];
    leadingAnchor10 = [(HUDropInViewController *)self iconView];
    trailingAnchor11 = [leadingAnchor10 trailingAnchor];
    [v212 horizontalItemSpacing];
    v261 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor11 constant:?];
    [v125 addObject:v261];
  }

  titleLabel6 = [(HUDropInViewController *)self titleLabel];
  trailingAnchor12 = [titleLabel6 trailingAnchor];
  trailingAnchor13 = [(UIView *)self->_contentView trailingAnchor];
  [v212 trailingInset];
  v269 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:-v268];
  [v125 addObject:v269];

  descriptionTextView4 = [(HUDropInViewController *)self descriptionTextView];
  topAnchor17 = [descriptionTextView4 topAnchor];
  titleLabel7 = [(HUDropInViewController *)self titleLabel];
  bottomAnchor3 = [titleLabel7 bottomAnchor];
  [v212 verticalLabelSpacing];
  v274 = [topAnchor17 constraintEqualToAnchor:bottomAnchor3 constant:?];
  [v125 addObject:v274];

  traitCollection2 = [(HUDropInViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

  descriptionTextView5 = [(HUDropInViewController *)self descriptionTextView];
  leadingAnchor11 = [descriptionTextView5 leadingAnchor];
  if (preferredContentSizeCategory2 >= v252)
  {
    leadingAnchor12 = [(UIView *)self->_contentView leadingAnchor];
    [v212 leadingInset];
    trailingAnchor14 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:?];
    [v125 addObject:trailingAnchor14];
  }

  else
  {
    leadingAnchor12 = [(HUDropInViewController *)self iconView];
    trailingAnchor14 = [leadingAnchor12 trailingAnchor];
    [v212 horizontalItemSpacing];
    v281 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor14 constant:?];
    [v125 addObject:v281];
  }

  descriptionTextView6 = [(HUDropInViewController *)self descriptionTextView];
  trailingAnchor15 = [descriptionTextView6 trailingAnchor];
  trailingAnchor16 = [(UIView *)self->_contentView trailingAnchor];
  [v212 trailingInset];
  v286 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16 constant:-v285];
  [v125 addObject:v286];

  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_contentView centerYAnchor];
  v289 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v125 addObject:v289];

  centerXAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_contentView centerXAnchor];
  v292 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v125 addObject:v292];

  leadingAnchor13 = [(UILabel *)self->_spinnerLabel leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_contentView leadingAnchor];
  v295 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  [v125 addObject:v295];

  trailingAnchor17 = [(UILabel *)self->_spinnerLabel trailingAnchor];
  trailingAnchor18 = [(UIView *)self->_contentView trailingAnchor];
  v298 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
  [v125 addObject:v298];

  topAnchor18 = [(UILabel *)self->_spinnerLabel topAnchor];
  bottomAnchor4 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v301 = [topAnchor18 constraintEqualToAnchor:bottomAnchor4 constant:24.0];
  [v125 addObject:v301];

  centerXAnchor5 = [(UILabel *)self->_spinnerLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_contentView centerXAnchor];
  v304 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v125 addObject:v304];

  nearbyCameraProfile3 = [(HUDropInViewController *)self nearbyCameraProfile];

  if (nearbyCameraProfile3)
  {
    centerXAnchor7 = [(UIView *)self->_liveCameraView centerXAnchor];
    centerXAnchor8 = [(UIView *)self->_contentView centerXAnchor];
    v308 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v125 addObject:v308];

    liveCameraView = [(HUDropInViewController *)self liveCameraView];
    topAnchor19 = [liveCameraView topAnchor];
    bottomAnchor5 = [(UILabel *)self->_spinnerLabel bottomAnchor];
    v312 = [topAnchor19 constraintEqualToAnchor:bottomAnchor5 constant:20.0];
    [(HUDropInViewController *)self setCameraLiveStreamViewTopConstraintToSpinnerLabel:v312];

    liveCameraView2 = [(HUDropInViewController *)self liveCameraView];
    topAnchor20 = [liveCameraView2 topAnchor];
    bottomAnchor6 = [(UITextView *)self->_descriptionTextView bottomAnchor];
    v316 = [topAnchor20 constraintEqualToAnchor:bottomAnchor6 constant:20.0];
    [(HUDropInViewController *)self setCameraLiveStreamViewTopConstraintToDescriptionTextView:v316];

    widthAnchor6 = [(UIView *)self->_liveCameraView widthAnchor];
    widthAnchor7 = [(UIView *)self->_contentView widthAnchor];
    v319 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7 multiplier:0.85];
    [v125 addObject:v319];

    heightAnchor14 = [(UIView *)self->_liveCameraView heightAnchor];
    widthAnchor8 = [(UIView *)self->_liveCameraView widthAnchor];
    v322 = [heightAnchor14 constraintEqualToAnchor:widthAnchor8 multiplier:0.5625];
    [v125 addObject:v322];

    topAnchor21 = [(HUWaveformView *)self->_audioWaveformView topAnchor];
    bottomAnchor7 = [(UIView *)self->_liveCameraView bottomAnchor];
    v325 = [topAnchor21 constraintEqualToAnchor:bottomAnchor7 constant:20.0];
    [v125 addObject:v325];

    bottomAnchor8 = [(HULegibilityLabel *)self->_descriptionLabel bottomAnchor];
    bottomAnchor9 = [(UIView *)self->_liveCameraView bottomAnchor];
    v328 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-10.0];
    [v125 addObject:v328];

    leadingAnchor15 = [(HULegibilityLabel *)self->_descriptionLabel leadingAnchor];
    leadingAnchor16 = [(UIView *)self->_liveCameraView leadingAnchor];
    v331 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:10.0];
    [v125 addObject:v331];

    trailingAnchor19 = [(HULegibilityLabel *)self->_descriptionLabel trailingAnchor];
    trailingAnchor20 = [(UIView *)self->_liveCameraView trailingAnchor];
    [trailingAnchor19 constraintLessThanOrEqualToAnchor:trailingAnchor20 constant:-10.0];
  }

  else
  {
    trailingAnchor19 = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
    trailingAnchor20 = [(UIView *)self->_contentView centerYAnchor];
    [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20];
  }
  v334 = ;
  [v125 addObject:v334];

  leadingAnchor17 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  leadingAnchor18 = [(UIView *)self->_contentView leadingAnchor];
  v337 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
  [v125 addObject:v337];

  trailingAnchor21 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  trailingAnchor22 = [(UIView *)self->_contentView trailingAnchor];
  v340 = [trailingAnchor21 constraintEqualToAnchor:trailingAnchor22];
  [v125 addObject:v340];

  heightAnchor15 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v342 = [heightAnchor15 constraintEqualToConstant:70.0];
  [v125 addObject:v342];

  heightAnchor16 = [(UIButton *)self->_talkButton heightAnchor];
  v344 = [heightAnchor16 constraintEqualToConstant:44.0];
  [v125 addObject:v344];

  widthAnchor9 = [(UIButton *)self->_talkButton widthAnchor];
  v346 = [widthAnchor9 constraintLessThanOrEqualToConstant:355.0];
  [v125 addObject:v346];

  centerXAnchor9 = [(UIButton *)self->_talkButton centerXAnchor];
  centerXAnchor10 = [(UIView *)self->_contentView centerXAnchor];
  v349 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v125 addObject:v349];

  bottomAnchor10 = [(UIButton *)self->_talkButton bottomAnchor];
  bottomAnchor11 = [(UIView *)self->_contentView bottomAnchor];
  v352 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-45.0];
  [v125 addObject:v352];

  heightAnchor17 = [(UIButton *)self->_doneButton heightAnchor];
  v354 = [heightAnchor17 constraintEqualToConstant:44.0];
  [v125 addObject:v354];

  widthAnchor10 = [(UIButton *)self->_doneButton widthAnchor];
  v356 = [widthAnchor10 constraintLessThanOrEqualToConstant:355.0];
  [v125 addObject:v356];

  centerXAnchor11 = [(UIButton *)self->_doneButton centerXAnchor];
  centerXAnchor12 = [(UIView *)self->_contentView centerXAnchor];
  v359 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  [v125 addObject:v359];

  bottomAnchor12 = [(UIButton *)self->_doneButton bottomAnchor];
  bottomAnchor13 = [(UIView *)self->_contentView bottomAnchor];
  v362 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13 constant:-45.0];
  [v125 addObject:v362];

  [MEMORY[0x277CCAAD0] activateConstraints:v125];
  view14 = [(HUDropInViewController *)self view];
  [view14 layoutIfNeeded];

  titleLabel8 = [(HUDropInViewController *)self titleLabel];
  [titleLabel8 becomeFirstResponder];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] addAccessoryObserver:self];

  v373[0] = MEMORY[0x277D85DD0];
  v373[1] = 3221225472;
  v373[2] = __37__HUDropInViewController_viewDidLoad__block_invoke;
  v373[3] = &unk_277DB8488;
  v373[4] = self;
  v372[0] = MEMORY[0x277D85DD0];
  v372[1] = 3221225472;
  v372[2] = __37__HUDropInViewController_viewDidLoad__block_invoke_3;
  v372[3] = &unk_277DC1F18;
  v372[4] = self;
  v372[5] = a2;
  [MEMORY[0x277D75D18] animateWithDuration:v373 animations:v372 completion:0.5];
}

uint64_t __37__HUDropInViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HUDropInViewController_viewDidLoad__block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __37__HUDropInViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewHeightConstraint];
  [v2 setConstant:500.0];

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = *(a1 + 32);
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [v5 contentViewWidthConstraint];
    [v6 setConstant:395.0];
  }

  else
  {
    v6 = [v5 view];
    [v6 bounds];
    v8 = v7 + -20.0;
    v9 = [*(a1 + 32) contentViewWidthConstraint];
    [v9 setConstant:v8];
  }

  v10 = [*(a1 + 32) contentView];
  [v10 setAlpha:1.0];

  v11 = [*(a1 + 32) view];
  [v11 setAlpha:1.0];

  v12 = [*(a1 + 32) spinnerLabel];
  [v12 setAlpha:1.0];

  v13 = [*(a1 + 32) talkButton];
  [v13 setAlpha:0.0];

  v14 = [*(a1 + 32) doneButton];
  [v14 setAlpha:0.0];

  v15 = [*(a1 + 32) audioWaveformView];
  [v15 setAlpha:0.0];

  v16 = [*(a1 + 32) liveCameraView];
  [v16 setAlpha:0.0];

  v17 = [*(a1 + 32) descriptionLabel];
  [v17 setAlpha:0.0];

  [*(a1 + 32) _showSpinner];
  v18 = [*(a1 + 32) titleLabel];
  v19 = _HULocalizedStringWithDefaultValue(@"HUDropInBanner_Title_String", @"HUDropInBanner_Title_String", 1);
  [v18 setText:v19];

  v20 = [*(a1 + 32) spinnerLabel];
  v21 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Connecting_State", @"HUDropIn_Label_Connecting_State", 1);
  [v20 setText:v21];

  v22 = [*(a1 + 32) _displayedAccessoryName];
  v29 = HULocalizedStringWithFormat(@"HUDropInBanner_Title_FormatString", @"%@", v23, v24, v25, v26, v27, v28, v22);
  v30 = [*(a1 + 32) descriptionTextView];
  [v30 setText:v29];

  v31 = [*(a1 + 32) view];
  [v31 layoutIfNeeded];
}

void __37__HUDropInViewController_viewDidLoad__block_invoke_3(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = [*(a1 + 32) dropInCenter];
      v7 = [v6 deviceManager];
      v8 = [v7 devices];
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: %@ Device list for drop-in: %@", &v9, 0x20u);
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v7 viewWillDisappear:disappear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(HUDropInViewController *)self _endDropInSession];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  if (![(HUDropInViewController *)self hasAttemptedEndingDropInSessionCall])
  {
    [(HUDropInViewController *)self _endDropInSession];
  }

  v6.receiver = self;
  v6.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v6 dealloc];
}

- (void)_endDropInSession
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy2 = self;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  devices = [deviceManager devices];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = devices;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ Device list for drop-in: %@", buf, 0x20u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__HUDropInViewController__endDropInSession__block_invoke;
  v22[3] = &unk_277DC1F40;
  v22[4] = self;
  v11 = [devices na_firstObjectPassingTest:v22];
  [v11 setDelegate:0];
  if (!v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "No dropin device found in HomeKit", buf, 2u);
    }
  }

  dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter2 sessionManager];
  activeSession = [sessionManager activeSession];

  v16 = HFLogForCategory();
  v17 = v16;
  if (activeSession)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277D069D0] stringForDropInSessionState:{objc_msgSend(activeSession, "state")}];
      *buf = 138412290;
      selfCopy2 = v18;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Current dropin session state: %@", buf, 0xCu);
    }

    [(HUDropInViewController *)self setHasAttemptedEndingDropInSessionCall:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__HUDropInViewController__endDropInSession__block_invoke_66;
    v19[3] = &unk_277DB7E90;
    v20 = activeSession;
    selfCopy3 = self;
    [v20 endWithCompletionHandler:v19];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "No active dropin session. Cannot end session", buf, 2u);
    }

    [(HUDropInViewController *)self _cleanUp];
  }
}

uint64_t __43__HUDropInViewController__endDropInSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

void __43__HUDropInViewController__endDropInSession__block_invoke_66(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to end dropin session with error: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Successfully ended dropin session", &v6, 2u);
  }

  [*(a1 + 32) setDelegate:0];
  [*(a1 + 40) _cleanUp];
}

- (void)_cleanUp
{
  [(HUDropInViewController *)self _cancelStartSessionRequestTimerIfNeeded];
  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  [deviceManager setDelegate:0];

  dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter2 sessionManager];
  [sessionManager setDelegate:0];

  dropInAudioPowerController = [(HUDropInViewController *)self dropInAudioPowerController];
  [dropInAudioPowerController setDelegate:0];

  lastKnownEventSubscriber = [(HUDropInViewController *)self lastKnownEventSubscriber];
  [lastKnownEventSubscriber setDelegate:0];

  liveStreamController = [(HUDropInViewController *)self liveStreamController];
  [liveStreamController setLiveStreamControllerDelegate:0];

  [(HUDropInViewController *)self setLiveStreamController:0];
  [(HUDropInViewController *)self setLastKnownEventSubscriber:0];
  [(HUDropInViewController *)self setDropInAudioPowerController:0];
  audioWaveformView = [(HUDropInViewController *)self audioWaveformView];
  [audioWaveformView clearPowerLevels];

  [(HUDropInViewController *)self setAudioWaveformView:0];
  [(HUDropInViewController *)self setDropInCenter:0];

  [(HUDropInViewController *)self setActiveDropInSession:0];
}

- (void)_cancelStartSessionRequestTimerIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  startSessionRequestTimer = [(HUDropInViewController *)self startSessionRequestTimer];

  if (startSessionRequestTimer)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      startSessionRequestTimer2 = [(HUDropInViewController *)self startSessionRequestTimer];
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = startSessionRequestTimer2;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Cancelling start session request timer %@", &v7, 0x16u);
    }

    startSessionRequestTimer3 = [(HUDropInViewController *)self startSessionRequestTimer];
    [startSessionRequestTimer3 invalidate];

    [(HUDropInViewController *)self setStartSessionRequestTimer:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  contentView = [(HUDropInViewController *)self contentView];
  _contentViewBackgroundColor = [(HUDropInViewController *)self _contentViewBackgroundColor];
  [contentView setBackgroundColor:_contentViewBackgroundColor];

  audioWaveformView = [(HUDropInViewController *)self audioWaveformView];
  _waveformColor = [(HUDropInViewController *)self _waveformColor];
  [audioWaveformView setWaveformColor:_waveformColor];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    contentViewWidthConstraint = [(HUDropInViewController *)self contentViewWidthConstraint];
    [contentViewWidthConstraint setConstant:395.0];
  }
}

- (void)_showSpinner
{
  spinnerLabel = [(HUDropInViewController *)self spinnerLabel];
  [spinnerLabel setHidden:0];

  spinner = [(HUDropInViewController *)self spinner];
  [spinner setHidden:0];

  spinner2 = [(HUDropInViewController *)self spinner];
  [spinner2 startAnimating];

  cameraLiveStreamViewTopConstraintToDescriptionTextView = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToDescriptionTextView];
  [cameraLiveStreamViewTopConstraintToDescriptionTextView setActive:0];

  cameraLiveStreamViewTopConstraintToSpinnerLabel = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToSpinnerLabel];
  [cameraLiveStreamViewTopConstraintToSpinnerLabel setActive:1];

  contentView = [(HUDropInViewController *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_hideSpinner
{
  spinnerLabel = [(HUDropInViewController *)self spinnerLabel];
  [spinnerLabel setHidden:1];

  spinner = [(HUDropInViewController *)self spinner];
  [spinner setHidden:1];

  spinner2 = [(HUDropInViewController *)self spinner];
  [spinner2 stopAnimating];

  cameraLiveStreamViewTopConstraintToSpinnerLabel = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToSpinnerLabel];
  [cameraLiveStreamViewTopConstraintToSpinnerLabel setActive:0];

  cameraLiveStreamViewTopConstraintToDescriptionTextView = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToDescriptionTextView];
  [cameraLiveStreamViewTopConstraintToDescriptionTextView setActive:1];

  contentView = [(HUDropInViewController *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_toggleMicrophone:(id)microphone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v14 = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v14, 0x16u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter sessionManager];
  activeSession = [sessionManager activeSession];
  isUplinkMuted = [activeSession isUplinkMuted];
  dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
  sessionManager2 = [dropInCenter2 sessionManager];
  activeSession2 = [sessionManager2 activeSession];
  [activeSession2 setUplinkMuted:isUplinkMuted ^ 1u];
}

- (void)_updateRecordingUIWithDefaultState
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", &v13, 0x16u);
  }

  [(HUDropInViewController *)self _showSpinner];
  talkButton = [(HUDropInViewController *)self talkButton];
  [talkButton setAlpha:0.0];

  doneButton = [(HUDropInViewController *)self doneButton];
  [doneButton setAlpha:0.0];

  audioWaveformView = [(HUDropInViewController *)self audioWaveformView];
  [audioWaveformView clearPowerLevels];

  audioWaveformView2 = [(HUDropInViewController *)self audioWaveformView];
  [audioWaveformView2 setAlpha:0.0];

  liveCameraView = [(HUDropInViewController *)self liveCameraView];
  [liveCameraView setAlpha:0.0];

  descriptionLabel = [(HUDropInViewController *)self descriptionLabel];
  [descriptionLabel setAlpha:0.0];

  view = [(HUDropInViewController *)self view];
  [view layoutIfNeeded];
}

- (void)_updateRecordingUIWithConnectedState
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(HUDropInViewController *)self _hideSpinner];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HUDropInViewController__updateRecordingUIWithConnectedState__block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
}

void __62__HUDropInViewController__updateRecordingUIWithConnectedState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) talkButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) doneButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) audioWaveformView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) liveCameraView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) descriptionLabel];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)_updateRecordingUIWithMicrophoneOn
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(HUDropInViewController *)self _hideSpinner];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUDropInViewController__updateRecordingUIWithMicrophoneOn__block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
}

void __60__HUDropInViewController__updateRecordingUIWithMicrophoneOn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) talkButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) doneButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) audioWaveformView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) liveCameraView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) descriptionLabel];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)_updateRecordingUIWithMicrophoneOff
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(HUDropInViewController *)self _hideSpinner];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HUDropInViewController__updateRecordingUIWithMicrophoneOff__block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
}

void __61__HUDropInViewController__updateRecordingUIWithMicrophoneOff__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) talkButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) doneButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) audioWaveformView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) liveCameraView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) descriptionLabel];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)_dismissRecordingUIWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Dismissing UI due to error: %@", buf, 0x20u);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __55__HUDropInViewController__dismissRecordingUIWithError___block_invoke;
  v13 = &unk_277DB8AB0;
  selfCopy2 = self;
  v15 = errorCopy;
  v8 = errorCopy;
  v9 = _Block_copy(&v10);
  [(HUDropInViewController *)self _dismissUpRecordingView:v9, v10, v11, v12, v13, selfCopy2];
}

void __55__HUDropInViewController__dismissRecordingUIWithError___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (([*(a1 + 32) hasAttemptedEndingDropInSessionCall] & 1) == 0)
    {
      v3 = [*(a1 + 32) _displayedAccessoryName];
      v4 = [*(a1 + 32) serviceContext];
      v5 = [v4 actions];
      v6 = [v5 anyObject];

      v7 = objc_alloc(MEMORY[0x277CF0B68]);
      v8 = MEMORY[0x277CCA9B8];
      v9 = [*(a1 + 40) code];
      if (v3)
      {
        v10 = v3;
      }

      else
      {
        v10 = &stru_2823E0EE8;
      }

      v11 = [v8 hf_errorWithCode:v9 description:v10];
      v12 = [v7 initWithInfo:0 error:v11];

      [v6 sendResponse:v12];
    }

    v14 = [*(a1 + 32) serviceContext];
    v13 = [v14 remoteViewControllerProxy];
    [v13 invalidate];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [touchCopy view];
  talkButton = [(HUDropInViewController *)self talkButton];
  if (view != talkButton)
  {
    view2 = [touchCopy view];
    doneButton = [(HUDropInViewController *)self doneButton];
    if (view2 != doneButton)
    {
      v12 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  tapGestureRecognizer = [(HUDropInViewController *)self tapGestureRecognizer];
  v12 = tapGestureRecognizer == recognizerCopy;

  if (view != talkButton)
  {
    goto LABEL_5;
  }

LABEL_6:

  return !v12;
}

- (void)_didTap:(id)tap
{
  tapCopy = tap;
  view = [(HUDropInViewController *)self view];
  [tapCopy locationOfTouch:0 inView:view];
  v7 = v6;
  v9 = v8;

  contentView = [(HUDropInViewController *)self contentView];
  [contentView frame];
  v12 = v11;
  contentView2 = [(HUDropInViewController *)self contentView];
  [contentView2 frame];
  if (v9 > v12 + v14)
  {
    v17 = 1;
  }

  else
  {
    contentView3 = [(HUDropInViewController *)self contentView];
    [contentView3 frame];
    v17 = v9 < v16;
  }

  contentView4 = [(HUDropInViewController *)self contentView];
  [contentView4 frame];
  v20 = v7 < v19;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v17 || v20) || v17)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__HUDropInViewController__didTap___block_invoke;
    aBlock[3] = &unk_277DB8C28;
    aBlock[4] = self;
    v23 = _Block_copy(aBlock);
    [(HUDropInViewController *)self _dismissUpRecordingView:v23];
  }
}

void __34__HUDropInViewController__didTap___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) serviceContext];
    v2 = [v3 remoteViewControllerProxy];
    [v2 invalidate];
  }
}

- (void)_didPan:(id)pan
{
  panCopy = pan;
  view = [(HUDropInViewController *)self view];
  [panCopy translationInView:view];
  v7 = v6;

  state = [panCopy state];
  if (state == 3)
  {
    closeButtonTopConstraint = [(HUDropInViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint constant];
    v11 = v10;

    if (v11 > 120.0)
    {

      [(HUDropInViewController *)self _dismissDownRecordingView:0];
      return;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      contentViewTopConstraint = [(HUDropInViewController *)self contentViewTopConstraint];
      [contentViewTopConstraint setConstant:30.0];
    }

    closeButtonTopConstraint2 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint2 setConstant:30.0];

    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:-25.0];
    [(UILabel *)self->_dismissLabel setAlpha:0.0];
    view2 = [(HUDropInViewController *)self view];
    [view2 setNeedsLayout];
    goto LABEL_15;
  }

  if (v7 > 49.0)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      contentViewTopConstraint2 = [(HUDropInViewController *)self contentViewTopConstraint];
      [contentViewTopConstraint2 setConstant:v7];
    }

    closeButtonTopConstraint3 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint3 setConstant:v7];

    v16 = v7 + -25.0;
    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:v16];
    dismissLabel = [(HUDropInViewController *)self dismissLabel];
    [dismissLabel setAlpha:v16 / 120.0];

    view3 = [(HUDropInViewController *)self view];
    [view3 layoutIfNeeded];

    closeButtonTopConstraint4 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [closeButtonTopConstraint4 constant];
    v21 = v20;

    if (v21 > 120.0)
    {
      view2 = [(HUDropInViewController *)self feedbackGenerator];
      [view2 impactOccurredWithIntensity:1.0];
LABEL_15:
    }
  }
}

- (void)_dismissUpRecordingView:(id)view
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HUDropInViewController__dismissUpRecordingView___block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:view animations:0.25 completion:0.0];
}

uint64_t __50__HUDropInViewController__dismissUpRecordingView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HUDropInViewController__dismissUpRecordingView___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __50__HUDropInViewController__dismissUpRecordingView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) contentViewHeightConstraint];
  [v3 setConstant:0.0];

  v4 = [*(a1 + 32) contentViewWidthConstraint];
  [v4 setConstant:100.0];

  v5 = [*(a1 + 32) contentView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) view];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) spinnerLabel];
  [v7 setAlpha:0.0];

  v8 = [*(a1 + 32) talkButton];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) doneButton];
  [v9 setAlpha:0.0];

  v10 = [*(a1 + 32) parentViewController];
  v11 = [v10 view];
  [v11 setAlpha:0.0];

  v12 = [*(a1 + 32) view];
  [v12 layoutIfNeeded];
}

- (void)_dismissDownRecordingView:(id)view
{
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke;
  v4[3] = &unk_277DB8488;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke_3;
  v3[3] = &unk_277DB8C28;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:v3 animations:0.5 completion:0.0];
}

uint64_t __52__HUDropInViewController__dismissDownRecordingView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __52__HUDropInViewController__dismissDownRecordingView___block_invoke_2(uint64_t a1)
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

uint64_t __52__HUDropInViewController__dismissDownRecordingView___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) contentView];
    [v3 setAlpha:0.0];

    v4 = [*(v2 + 32) closeButtonVisualEffectView];
    [v4 setAlpha:0.0];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke_4;
    v6[3] = &unk_277DB8488;
    v7 = *(v2 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke_6;
    v5[3] = &unk_277DB8C28;
    v5[4] = v7;
    return [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.25];
  }

  return result;
}

uint64_t __52__HUDropInViewController__dismissDownRecordingView___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HUDropInViewController__dismissDownRecordingView___block_invoke_5;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769474 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __52__HUDropInViewController__dismissDownRecordingView___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

void __52__HUDropInViewController__dismissDownRecordingView___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceContext];
  v1 = [v2 remoteViewControllerProxy];
  [v1 invalidate];
}

- (id)_waveformColor
{
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  traitCollection = [(HUDropInViewController *)self traitCollection];
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
  traitCollection = [(HUDropInViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];

    systemWhiteColor = systemBlackColor;
  }

  return systemWhiteColor;
}

- (void)_launchDropInSessionIfNeeded
{
  v43 = *MEMORY[0x277D85DE8];
  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  devices = [deviceManager devices];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy7 = self;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = devices;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Device list for drop-in: %@", buf, 0x20u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke;
  v34[3] = &unk_277DC1F40;
  v34[4] = self;
  v9 = [devices na_firstObjectPassingTest:v34];
  [v9 setDelegate:self];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy7 = self;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: %@ DIDevice = %@", buf, 0x20u);
  }

  if ([(HUDropInViewController *)self hasAttemptedDropInSessionCall])
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy7 = self;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ A dropin session has already been attempted before. No more attempts will occur.", buf, 0x16u);
    }
  }

  else if (v9 && (-[HUDropInViewController dropInCenter](self, "dropInCenter"), v14 = objc_claimAutoreleasedReturnValue(), [v14 sessionManager], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "activeSession"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v14, v17))
  {
    if ([v9 state] != 2 && objc_msgSend(v9, "state") != 3)
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy7 = self;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: %@ This device is supposedly not available for DropIn at this time. Will attempt session start anyway.", buf, 0x16u);
      }

      v21 = [MEMORY[0x277CBEAA8] now];
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromSelector(a2);
        stateExpiration = [v9 stateExpiration];
        *buf = 138413058;
        selfCopy7 = self;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v21;
        v41 = 2112;
        v42 = stateExpiration;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: %@ Current date (%@) vs DropIn expiration date (%@)", buf, 0x2Au);
      }
    }

    v25 = HFLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy7 = self;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@: %@ No active dropin session. Will launch new session for device %@.", buf, 0x20u);
    }

    v12 = [objc_alloc(MEMORY[0x277D069C0]) initWithDevice:v9];
    dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
    sessionManager = [dropInCenter2 sessionManager];
    [sessionManager setDelegate:self];

    [(HUDropInViewController *)self setHasAttemptedDropInSessionCall:1];
    [(HUDropInViewController *)self _updateRecordingUIWithDefaultState];
    spinnerLabel = [(HUDropInViewController *)self spinnerLabel];
    v30 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Connecting_State", @"HUDropIn_Label_Connecting_State", 1);
    [spinnerLabel setText:v30];

    objc_initWeak(buf, self);
    dropInCenter3 = [(HUDropInViewController *)self dropInCenter];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_76;
    v32[3] = &unk_277DC1F68;
    objc_copyWeak(&v33, buf);
    [dropInCenter3 startSessionWithRequest:v12 completionHandler:v32];

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy7 = self;
      v37 = 2112;
      v38 = v18;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ A dropin session is already active or device is not found: %@.", buf, 0x20u);
    }
  }
}

uint64_t __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

void __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "Failed to start dropin session with error: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_77;
    block[3] = &unk_277DB7558;
    v16 = v6;
    v17 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "state")}];
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = 0x4010000000000000;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Successfully started dropin session: %@ with state %@. We will update the session state in UI in about %lf seconds.", buf, 0x20u);
    }

    v11 = dispatch_time(0, 4000000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_79;
    v12[3] = &unk_277DBA860;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v5;
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v14);
  }
}

void __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_77(uint64_t a1)
{
  if ([*(a1 + 32) code] == 4)
  {
    v2 = *(a1 + 40);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 91;
  }

  else if ([*(a1 + 32) code] == 5)
  {
    v2 = *(a1 + 40);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 92;
  }

  else if ([*(a1 + 32) code] == 8)
  {
    v2 = *(a1 + 40);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 93;
  }

  else if ([*(a1 + 32) code] == 6)
  {
    v2 = *(a1 + 40);
    v3 = MEMORY[0x277CCA9B8];
    v4 = 94;
  }

  else
  {
    v5 = [*(a1 + 32) code];
    v2 = *(a1 + 40);
    v3 = MEMORY[0x277CCA9B8];
    if (v5 == 7)
    {
      v4 = 95;
    }

    else
    {
      v4 = 86;
    }
  }

  v6 = [v3 hf_errorWithCode:v4];
  [v2 _dismissRecordingUIWithError:?];
}

void __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setActiveDropInSession:*(a1 + 32)];
  if ([*(a1 + 32) state] == 1)
  {
    v3 = [WeakRetained spinnerLabel];
    v4 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Announcing_State", @"HUDropIn_Label_Announcing_State", 1);
    [v3 setText:v4];
  }

  [WeakRetained _updateRecordingUIWithDefaultState];
  v5 = [WeakRetained dropInCenter];
  v6 = [v5 createAudioPowerController];
  [WeakRetained setDropInAudioPowerController:v6];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Created audio power controller", v9, 2u);
  }

  v8 = [WeakRetained dropInAudioPowerController];
  [v8 setDelegate:WeakRetained];
}

- (UIButton)talkButton
{
  talkButton = self->_talkButton;
  if (!talkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = _HULocalizedStringWithDefaultValue(@"HUDropInButton_AX_Label_Title", @"HUDropInButton_AX_Label_Title", 1);
    [(UIButton *)v4 setAccessibilityLabel:v5];

    v6 = _HULocalizedStringWithDefaultValue(@"HUDropInButton_AX_Label_Hint_Enable_Mic", @"HUDropInButton_AX_Label_Hint_Enable_Mic", 1);
    [(UIButton *)v4 setAccessibilityHint:v6];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [(UIButton *)v4 setBackgroundColor:systemYellowColor];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:systemBlackColor];

    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    v9 = [MEMORY[0x277D755B8] hu_microphoneGlyphForTalkingState:0 usingStandardSymbolConfiguration:1];
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setImage:v9];
    [(UIButton *)v4 addSubview:v10];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    [v11 setTextColor:systemBlackColor2];

    [(UIButton *)v4 addSubview:v11];
    topAnchor = [v10 topAnchor];
    topAnchor2 = [(UIButton *)v4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:13.0];
    [v15 setActive:1];

    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [(UIButton *)v4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    [v18 setActive:1];

    widthAnchor = [v10 widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:18.0];
    [v20 setActive:1];

    heightAnchor = [v10 heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:18.0];
    [v22 setActive:1];

    topAnchor3 = [v11 topAnchor];
    topAnchor4 = [(UIButton *)v4 topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:13.0];
    [v25 setActive:1];

    leadingAnchor3 = [v11 leadingAnchor];
    trailingAnchor = [v10 trailingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    [v28 setActive:1];

    trailingAnchor2 = [v11 trailingAnchor];
    trailingAnchor3 = [(UIButton *)v4 trailingAnchor];
    v31 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-25.0];
    [v31 setActive:1];

    heightAnchor2 = [v11 heightAnchor];
    v33 = [heightAnchor2 constraintEqualToConstant:18.0];
    [v33 setActive:1];

    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = _HULocalizedStringWithDefaultValue(@"HUDropInButton_Label_Talk_State", @"HUDropInButton_Label_Talk_State", 1);
    [v11 setText:v34];

    [(UIButton *)v4 sizeToFit];
    v35 = self->_talkButton;
    self->_talkButton = v4;

    talkButton = self->_talkButton;
  }

  return talkButton;
}

- (UIButton)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = _HULocalizedStringWithDefaultValue(@"HUDropInDoneButton_AX_Label_Title", @"HUDropInDoneButton_AX_Label_Title", 1);
    [(UIButton *)v4 setAccessibilityLabel:v5];

    v6 = _HULocalizedStringWithDefaultValue(@"HUDropInButton_AX_Label_Hint_Disable_Mic", @"HUDropInButton_AX_Label_Hint_Disable_Mic", 1);
    [(UIButton *)v4 setAccessibilityHint:v6];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [(UIButton *)v4 setBackgroundColor:systemYellowColor];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:systemBlackColor];

    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    [v9 setTextColor:systemBlackColor2];

    [(UIButton *)v4 addSubview:v9];
    topAnchor = [v9 topAnchor];
    topAnchor2 = [(UIButton *)v4 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:13.0];
    [v13 setActive:1];

    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [(UIButton *)v4 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    [v16 setActive:1];

    trailingAnchor = [v9 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-25.0];
    [v19 setActive:1];

    heightAnchor = [v9 heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:18.0];
    [v21 setActive:1];

    [(UIButton *)v4 setContentEdgeInsets:0.0, 18.0, 0.0, 18.0];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = _HULocalizedStringWithDefaultValue(@"HUDropInButton_Label_Done_State", @"HUDropInButton_Label_Done_State", 1);
    [v9 setText:v22];

    v23 = self->_doneButton;
    self->_doneButton = v4;

    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (id)_displayedAccessoryName
{
  currentAccessory = [(HUDropInViewController *)self currentAccessory];
  hf_serviceNameComponents = [currentAccessory hf_serviceNameComponents];
  composedString = [hf_serviceNameComponents composedString];

  currentAccessory2 = [(HUDropInViewController *)self currentAccessory];
  LOBYTE(hf_serviceNameComponents) = objc_opt_respondsToSelector();

  if (hf_serviceNameComponents)
  {
    currentAccessory3 = [(HUDropInViewController *)self currentAccessory];
    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 = [currentAccessory3 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];
    composedString2 = [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 composedString];

    composedString = composedString2;
  }

  return composedString;
}

- (void)managerDidUpdateDevices:(id)devices
{
  v40 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy4 = self;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = devicesCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Device manager: %@", buf, 0x20u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  devices = [deviceManager devices];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__HUDropInViewController_managerDidUpdateDevices___block_invoke;
  v33[3] = &unk_277DC1F40;
  v33[4] = self;
  v11 = [devices na_firstObjectPassingTest:v33];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSince1970];
    v14 = v13;
    stateExpiration = [v11 stateExpiration];
    [stateExpiration timeIntervalSince1970];
    v17 = v14 > v16;

    if ([v11 state] == 0 || v17)
    {
      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy4 = self;
        v36 = 2112;
        v37 = v19;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@: %@ Requesting device state refresh for device: %@", buf, 0x20u);
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __50__HUDropInViewController_managerDidUpdateDevices___block_invoke_107;
      v28[3] = &unk_277DBEFD8;
      v28[4] = self;
      v30 = a2;
      v29 = v11;
      [v29 refreshStateWithCompletionHandler:v28];
    }

    [(HUDropInViewController *)self _launchDropInSessionIfNeeded];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      currentAccessory = [(HUDropInViewController *)self currentAccessory];
      *buf = 138412802;
      selfCopy4 = self;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = currentAccessory;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@: %@ Unable to find dropin device for accessory %@", buf, 0x20u);
    }

    startSessionRequestTimer = [(HUDropInViewController *)self startSessionRequestTimer];
    v24 = startSessionRequestTimer == 0;

    if (v24)
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v36 = 2048;
        v37 = 30;
        _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@: Starting start session request timer (%lus)", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v26 = MEMORY[0x277CBEBB8];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __50__HUDropInViewController_managerDidUpdateDevices___block_invoke_105;
      v31[3] = &unk_277DBC5E0;
      objc_copyWeak(&v32, buf);
      v27 = [v26 scheduledTimerWithTimeInterval:0 repeats:v31 block:30.0];
      [(HUDropInViewController *)self setStartSessionRequestTimer:v27];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }
}

uint64_t __50__HUDropInViewController_managerDidUpdateDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

void __50__HUDropInViewController_managerDidUpdateDevices___block_invoke_105(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Start session request timer fired %@. No DIDevice was found after waiting. Will dismiss UI.", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:87];
  [WeakRetained _dismissRecordingUIWithError:v6];
}

void __50__HUDropInViewController_managerDidUpdateDevices___block_invoke_107(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 40);
      v11 = 138413058;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: %@ Failed to request refresh of device state for device: %@ with error %@", &v11, 0x2Au);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 48));
    v10 = *(a1 + 40);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ Succeeded to request refresh of device state for device: %@", &v11, 0x20u);
    goto LABEL_6;
  }
}

- (void)manager:(id)manager didAddDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Added Device: %@", buf, 0x20u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  deviceManager = [dropInCenter deviceManager];
  devices = [deviceManager devices];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__HUDropInViewController_manager_didAddDevice___block_invoke;
  v15[3] = &unk_277DC1F40;
  v15[4] = self;
  v12 = [devices na_firstObjectPassingTest:v15];

  if (v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = deviceCopy;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Found DIDevice in device manager list: %@", buf, 0x20u);
    }

    [(HUDropInViewController *)self _cancelStartSessionRequestTimerIfNeeded];
    [(HUDropInViewController *)self _launchDropInSessionIfNeeded];
  }
}

uint64_t __47__HUDropInViewController_manager_didAddDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

- (void)device:(id)device didUpdateState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [MEMORY[0x277D069B0] stringForDeviceState:state];
    v15 = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = deviceCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated Device state to %@ for device: %@", &v15, 0x2Au);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter sessionManager];
  activeSession = [sessionManager activeSession];
  state = [activeSession state];

  if (state == 2 && state == 2)
  {
    [(HUDropInViewController *)self _launchDropInSessionIfNeeded];
  }
}

- (id)hu_preloadContent
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Preload content", buf, 0x16u);
  }

  serviceContext = [(HUDropInViewController *)self serviceContext];
  homeIdentifier = [serviceContext homeIdentifier];

  serviceContext2 = [(HUDropInViewController *)self serviceContext];
  accessoryIdentifier = [serviceContext2 accessoryIdentifier];

  objc_initWeak(buf, self);
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  allHomesFuture = [mEMORY[0x277D146E8] allHomesFuture];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__HUDropInViewController_hu_preloadContent__block_invoke;
  v18[3] = &unk_277DBD400;
  objc_copyWeak(&v21, buf);
  v12 = homeIdentifier;
  v19 = v12;
  v13 = accessoryIdentifier;
  v20 = v13;
  v14 = [allHomesFuture flatMap:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__HUDropInViewController_hu_preloadContent__block_invoke_113;
  v17[3] = &unk_277DB7AB8;
  v17[4] = self;
  v15 = [v14 flatMap:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  return v15;
}

id __43__HUDropInViewController_hu_preloadContent__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__HUDropInViewController_hu_preloadContent__block_invoke_2;
  v18[3] = &unk_277DBE8A8;
  v19 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v18];

  [WeakRetained setCurrentHome:v5];
  v6 = [WeakRetained currentHome];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 40)];
  v8 = [v6 hf_accessoryWithIdentifier:v7];
  [WeakRetained setCurrentAccessory:v8];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained currentAccessory];
    v11 = [WeakRetained currentHome];
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Found current accessory? %@ | Found current home? %@", buf, 0x16u);
  }

  v12 = MEMORY[0x277D2C900];
  v13 = MEMORY[0x277CCABB0];
  v14 = [WeakRetained currentAccessory];
  v15 = [v13 numberWithInt:v14 == 0];
  v16 = [v12 futureWithResult:v15];

  return v16;
}

uint64_t __43__HUDropInViewController_hu_preloadContent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __43__HUDropInViewController_hu_preloadContent__block_invoke_113(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Will attempt to refresh home graph to find accessory", buf, 2u);
    }

    v6 = MEMORY[0x277D2C900];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__HUDropInViewController_hu_preloadContent__block_invoke_114;
    v18 = &unk_277DB7580;
    v19 = *(a1 + 32);
    v7 = &v15;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "No need to refresh home graph. Accessory was found.", buf, 2u);
    }

    v6 = MEMORY[0x277D2C900];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __43__HUDropInViewController_hu_preloadContent__block_invoke_116;
    v13 = &unk_277DB7580;
    v14 = *(a1 + 32);
    v7 = &v10;
  }

  v8 = [v6 futureWithBlock:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  return v8;
}

- (void)_preloadContent:(id)content
{
  v40 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (!contentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1133 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentAccessory = [(HUDropInViewController *)self currentAccessory];
    currentHome = [(HUDropInViewController *)self currentHome];
    *buf = 138412546;
    v37 = currentAccessory;
    v38 = 2112;
    v39 = currentHome;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Current accessory = %@ | Current home = %@", buf, 0x16u);
  }

  currentHome2 = [(HUDropInViewController *)self currentHome];
  if (currentHome2 && (v10 = currentHome2, [(HUDropInViewController *)self currentAccessory], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    currentHome3 = [(HUDropInViewController *)self currentHome];
    createHomeAudioAnalysisEventSubscriber = [currentHome3 createHomeAudioAnalysisEventSubscriber];
    [(HUDropInViewController *)self setLastKnownEventSubscriber:createHomeAudioAnalysisEventSubscriber];

    lastKnownEventSubscriber = [(HUDropInViewController *)self lastKnownEventSubscriber];
    [lastKnownEventSubscriber setDelegate:self];

    lastKnownEventSubscriber2 = [(HUDropInViewController *)self lastKnownEventSubscriber];
    currentAccessory2 = [(HUDropInViewController *)self currentAccessory];
    uniqueIdentifier = [currentAccessory2 uniqueIdentifier];
    [lastKnownEventSubscriber2 subscribeLastKnownEventsForAccessory:uniqueIdentifier completion:&__block_literal_global_224];

    v18 = objc_alloc(MEMORY[0x277D069B8]);
    currentHome4 = [(HUDropInViewController *)self currentHome];
    uniqueIdentifier2 = [currentHome4 uniqueIdentifier];
    v21 = [v18 initWithHomeIdentifier:uniqueIdentifier2 queue:MEMORY[0x277D85CD0]];
    [(HUDropInViewController *)self setDropInCenter:v21];

    dropInCenter = [(HUDropInViewController *)self dropInCenter];
    [dropInCenter setDelegate:self];

    dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
    deviceManager = [dropInCenter2 deviceManager];
    [deviceManager setDelegate:self];

    currentHome5 = [(HUDropInViewController *)self currentHome];
    hf_allCameraProfiles = [currentHome5 hf_allCameraProfiles];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__HUDropInViewController__preloadContent___block_invoke_129;
    v35[3] = &unk_277DC1F90;
    v35[4] = self;
    v35[5] = a2;
    v27 = [hf_allCameraProfiles na_firstObjectPassingTest:v35];
    [(HUDropInViewController *)self setNearbyCameraProfile:v27];

    nearbyCameraProfile = [(HUDropInViewController *)self nearbyCameraProfile];

    if (nearbyCameraProfile)
    {
      v29 = [HUCameraLiveStreamViewController alloc];
      nearbyCameraProfile2 = [(HUDropInViewController *)self nearbyCameraProfile];
      v31 = [(HUCameraLiveStreamViewController *)v29 initWithCameraProfile:nearbyCameraProfile2];
      [(HUDropInViewController *)self setLiveStreamController:v31];

      liveStreamController = [(HUDropInViewController *)self liveStreamController];
      [liveStreamController setLiveStreamControllerDelegate:self];
    }
  }

  else
  {
    v33 = HFLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "No home and/or accessory found!", buf, 2u);
    }
  }

  [contentCopy finishWithNoResult];
}

void __42__HUDropInViewController__preloadContent___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to subscribe for last known events: %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Successfully subscribed for last known events", &v5, 2u);
  }
}

uint64_t __42__HUDropInViewController__preloadContent___block_invoke_129(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 room];
  v6 = [*(a1 + 32) currentAccessory];
  v7 = [v6 room];
  if ([v5 isEqual:v7] && (objc_msgSend(v3, "hf_shouldDisableLiveStream") & 1) == 0)
  {
    v9 = [v3 accessory];
    v8 = [v9 isReachable];
  }

  else
  {
    v8 = 0;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v8;
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(*(a1 + 40));
    v20 = [v3 accessory];
    v13 = [v20 isReachable];
    v14 = [v3 hf_shouldDisableLiveStream];
    v15 = [v3 accessory];
    v16 = [v15 room];
    v17 = [*(a1 + 32) currentAccessory];
    v18 = [v17 room];
    *buf = 138413826;
    v23 = v11;
    v8 = v21;
    v24 = 2112;
    v25 = v12;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    v31 = v14;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@ : %@ Should show camera in DropIn UI? %{BOOL}d Is reachable? %{BOOL}d Is live stream disabled? %{BOOL}d Camera room: %@ Accessory Room: %@", buf, 0x3Cu);
  }

  return v8;
}

- (void)_refreshHomeGraph:(id)graph
{
  graphCopy = graph;
  if (!graphCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1168 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  serviceContext = [(HUDropInViewController *)self serviceContext];
  homeIdentifier = [serviceContext homeIdentifier];

  serviceContext2 = [(HUDropInViewController *)self serviceContext];
  accessoryIdentifier = [serviceContext2 accessoryIdentifier];

  v10 = [MEMORY[0x277CBEAA8] now];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__HUDropInViewController__refreshHomeGraph___block_invoke;
  v20[3] = &unk_277DBBFB8;
  v21 = v10;
  v22 = graphCopy;
  selfCopy = self;
  v24 = homeIdentifier;
  v25 = accessoryIdentifier;
  v14 = accessoryIdentifier;
  v15 = homeIdentifier;
  v16 = graphCopy;
  v17 = v10;
  v18 = [homeManager _refreshBeforeDate:v13 completionHandler:v20];
}

void __44__HUDropInViewController__refreshHomeGraph___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[HUDropInViewController _refreshHomeGraph:]_block_invoke";
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s Home graph refresh took %f", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__HUDropInViewController__refreshHomeGraph___block_invoke_132;
  aBlock[3] = &unk_277DC1FB8;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 48);
  v18 = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v22 = v18;
  v23 = v11;
  v12 = _Block_copy(aBlock);
  if (a2)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[HUDropInViewController _refreshHomeGraph:]_block_invoke";
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%s Unable to refresh home graph, force a retry after 1s", buf, 0xCu);
    }

    v14 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HUDropInViewController__refreshHomeGraph___block_invoke_135;
    block[3] = &unk_277DB84B0;
    v20 = v12;
    dispatch_after(v14, MEMORY[0x277D85CD0], block);
    v15 = v20;
  }

  else
  {
    v15 = [MEMORY[0x277D146E8] sharedDispatcher];
    v16 = [v15 allHomesFuture];
    v17 = [v16 addCompletionBlock:v12];
  }
}

void __44__HUDropInViewController__refreshHomeGraph___block_invoke_132(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__HUDropInViewController__refreshHomeGraph___block_invoke_133;
    v13[3] = &unk_277DBE8A8;
    v14 = *(a1 + 48);
    v7 = [v5 na_firstObjectPassingTest:v13];
    [*(a1 + 40) setCurrentHome:v7];

    v8 = [*(a1 + 40) currentHome];
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 56)];
    v10 = [v8 hf_accessoryWithIdentifier:v9];
    [*(a1 + 40) setCurrentAccessory:v10];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[HUDropInViewController _refreshHomeGraph:]_block_invoke_2";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%s : Fetched all homes after home graph refresh. Homes: %@", buf, 0x16u);
    }

    [*(a1 + 40) _preloadContent:*(a1 + 32)];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[HUDropInViewController _refreshHomeGraph:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%s : Unable to fetch homes. Homes = %@ | Error: %@", buf, 0x20u);
    }

    [*(a1 + 32) finishWithNoResult];
  }
}

uint64_t __44__HUDropInViewController__refreshHomeGraph___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __44__HUDropInViewController__refreshHomeGraph___block_invoke_135(uint64_t a1)
{
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v2 = [v4 allHomesFuture];
  v3 = [v2 addCompletionBlock:*(a1 + 32)];
}

- (void)streamControllerStateDidUpdate:(id)update
{
  nearbyCameraProfile = [(HUDropInViewController *)self nearbyCameraProfile];
  streamControl = [nearbyCameraProfile streamControl];
  streamState = [streamControl streamState];
  if (streamState == 2)
  {
    _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
  }

  else
  {
    nearbyCameraProfile2 = [(HUDropInViewController *)self nearbyCameraProfile];
    snapshotControl = [nearbyCameraProfile2 snapshotControl];
    mostRecentSnapshot = [snapshotControl mostRecentSnapshot];
    [mostRecentSnapshot hf_localizedAge];
  }
  v9 = ;
  descriptionLabel = [(HUDropInViewController *)self descriptionLabel];
  [descriptionLabel setText:v9];

  if (streamState != 2)
  {

    v9 = nearbyCameraProfile2;
  }
}

- (void)serverDisconnectedForDropInCenter:(id)center
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v11;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: %@ Disconnected from DropIn process", &v12, 0x16u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter sessionManager];
  activeSession = [sessionManager activeSession];

  if (activeSession)
  {
    v9 = 88;
  }

  else
  {
    v9 = 86;
  }

  v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v9];
  [(HUDropInViewController *)self _dismissRecordingUIWithError:v10];
}

- (void)session:(id)session didUpdateState:(unint64_t)state reason:(unint64_t)reason
{
  v41 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  activeDropInSession = [(HUDropInViewController *)self activeDropInSession];
  v11 = activeDropInSession;
  if (sessionCopy && activeDropInSession)
  {
    activeDropInSession2 = [(HUDropInViewController *)self activeDropInSession];

    if (activeDropInSession2 != sessionCopy)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(a2);
        activeDropInSession3 = [(HUDropInViewController *)self activeDropInSession];
        v33 = 138413058;
        selfCopy3 = self;
        v35 = 2112;
        v36 = v14;
        v37 = 2112;
        v38 = sessionCopy;
        v39 = 2112;
        v40 = activeDropInSession3;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Received callback for session %@ which is different from current Session %@. Not Handling...", &v33, 0x2Au);
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = [MEMORY[0x277D069D0] stringForDropInSessionState:state];
    v19 = [MEMORY[0x277D069D0] stringForDropInSessionStateReason:reason];
    v33 = 138413058;
    selfCopy3 = self;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v19;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin Session state: %@ with reason: %@", &v33, 0x2Au);
  }

  if ([sessionCopy state] == 1)
  {
    spinnerLabel = [(HUDropInViewController *)self spinnerLabel];
    v21 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Connecting_State", @"HUDropIn_Label_Connecting_State", 1);
    [spinnerLabel setText:v21];
  }

  else if ([sessionCopy state] == 4 && !-[HUDropInViewController hasSessionStarted](self, "hasSessionStarted"))
  {
    [(HUDropInViewController *)self setHasSessionStarted:1];
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromSelector(a2);
      dropInCenter = [(HUDropInViewController *)self dropInCenter];
      sessionManager = [dropInCenter sessionManager];
      activeSession = [sessionManager activeSession];
      isUplinkMuted = [activeSession isUplinkMuted];
      v33 = 138412802;
      selfCopy3 = self;
      v35 = 2112;
      v36 = v23;
      v37 = 1024;
      LODWORD(v38) = isUplinkMuted;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: %@ Is uplink audio muted?: %{BOOL}d", &v33, 0x1Cu);
    }

    [(HUDropInViewController *)self _updateRecordingUIWithConnectedState];
    dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
    sessionManager2 = [dropInCenter2 sessionManager];
    activeSession2 = [sessionManager2 activeSession];
    isUplinkMuted2 = [activeSession2 isUplinkMuted];

    if (isUplinkMuted2)
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOff];
    }

    else
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOn];
    }
  }

  if ([sessionCopy state] == 6 || objc_msgSend(sessionCopy, "state") == 7)
  {
    if (reason == 6)
    {
      v32 = 91;
    }

    else
    {
      v32 = 90;
    }

    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v32];
    [(HUDropInViewController *)self _dismissRecordingUIWithError:v13];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)session:(id)session didFailWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin session failed with error: %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HUDropInViewController_session_didFailWithError___block_invoke;
  block[3] = &unk_277DC1FE0;
  block[4] = self;
  v13 = sessionCopy;
  v14 = a2;
  v11 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__HUDropInViewController_session_didFailWithError___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeDropInSession];
  v3 = v2;
  if (!v2 || (v4 = *(a1 + 40)) == 0)
  {

    goto LABEL_7;
  }

  v5 = [*(a1 + 32) activeDropInSession];

  if (v4 == v5)
  {
LABEL_7:
    v11 = [*(a1 + 32) dropInCenter];
    v12 = [v11 deviceManager];
    v6 = [v12 devices];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__HUDropInViewController_session_didFailWithError___block_invoke_136;
    v19[3] = &unk_277DC1F40;
    v19[4] = *(a1 + 32);
    v8 = [v6 na_firstObjectPassingTest:v19];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Session failed for DIDevice : %@", buf, 0x20u);
    }

    if ([v8 state] == 2)
    {
      v16 = 89;
    }

    else if ([v8 state] == 3)
    {
      v16 = 89;
    }

    else
    {
      v16 = 88;
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v16];
    [v17 _dismissRecordingUIWithError:v18];

    goto LABEL_15;
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) activeDropInSession];
    *buf = 138413058;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Received callback for session %@ which is different from current Session %@. Not Handling...", buf, 0x2Au);

LABEL_15:
  }
}

uint64_t __51__HUDropInViewController_session_didFailWithError___block_invoke_136(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status
{
  statusCopy = status;
  v43 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  activeDropInSession = [(HUDropInViewController *)self activeDropInSession];
  v9 = activeDropInSession;
  if (sessionCopy && activeDropInSession)
  {
    activeDropInSession2 = [(HUDropInViewController *)self activeDropInSession];

    if (activeDropInSession2 != sessionCopy)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(a2);
        activeDropInSession3 = [(HUDropInViewController *)self activeDropInSession];
        *buf = 138413058;
        selfCopy4 = self;
        v37 = 2112;
        v38 = v12;
        v39 = 2112;
        v40 = sessionCopy;
        v41 = 2112;
        v42 = activeDropInSession3;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Received callback for session %@ which is different from current Session %@. Not Handling...", buf, 0x2Au);

LABEL_16:
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy4 = self;
    v37 = 2112;
    v38 = v15;
    v39 = 1024;
    LODWORD(v40) = statusCopy;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ Uplink dropin audio muted? %{BOOL}d", buf, 0x1Cu);
  }

  v34 = statusCopy;

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = MEMORY[0x277D069D0];
    dropInCenter = [(HUDropInViewController *)self dropInCenter];
    sessionManager = [dropInCenter sessionManager];
    activeSession = [sessionManager activeSession];
    v22 = [v18 stringForDropInSessionState:{objc_msgSend(activeSession, "state")}];
    *buf = 138412802;
    selfCopy4 = self;
    v37 = 2112;
    v38 = v17;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin Session state: %@", buf, 0x20u);
  }

  dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
  sessionManager2 = [dropInCenter2 sessionManager];
  activeSession2 = [sessionManager2 activeSession];
  if ([activeSession2 state] == 6)
  {

    goto LABEL_14;
  }

  dropInCenter3 = [(HUDropInViewController *)self dropInCenter];
  sessionManager3 = [dropInCenter3 sessionManager];
  activeSession3 = [sessionManager3 activeSession];
  state = [activeSession3 state];

  if (state == 7)
  {
LABEL_14:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy4 = self;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Active session is already ended or removed. Ignoring mute status change.", buf, 0x16u);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  dropInCenter4 = [(HUDropInViewController *)self dropInCenter];
  sessionManager4 = [dropInCenter4 sessionManager];
  activeSession4 = [sessionManager4 activeSession];
  state2 = [activeSession4 state];

  if (state2 == 4)
  {
    if (![(HUDropInViewController *)self hasSessionStarted])
    {
      [(HUDropInViewController *)self setHasSessionStarted:1];
      [(HUDropInViewController *)self _updateRecordingUIWithConnectedState];
    }

    if (v34)
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOff];
    }

    else
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOn];
    }
  }

LABEL_18:
}

- (void)subscriber:(id)subscriber didUpdateBulletins:(id)bulletins
{
  v46 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = bulletinsCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Last Known Event Bulletins: %@", buf, 0x20u);
  }

  [(HUDropInViewController *)self setEventBulletins:bulletinsCopy];
  eventBulletins = [(HUDropInViewController *)self eventBulletins];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__HUDropInViewController_subscriber_didUpdateBulletins___block_invoke;
  v39[3] = &unk_277DC2008;
  v39[4] = self;
  v10 = [eventBulletins na_firstObjectPassingTest:v39];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Found last known event for accessory: %@", buf, 0x20u);
  }

  startDate = [v10 startDate];
  dateOfOccurrence = [v10 dateOfOccurrence];
  _displayedAccessoryName = [(HUDropInViewController *)self _displayedAccessoryName];
  v16 = [MEMORY[0x277CCA968] localizedStringFromDate:startDate dateStyle:0 timeStyle:1];
  if (![v10 state])
  {
    if ([startDate hf_isSingularHour])
    {
      v35 = @"HUDropIn_Description_Alarm_Started_SingularHour_FormatString";
    }

    else
    {
      v35 = @"HUDropIn_Description_Alarm_Started_PluralHour_FormatString";
    }

    v17 = HULocalizedStringWithFormat(v35, @"%@%@", v29, v30, v31, v32, v33, v34, _displayedAccessoryName);
    descriptionTextView = [(HUDropInViewController *)self descriptionTextView];
    [descriptionTextView setText:v17];
LABEL_21:

    goto LABEL_22;
  }

  if ([v10 state] == 1)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCA958]);
    [v17 setUnitsStyle:3];
    [v17 setAllowedUnits:64];
    descriptionTextView = [v17 stringFromDate:startDate toDate:dateOfOccurrence];
    [dateOfOccurrence timeIntervalSinceDate:startDate];
    v20 = v19;
    hf_isSingularHour = [startDate hf_isSingularHour];
    if (v20 >= 60.0)
    {
      if (hf_isSingularHour)
      {
        v36 = @"HUDropIn_Description_Alarm_Ended_SingularHour_FormatString";
      }

      else
      {
        v36 = @"HUDropIn_Description_Alarm_Ended_PluralHour_FormatString";
      }

      HULocalizedStringWithFormat(v36, @"%@%@%@", v22, v23, v24, v25, v26, v27, _displayedAccessoryName);
    }

    else
    {
      if (hf_isSingularHour)
      {
        v28 = @"HUDropIn_Description_Alarm_Ended_SingularHour_LessThanOneMin_FormatString";
      }

      else
      {
        v28 = @"HUDropIn_Description_Alarm_Ended_PluralHour_LessThanOneMin_FormatString";
      }

      HULocalizedStringWithFormat(v28, @"%@%@", v22, v23, v24, v25, v26, v27, _displayedAccessoryName);
    }
    v37 = ;
    descriptionTextView2 = [(HUDropInViewController *)self descriptionTextView];
    [descriptionTextView2 setText:v37];

    goto LABEL_21;
  }

LABEL_22:
}

uint64_t __56__HUDropInViewController_subscriber_didUpdateBulletins___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryIdentifier];
  v4 = [*(a1 + 32) currentAccessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 hmf_isEqualToUUID:v5];

  return v6;
}

- (void)controller:(id)controller didUpdateAudioPowerForDropInDevice:(float)device
{
  v18 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1379 description:@"didUpdateAudioPowerForDropInDevice called from secondary thread"];
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    deviceCopy2 = device;
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = deviceCopy2;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated audio power: %f", &v12, 0x20u);
  }

  else
  {
    deviceCopy2 = device;
  }

  audioWaveformView = [(HUDropInViewController *)self audioWaveformView];
  [audioWaveformView appendPowerLevel:(log10(deviceCopy2) * 20.0)];
}

- (void)manager:(id)manager didUpdateActiveSession:(id)session
{
  v31 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  activeDropInSession = [(HUDropInViewController *)self activeDropInSession];
  v8 = activeDropInSession;
  if (sessionCopy && activeDropInSession)
  {
    activeDropInSession2 = [(HUDropInViewController *)self activeDropInSession];

    if (activeDropInSession2 != sessionCopy)
    {
      dropInCenter3 = HFLogForCategory();
      if (!os_log_type_enabled(dropInCenter3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      sessionManager3 = NSStringFromSelector(a2);
      activeDropInSession3 = [(HUDropInViewController *)self activeDropInSession];
      v23 = 138413058;
      selfCopy2 = self;
      v25 = 2112;
      v26 = sessionManager3;
      v27 = 2112;
      v28 = sessionCopy;
      v29 = 2112;
      v30 = activeDropInSession3;
      _os_log_impl(&dword_20CEB6000, dropInCenter3, OS_LOG_TYPE_DEFAULT, "%@: %@ Received callback for session %@ which is different from current Session %@. Not Handling...", &v23, 0x2Au);
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    v23 = 138412802;
    selfCopy2 = self;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = sessionCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated active session: %@", &v23, 0x20u);
  }

  dropInCenter = [(HUDropInViewController *)self dropInCenter];
  sessionManager = [dropInCenter sessionManager];
  activeSession = [sessionManager activeSession];
  delegate = [activeSession delegate];

  if (!delegate)
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      dropInCenter2 = [(HUDropInViewController *)self dropInCenter];
      sessionManager2 = [dropInCenter2 sessionManager];
      activeSession2 = [sessionManager2 activeSession];
      v23 = 138412290;
      selfCopy2 = activeSession2;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Active dropin session == %@", &v23, 0xCu);
    }

    dropInCenter3 = [(HUDropInViewController *)self dropInCenter];
    sessionManager3 = [dropInCenter3 sessionManager];
    activeDropInSession3 = [sessionManager3 activeSession];
    [activeDropInSession3 setDelegate:self];
    goto LABEL_13;
  }

LABEL_15:
}

@end