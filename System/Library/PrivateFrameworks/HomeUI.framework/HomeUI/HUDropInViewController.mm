@interface HUDropInViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (HUDropInViewController)initWithServiceContext:(id)a3 blurEffectStyle:(int64_t)a4;
- (UIButton)doneButton;
- (UIButton)talkButton;
- (id)_contentViewBackgroundColor;
- (id)_displayedAccessoryName;
- (id)_waveformColor;
- (id)hu_preloadContent;
- (void)_cancelStartSessionRequestTimerIfNeeded;
- (void)_cleanUp;
- (void)_didPan:(id)a3;
- (void)_didTap:(id)a3;
- (void)_dismissDownRecordingView:(id)a3;
- (void)_dismissRecordingUIWithError:(id)a3;
- (void)_dismissUpRecordingView:(id)a3;
- (void)_endDropInSession;
- (void)_hideSpinner;
- (void)_launchDropInSessionIfNeeded;
- (void)_preloadContent:(id)a3;
- (void)_refreshHomeGraph:(id)a3;
- (void)_showSpinner;
- (void)_toggleMicrophone:(id)a3;
- (void)_updateRecordingUIWithConnectedState;
- (void)_updateRecordingUIWithDefaultState;
- (void)_updateRecordingUIWithMicrophoneOff;
- (void)_updateRecordingUIWithMicrophoneOn;
- (void)controller:(id)a3 didUpdateAudioPowerForDropInDevice:(float)a4;
- (void)dealloc;
- (void)device:(id)a3 didUpdateState:(int64_t)a4;
- (void)manager:(id)a3 didAddDevice:(id)a4;
- (void)manager:(id)a3 didUpdateActiveSession:(id)a4;
- (void)managerDidUpdateDevices:(id)a3;
- (void)serverDisconnectedForDropInCenter:(id)a3;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)session:(id)a3 didUpdateUplinkMuteStatus:(BOOL)a4;
- (void)streamControllerStateDidUpdate:(id)a3;
- (void)subscriber:(id)a3 didUpdateBulletins:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUDropInViewController

- (HUDropInViewController)initWithServiceContext:(id)a3 blurEffectStyle:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HUDropInViewController;
  v8 = [(HUDropInViewController *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:a4];
    blurEffect = v8->_blurEffect;
    v8->_blurEffect = v9;

    objc_storeStrong(&v8->_serviceContext, a3);
  }

  return v8;
}

