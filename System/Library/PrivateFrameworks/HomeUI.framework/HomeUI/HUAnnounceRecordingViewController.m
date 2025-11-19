@interface HUAnnounceRecordingViewController
- (BOOL)_areAllHomePodsOffline;
- (BOOL)_isHomeContext;
- (BOOL)_isRoomContext;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (HUAnnounceRecordingViewController)initWithServiceContext:(id)a3 blurEffectStyle:(int64_t)a4;
- (id)_contentViewBackgroundColor;
- (id)_fontForTimeCodeLabel;
- (id)_stringForDuration:(double)a3;
- (id)_waveformColor;
- (void)_commonInit;
- (void)_deleteAudioFile;
- (void)_deleteRecording:(id)a3;
- (void)_didPan:(id)a3;
- (void)_didTap:(id)a3;
- (void)_dismissDownRecordingView:(id)a3;
- (void)_dismissUpRecordingView:(id)a3;
- (void)_dismissViewOrDisplayError:(id)a3;
- (void)_hideRecordingUI;
- (void)_restoreRecordingUI;
- (void)_submitAnalyticsForAnnounceRecordingCompletdSuccessfully:(BOOL)a3 interruptedByUser:(BOOL)a4;
- (void)_updateUIBasedOnReachabilityStatus;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateReachableTransports:(id)a3;
- (void)audioRecorderDidStartRecording:(id)a3;
- (void)audioRecorderFailedToFinishRecording:(id)a3;
- (void)audioRecorderFinishedRecording:(id)a3 audioFile:(id)a4;
- (void)beginRecording:(id)a3;
- (void)dealloc;
- (void)didUpdateAveragePower:(float)a3;
- (void)sendAnnouncement:(id)a3;
- (void)stopRecordAndSend:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUAnnounceRecordingViewController

- (HUAnnounceRecordingViewController)initWithServiceContext:(id)a3 blurEffectStyle:(int64_t)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = HUAnnounceRecordingViewController;
  v8 = [(HUAnnounceRecordingViewController *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:a4];
    blurEffect = v8->_blurEffect;
    v8->_blurEffect = v9;

    objc_storeStrong(&v8->_serviceContext, a3);
    v11 = objc_alloc_init(MEMORY[0x277D755F0]);
    feedbackGenerator = v8->_feedbackGenerator;
    v8->_feedbackGenerator = v11;

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__didTap_];
    tapGestureRecognizer = v8->_tapGestureRecognizer;
    v8->_tapGestureRecognizer = v13;

    [(UITapGestureRecognizer *)v8->_tapGestureRecognizer setDelegate:v8];
    v15 = [(HUAnnounceRecordingViewController *)v8 view];
    [v15 addGestureRecognizer:v8->_tapGestureRecognizer];

    v16 = objc_alloc_init(MEMORY[0x277CEAB30]);
    announce = v8->_announce;
    v8->_announce = v16;

    [(HUAnnounceRecordingViewController *)v8 _commonInit];
  }

  return v8;
}