- (void)viewDidLoad
{
  v377[1] = *MEMORY[0x277D85DE8];
  v374.receiver = self;
  v374.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v374 viewDidLoad];
  v3 = [(HUDropInViewController *)self currentHome];
  if (!v3 || (v4 = v3, [(HUDropInViewController *)self currentAccessory], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
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
  v11 = [(HUDropInViewController *)self view];
  [v11 addGestureRecognizer:self->_tapGestureRecognizer];

  v12 = [(HUDropInViewController *)self view];
  [v12 setAlpha:0.0];

  v13 = MEMORY[0x277D75D00];
  v14 = [(HUDropInViewController *)self blurEffect];
  v15 = [v13 effectForBlurEffect:v14 style:1];

  v16 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v15];
  dismissLabelVisualEffectView = self->_dismissLabelVisualEffectView;
  self->_dismissLabelVisualEffectView = v16;

  v18 = [(HUDropInViewController *)self view];
  [v18 naui_addAutoLayoutSubview:self->_dismissLabelVisualEffectView];

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
  v25 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v24 setTextColor:v25];

  [(UILabel *)self->_dismissLabel setAlpha:0.0];
  v26 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView contentView];
  [v26 naui_addAutoLayoutSubview:self->_dismissLabel];

  v27 = [(UILabel *)self->_dismissLabel text];
  v28 = [(HUDropInViewController *)self view];
  [v28 bounds];
  v30 = v29;
  v376 = *MEMORY[0x277D740A8];
  v31 = [(UILabel *)self->_dismissLabel font];
  v377[0] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v377 forKeys:&v376 count:1];
  [v27 boundingRectWithSize:1 options:v32 attributes:0 context:{v30, 3.40282347e38}];
  v366 = v33;

  v34 = MEMORY[0x277D75D00];
  v35 = [MEMORY[0x277D75210] effectWithStyle:4];
  v36 = [v34 effectForBlurEffect:v35 style:1];

  v370 = v36;
  v37 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v36];
  closeButtonVisualEffectView = self->_closeButtonVisualEffectView;
  self->_closeButtonVisualEffectView = v37;

  v39 = [(HUDropInViewController *)self view];
  [v39 naui_addAutoLayoutSubview:self->_closeButtonVisualEffectView];

  v40 = [MEMORY[0x277D75220] buttonWithType:1];
  closeButton = self->_closeButton;
  self->_closeButton = v40;

  [(UIButton *)self->_closeButton addTarget:self action:sel__dismissDownRecordingView_ forControlEvents:64];
  v42 = self->_closeButton;
  v43 = [MEMORY[0x277D755B8] hu_closeButtonImage];
  [(UIButton *)v42 setImage:v43 forState:0];

  v44 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView contentView];
  [v44 naui_addAutoLayoutSubview:self->_closeButton];

  v45 = objc_alloc(MEMORY[0x277D75D18]);
  v46 = *MEMORY[0x277CBF3A0];
  v47 = *(MEMORY[0x277CBF3A0] + 8);
  v48 = *(MEMORY[0x277CBF3A0] + 16);
  v49 = *(MEMORY[0x277CBF3A0] + 24);
  v50 = [v45 initWithFrame:{*MEMORY[0x277CBF3A0], v47, v48, v49}];
  contentView = self->_contentView;
  self->_contentView = v50;

  v52 = self->_contentView;
  v53 = [(HUDropInViewController *)self _contentViewBackgroundColor];
  [(UIView *)v52 setBackgroundColor:v53];

  [(UIView *)self->_contentView _setContinuousCornerRadius:16.0];
  [(UIView *)self->_contentView setAlpha:0.0];
  v54 = [(HUDropInViewController *)self view];
  [v54 naui_addAutoLayoutSubview:self->_contentView];

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
  v60 = [MEMORY[0x277D75348] systemWhiteColor];
  v375[0] = v60;
  v61 = [MEMORY[0x277D75348] systemRedColor];
  v375[1] = v61;
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

  v70 = [MEMORY[0x277D75348] systemGrayColor];
  [(UITextView *)self->_descriptionTextView setTextColor:v70];

  [(UITextView *)self->_descriptionTextView setScrollEnabled:0];
  [(UITextView *)self->_descriptionTextView setEditable:0];
  v71 = [(UITextView *)self->_descriptionTextView textContainer];
  [v71 setLineFragmentPadding:0.0];

  v72 = *MEMORY[0x277D768C8];
  v73 = *(MEMORY[0x277D768C8] + 8);
  v75 = *(MEMORY[0x277D768C8] + 16);
  v74 = *(MEMORY[0x277D768C8] + 24);
  [(UITextView *)self->_descriptionTextView setTextContainerInset:*MEMORY[0x277D768C8], v73, v75, v74];
  [(UITextView *)self->_descriptionTextView setContentInset:v72, v73, v75, v74];
  v76 = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_descriptionTextView setBackgroundColor:v76];

  [(UITextView *)self->_descriptionTextView setDataDetectorTypes:2];
  [(UITextView *)self->_descriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_descriptionTextView setAdjustsFontForContentSizeCategory:1];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_descriptionTextView];
  v77 = [MEMORY[0x277D180C8] preferredFontForTextStyle:v367 traits:32770];
  v78 = [(HUDropInViewController *)self titleLabel];
  [v78 setFont:v77];

  v79 = [(HUDropInViewController *)self titleLabel];
  [v79 setNumberOfLines:0];

  v80 = [(HUDropInViewController *)self titleLabel];
  [v80 sizeToFit];

  v81 = *MEMORY[0x277D769C0];
  v82 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769C0] traits:0x8000];
  v83 = [(HUDropInViewController *)self descriptionTextView];
  [v83 setFont:v82];

  v84 = [(HUDropInViewController *)self descriptionTextView];
  v85 = [v84 textContainer];
  [v85 setMaximumNumberOfLines:0];

  v86 = [(HUDropInViewController *)self descriptionTextView];
  [v86 sizeToFit];

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

  v92 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_spinnerLabel setTextColor:v92];

  [(UILabel *)self->_spinnerLabel setTextAlignment:1];
  [(UILabel *)self->_spinnerLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_spinnerLabel];
  v93 = [HUWaveformView alloc];
  v94 = [(HUDropInViewController *)self _waveformColor];
  v95 = [MEMORY[0x277D75348] systemGrayColor];
  v96 = [(HUWaveformView *)v93 initWithFrame:v94 waveformColor:v95 backgroundColor:v46, v47, v48, v49];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v96;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_audioWaveformView];
  v98 = [(HUDropInViewController *)self talkButton];
  [v98 setAlpha:0.0];

  v99 = [(HUDropInViewController *)self talkButton];
  [v99 setIsAccessibilityElement:1];

  v100 = [(HUDropInViewController *)self talkButton];
  [v100 addTarget:self action:sel__toggleMicrophone_ forControlEvents:64];

  v101 = self->_contentView;
  v102 = [(HUDropInViewController *)self talkButton];
  [(UIView *)v101 naui_addAutoLayoutSubview:v102];

  v103 = [(HUDropInViewController *)self doneButton];
  [v103 setAlpha:0.0];

  v104 = [(HUDropInViewController *)self doneButton];
  [v104 setIsAccessibilityElement:1];

  v105 = [(HUDropInViewController *)self doneButton];
  [v105 addTarget:self action:sel__toggleMicrophone_ forControlEvents:64];

  v106 = self->_contentView;
  v107 = [(HUDropInViewController *)self doneButton];
  [(UIView *)v106 naui_addAutoLayoutSubview:v107];

  v108 = [(HUDropInViewController *)self nearbyCameraProfile];

  if (v108)
  {
    v109 = [(HUDropInViewController *)self liveStreamController];
    v110 = [v109 view];
    liveCameraView = self->_liveCameraView;
    self->_liveCameraView = v110;

    [(UIView *)self->_liveCameraView _setContinuousCornerRadius:14.0];
    [(UIView *)self->_liveCameraView setClipsToBounds:1];
    [(UIView *)self->_liveCameraView setAlpha:0.0];
    [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_liveCameraView];
    v112 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    v113 = [(HUDropInViewController *)self nearbyCameraProfile];
    v114 = [v113 streamControl];
    v115 = 0;
    if ([v114 streamState] == 2)
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
  v126 = [MEMORY[0x277D75418] currentDevice];
  v127 = [v126 userInterfaceIdiom];

  v128 = self->_dismissLabelVisualEffectView;
  if ((v127 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v129 = [(UIVisualEffectView *)v128 centerXAnchor];
    v130 = [(UIView *)self->_contentView centerXAnchor];
    v131 = [v129 constraintEqualToAnchor:v130];
    [v125 addObject:v131];
  }

  else
  {
    v129 = [(UIVisualEffectView *)v128 leadingAnchor];
    v130 = [(HUDropInViewController *)self view];
    v131 = [v130 safeAreaLayoutGuide];
    v132 = [v131 leadingAnchor];
    v133 = [v129 constraintEqualToAnchor:v132];
    [v125 addObject:v133];
  }

  v134 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v135 = [(HUDropInViewController *)self view];
  v136 = [v135 safeAreaLayoutGuide];
  v137 = [v136 trailingAnchor];
  v138 = [v134 constraintEqualToAnchor:v137];
  [v125 addObject:v138];

  v139 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v140 = [(HUDropInViewController *)self view];
  v141 = [v140 safeAreaLayoutGuide];
  v142 = [v141 topAnchor];
  v143 = [v139 constraintEqualToAnchor:v142 constant:-25.0];
  dismissLabelTopConstraint = self->_dismissLabelTopConstraint;
  self->_dismissLabelTopConstraint = v143;

  [v125 addObject:self->_dismissLabelTopConstraint];
  v145 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v146 = [v145 constraintEqualToConstant:v366];
  [v125 addObject:v146];

  v147 = [(UILabel *)self->_dismissLabel leadingAnchor];
  v148 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView leadingAnchor];
  v149 = [v147 constraintEqualToAnchor:v148];
  [v125 addObject:v149];

  v150 = [(UILabel *)self->_dismissLabel trailingAnchor];
  v151 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v152 = [v150 constraintEqualToAnchor:v151];
  [v125 addObject:v152];

  v153 = [(UILabel *)self->_dismissLabel topAnchor];
  v154 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v155 = [v153 constraintEqualToAnchor:v154];
  [v125 addObject:v155];

  v156 = [(UILabel *)self->_dismissLabel heightAnchor];
  v157 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v158 = [v156 constraintEqualToAnchor:v157];
  [v125 addObject:v158];

  v159 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView topAnchor];
  v160 = [(HUDropInViewController *)self view];
  v161 = [v160 topAnchor];
  v162 = [v159 constraintEqualToAnchor:v161 constant:30.0];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v162;

  [v125 addObject:self->_closeButtonTopConstraint];
  v164 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView trailingAnchor];
  v165 = [(HUDropInViewController *)self view];
  v166 = [v165 safeAreaLayoutGuide];
  v167 = [v166 trailingAnchor];
  v168 = [v164 constraintEqualToAnchor:v167 constant:-16.0];
  [v125 addObject:v168];

  v169 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v170 = [v169 constraintEqualToConstant:30.0];
  [v125 addObject:v170];

  v171 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView widthAnchor];
  v172 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v173 = [v171 constraintEqualToAnchor:v172];
  [v125 addObject:v173];

  v174 = [(UIButton *)self->_closeButton topAnchor];
  v175 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView topAnchor];
  v176 = [v174 constraintEqualToAnchor:v175];
  [v125 addObject:v176];

  v177 = [(UIButton *)self->_closeButton trailingAnchor];
  v178 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView trailingAnchor];
  v179 = [v177 constraintEqualToAnchor:v178];
  [v125 addObject:v179];

  v180 = [(UIButton *)self->_closeButton heightAnchor];
  v181 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView heightAnchor];
  v182 = [v180 constraintEqualToAnchor:v181];
  [v125 addObject:v182];

  v183 = [(UIButton *)self->_closeButton widthAnchor];
  v184 = [(UIButton *)self->_closeButton heightAnchor];
  v185 = [v183 constraintEqualToAnchor:v184];
  [v125 addObject:v185];

  v186 = [MEMORY[0x277D75418] currentDevice];
  v187 = [v186 userInterfaceIdiom];

  v188 = v187 & 0xFFFFFFFFFFFFFFFBLL;
  v189 = [(UIView *)self->_contentView topAnchor];
  if (v188 == 1)
  {
    v190 = [(HUDropInViewController *)self view];
    v191 = [v190 topAnchor];
    v192 = [v189 constraintEqualToAnchor:v191 constant:30.0];
    contentViewTopConstraint = self->_contentViewTopConstraint;
    self->_contentViewTopConstraint = v192;

    [v125 addObject:self->_contentViewTopConstraint];
    v194 = [(UIView *)self->_contentView trailingAnchor];
    v195 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView leadingAnchor];
    v196 = [v194 constraintEqualToAnchor:v195 constant:-8.0];
    [v125 addObject:v196];
  }

  else
  {
    v197 = [(UIVisualEffectView *)self->_closeButtonVisualEffectView bottomAnchor];
    v198 = [v189 constraintEqualToAnchor:v197 constant:8.0];
    [v125 addObject:v198];

    v194 = [(UIView *)self->_contentView trailingAnchor];
    v195 = [(HUDropInViewController *)self view];
    v196 = [v195 safeAreaLayoutGuide];
    v199 = [v196 trailingAnchor];
    v200 = [v194 constraintEqualToAnchor:v199 constant:-10.0];
    [v125 addObject:v200];
  }

  v201 = [(UIView *)self->_contentView widthAnchor];
  v202 = [v201 constraintEqualToConstant:100.0];
  contentViewWidthConstraint = self->_contentViewWidthConstraint;
  self->_contentViewWidthConstraint = v202;

  [v125 addObject:self->_contentViewWidthConstraint];
  v204 = [(UIView *)self->_contentView heightAnchor];
  v205 = 0.0;
  v206 = [v204 constraintEqualToConstant:0.0];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v206;

  [v125 addObject:self->_contentViewHeightConstraint];
  v208 = [(HUDropInViewController *)self view];
  [v208 frame];
  v211 = HUViewSizeSubclassForViewSize(v209, v210);

  v212 = [HUGridBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:HUCellSizeSubclassForViewSizeSubclass(v211)];
  v213 = [(HUDropInViewController *)self iconView];
  v214 = [v213 leadingAnchor];
  v215 = [(UIView *)self->_contentView leadingAnchor];
  [v212 leadingInset];
  v216 = [v214 constraintEqualToAnchor:v215 constant:?];
  [v125 addObject:v216];

  v217 = [(HUDropInViewController *)self iconImageView];
  v218 = [v217 leadingAnchor];
  v219 = [(HUDropInViewController *)self iconView];
  v220 = [v219 leadingAnchor];
  v221 = [v218 constraintEqualToAnchor:v220];
  [v125 addObject:v221];

  v222 = [(HUDropInViewController *)self iconView];
  v223 = [v222 topAnchor];
  v224 = [(UIView *)self->_contentView topAnchor];
  [v212 titleTopInset];
  v225 = [v223 constraintEqualToAnchor:v224 constant:?];
  [v125 addObject:v225];

  v226 = [(HUDropInViewController *)self iconImageView];
  v227 = [v226 topAnchor];
  v228 = [(HUDropInViewController *)self iconView];
  v229 = [v228 topAnchor];
  v230 = [v227 constraintEqualToAnchor:v229];
  [v125 addObject:v230];

  v231 = [(HUDropInViewController *)self iconView];
  v232 = [v231 heightAnchor];
  [v212 iconHeight];
  v233 = [v232 constraintEqualToConstant:?];
  [v125 addObject:v233];

  v234 = [(HUDropInViewController *)self iconImageView];
  v235 = [v234 heightAnchor];
  v236 = [(HUDropInViewController *)self iconImageView];
  v237 = [v236 image];
  if (v237)
  {
    [v212 iconHeight];
    v205 = v238;
  }

  v239 = [v235 constraintEqualToConstant:v205];
  [v125 addObject:v239];

  v240 = [(HUDropInViewController *)self iconView];
  v241 = [v240 widthAnchor];
  v242 = [(HUDropInViewController *)self iconView];
  v243 = [v242 heightAnchor];
  v244 = [v241 constraintEqualToAnchor:v243];
  [v125 addObject:v244];

  v245 = [(HUDropInViewController *)self iconImageView];
  v246 = [v245 widthAnchor];
  v247 = [(HUDropInViewController *)self iconImageView];
  v248 = [v247 heightAnchor];
  v249 = [v246 constraintEqualToAnchor:v248];
  [v125 addObject:v249];

  v250 = [(HUDropInViewController *)self traitCollection];
  v251 = [v250 preferredContentSizeCategory];
  v252 = *MEMORY[0x277D767F8];

  v253 = [(HUDropInViewController *)self titleLabel];
  v254 = [v253 topAnchor];
  if (v251 >= v252)
  {
    v262 = [(HUDropInViewController *)self iconView];
    v263 = [v262 bottomAnchor];
    [v212 verticalSpacingForLipElements];
    v264 = [v254 constraintEqualToAnchor:v263 constant:?];
    [v125 addObject:v264];

    v257 = [(HUDropInViewController *)self titleLabel];
    v258 = [v257 leadingAnchor];
    v259 = [(UIView *)self->_contentView leadingAnchor];
    [v212 leadingInset];
    v260 = [v258 constraintEqualToAnchor:v259 constant:?];
    [v125 addObject:v260];
  }

  else
  {
    v255 = [(UIView *)self->_contentView topAnchor];
    [v212 titleTopInset];
    v256 = [v254 constraintEqualToAnchor:v255 constant:?];
    [v125 addObject:v256];

    v257 = [(HUDropInViewController *)self titleLabel];
    v258 = [v257 leadingAnchor];
    v259 = [(HUDropInViewController *)self iconView];
    v260 = [v259 trailingAnchor];
    [v212 horizontalItemSpacing];
    v261 = [v258 constraintEqualToAnchor:v260 constant:?];
    [v125 addObject:v261];
  }

  v265 = [(HUDropInViewController *)self titleLabel];
  v266 = [v265 trailingAnchor];
  v267 = [(UIView *)self->_contentView trailingAnchor];
  [v212 trailingInset];
  v269 = [v266 constraintEqualToAnchor:v267 constant:-v268];
  [v125 addObject:v269];

  v270 = [(HUDropInViewController *)self descriptionTextView];
  v271 = [v270 topAnchor];
  v272 = [(HUDropInViewController *)self titleLabel];
  v273 = [v272 bottomAnchor];
  [v212 verticalLabelSpacing];
  v274 = [v271 constraintEqualToAnchor:v273 constant:?];
  [v125 addObject:v274];

  v275 = [(HUDropInViewController *)self traitCollection];
  v276 = [v275 preferredContentSizeCategory];

  v277 = [(HUDropInViewController *)self descriptionTextView];
  v278 = [v277 leadingAnchor];
  if (v276 >= v252)
  {
    v279 = [(UIView *)self->_contentView leadingAnchor];
    [v212 leadingInset];
    v280 = [v278 constraintEqualToAnchor:v279 constant:?];
    [v125 addObject:v280];
  }

  else
  {
    v279 = [(HUDropInViewController *)self iconView];
    v280 = [v279 trailingAnchor];
    [v212 horizontalItemSpacing];
    v281 = [v278 constraintEqualToAnchor:v280 constant:?];
    [v125 addObject:v281];
  }

  v282 = [(HUDropInViewController *)self descriptionTextView];
  v283 = [v282 trailingAnchor];
  v284 = [(UIView *)self->_contentView trailingAnchor];
  [v212 trailingInset];
  v286 = [v283 constraintEqualToAnchor:v284 constant:-v285];
  [v125 addObject:v286];

  v287 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v288 = [(UIView *)self->_contentView centerYAnchor];
  v289 = [v287 constraintEqualToAnchor:v288];
  [v125 addObject:v289];

  v290 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v291 = [(UIView *)self->_contentView centerXAnchor];
  v292 = [v290 constraintEqualToAnchor:v291];
  [v125 addObject:v292];

  v293 = [(UILabel *)self->_spinnerLabel leadingAnchor];
  v294 = [(UIView *)self->_contentView leadingAnchor];
  v295 = [v293 constraintEqualToAnchor:v294];
  [v125 addObject:v295];

  v296 = [(UILabel *)self->_spinnerLabel trailingAnchor];
  v297 = [(UIView *)self->_contentView trailingAnchor];
  v298 = [v296 constraintEqualToAnchor:v297];
  [v125 addObject:v298];

  v299 = [(UILabel *)self->_spinnerLabel topAnchor];
  v300 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v301 = [v299 constraintEqualToAnchor:v300 constant:24.0];
  [v125 addObject:v301];

  v302 = [(UILabel *)self->_spinnerLabel centerXAnchor];
  v303 = [(UIView *)self->_contentView centerXAnchor];
  v304 = [v302 constraintEqualToAnchor:v303];
  [v125 addObject:v304];

  v305 = [(HUDropInViewController *)self nearbyCameraProfile];

  if (v305)
  {
    v306 = [(UIView *)self->_liveCameraView centerXAnchor];
    v307 = [(UIView *)self->_contentView centerXAnchor];
    v308 = [v306 constraintEqualToAnchor:v307];
    [v125 addObject:v308];

    v309 = [(HUDropInViewController *)self liveCameraView];
    v310 = [v309 topAnchor];
    v311 = [(UILabel *)self->_spinnerLabel bottomAnchor];
    v312 = [v310 constraintEqualToAnchor:v311 constant:20.0];
    [(HUDropInViewController *)self setCameraLiveStreamViewTopConstraintToSpinnerLabel:v312];

    v313 = [(HUDropInViewController *)self liveCameraView];
    v314 = [v313 topAnchor];
    v315 = [(UITextView *)self->_descriptionTextView bottomAnchor];
    v316 = [v314 constraintEqualToAnchor:v315 constant:20.0];
    [(HUDropInViewController *)self setCameraLiveStreamViewTopConstraintToDescriptionTextView:v316];

    v317 = [(UIView *)self->_liveCameraView widthAnchor];
    v318 = [(UIView *)self->_contentView widthAnchor];
    v319 = [v317 constraintEqualToAnchor:v318 multiplier:0.85];
    [v125 addObject:v319];

    v320 = [(UIView *)self->_liveCameraView heightAnchor];
    v321 = [(UIView *)self->_liveCameraView widthAnchor];
    v322 = [v320 constraintEqualToAnchor:v321 multiplier:0.5625];
    [v125 addObject:v322];

    v323 = [(HUWaveformView *)self->_audioWaveformView topAnchor];
    v324 = [(UIView *)self->_liveCameraView bottomAnchor];
    v325 = [v323 constraintEqualToAnchor:v324 constant:20.0];
    [v125 addObject:v325];

    v326 = [(HULegibilityLabel *)self->_descriptionLabel bottomAnchor];
    v327 = [(UIView *)self->_liveCameraView bottomAnchor];
    v328 = [v326 constraintEqualToAnchor:v327 constant:-10.0];
    [v125 addObject:v328];

    v329 = [(HULegibilityLabel *)self->_descriptionLabel leadingAnchor];
    v330 = [(UIView *)self->_liveCameraView leadingAnchor];
    v331 = [v329 constraintEqualToAnchor:v330 constant:10.0];
    [v125 addObject:v331];

    v332 = [(HULegibilityLabel *)self->_descriptionLabel trailingAnchor];
    v333 = [(UIView *)self->_liveCameraView trailingAnchor];
    [v332 constraintLessThanOrEqualToAnchor:v333 constant:-10.0];
  }

  else
  {
    v332 = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
    v333 = [(UIView *)self->_contentView centerYAnchor];
    [v332 constraintEqualToAnchor:v333];
  }
  v334 = ;
  [v125 addObject:v334];

  v335 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  v336 = [(UIView *)self->_contentView leadingAnchor];
  v337 = [v335 constraintEqualToAnchor:v336];
  [v125 addObject:v337];

  v338 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  v339 = [(UIView *)self->_contentView trailingAnchor];
  v340 = [v338 constraintEqualToAnchor:v339];
  [v125 addObject:v340];

  v341 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v342 = [v341 constraintEqualToConstant:70.0];
  [v125 addObject:v342];

  v343 = [(UIButton *)self->_talkButton heightAnchor];
  v344 = [v343 constraintEqualToConstant:44.0];
  [v125 addObject:v344];

  v345 = [(UIButton *)self->_talkButton widthAnchor];
  v346 = [v345 constraintLessThanOrEqualToConstant:355.0];
  [v125 addObject:v346];

  v347 = [(UIButton *)self->_talkButton centerXAnchor];
  v348 = [(UIView *)self->_contentView centerXAnchor];
  v349 = [v347 constraintEqualToAnchor:v348];
  [v125 addObject:v349];

  v350 = [(UIButton *)self->_talkButton bottomAnchor];
  v351 = [(UIView *)self->_contentView bottomAnchor];
  v352 = [v350 constraintEqualToAnchor:v351 constant:-45.0];
  [v125 addObject:v352];

  v353 = [(UIButton *)self->_doneButton heightAnchor];
  v354 = [v353 constraintEqualToConstant:44.0];
  [v125 addObject:v354];

  v355 = [(UIButton *)self->_doneButton widthAnchor];
  v356 = [v355 constraintLessThanOrEqualToConstant:355.0];
  [v125 addObject:v356];

  v357 = [(UIButton *)self->_doneButton centerXAnchor];
  v358 = [(UIView *)self->_contentView centerXAnchor];
  v359 = [v357 constraintEqualToAnchor:v358];
  [v125 addObject:v359];

  v360 = [(UIButton *)self->_doneButton bottomAnchor];
  v361 = [(UIView *)self->_contentView bottomAnchor];
  v362 = [v360 constraintEqualToAnchor:v361 constant:-45.0];
  [v125 addObject:v362];

  [MEMORY[0x277CCAAD0] activateConstraints:v125];
  v363 = [(HUDropInViewController *)self view];
  [v363 layoutIfNeeded];

  v364 = [(HUDropInViewController *)self titleLabel];
  [v364 becomeFirstResponder];

  v365 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v365 addAccessoryObserver:self];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v7 viewWillDisappear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v9 = self;
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
    v8 = self;
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
    v24 = self;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v6 = [(HUDropInViewController *)self dropInCenter];
  v7 = [v6 deviceManager];
  v8 = [v7 devices];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ Device list for drop-in: %@", buf, 0x20u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__HUDropInViewController__endDropInSession__block_invoke;
  v22[3] = &unk_277DC1F40;
  v22[4] = self;
  v11 = [v8 na_firstObjectPassingTest:v22];
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

  v13 = [(HUDropInViewController *)self dropInCenter];
  v14 = [v13 sessionManager];
  v15 = [v14 activeSession];

  v16 = HFLogForCategory();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277D069D0] stringForDropInSessionState:{objc_msgSend(v15, "state")}];
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Current dropin session state: %@", buf, 0xCu);
    }

    [(HUDropInViewController *)self setHasAttemptedEndingDropInSessionCall:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__HUDropInViewController__endDropInSession__block_invoke_66;
    v19[3] = &unk_277DB7E90;
    v20 = v15;
    v21 = self;
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
  v3 = [(HUDropInViewController *)self dropInCenter];
  v4 = [v3 deviceManager];
  [v4 setDelegate:0];

  v5 = [(HUDropInViewController *)self dropInCenter];
  v6 = [v5 sessionManager];
  [v6 setDelegate:0];

  v7 = [(HUDropInViewController *)self dropInAudioPowerController];
  [v7 setDelegate:0];

  v8 = [(HUDropInViewController *)self lastKnownEventSubscriber];
  [v8 setDelegate:0];

  v9 = [(HUDropInViewController *)self liveStreamController];
  [v9 setLiveStreamControllerDelegate:0];

  [(HUDropInViewController *)self setLiveStreamController:0];
  [(HUDropInViewController *)self setLastKnownEventSubscriber:0];
  [(HUDropInViewController *)self setDropInAudioPowerController:0];
  v10 = [(HUDropInViewController *)self audioWaveformView];
  [v10 clearPowerLevels];

  [(HUDropInViewController *)self setAudioWaveformView:0];
  [(HUDropInViewController *)self setDropInCenter:0];

  [(HUDropInViewController *)self setActiveDropInSession:0];
}

- (void)_cancelStartSessionRequestTimerIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HUDropInViewController *)self startSessionRequestTimer];

  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HUDropInViewController *)self startSessionRequestTimer];
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Cancelling start session request timer %@", &v7, 0x16u);
    }

    v6 = [(HUDropInViewController *)self startSessionRequestTimer];
    [v6 invalidate];

    [(HUDropInViewController *)self setStartSessionRequestTimer:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(HUDropInViewController *)self contentView];
  v5 = [(HUDropInViewController *)self _contentViewBackgroundColor];
  [v4 setBackgroundColor:v5];

  v7 = [(HUDropInViewController *)self audioWaveformView];
  v6 = [(HUDropInViewController *)self _waveformColor];
  [v7 setWaveformColor:v6];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUDropInViewController;
  [(HUDropInViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = [(HUDropInViewController *)self contentViewWidthConstraint];
    [v7 setConstant:395.0];
  }
}

- (void)_showSpinner
{
  v3 = [(HUDropInViewController *)self spinnerLabel];
  [v3 setHidden:0];

  v4 = [(HUDropInViewController *)self spinner];
  [v4 setHidden:0];

  v5 = [(HUDropInViewController *)self spinner];
  [v5 startAnimating];

  v6 = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToDescriptionTextView];
  [v6 setActive:0];

  v7 = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToSpinnerLabel];
  [v7 setActive:1];

  v8 = [(HUDropInViewController *)self contentView];
  [v8 setNeedsLayout];
}