- (void)_commonInit
{
  v3 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v4 = [v3 homeIdentifier];

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6 = [v5 allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HUAnnounceRecordingViewController__commonInit__block_invoke;
  v9[3] = &unk_277DBE8D0;
  v10 = v4;
  v11 = self;
  v7 = v4;
  v8 = [v6 addCompletionBlock:v9];
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
  v3 = [(HUAnnounceRecordingViewController *)self view];
  [v3 setAlpha:0.0];

  v4 = [objc_alloc(MEMORY[0x277D14428]) initWithAudioRecorderDelegate:self];
  [(HUAnnounceRecordingViewController *)self setAudioRecorder:v4];

  v5 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v5 prepareRecording];

  v6 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v6 playAlertSoundForType:0 withCompletion:0];

  v7 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [v7 clearPowerLevels];

  v8 = MEMORY[0x277D75D00];
  v9 = [(HUAnnounceRecordingViewController *)self blurEffect];
  v10 = [v8 effectForBlurEffect:v9 style:1];

  v266 = v10;
  v11 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v10];
  dismissLabelVisualEffectView = self->_dismissLabelVisualEffectView;
  self->_dismissLabelVisualEffectView = v11;

  v13 = [(HUAnnounceRecordingViewController *)self view];
  [v13 naui_addAutoLayoutSubview:self->_dismissLabelVisualEffectView];

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
  v20 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v19 setTextColor:v20];

  [(UILabel *)self->_dismissLabel setAlpha:0.0];
  v21 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView contentView];
  [v21 naui_addAutoLayoutSubview:self->_dismissLabel];

  v22 = [(UILabel *)self->_dismissLabel text];
  v23 = [(HUAnnounceRecordingViewController *)self view];
  [v23 bounds];
  v25 = v24;
  v271 = *MEMORY[0x277D740A8];
  v26 = [(UILabel *)self->_dismissLabel font];
  v272[0] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:&v271 count:1];
  [v22 boundingRectWithSize:1 options:v27 attributes:0 context:{v25, 3.40282347e38}];
  v29 = v28;

  v30 = [MEMORY[0x277D75220] buttonWithType:7];
  closeButton = self->_closeButton;
  self->_closeButton = v30;

  v32 = [MEMORY[0x277D75230] glassButtonConfiguration];
  [(UIButton *)self->_closeButton setConfiguration:v32];

  [(UIButton *)self->_closeButton addTarget:self action:sel__dismissDownRecordingView_ forControlEvents:64];
  v33 = [(HUAnnounceRecordingViewController *)self view];
  [v33 naui_addAutoLayoutSubview:self->_closeButton];

  v34 = objc_alloc(MEMORY[0x277D75D18]);
  v36 = *MEMORY[0x277CBF3A0];
  v35 = *(MEMORY[0x277CBF3A0] + 8);
  v38 = *(MEMORY[0x277CBF3A0] + 16);
  v37 = *(MEMORY[0x277CBF3A0] + 24);
  v39 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], v35, v38, v37}];
  contentView = self->_contentView;
  self->_contentView = v39;

  v41 = self->_contentView;
  v42 = [(HUAnnounceRecordingViewController *)self _contentViewBackgroundColor];
  [(UIView *)v41 setBackgroundColor:v42];

  [(UIView *)self->_contentView _setContinuousCornerRadius:26.0];
  [(UIView *)self->_contentView setAlpha:0.0];
  v43 = [(HUAnnounceRecordingViewController *)self view];
  [v43 naui_addAutoLayoutSubview:self->_contentView];

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
  v50 = [(HUAnnounceRecordingViewController *)self _largeTitleTextColor];
  [(UILabel *)v49 setTextColor:v50];

  [(UILabel *)self->_largeTitleLabel setAlpha:0.0];
  [(UILabel *)self->_largeTitleLabel setLineBreakMode:4];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_largeTitleLabel];
  v51 = objc_alloc_init(MEMORY[0x277D756B8]);
  subTitleLabel = self->_subTitleLabel;
  self->_subTitleLabel = v51;

  v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  [(UILabel *)self->_subTitleLabel setFont:v53];

  v54 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subTitleLabel setTextColor:v54];

  [(UILabel *)self->_subTitleLabel setTextAlignment:1];
  [(UILabel *)self->_subTitleLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_subTitleLabel];
  v55 = [HUWaveformView alloc];
  v56 = [(HUAnnounceRecordingViewController *)self _waveformColor];
  v57 = [MEMORY[0x277D75348] systemGrayColor];
  v58 = [(HUWaveformView *)v55 initWithFrame:v56 waveformColor:v57 backgroundColor:v36, v35, v38, v37];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v58;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_audioWaveformView];
  v60 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v61 = [v60 roomName];
  v62 = v61;
  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v64 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v63 = [v64 homeName];
  }

  v65 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v36, v35, v38, v37}];
  announcementDeliveryFailureLabel = self->_announcementDeliveryFailureLabel;
  self->_announcementDeliveryFailureLabel = v65;

  [(UILabel *)self->_announcementDeliveryFailureLabel setAlpha:0.0];
  v67 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_announcementDeliveryFailureLabel setFont:v67];

  [(UILabel *)self->_announcementDeliveryFailureLabel setTextAlignment:1];
  v68 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_announcementDeliveryFailureLabel setTextColor:v68];

  v264 = v63;
  v75 = HULocalizedStringWithFormat(@"HUAnnounceNotDeliveredLabel_Description", @"%@", v69, v70, v71, v72, v73, v74, v63);
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

  v82 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_recordingStateChangeLabel setTextColor:v82];

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

  v86 = [MEMORY[0x277D75348] systemRedColor];
  [(UILabel *)self->_errorStatusLabel setTextColor:v86];

  [(UILabel *)self->_errorStatusLabel setTextAlignment:1];
  [(UILabel *)self->_errorStatusLabel setNumberOfLines:0];
  [(UILabel *)self->_errorStatusLabel setAlpha:0.0];
  [(UIView *)self->_contentView naui_addAutoLayoutSubview:self->_errorStatusLabel];
  v87 = objc_opt_new();
  v88 = [MEMORY[0x277D75418] currentDevice];
  v89 = [v88 userInterfaceIdiom];

  v90 = self->_dismissLabelVisualEffectView;
  if ((v89 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v91 = [(UIVisualEffectView *)v90 centerXAnchor];
    v92 = [(UIView *)self->_contentView centerXAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];
    [v87 addObject:v93];
  }

  else
  {
    v91 = [(UIVisualEffectView *)v90 leadingAnchor];
    v92 = [(HUAnnounceRecordingViewController *)self view];
    v93 = [v92 safeAreaLayoutGuide];
    v94 = [v93 leadingAnchor];
    v95 = [v91 constraintEqualToAnchor:v94];
    [v87 addObject:v95];
  }

  v96 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v97 = [(HUAnnounceRecordingViewController *)self view];
  v98 = [v97 safeAreaLayoutGuide];
  v99 = [v98 trailingAnchor];
  v100 = [v96 constraintEqualToAnchor:v99];
  [v87 addObject:v100];

  v101 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v102 = [(HUAnnounceRecordingViewController *)self view];
  v103 = [v102 safeAreaLayoutGuide];
  v104 = [v103 topAnchor];
  v105 = [v101 constraintEqualToAnchor:v104 constant:-25.0];
  dismissLabelTopConstraint = self->_dismissLabelTopConstraint;
  self->_dismissLabelTopConstraint = v105;

  [v87 addObject:self->_dismissLabelTopConstraint];
  v107 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v108 = [v107 constraintEqualToConstant:v29];
  [v87 addObject:v108];

  v109 = [(UILabel *)self->_dismissLabel leadingAnchor];
  v110 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView leadingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];
  [v87 addObject:v111];

  v112 = [(UILabel *)self->_dismissLabel trailingAnchor];
  v113 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView trailingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];
  [v87 addObject:v114];

  v115 = [(UILabel *)self->_dismissLabel topAnchor];
  v116 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView topAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];
  [v87 addObject:v117];

  v118 = [(UILabel *)self->_dismissLabel heightAnchor];
  v119 = [(UIVisualEffectView *)self->_dismissLabelVisualEffectView heightAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];
  [v87 addObject:v120];

  v121 = [(UIButton *)self->_closeButton topAnchor];
  v122 = [(HUAnnounceRecordingViewController *)self view];
  v123 = [v122 topAnchor];
  v124 = [v121 constraintEqualToAnchor:v123 constant:30.0];
  closeButtonTopConstraint = self->_closeButtonTopConstraint;
  self->_closeButtonTopConstraint = v124;

  [v87 addObject:self->_closeButtonTopConstraint];
  v126 = [(UIButton *)self->_closeButton trailingAnchor];
  v127 = [(HUAnnounceRecordingViewController *)self view];
  v128 = [v127 safeAreaLayoutGuide];
  v129 = [v128 trailingAnchor];
  v130 = [v126 constraintEqualToAnchor:v129 constant:-16.0];
  [v87 addObject:v130];

  v131 = [(UIButton *)self->_closeButton heightAnchor];
  v132 = [v131 constraintEqualToConstant:44.0];
  [v87 addObject:v132];

  v133 = [(UIButton *)self->_closeButton widthAnchor];
  v134 = [(UIButton *)self->_closeButton heightAnchor];
  v135 = [v133 constraintEqualToAnchor:v134];
  [v87 addObject:v135];

  v136 = [MEMORY[0x277D759A0] mainScreen];
  [v136 bounds];
  v138 = v137;

  v139 = [MEMORY[0x277D75418] currentDevice];
  v140 = [v139 userInterfaceIdiom];

  v141 = v140 & 0xFFFFFFFFFFFFFFFBLL;
  v142 = [(UIView *)self->_contentView topAnchor];
  if (v141 == 1)
  {
    v143 = [(HUAnnounceRecordingViewController *)self view];
    v144 = [v143 topAnchor];
    v145 = [v142 constraintEqualToAnchor:v144 constant:44.0];
    contentViewTopConstraint = self->_contentViewTopConstraint;
    self->_contentViewTopConstraint = v145;

    [v87 addObject:self->_contentViewTopConstraint];
    v147 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [v147 animationOriginRect];
    v275.origin.x = v36;
    v275.origin.y = v35;
    v275.size.width = v38;
    v275.size.height = v37;
    v148 = CGRectEqualToRect(v273, v275);

    if (v148)
    {
      v149 = [(UIView *)self->_contentView trailingAnchor];
      v150 = [(UIButton *)self->_closeButton leadingAnchor];
      v151 = [v149 constraintEqualToAnchor:v150 constant:-8.0];
      [v87 addObject:v151];
LABEL_12:

      goto LABEL_16;
    }

    v158 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [v158 animationOriginRect];
    v160 = v138 - v159 + 44.0;

    v161 = [(UIView *)self->_contentView trailingAnchor];
    v162 = [(UIButton *)self->_closeButton leadingAnchor];
    v163 = [v161 constraintEqualToAnchor:v162 constant:v160];
    contentViewTrailingConstraint = self->_contentViewTrailingConstraint;
    self->_contentViewTrailingConstraint = v163;

    v165 = self->_contentViewTrailingConstraint;
  }

  else
  {
    v152 = [(UIButton *)self->_closeButton bottomAnchor];
    v153 = [v142 constraintEqualToAnchor:v152 constant:8.0];
    [v87 addObject:v153];

    v154 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [v154 animationOriginRect];
    v276.origin.x = v36;
    v276.origin.y = v35;
    v276.size.width = v38;
    v276.size.height = v37;
    v155 = CGRectEqualToRect(v274, v276);

    if (v155)
    {
      v149 = [(UIView *)self->_contentView trailingAnchor];
      v150 = [(HUAnnounceRecordingViewController *)self view];
      v151 = [v150 safeAreaLayoutGuide];
      v156 = [v151 trailingAnchor];
      v157 = [v149 constraintEqualToAnchor:v156 constant:-10.0];
      [v87 addObject:v157];

      goto LABEL_12;
    }

    v166 = [(HUAnnounceRecordingViewController *)self serviceContext];
    [v166 animationOriginRect];
    v168 = v138 - v167;

    v169 = [(UIView *)self->_contentView trailingAnchor];
    v170 = [(HUAnnounceRecordingViewController *)self view];
    v171 = [v170 safeAreaLayoutGuide];
    v172 = [v171 trailingAnchor];
    v173 = [v169 constraintEqualToAnchor:v172 constant:-v168];
    v174 = self->_contentViewTrailingConstraint;
    self->_contentViewTrailingConstraint = v173;

    v165 = self->_contentViewTrailingConstraint;
  }

  [v87 addObject:v165];