- (void)_hideSpinner
{
  v3 = [(HUDropInViewController *)self spinnerLabel];
  [v3 setHidden:1];

  v4 = [(HUDropInViewController *)self spinner];
  [v4 setHidden:1];

  v5 = [(HUDropInViewController *)self spinner];
  [v5 stopAnimating];

  v6 = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToSpinnerLabel];
  [v6 setActive:0];

  v7 = [(HUDropInViewController *)self cameraLiveStreamViewTopConstraintToDescriptionTextView];
  [v7 setActive:1];

  v8 = [(HUDropInViewController *)self contentView];
  [v8 setNeedsLayout];
}

- (void)_toggleMicrophone:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v14, 0x16u);
  }

  v7 = [(HUDropInViewController *)self dropInCenter];
  v8 = [v7 sessionManager];
  v9 = [v8 activeSession];
  v10 = [v9 isUplinkMuted];
  v11 = [(HUDropInViewController *)self dropInCenter];
  v12 = [v11 sessionManager];
  v13 = [v12 activeSession];
  [v13 setUplinkMuted:v10 ^ 1u];
}

- (void)_updateRecordingUIWithDefaultState
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", &v13, 0x16u);
  }

  [(HUDropInViewController *)self _showSpinner];
  v6 = [(HUDropInViewController *)self talkButton];
  [v6 setAlpha:0.0];

  v7 = [(HUDropInViewController *)self doneButton];
  [v7 setAlpha:0.0];

  v8 = [(HUDropInViewController *)self audioWaveformView];
  [v8 clearPowerLevels];

  v9 = [(HUDropInViewController *)self audioWaveformView];
  [v9 setAlpha:0.0];

  v10 = [(HUDropInViewController *)self liveCameraView];
  [v10 setAlpha:0.0];

  v11 = [(HUDropInViewController *)self descriptionLabel];
  [v11 setAlpha:0.0];

  v12 = [(HUDropInViewController *)self view];
  [v12 layoutIfNeeded];
}

- (void)_updateRecordingUIWithConnectedState
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v8 = self;
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
    v8 = self;
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
    v8 = self;
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

- (void)_dismissRecordingUIWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Dismissing UI due to error: %@", buf, 0x20u);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __55__HUDropInViewController__dismissRecordingUIWithError___block_invoke;
  v13 = &unk_277DB8AB0;
  v14 = self;
  v15 = v5;
  v8 = v5;
  v9 = _Block_copy(&v10);
  [(HUDropInViewController *)self _dismissUpRecordingView:v9, v10, v11, v12, v13, v14];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 view];
  v11 = [(HUDropInViewController *)self talkButton];
  if (v10 != v11)
  {
    v4 = [v9 view];
    v5 = [(HUDropInViewController *)self doneButton];
    if (v4 != v5)
    {
      v12 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v13 = [(HUDropInViewController *)self tapGestureRecognizer];
  v12 = v13 == v8;

  if (v10 != v11)
  {
    goto LABEL_5;
  }

LABEL_6:

  return !v12;
}

- (void)_didTap:(id)a3
{
  v4 = a3;
  v5 = [(HUDropInViewController *)self view];
  [v4 locationOfTouch:0 inView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(HUDropInViewController *)self contentView];
  [v10 frame];
  v12 = v11;
  v13 = [(HUDropInViewController *)self contentView];
  [v13 frame];
  if (v9 > v12 + v14)
  {
    v17 = 1;
  }

  else
  {
    v15 = [(HUDropInViewController *)self contentView];
    [v15 frame];
    v17 = v9 < v16;
  }

  v18 = [(HUDropInViewController *)self contentView];
  [v18 frame];
  v20 = v7 < v19;

  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v17 || v20) || v17)
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