LABEL_16:
  v175 = [(UIView *)self->_contentView widthAnchor];
  v176 = [v175 constraintEqualToConstant:100.0];
  contentViewWidthConstraint = self->_contentViewWidthConstraint;
  self->_contentViewWidthConstraint = v176;

  [v87 addObject:self->_contentViewWidthConstraint];
  v178 = [(UIView *)self->_contentView heightAnchor];
  v179 = [v178 constraintEqualToConstant:0.0];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v179;

  [v87 addObject:self->_contentViewHeightConstraint];
  v181 = [(UILabel *)self->_largeTitleLabel topAnchor];
  v182 = [(UIView *)self->_contentView topAnchor];
  v183 = [v181 constraintEqualToAnchor:v182 constant:48.0];
  [v87 addObject:v183];

  v184 = [(UILabel *)self->_largeTitleLabel centerXAnchor];
  v185 = [(UIView *)self->_contentView centerXAnchor];
  v186 = [v184 constraintEqualToAnchor:v185];
  [v87 addObject:v186];

  v187 = [(UILabel *)self->_largeTitleLabel leadingAnchor];
  v188 = [(UIView *)self->_contentView leadingAnchor];
  v189 = [v187 constraintEqualToAnchor:v188];
  [v87 addObject:v189];

  v190 = [(UILabel *)self->_largeTitleLabel trailingAnchor];
  v191 = [(UIView *)self->_contentView trailingAnchor];
  v192 = [v190 constraintEqualToAnchor:v191];
  [v87 addObject:v192];

  v193 = [(UILabel *)self->_subTitleLabel topAnchor];
  v194 = [(UILabel *)self->_largeTitleLabel bottomAnchor];
  v195 = [v193 constraintEqualToAnchor:v194];
  [v87 addObject:v195];

  v196 = [(UILabel *)self->_subTitleLabel centerXAnchor];
  v197 = [(UIView *)self->_contentView centerXAnchor];
  v198 = [v196 constraintEqualToAnchor:v197];
  [v87 addObject:v198];

  v199 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  v200 = [(UIView *)self->_contentView leadingAnchor];
  v201 = [v199 constraintEqualToAnchor:v200];
  [v87 addObject:v201];

  v202 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  v203 = [(UIView *)self->_contentView trailingAnchor];
  v204 = [v202 constraintEqualToAnchor:v203];
  [v87 addObject:v204];

  v205 = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
  v206 = [(UIView *)self->_contentView centerYAnchor];
  v207 = [v205 constraintEqualToAnchor:v206];
  [v87 addObject:v207];

  v208 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v209 = [v208 constraintEqualToConstant:100.0];
  [v87 addObject:v209];

  v210 = [(HUWaveformView *)self->_audioWaveformView topAnchor];
  v211 = [(UILabel *)self->_subTitleLabel bottomAnchor];
  v212 = [v210 constraintEqualToAnchor:v211 constant:20.0];

  LODWORD(v213) = 1132068864;
  [v212 setPriority:v213];
  [v87 addObject:v212];
  v214 = [(UILabel *)self->_announcementDeliveryFailureLabel leadingAnchor];
  v215 = [(UIView *)self->_contentView leadingAnchor];
  v216 = [v214 constraintEqualToAnchor:v215];
  [v87 addObject:v216];

  v217 = [(UILabel *)self->_announcementDeliveryFailureLabel trailingAnchor];
  v218 = [(UIView *)self->_contentView trailingAnchor];
  v219 = [v217 constraintEqualToAnchor:v218];
  [v87 addObject:v219];

  v220 = [(UILabel *)self->_announcementDeliveryFailureLabel centerYAnchor];
  v221 = [(UIView *)self->_contentView centerYAnchor];
  v222 = [v220 constraintEqualToAnchor:v221];
  [v87 addObject:v222];

  v223 = [(HURecordingButton *)self->_recordButton topAnchor];
  v224 = [(UILabel *)self->_announcementDeliveryFailureLabel bottomAnchor];
  v225 = [v223 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v224 multiplier:1.0];
  [v87 addObject:v225];

  v226 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v227 = [v226 constraintEqualToConstant:64.0];
  [v87 addObject:v227];

  v228 = [(HURecordingButton *)self->_recordButton widthAnchor];
  v229 = [v228 constraintEqualToConstant:64.0];
  [v87 addObject:v229];

  v230 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  v231 = [(UIView *)self->_contentView centerXAnchor];
  v232 = [v230 constraintEqualToAnchor:v231];
  [v87 addObject:v232];

  v233 = [(UILabel *)self->_recordingStateChangeLabel centerXAnchor];
  v234 = [(UIView *)self->_contentView centerXAnchor];
  v235 = [v233 constraintEqualToAnchor:v234];
  [v87 addObject:v235];

  v236 = [(UILabel *)self->_recordingStateChangeLabel topAnchor];
  v237 = [(HURecordingButton *)self->_recordButton bottomAnchor];
  v238 = [v236 constraintEqualToAnchor:v237 constant:8.0];
  [v87 addObject:v238];

  v239 = [(UILabel *)self->_recordingStateChangeLabel bottomAnchor];
  v240 = [(UIView *)self->_contentView bottomAnchor];
  v241 = [v239 constraintEqualToAnchor:v240 constant:-20.0];
  [v87 addObject:v241];

  v242 = [(HURecordingButton *)self->_recordButton topAnchor];
  v243 = [(UILabel *)self->_errorStatusLabel bottomAnchor];
  v244 = [v242 constraintEqualToAnchor:v243 constant:20.0];
  [v87 addObject:v244];

  v245 = [(UILabel *)self->_errorStatusLabel centerXAnchor];
  v246 = [(UIView *)self->_contentView centerXAnchor];
  v247 = [v245 constraintEqualToAnchor:v246];
  [v87 addObject:v247];

  v248 = [(UILabel *)self->_errorStatusLabel leadingAnchor];
  v249 = [(UIView *)self->_contentView leadingAnchor];
  v250 = [v248 constraintEqualToAnchor:v249];
  [v87 addObject:v250];

  v251 = [(UILabel *)self->_errorStatusLabel trailingAnchor];
  v252 = [(UIView *)self->_contentView trailingAnchor];
  v253 = [v251 constraintEqualToAnchor:v252];
  [v87 addObject:v253];

  [MEMORY[0x277CCAAD0] activateConstraints:v87];
  v254 = [(HUAnnounceRecordingViewController *)self view];
  [v254 layoutIfNeeded];

  v255 = [(HUAnnounceRecordingViewController *)self largeTitleLabel];
  [v255 becomeFirstResponder];

  v256 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v256 addAccessoryObserver:self];

  v257 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v258 = [v257 roomName];
  v259 = v258;
  if (v258)
  {
    v260 = v258;
  }

  else
  {
    v261 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v260 = [v261 homeName];
  }

  v262 = MEMORY[0x277D75D18];
  v267[4] = self;
  v268[0] = MEMORY[0x277D85DD0];
  v268[1] = 3221225472;
  v268[2] = __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke;
  v268[3] = &unk_277DB7558;
  v268[4] = self;
  v269 = v260;
  v267[0] = MEMORY[0x277D85DD0];
  v267[1] = 3221225472;
  v267[2] = __48__HUAnnounceRecordingViewController_viewDidLoad__block_invoke_3;
  v267[3] = &unk_277DB8C28;
  v263 = v260;
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
  v3 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    v5 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [v5 stopRecording];
  }

  [(HUAnnounceRecordingViewController *)self _deleteAudioFile];
  v6.receiver = self;
  v6.super_class = HUAnnounceRecordingViewController;
  [(HUAnnounceRecordingViewController *)&v6 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(HUAnnounceRecordingViewController *)self contentView];
  v5 = [(HUAnnounceRecordingViewController *)self _contentViewBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [(HUAnnounceRecordingViewController *)self largeTitleLabel];
  v7 = [(HUAnnounceRecordingViewController *)self _largeTitleTextColor];
  [v6 setTextColor:v7];

  v9 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  v8 = [(HUAnnounceRecordingViewController *)self _waveformColor];
  [v9 setWaveformColor:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUAnnounceRecordingViewController;
  [(HUAnnounceRecordingViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = [(HUAnnounceRecordingViewController *)self contentViewWidthConstraint];
    [v7 setConstant:395.0];
  }
}

- (void)beginRecording:(id)a3
{
  v4 = [(HUAnnounceRecordingViewController *)self view];
  [v4 layoutIfNeeded];

  v5 = [(HUAnnounceRecordingViewController *)self audioRecorder];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D14428]) initWithAudioRecorderDelegate:self];
    [(HUAnnounceRecordingViewController *)self setAudioRecorder:v6];

    v7 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [v7 prepareRecording];

    v8 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [v8 playAlertSoundForType:0 withCompletion:0];

    v9 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [v9 clearPowerLevels];
  }

  v10 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  v11 = [v10 isRecording];

  if ((v11 & 1) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x277CEAB30]);
    [v12 prewarmWithHandler:0];
    v13 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
    [v13 impactOccurredWithIntensity:1.0];

    v14 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
    [v14 prepare];

    v15 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [v15 setRecordingDurationLimit:60.0];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Calling startRecording", buf, 2u);
    }

    v17 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    [v17 startRecording];

    v18 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v19 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordingStopLabel_Title", @"HUAnnounceRecordingStopLabel_Title", 1);
    [v18 setText:v19];

    v20 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    [v20 setEnabled:1];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__HUAnnounceRecordingViewController_beginRecording___block_invoke;
    v22[3] = &unk_277DB8488;
    v22[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.25];
    v21 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v21 startRecording];
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

- (void)stopRecordAndSend:(id)a3
{
  v4 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [v4 prepare];

  v5 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v5 setEnabled:0];

  v6 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v6 stopRecording];
}

- (void)sendAnnouncement:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v5 = [v4 roomIdentifier];

  v6 = [(HUAnnounceRecordingViewController *)self announce];
  v7 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v10 = v9;
  if (v5)
  {
    v11 = [v9 roomIdentifier];
    v12 = [v8 initWithUUIDString:v11];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v16 = [v15 homeIdentifier];
    v17 = [v14 initWithUUIDString:v16];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke;
    v19[3] = &unk_277DBE8F8;
    v19[4] = self;
    [v6 sendAnnouncement:v7 toRoomsWithIDs:v13 andZonesWithIDs:MEMORY[0x277CBEBF8] inHomeWithID:v17 completion:v19];
  }

  else
  {
    v11 = [v9 homeIdentifier];
    v12 = [v8 initWithUUIDString:v11];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__HUAnnounceRecordingViewController_sendAnnouncement___block_invoke_2;
    v18[3] = &unk_277DBE8F8;
    v18[4] = self;
    [v6 sendAnnouncement:v7 toHomeWithID:v12 completion:v18];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = [a4 view];
  v8 = [(HUAnnounceRecordingViewController *)self recordButton];
  if (v7 == v8)
  {
    v10 = [(HUAnnounceRecordingViewController *)self tapGestureRecognizer];
    v9 = v10 != v6;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_didTap:(id)a3
{
  v4 = a3;
  v5 = [(HUAnnounceRecordingViewController *)self view];
  [v4 locationOfTouch:0 inView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(HUAnnounceRecordingViewController *)self contentView];
  [v10 frame];
  v12 = v11;
  v13 = [(HUAnnounceRecordingViewController *)self contentView];
  [v13 frame];
  if (v9 > v12 + v14)
  {
    v17 = 1;
  }

  else
  {
    v15 = [(HUAnnounceRecordingViewController *)self contentView];
    [v15 frame];
    v17 = v9 < v16;
  }

  v18 = [(HUAnnounceRecordingViewController *)self contentView];
  [v18 frame];
  v20 = v7 < v19;

  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v17 || v20) || v17)
  {
    [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:1 interruptedByUser:1];

    [(HUAnnounceRecordingViewController *)self _dismissUpRecordingView:0];
  }
}