- (void)_didPan:(id)a3
{
  v4 = a3;
  v5 = [(HUDropInViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;

  v8 = [v4 state];
  if (v8 == 3)
  {
    v9 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [v9 constant];
    v11 = v10;

    if (v11 > 120.0)
    {

      [(HUDropInViewController *)self _dismissDownRecordingView:0];
      return;
    }

    v22 = [MEMORY[0x277D75418] currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v24 = [(HUDropInViewController *)self contentViewTopConstraint];
      [v24 setConstant:30.0];
    }

    v25 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [v25 setConstant:30.0];

    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:-25.0];
    [(UILabel *)self->_dismissLabel setAlpha:0.0];
    v26 = [(HUDropInViewController *)self view];
    [v26 setNeedsLayout];
    goto LABEL_15;
  }

  if (v7 > 49.0)
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v14 = [(HUDropInViewController *)self contentViewTopConstraint];
      [v14 setConstant:v7];
    }

    v15 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [v15 setConstant:v7];

    v16 = v7 + -25.0;
    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:v16];
    v17 = [(HUDropInViewController *)self dismissLabel];
    [v17 setAlpha:v16 / 120.0];

    v18 = [(HUDropInViewController *)self view];
    [v18 layoutIfNeeded];

    v19 = [(HUDropInViewController *)self closeButtonTopConstraint];
    [v19 constant];
    v21 = v20;

    if (v21 > 120.0)
    {
      v26 = [(HUDropInViewController *)self feedbackGenerator];
      [v26 impactOccurredWithIntensity:1.0];
LABEL_15:
    }
  }
}

- (void)_dismissUpRecordingView:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HUDropInViewController__dismissUpRecordingView___block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:a3 animations:0.25 completion:0.0];
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

- (void)_dismissDownRecordingView:(id)a3
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
  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [(HUDropInViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemWhiteColor];

    v3 = v6;
  }

  return v3;
}

- (id)_contentViewBackgroundColor
{
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [(HUDropInViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemBlackColor];

    v3 = v6;
  }

  return v3;
}

- (void)_launchDropInSessionIfNeeded
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = [(HUDropInViewController *)self dropInCenter];
  v5 = [v4 deviceManager];
  v6 = [v5 devices];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v36 = self;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Device list for drop-in: %@", buf, 0x20u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke;
  v34[3] = &unk_277DC1F40;
  v34[4] = self;
  v9 = [v6 na_firstObjectPassingTest:v34];
  [v9 setDelegate:self];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412802;
    v36 = self;
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
      v36 = self;
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
        v36 = self;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: %@ This device is supposedly not available for DropIn at this time. Will attempt session start anyway.", buf, 0x16u);
      }

      v21 = [MEMORY[0x277CBEAA8] now];
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromSelector(a2);
        v24 = [v9 stateExpiration];
        *buf = 138413058;
        v36 = self;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v21;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: %@ Current date (%@) vs DropIn expiration date (%@)", buf, 0x2Au);
      }
    }

    v25 = HFLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      v36 = self;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@: %@ No active dropin session. Will launch new session for device %@.", buf, 0x20u);
    }

    v12 = [objc_alloc(MEMORY[0x277D069C0]) initWithDevice:v9];
    v27 = [(HUDropInViewController *)self dropInCenter];
    v28 = [v27 sessionManager];
    [v28 setDelegate:self];

    [(HUDropInViewController *)self setHasAttemptedDropInSessionCall:1];
    [(HUDropInViewController *)self _updateRecordingUIWithDefaultState];
    v29 = [(HUDropInViewController *)self spinnerLabel];
    v30 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Connecting_State", @"HUDropIn_Label_Connecting_State", 1);
    [v29 setText:v30];

    objc_initWeak(buf, self);
    v31 = [(HUDropInViewController *)self dropInCenter];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__HUDropInViewController__launchDropInSessionIfNeeded__block_invoke_76;
    v32[3] = &unk_277DC1F68;
    objc_copyWeak(&v33, buf);
    [v31 startSessionWithRequest:v12 completionHandler:v32];

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
      v36 = self;
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

    v7 = [MEMORY[0x277D75348] systemYellowColor];
    [(UIButton *)v4 setBackgroundColor:v7];

    v8 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:v8];

    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    v9 = [MEMORY[0x277D755B8] hu_microphoneGlyphForTalkingState:0 usingStandardSymbolConfiguration:1];
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setImage:v9];
    [(UIButton *)v4 addSubview:v10];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x277D75348] systemBlackColor];
    [v11 setTextColor:v12];

    [(UIButton *)v4 addSubview:v11];
    v13 = [v10 topAnchor];
    v14 = [(UIButton *)v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:13.0];
    [v15 setActive:1];

    v16 = [v10 leadingAnchor];
    v17 = [(UIButton *)v4 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:25.0];
    [v18 setActive:1];

    v19 = [v10 widthAnchor];
    v20 = [v19 constraintEqualToConstant:18.0];
    [v20 setActive:1];

    v21 = [v10 heightAnchor];
    v22 = [v21 constraintEqualToConstant:18.0];
    [v22 setActive:1];

    v23 = [v11 topAnchor];
    v24 = [(UIButton *)v4 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:13.0];
    [v25 setActive:1];

    v26 = [v11 leadingAnchor];
    v27 = [v10 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];
    [v28 setActive:1];

    v29 = [v11 trailingAnchor];
    v30 = [(UIButton *)v4 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-25.0];
    [v31 setActive:1];

    v32 = [v11 heightAnchor];
    v33 = [v32 constraintEqualToConstant:18.0];
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

    v7 = [MEMORY[0x277D75348] systemYellowColor];
    [(UIButton *)v4 setBackgroundColor:v7];

    v8 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:v8];

    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D75348] systemBlackColor];
    [v9 setTextColor:v10];

    [(UIButton *)v4 addSubview:v9];
    v11 = [v9 topAnchor];
    v12 = [(UIButton *)v4 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:13.0];
    [v13 setActive:1];

    v14 = [v9 leadingAnchor];
    v15 = [(UIButton *)v4 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:25.0];
    [v16 setActive:1];

    v17 = [v9 trailingAnchor];
    v18 = [(UIButton *)v4 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-25.0];
    [v19 setActive:1];

    v20 = [v9 heightAnchor];
    v21 = [v20 constraintEqualToConstant:18.0];
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
  v3 = [(HUDropInViewController *)self currentAccessory];
  v4 = [v3 hf_serviceNameComponents];
  v5 = [v4 composedString];

  v6 = [(HUDropInViewController *)self currentAccessory];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(HUDropInViewController *)self currentAccessory];
    v8 = [v7 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];
    v9 = [v8 composedString];

    v5 = v9;
  }

  return v5;
}

- (void)managerDidUpdateDevices:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    v35 = self;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Device manager: %@", buf, 0x20u);
  }

  v8 = [(HUDropInViewController *)self dropInCenter];
  v9 = [v8 deviceManager];
  v10 = [v9 devices];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__HUDropInViewController_managerDidUpdateDevices___block_invoke;
  v33[3] = &unk_277DC1F40;
  v33[4] = self;
  v11 = [v10 na_firstObjectPassingTest:v33];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSince1970];
    v14 = v13;
    v15 = [v11 stateExpiration];
    [v15 timeIntervalSince1970];
    v17 = v14 > v16;

    if ([v11 state] == 0 || v17)
    {
      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v35 = self;
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
      v22 = [(HUDropInViewController *)self currentAccessory];
      *buf = 138412802;
      v35 = self;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@: %@ Unable to find dropin device for accessory %@", buf, 0x20u);
    }

    v23 = [(HUDropInViewController *)self startSessionRequestTimer];
    v24 = v23 == 0;

    if (v24)
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = self;
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