- (void)_didPan:(id)a3
{
  v4 = a3;
  v5 = [(HUAnnounceRecordingViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;

  v8 = [v4 state];
  if (v8 == 3)
  {
    v9 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [v9 constant];
    v11 = v10;

    if (v11 > 176.0)
    {

      [(HUAnnounceRecordingViewController *)self _dismissDownRecordingView:0];
      return;
    }

    v22 = [MEMORY[0x277D75418] currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v24 = [(HUAnnounceRecordingViewController *)self contentViewTopConstraint];
      [v24 setConstant:44.0];
    }

    v25 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [v25 setConstant:44.0];

    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:-25.0];
    [(UILabel *)self->_dismissLabel setAlpha:0.0];
    v26 = [(HUAnnounceRecordingViewController *)self view];
    [v26 setNeedsLayout];
    goto LABEL_15;
  }

  if (v7 > 49.0)
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v14 = [(HUAnnounceRecordingViewController *)self contentViewTopConstraint];
      [v14 setConstant:v7];
    }

    v15 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [v15 setConstant:v7];

    v16 = v7 + -25.0;
    [(NSLayoutConstraint *)self->_dismissLabelTopConstraint setConstant:v16];
    v17 = [(HUAnnounceRecordingViewController *)self dismissLabel];
    [v17 setAlpha:v16 / 176.0];

    v18 = [(HUAnnounceRecordingViewController *)self view];
    [v18 layoutIfNeeded];

    v19 = [(HUAnnounceRecordingViewController *)self closeButtonTopConstraint];
    [v19 constant];
    v21 = v20;

    if (v21 > 176.0)
    {
      v26 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
      [v26 impactOccurredWithIntensity:1.0];
LABEL_15:
    }
  }
}