- (void)manager:(id)a3 didAddDevice:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Added Device: %@", buf, 0x20u);
  }

  v9 = [(HUDropInViewController *)self dropInCenter];
  v10 = [v9 deviceManager];
  v11 = [v10 devices];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__HUDropInViewController_manager_didAddDevice___block_invoke;
  v15[3] = &unk_277DC1F40;
  v15[4] = self;
  v12 = [v11 na_firstObjectPassingTest:v15];

  if (v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v17 = self;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
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

- (void)device:(id)a3 didUpdateState:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [MEMORY[0x277D069B0] stringForDeviceState:a4];
    v15 = 138413058;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated Device state to %@ for device: %@", &v15, 0x2Au);
  }

  v11 = [(HUDropInViewController *)self dropInCenter];
  v12 = [v11 sessionManager];
  v13 = [v12 activeSession];
  v14 = [v13 state];

  if (a4 == 2 && v14 == 2)
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
    v23 = self;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Preload content", buf, 0x16u);
  }

  v6 = [(HUDropInViewController *)self serviceContext];
  v7 = [v6 homeIdentifier];

  v8 = [(HUDropInViewController *)self serviceContext];
  v9 = [v8 accessoryIdentifier];

  objc_initWeak(buf, self);
  v10 = [MEMORY[0x277D146E8] sharedDispatcher];
  v11 = [v10 allHomesFuture];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__HUDropInViewController_hu_preloadContent__block_invoke;
  v18[3] = &unk_277DBD400;
  objc_copyWeak(&v21, buf);
  v12 = v7;
  v19 = v12;
  v13 = v9;
  v20 = v13;
  v14 = [v11 flatMap:v18];
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

- (void)_preloadContent:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1133 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUDropInViewController *)self currentAccessory];
    v8 = [(HUDropInViewController *)self currentHome];
    *buf = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Current accessory = %@ | Current home = %@", buf, 0x16u);
  }

  v9 = [(HUDropInViewController *)self currentHome];
  if (v9 && (v10 = v9, [(HUDropInViewController *)self currentAccessory], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [(HUDropInViewController *)self currentHome];
    v13 = [v12 createHomeAudioAnalysisEventSubscriber];
    [(HUDropInViewController *)self setLastKnownEventSubscriber:v13];

    v14 = [(HUDropInViewController *)self lastKnownEventSubscriber];
    [v14 setDelegate:self];

    v15 = [(HUDropInViewController *)self lastKnownEventSubscriber];
    v16 = [(HUDropInViewController *)self currentAccessory];
    v17 = [v16 uniqueIdentifier];
    [v15 subscribeLastKnownEventsForAccessory:v17 completion:&__block_literal_global_224];

    v18 = objc_alloc(MEMORY[0x277D069B8]);
    v19 = [(HUDropInViewController *)self currentHome];
    v20 = [v19 uniqueIdentifier];
    v21 = [v18 initWithHomeIdentifier:v20 queue:MEMORY[0x277D85CD0]];
    [(HUDropInViewController *)self setDropInCenter:v21];

    v22 = [(HUDropInViewController *)self dropInCenter];
    [v22 setDelegate:self];

    v23 = [(HUDropInViewController *)self dropInCenter];
    v24 = [v23 deviceManager];
    [v24 setDelegate:self];

    v25 = [(HUDropInViewController *)self currentHome];
    v26 = [v25 hf_allCameraProfiles];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__HUDropInViewController__preloadContent___block_invoke_129;
    v35[3] = &unk_277DC1F90;
    v35[4] = self;
    v35[5] = a2;
    v27 = [v26 na_firstObjectPassingTest:v35];
    [(HUDropInViewController *)self setNearbyCameraProfile:v27];

    v28 = [(HUDropInViewController *)self nearbyCameraProfile];

    if (v28)
    {
      v29 = [HUCameraLiveStreamViewController alloc];
      v30 = [(HUDropInViewController *)self nearbyCameraProfile];
      v31 = [(HUCameraLiveStreamViewController *)v29 initWithCameraProfile:v30];
      [(HUDropInViewController *)self setLiveStreamController:v31];

      v32 = [(HUDropInViewController *)self liveStreamController];
      [v32 setLiveStreamControllerDelegate:self];
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

  [v5 finishWithNoResult];
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

- (void)_refreshHomeGraph:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1168 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v6 = [(HUDropInViewController *)self serviceContext];
  v7 = [v6 homeIdentifier];

  v8 = [(HUDropInViewController *)self serviceContext];
  v9 = [v8 accessoryIdentifier];

  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [MEMORY[0x277D146E8] sharedDispatcher];
  v12 = [v11 homeManager];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__HUDropInViewController__refreshHomeGraph___block_invoke;
  v20[3] = &unk_277DBBFB8;
  v21 = v10;
  v22 = v5;
  v23 = self;
  v24 = v7;
  v25 = v9;
  v14 = v9;
  v15 = v7;
  v16 = v5;
  v17 = v10;
  v18 = [v12 _refreshBeforeDate:v13 completionHandler:v20];
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

- (void)streamControllerStateDidUpdate:(id)a3
{
  v11 = [(HUDropInViewController *)self nearbyCameraProfile];
  v7 = [v11 streamControl];
  v8 = [v7 streamState];
  if (v8 == 2)
  {
    _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
  }

  else
  {
    v3 = [(HUDropInViewController *)self nearbyCameraProfile];
    v4 = [v3 snapshotControl];
    v5 = [v4 mostRecentSnapshot];
    [v5 hf_localizedAge];
  }
  v9 = ;
  v10 = [(HUDropInViewController *)self descriptionLabel];
  [v10 setText:v9];

  if (v8 != 2)
  {

    v9 = v3;
  }
}

- (void)serverDisconnectedForDropInCenter:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v11;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: %@ Disconnected from DropIn process", &v12, 0x16u);
  }

  v6 = [(HUDropInViewController *)self dropInCenter];
  v7 = [v6 sessionManager];
  v8 = [v7 activeSession];

  if (v8)
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

- (void)session:(id)a3 didUpdateState:(unint64_t)a4 reason:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [(HUDropInViewController *)self activeDropInSession];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [(HUDropInViewController *)self activeDropInSession];

    if (v12 != v9)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(a2);
        v15 = [(HUDropInViewController *)self activeDropInSession];
        v33 = 138413058;
        v34 = self;
        v35 = 2112;
        v36 = v14;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v15;
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
    v18 = [MEMORY[0x277D069D0] stringForDropInSessionState:a4];
    v19 = [MEMORY[0x277D069D0] stringForDropInSessionStateReason:a5];
    v33 = 138413058;
    v34 = self;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v19;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin Session state: %@ with reason: %@", &v33, 0x2Au);
  }

  if ([v9 state] == 1)
  {
    v20 = [(HUDropInViewController *)self spinnerLabel];
    v21 = _HULocalizedStringWithDefaultValue(@"HUDropIn_Label_Connecting_State", @"HUDropIn_Label_Connecting_State", 1);
    [v20 setText:v21];
  }

  else if ([v9 state] == 4 && !-[HUDropInViewController hasSessionStarted](self, "hasSessionStarted"))
  {
    [(HUDropInViewController *)self setHasSessionStarted:1];
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [(HUDropInViewController *)self dropInCenter];
      v25 = [v24 sessionManager];
      v26 = [v25 activeSession];
      v27 = [v26 isUplinkMuted];
      v33 = 138412802;
      v34 = self;
      v35 = 2112;
      v36 = v23;
      v37 = 1024;
      LODWORD(v38) = v27;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: %@ Is uplink audio muted?: %{BOOL}d", &v33, 0x1Cu);
    }

    [(HUDropInViewController *)self _updateRecordingUIWithConnectedState];
    v28 = [(HUDropInViewController *)self dropInCenter];
    v29 = [v28 sessionManager];
    v30 = [v29 activeSession];
    v31 = [v30 isUplinkMuted];

    if (v31)
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOff];
    }

    else
    {
      [(HUDropInViewController *)self _updateRecordingUIWithMicrophoneOn];
    }
  }

  if ([v9 state] == 6 || objc_msgSend(v9, "state") == 7)
  {
    if (a5 == 6)
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

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v16 = self;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin session failed with error: %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HUDropInViewController_session_didFailWithError___block_invoke;
  block[3] = &unk_277DC1FE0;
  block[4] = self;
  v13 = v7;
  v14 = a2;
  v11 = v7;
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

- (void)session:(id)a3 didUpdateUplinkMuteStatus:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(HUDropInViewController *)self activeDropInSession];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [(HUDropInViewController *)self activeDropInSession];

    if (v10 != v7)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(a2);
        v13 = [(HUDropInViewController *)self activeDropInSession];
        *buf = 138413058;
        v36 = self;
        v37 = 2112;
        v38 = v12;
        v39 = 2112;
        v40 = v7;
        v41 = 2112;
        v42 = v13;
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
    v36 = self;
    v37 = 2112;
    v38 = v15;
    v39 = 1024;
    LODWORD(v40) = v4;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ Uplink dropin audio muted? %{BOOL}d", buf, 0x1Cu);
  }

  v34 = v4;

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = MEMORY[0x277D069D0];
    v19 = [(HUDropInViewController *)self dropInCenter];
    v20 = [v19 sessionManager];
    v21 = [v20 activeSession];
    v22 = [v18 stringForDropInSessionState:{objc_msgSend(v21, "state")}];
    *buf = 138412802;
    v36 = self;
    v37 = 2112;
    v38 = v17;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: %@ Dropin Session state: %@", buf, 0x20u);
  }

  v23 = [(HUDropInViewController *)self dropInCenter];
  v24 = [v23 sessionManager];
  v25 = [v24 activeSession];
  if ([v25 state] == 6)
  {

    goto LABEL_14;
  }

  v26 = [(HUDropInViewController *)self dropInCenter];
  v27 = [v26 sessionManager];
  v28 = [v27 activeSession];
  v29 = [v28 state];

  if (v29 == 7)
  {
LABEL_14:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      v36 = self;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Active session is already ended or removed. Ignoring mute status change.", buf, 0x16u);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v30 = [(HUDropInViewController *)self dropInCenter];
  v31 = [v30 sessionManager];
  v32 = [v31 activeSession];
  v33 = [v32 state];

  if (v33 == 4)
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

- (void)subscriber:(id)a3 didUpdateBulletins:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v41 = self;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Last Known Event Bulletins: %@", buf, 0x20u);
  }

  [(HUDropInViewController *)self setEventBulletins:v6];
  v9 = [(HUDropInViewController *)self eventBulletins];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__HUDropInViewController_subscriber_didUpdateBulletins___block_invoke;
  v39[3] = &unk_277DC2008;
  v39[4] = self;
  v10 = [v9 na_firstObjectPassingTest:v39];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    v41 = self;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ Found last known event for accessory: %@", buf, 0x20u);
  }

  v13 = [v10 startDate];
  v14 = [v10 dateOfOccurrence];
  v15 = [(HUDropInViewController *)self _displayedAccessoryName];
  v16 = [MEMORY[0x277CCA968] localizedStringFromDate:v13 dateStyle:0 timeStyle:1];
  if (![v10 state])
  {
    if ([v13 hf_isSingularHour])
    {
      v35 = @"HUDropIn_Description_Alarm_Started_SingularHour_FormatString";
    }

    else
    {
      v35 = @"HUDropIn_Description_Alarm_Started_PluralHour_FormatString";
    }

    v17 = HULocalizedStringWithFormat(v35, @"%@%@", v29, v30, v31, v32, v33, v34, v15);
    v18 = [(HUDropInViewController *)self descriptionTextView];
    [v18 setText:v17];
LABEL_21:

    goto LABEL_22;
  }

  if ([v10 state] == 1)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCA958]);
    [v17 setUnitsStyle:3];
    [v17 setAllowedUnits:64];
    v18 = [v17 stringFromDate:v13 toDate:v14];
    [v14 timeIntervalSinceDate:v13];
    v20 = v19;
    v21 = [v13 hf_isSingularHour];
    if (v20 >= 60.0)
    {
      if (v21)
      {
        v36 = @"HUDropIn_Description_Alarm_Ended_SingularHour_FormatString";
      }

      else
      {
        v36 = @"HUDropIn_Description_Alarm_Ended_PluralHour_FormatString";
      }

      HULocalizedStringWithFormat(v36, @"%@%@%@", v22, v23, v24, v25, v26, v27, v15);
    }

    else
    {
      if (v21)
      {
        v28 = @"HUDropIn_Description_Alarm_Ended_SingularHour_LessThanOneMin_FormatString";
      }

      else
      {
        v28 = @"HUDropIn_Description_Alarm_Ended_PluralHour_LessThanOneMin_FormatString";
      }

      HULocalizedStringWithFormat(v28, @"%@%@", v22, v23, v24, v25, v26, v27, v15);
    }
    v37 = ;
    v38 = [(HUDropInViewController *)self descriptionTextView];
    [v38 setText:v37];

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

- (void)controller:(id)a3 didUpdateAudioPowerForDropInDevice:(float)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUDropInViewController.m" lineNumber:1379 description:@"didUpdateAudioPowerForDropInDevice called from secondary thread"];
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = a4;
    v12 = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated audio power: %f", &v12, 0x20u);
  }

  else
  {
    v9 = a4;
  }

  v10 = [(HUDropInViewController *)self audioWaveformView];
  [v10 appendPowerLevel:(log10(v9) * 20.0)];
}

- (void)manager:(id)a3 didUpdateActiveSession:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HUDropInViewController *)self activeDropInSession];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(HUDropInViewController *)self activeDropInSession];

    if (v9 != v6)
    {
      v10 = HFLogForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      v11 = NSStringFromSelector(a2);
      v12 = [(HUDropInViewController *)self activeDropInSession];
      v23 = 138413058;
      v24 = self;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: %@ Received callback for session %@ which is different from current Session %@. Not Handling...", &v23, 0x2Au);
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
    v24 = self;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ Updated active session: %@", &v23, 0x20u);
  }

  v15 = [(HUDropInViewController *)self dropInCenter];
  v16 = [v15 sessionManager];
  v17 = [v16 activeSession];
  v18 = [v17 delegate];

  if (!v18)
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(HUDropInViewController *)self dropInCenter];
      v21 = [v20 sessionManager];
      v22 = [v21 activeSession];
      v23 = 138412290;
      v24 = v22;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Active dropin session == %@", &v23, 0xCu);
    }

    v10 = [(HUDropInViewController *)self dropInCenter];
    v11 = [v10 sessionManager];
    v12 = [v11 activeSession];
    [v12 setDelegate:self];
    goto LABEL_13;
  }

LABEL_15:
}

@end