- (void)_dismissUpRecordingView:(id)a3
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

- (void)_dismissDownRecordingView:(id)a3
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

- (id)_stringForDuration:(double)a3
{
  if (qword_27C837F30 != -1)
  {
    dispatch_once(&qword_27C837F30, &__block_literal_global_134);
  }

  v4 = _MergedGlobals_3_5;

  return [v4 stringFromTimeInterval:a3];
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
    v3 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v4 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
    [v3 setText:v4];

    v5 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    [v5 setAlpha:1.0];

    v6 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [v6 setAlpha:0.0];

    v7 = [(HUAnnounceRecordingViewController *)self view];
    [v7 layoutIfNeeded];

    v8 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v8 setEnabled:1];

    v9 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v9 stopRecording];
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

    v4 = [(HUAnnounceRecordingViewController *)self currentHome];
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v7 = [v6 roomIdentifier];
    v8 = [v5 initWithUUIDString:v7];
    v9 = [v4 hf_roomWithIdentifier:v8];

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

    v12 = [(HUAnnounceRecordingViewController *)self currentHome];
    v13 = [v12 hf_hasAtLeastOneReachableHomeMediaAccessory];

    v10 = v13 ^ 1;
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
  v3 = [(HUAnnounceRecordingViewController *)self _areAllHomePodsOffline];
  v4 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];

  if (v3)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v6 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
    [v5 setText:v6];

    v7 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
    v8 = 1.0;
    [v7 setAlpha:1.0];

    v9 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v9 setEnabled:0];

    v10 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v10 stopRecording];

    v11 = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
    v12 = _HULocalizedStringWithDefaultValue(@"HUAnnounceHomePodsUnavailable_Error_Message", @"HUAnnounceHomePodsUnavailable_Error_Message", 1);
    [v11 setText:v12];
  }

  else
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v11 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v11 setEnabled:1];
    v8 = 0.0;
  }

  v13 = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
  [v13 setAlpha:v8];

LABEL_7:
  v14 = [(HUAnnounceRecordingViewController *)self view];
  [v14 layoutIfNeeded];
}

- (BOOL)_isRoomContext
{
  v3 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v4 = [v3 roomIdentifier];
  if (v4)
  {
    v5 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v6 = [v5 homeIdentifier];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHomeContext
{
  v3 = [(HUAnnounceRecordingViewController *)self serviceContext];
  v4 = [v3 roomIdentifier];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HUAnnounceRecordingViewController *)self serviceContext];
    v7 = [v6 homeIdentifier];
    v5 = v7 != 0;
  }

  return v5;
}

- (void)_deleteRecording:(id)a3
{
  [(HUAnnounceRecordingViewController *)self _deleteAudioFile];
  v4 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [v4 clearPowerLevels];

  [(HUAnnounceRecordingViewController *)self _hideRecordingUI];
}

- (void)_deleteAudioFile
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
    v7 = [v6 path];
    v8 = [v5 fileExistsAtPath:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [(HUAnnounceRecordingViewController *)self recordedAnnouncementURL];
      v13 = 0;
      [v9 removeItemAtURL:v10 error:&v13];
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
  v3 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v3 stopRecording];

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
  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [(HUAnnounceRecordingViewController *)self traitCollection];
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
  v4 = [(HUAnnounceRecordingViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemBlackColor];

    v3 = v6;
  }

  return v3;
}

- (void)_dismissViewOrDisplayError:(id)a3
{
  if (a3)
  {
    v4 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
    [v4 setAlpha:0.0];

    v5 = [(HUAnnounceRecordingViewController *)self announcementDeliveryFailureLabel];
    [v5 setAlpha:1.0];

    v6 = [(HUAnnounceRecordingViewController *)self errorStatusLabel];
    [v6 setAlpha:0.0];

    v7 = [(HUAnnounceRecordingViewController *)self recordButton];
    [v7 setEnabled:1];
  }

  else
  {

    [(HUAnnounceRecordingViewController *)self _dismissUpRecordingView:?];
  }
}

- (void)didUpdateAveragePower:(float)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HUAnnounceRecordingViewController.m" lineNumber:819 description:@"didUpdateAveragePower called from secondary thread"];
  }

  v7 = [(HUAnnounceRecordingViewController *)self audioWaveformView];
  [v7 appendPowerLevel:a3];
}

- (void)audioRecorderDidStartRecording:(id)a3
{
  v4 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [v4 impactOccurredWithIntensity:1.0];

  v5 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v5 setEnabled:1];

  v6 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
  [v6 setEnabled:1];

  v7 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v7 removeTarget:self action:sel_beginRecording_ forControlEvents:64];

  v8 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v8 addTarget:self action:sel_stopRecordAndSend_ forControlEvents:64];
}

- (void)audioRecorderFailedToFinishRecording:(id)a3
{
  [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:0 interruptedByUser:0];

  [(HUAnnounceRecordingViewController *)self _restoreRecordingUI];
}

- (void)audioRecorderFinishedRecording:(id)a3 audioFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HUAnnounceRecordingViewController *)self _submitAnalyticsForAnnounceRecordingCompletdSuccessfully:1 interruptedByUser:0];
  v8 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v8 currentRecordedDuration];
  if (v9 <= 0.5)
  {

    goto LABEL_6;
  }

  v10 = [v6 recordingStopSource];

  if (v10)
  {
LABEL_6:
    [(HUAnnounceRecordingViewController *)self _deleteRecording:0];
    goto LABEL_7;
  }

  v11 = [(HUAnnounceRecordingViewController *)self feedbackGenerator];
  [v11 impactOccurredWithIntensity:1.0];

  [(HUAnnounceRecordingViewController *)self setRecordedAnnouncementURL:v7];
  v12 = [(HUAnnounceRecordingViewController *)self recordingStateChangeLabel];
  v13 = _HULocalizedStringWithDefaultValue(@"HUAnnounceBeginRecordingLabel_Title", @"HUAnnounceBeginRecordingLabel_Title", 1);
  [v12 setText:v13];

  v14 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v14 stopRecording];

  v15 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v15 removeTarget:self action:sel_stopRecordAndSend_ forControlEvents:64];

  v16 = [(HUAnnounceRecordingViewController *)self recordButton];
  [v16 addTarget:self action:sel_beginRecording_ forControlEvents:64];

  [(HUAnnounceRecordingViewController *)self sendAnnouncement:0];
  v17 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v17 currentRecordedDuration];
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

- (void)accessoryDidUpdateReachability:(id)a3
{
  if ([a3 hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)a3
{
  if ([a3 hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  if ([a3 hf_isHomeMediaAccessory])
  {

    [(HUAnnounceRecordingViewController *)self _updateUIBasedOnReachabilityStatus];
  }
}

- (void)_submitAnalyticsForAnnounceRecordingCompletdSuccessfully:(BOOL)a3 interruptedByUser:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  v8 = [v7 recordingStopSource];

  v9 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  [v9 currentRecordedDuration];
  v11 = v10;

  v25 = objc_opt_new();
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v25 setObject:v12 forKey:*MEMORY[0x277D13428]];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:!v5];
  [v25 setObject:v13 forKey:*MEMORY[0x277D13430]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUAnnounceRecordingViewController _isHomeContext](self, "_isHomeContext")}];
  [v25 setObject:v14 forKey:*MEMORY[0x277D13438]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUAnnounceRecordingViewController _isRoomContext](self, "_isRoomContext")}];
  [v25 setObject:v15 forKey:*MEMORY[0x277D13440]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [v25 setObject:v16 forKey:*MEMORY[0x277D13458]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:(v8 - 1) < 2];
  [v25 setObject:v17 forKey:*MEMORY[0x277D13450]];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:v8 == 3];
  [v25 setObject:v18 forKey:*MEMORY[0x277D13448]];

  v19 = [(HUAnnounceRecordingViewController *)self audioRecorder];
  v20 = [v19 routeChangeReason];

  if (v20)
  {
    v21 = [(HUAnnounceRecordingViewController *)self audioRecorder];
    v22 = [v21 routeChangeReason];
    [v25 setObject:v22 forKey:*MEMORY[0x277D13690]];
  }

  v23 = MEMORY[0x277D143D8];
  v24 = [v25 copy];
  [v23 sendEvent:18 withData:v24];
}

@end