@interface HUAnnouncementsBrowserViewController
- (BOOL)_isHomeContext;
- (BOOL)_isNotificationPayloadValid;
- (BOOL)_isRoomContext;
- (HUAnnouncementsBrowserViewController)initWithNotificationPayload:(id)payload delegate:(id)delegate;
- (HUAnnouncementsBrowserViewControllerDelegate)delegate;
- (double)_transcriptionStackViewHeight;
- (id)_announcerNameFromNotificationPayload:(id)payload;
- (id)_backgroundColorForNextAnnouncementButton;
- (id)_fontForAnnouncementProgressLabel;
- (id)_lightedCircleBackgroundColorForCurrentInterfaceStyle;
- (id)_lightedCircleShadowColorForCurrentInterfaceStyle;
- (id)_waveformColor;
- (void)_addCommonTranscriptionConstraints;
- (void)_addTranscriptionConstraintsForValidNotificationPayload;
- (void)_applyTranscriptionText:(id)text;
- (void)_beginRecordingReply:(id)reply;
- (void)_commonInit;
- (void)_configureSubViewsForValidNotificationPayload;
- (void)_configureVisualStyleForLightedCircleView;
- (void)_deleteAudioFile;
- (void)_deleteRecording:(id)recording;
- (void)_dismissViewOrDisplayError:(id)error;
- (void)_hideRecordingUI;
- (void)_recordButtonLongPressGesture:(id)gesture;
- (void)_recordButtonTapped:(id)tapped;
- (void)_sendAnnouncement:(id)announcement;
- (void)_sendAnnouncementReply:(id)reply;
- (void)_setupRecipientInformation;
- (void)_skipToNextAnnouncement:(id)announcement;
- (void)_stopRecordingAndSendReply:(id)reply;
- (void)_submitAnalyticsForAnnounceNotificationUsage;
- (void)_submitAnalyticsForAnnounceRecordingCompletedSuccessfully:(BOOL)successfully interruptedByUser:(BOOL)user;
- (void)_updateUIBasedOnReachabilityStatus;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateReachableTransports:(id)transports;
- (void)audioRecorderDidStartRecording:(id)recording;
- (void)audioRecorderFailedToFinishRecording:(id)recording;
- (void)audioRecorderFinishedRecording:(id)recording audioFile:(id)file;
- (void)dealloc;
- (void)didSelectItemWithInfo:(id)info totalNumberOfAnnouncements:(unint64_t)announcements;
- (void)didUpdateAveragePower:(float)power;
- (void)tearDownAudioActivity;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation HUAnnouncementsBrowserViewController

- (HUAnnouncementsBrowserViewController)initWithNotificationPayload:(id)payload delegate:(id)delegate
{
  v20 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = HUAnnouncementsBrowserViewController;
  v9 = [(HUAnnouncementsBrowserViewController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_notificationPayload, payload);
    _isNotificationPayloadValid = [(HUAnnouncementsBrowserViewController *)v10 _isNotificationPayloadValid];
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (_isNotificationPayloadValid)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Notification payload is valid = [%@]", buf, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10->_notificationLaunchTimeInterval = v15;

    [(HUAnnouncementsBrowserViewController *)v10 _commonInit];
  }

  return v10;
}

- (void)tearDownAudioActivity
{
  [(HUAnnouncementsBrowserViewController *)self setIsTearingDown:1];
  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if (isRecording)
  {
    self->_shouldNotSendCurrentRecording = 1;
    audioRecorder2 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [audioRecorder2 stopRecording];
  }

  announcementGlobeView = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [announcementGlobeView teardownAnnouncements];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(HUAnnouncementsBrowserViewController *)self setNotificationDismissTimeInterval:?];

  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceNotificationUsage];
}

- (void)dealloc
{
  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if (isRecording)
  {
    self->_shouldNotSendCurrentRecording = 1;
    [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:1 interruptedByUser:1];
    audioRecorder2 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [audioRecorder2 stopRecording];
  }

  [(HUAnnouncementsBrowserViewController *)self _deleteAudioFile];
  announcementGlobeView = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [announcementGlobeView teardownAnnouncements];

  v7.receiver = self;
  v7.super_class = HUAnnouncementsBrowserViewController;
  [(HUAnnouncementsBrowserViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUAnnouncementsBrowserViewController;
  [(HUAnnouncementsBrowserViewController *)&v4 viewDidLoad];
  [(HUAnnouncementsBrowserViewController *)self setIsTearingDown:0];
  [(HUAnnouncementsBrowserViewController *)self _configureSubViewsForValidNotificationPayload];
  [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] addAccessoryObserver:self];
}

- (void)traitCollectionDidChange:(id)change
{
  nextAnnouncementButton = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  hu_fastForwardButtonImage = [MEMORY[0x277D755B8] hu_fastForwardButtonImage];
  [nextAnnouncementButton setImage:hu_fastForwardButtonImage forState:0];

  audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  _waveformColor = [(HUAnnouncementsBrowserViewController *)self _waveformColor];
  [audioWaveformView setWaveformColor:_waveformColor];

  [(HUAnnouncementsBrowserViewController *)self _configureVisualStyleForLightedCircleView];
}

- (void)_commonInit
{
  v3 = [objc_alloc(MEMORY[0x277D14428]) initWithAudioRecorderDelegate:self];
  audioRecorder = self->_audioRecorder;
  self->_audioRecorder = v3;

  [(HFAudioRecorder *)self->_audioRecorder setRecordingDurationLimit:60.0];
  [(HUAnnouncementsBrowserViewController *)self _setupRecipientInformation];
  v5 = objc_alloc_init(MEMORY[0x277D755F0]);
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v5;

  v7 = objc_alloc_init(MEMORY[0x277CEAB30]);
  announce = self->_announce;
  self->_announce = v7;

  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v10 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  allHomesFuture = [mEMORY[0x277D146E8] allHomesFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HUAnnouncementsBrowserViewController__commonInit__block_invoke;
  v15[3] = &unk_277DBE8D0;
  v16 = v10;
  selfCopy = self;
  v13 = v10;
  v14 = [allHomesFuture addCompletionBlock:v15];
}

void __51__HUAnnouncementsBrowserViewController__commonInit__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v13[2] = __51__HUAnnouncementsBrowserViewController__commonInit__block_invoke_2;
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

uint64_t __51__HUAnnouncementsBrowserViewController__commonInit__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_setupRecipientInformation
{
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v20 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  if ([v20 count])
  {
    allValues = [v20 allValues];
    if ([allValues count])
    {
      v5 = 0;
      do
      {
        if ([allValues count] > 1 && v5 == objc_msgSend(allValues, "count") - 1)
        {
          recipientTitle = self->_recipientTitle;
          v7 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecipientTitle_Concatenator", @"HUAnnounceRecipientTitle_Concatenator", 1);
          v8 = [(NSString *)recipientTitle stringByAppendingString:v7];
          v9 = self->_recipientTitle;
          self->_recipientTitle = v8;
        }

        v10 = self->_recipientTitle;
        v11 = [allValues objectAtIndexedSubscript:v5];
        v12 = v11;
        if (v10)
        {
          v13 = [(NSString *)v10 stringByAppendingString:v11];
          v14 = self->_recipientTitle;
          self->_recipientTitle = v13;
        }

        else
        {
          v15 = self->_recipientTitle;
          self->_recipientTitle = v11;
          v12 = v15;
        }

        if (++v5 < [allValues count])
        {
          v16 = [(NSString *)self->_recipientTitle stringByAppendingString:@", "];
          v17 = self->_recipientTitle;
          self->_recipientTitle = v16;
        }
      }

      while (v5 < [allValues count]);
    }
  }

  else
  {
    allValues = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v18 = [allValues objectForKeyedSubscript:*MEMORY[0x277CEAA10]];
    v19 = self->_recipientTitle;
    self->_recipientTitle = v18;
  }
}

- (void)_addCommonTranscriptionConstraints
{
  v78[1] = *MEMORY[0x277D85DE8];
  if (_AXSShowAudioTranscriptions())
  {
    announcementProgressLabel = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
    [announcementProgressLabel setAlpha:0.0];

    transcriptionTitleLabel = [(HUAnnouncementsBrowserViewController *)self transcriptionTitleLabel];
    text = [transcriptionTitleLabel text];
    view = [(HUAnnouncementsBrowserViewController *)self view];
    [view frame];
    v8 = v7;
    v77 = *MEMORY[0x277D740A8];
    v9 = v77;
    font = [(UILabel *)self->_transcriptionTitleLabel font];
    v78[0] = font;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [text boundingRectWithSize:1 options:v11 attributes:0 context:{v8, 3.40282347e38}];
    v13 = v12;

    font2 = [(UILabel *)self->_transcriptionTitleLabel font];
    [font2 lineHeight];
    v16 = ceil(v13 / v15);

    transcriptionText = [(HUAnnouncementsBrowserViewController *)self transcriptionText];
    text2 = [transcriptionText text];
    view2 = [(HUAnnouncementsBrowserViewController *)self view];
    [view2 frame];
    v21 = v20;
    v75 = v9;
    font3 = [(UILabel *)self->_transcriptionText font];
    v76 = font3;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [text2 boundingRectWithSize:1 options:v23 attributes:0 context:{v21, 3.40282347e38}];
    v25 = v24;

    font4 = [(UILabel *)self->_transcriptionText font];
    [font4 lineHeight];
    v28 = ceil(v25 / v27);

    font5 = [(UILabel *)self->_transcriptionTitleLabel font];
    [font5 _scaledValueForValue:32.0];
    v31 = v30 * v16;

    font6 = [(UILabel *)self->_transcriptionText font];
    [font6 _scaledValueForValue:20.0];
    v34 = v33 * v28;

    v35 = v31 + v34 + 6.0;
    heightAnchor = [(UIScrollView *)self->_transcriptionScrollView heightAnchor];
    v37 = [heightAnchor constraintEqualToConstant:v35];

    LODWORD(v38) = 1132003328;
    [v37 setPriority:v38];
    p_announcementGlobeView = &self->_announcementGlobeView;
    announcementGlobeView = self->_announcementGlobeView;
    topAnchor = [(UIScrollView *)self->_transcriptionScrollView topAnchor];
    if (!announcementGlobeView)
    {
      p_announcementGlobeView = &self->_announcementDeliveryFailureLabel;
    }

    bottomAnchor = [*p_announcementGlobeView bottomAnchor];
    v73 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];

    v62 = MEMORY[0x277CCAAD0];
    v74[0] = v37;
    v74[1] = v73;
    leadingAnchor = [(UIScrollView *)self->_transcriptionScrollView leadingAnchor];
    view3 = [(HUAnnouncementsBrowserViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[2] = v68;
    trailingAnchor = [(UIScrollView *)self->_transcriptionScrollView trailingAnchor];
    view4 = [(HUAnnouncementsBrowserViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[3] = v63;
    topAnchor2 = [(UIStackView *)self->_transcriptionStackView topAnchor];
    topAnchor3 = [(UIScrollView *)self->_transcriptionScrollView topAnchor];
    v58 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v74[4] = v58;
    leadingAnchor3 = [(UIStackView *)self->_transcriptionStackView leadingAnchor];
    leadingAnchor4 = [(UIScrollView *)self->_transcriptionScrollView leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v74[5] = v55;
    trailingAnchor3 = [(UIStackView *)self->_transcriptionStackView trailingAnchor];
    trailingAnchor4 = [(UIScrollView *)self->_transcriptionScrollView trailingAnchor];
    v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v74[6] = v43;
    [(UIStackView *)self->_transcriptionStackView bottomAnchor];
    v44 = v61 = v37;
    bottomAnchor2 = [(UIScrollView *)self->_transcriptionScrollView bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:bottomAnchor2];
    v74[7] = v46;
    heightAnchor2 = [(UIStackView *)self->_transcriptionStackView heightAnchor];
    v48 = [heightAnchor2 constraintEqualToConstant:v35];
    v74[8] = v48;
    widthAnchor = [(UIStackView *)self->_transcriptionStackView widthAnchor];
    widthAnchor2 = [(UIScrollView *)self->_transcriptionScrollView widthAnchor];
    v51 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v74[9] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:10];
    [v62 activateConstraints:v52];
  }
}

- (void)_addTranscriptionConstraintsForValidNotificationPayload
{
  [(HUAnnouncementsBrowserViewController *)self _addCommonTranscriptionConstraints];
  if (_AXSShowAudioTranscriptions())
  {
    v3 = MEMORY[0x277CBEB18];
    bottomAnchor = [(UIScrollView *)self->_transcriptionScrollView bottomAnchor];
    topAnchor = [(HURecordingButton *)self->_recordButton topAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-20.0];
    v12 = [v3 arrayWithObject:v6];

    topAnchor2 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView topAnchor];
    bottomAnchor2 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v9 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:40.0];
    [v12 na_safeAddObject:v9];

    v10 = MEMORY[0x277CCAAD0];
    v11 = [v12 copy];
    [v10 activateConstraints:v11];
  }
}

- (void)_configureSubViewsForValidNotificationPayload
{
  v306[2] = *MEMORY[0x277D85DE8];
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v4 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEAAF0]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  largeTitleLabel = self->_largeTitleLabel;
  self->_largeTitleLabel = v6;

  v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  v10 = 0.0;
  v303 = v9;
  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
  [(UILabel *)self->_largeTitleLabel setFont:v11];

  [(UILabel *)self->_largeTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_largeTitleLabel setLineBreakMode:0];
  v12 = self->_largeTitleLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v12 setTextColor:labelColor];

  v14 = self->_largeTitleLabel;
  notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v16 = [(HUAnnouncementsBrowserViewController *)self _announcerNameFromNotificationPayload:notificationPayload2];
  [(UILabel *)v14 setText:v16];

  [(UILabel *)self->_largeTitleLabel setTextAlignment:1];
  view = [(HUAnnouncementsBrowserViewController *)self view];
  [view naui_addAutoLayoutSubview:self->_largeTitleLabel];

  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  subTitleLabel = self->_subTitleLabel;
  self->_subTitleLabel = v18;

  v302 = *MEMORY[0x277D76918];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
  [(UILabel *)self->_subTitleLabel setFont:v20];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subTitleLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_subTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subTitleLabel setLineBreakMode:0];
  v22 = self->_subTitleLabel;
  notificationPayload3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v24 = [notificationPayload3 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];
  [(UILabel *)v22 setText:v24];

  [(UILabel *)self->_subTitleLabel setTextAlignment:1];
  view2 = [(HUAnnouncementsBrowserViewController *)self view];
  [view2 naui_addAutoLayoutSubview:self->_subTitleLabel];

  v26 = MEMORY[0x277CBF3A0];
  if (unsignedIntegerValue)
  {
    v27 = self->_largeTitleLabel;
    recipientTitle = [(HUAnnouncementsBrowserViewController *)self recipientTitle];
    v35 = HULocalizedStringWithFormat(@"HUAnnounceRecipient_Title", @"%@", v29, v30, v31, v32, v33, v34, recipientTitle);
    [(UILabel *)v27 setText:v35];

    v36 = self->_subTitleLabel;
    view5 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSubtitle_Title", @"HUAnnounceSubtitle_Title", 1);
    [(UILabel *)v36 setText:view5];
    v38 = 1.0;
    v39 = 0x277D75000;
  }

  else
  {
    v40 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    lightedCircleView = self->_lightedCircleView;
    self->_lightedCircleView = v40;

    [(UIView *)self->_lightedCircleView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_lightedCircleView layer];
    [layer setCornerRadius:74.0];

    [(HUAnnouncementsBrowserViewController *)self _configureVisualStyleForLightedCircleView];
    view3 = [(HUAnnouncementsBrowserViewController *)self view];
    [view3 naui_addAutoLayoutSubview:self->_lightedCircleView];

    v44 = [HUAnnouncementGlobeView alloc];
    notificationPayload4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v46 = [(HUAnnouncementGlobeView *)v44 initWithAnnouncementPayload:notificationPayload4 delegate:self];
    announcementGlobeView = self->_announcementGlobeView;
    self->_announcementGlobeView = v46;

    clearColor = [MEMORY[0x277D75348] clearColor];
    cGColor = [clearColor CGColor];
    layer2 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView layer];
    [layer2 setBackgroundColor:cGColor];

    [(HUAnnouncementGlobeView *)self->_announcementGlobeView setOpaque:0];
    view4 = [(HUAnnouncementsBrowserViewController *)self view];
    [view4 naui_addAutoLayoutSubview:self->_announcementGlobeView];

    v39 = 0x277D75000uLL;
    v52 = objc_alloc_init(MEMORY[0x277D756B8]);
    announcementProgressLabel = self->_announcementProgressLabel;
    self->_announcementProgressLabel = v52;

    _fontForAnnouncementProgressLabel = [(HUAnnouncementsBrowserViewController *)self _fontForAnnouncementProgressLabel];
    [(UILabel *)self->_announcementProgressLabel setFont:_fontForAnnouncementProgressLabel];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_announcementProgressLabel setTextColor:systemGrayColor];

    v56 = self->_announcementProgressLabel;
    v63 = HULocalizedStringWithFormat(@"HUAnnounceProgressLabel_Description", @"%lu %lu", v57, v58, v59, v60, v61, v62, 1);
    [(UILabel *)v56 setText:v63];

    [(UILabel *)self->_announcementProgressLabel setTextAlignment:1];
    view5 = [(HUAnnouncementsBrowserViewController *)self view];
    [view5 naui_addAutoLayoutSubview:self->_announcementProgressLabel];
    v38 = 0.0;
    v10 = 1.0;
  }

  v64 = objc_alloc_init(MEMORY[0x277D759D8]);
  transcriptionScrollView = self->_transcriptionScrollView;
  self->_transcriptionScrollView = v64;

  view6 = [(HUAnnouncementsBrowserViewController *)self view];
  [view6 naui_addAutoLayoutSubview:self->_transcriptionScrollView];

  v67 = objc_alloc_init(*(v39 + 1720));
  transcriptionTitleLabel = self->_transcriptionTitleLabel;
  self->_transcriptionTitleLabel = v67;

  [(UILabel *)self->_transcriptionTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_transcriptionTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_transcriptionTitleLabel setLineBreakMode:0];
  v69 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [(UILabel *)self->_transcriptionTitleLabel setFont:v69];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_transcriptionTitleLabel setTextColor:secondaryLabelColor2];

  [(UILabel *)self->_transcriptionTitleLabel setTextAlignment:1];
  v71 = self->_transcriptionTitleLabel;
  v72 = _HULocalizedStringWithDefaultValue(@"HUAnnounceTranscript_Title", @"HUAnnounceTranscript_Title", 1);
  [(UILabel *)v71 setText:v72];

  v73 = objc_alloc_init(*(v39 + 1720));
  transcriptionText = self->_transcriptionText;
  self->_transcriptionText = v73;

  [(UILabel *)self->_transcriptionText setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_transcriptionText setNumberOfLines:0];
  [(UILabel *)self->_transcriptionText setLineBreakMode:0];
  v75 = [MEMORY[0x277D74300] preferredFontForTextStyle:v302];
  [(UILabel *)self->_transcriptionText setFont:v75];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_transcriptionText setTextColor:labelColor2];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_transcriptionText setBackgroundColor:clearColor2];

  v78 = self->_transcriptionText;
  v79 = _HULocalizedStringWithDefaultValue(@"HUAnnounceTranscript_NoTranscript", @"HUAnnounceTranscript_NoTranscript", 1);
  [(UILabel *)v78 setText:v79];

  [(UILabel *)self->_transcriptionText setTextAlignment:1];
  v80 = objc_alloc(MEMORY[0x277D75A68]);
  v81 = self->_transcriptionText;
  v306[0] = self->_transcriptionTitleLabel;
  v306[1] = v81;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v306 count:2];
  v83 = [v80 initWithArrangedSubviews:v82];
  transcriptionStackView = self->_transcriptionStackView;
  self->_transcriptionStackView = v83;

  [(UIStackView *)self->_transcriptionStackView setAxis:1];
  [(UIStackView *)self->_transcriptionStackView setSpacing:6.0];
  [(UIStackView *)self->_transcriptionStackView setDistribution:0];
  [(UIStackView *)self->_transcriptionStackView setAlignment:0];
  [(UIScrollView *)self->_transcriptionScrollView naui_addAutoLayoutSubview:self->_transcriptionStackView];
  notificationPayload5 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v86 = [notificationPayload5 objectForKeyedSubscript:*MEMORY[0x277CEAAC8]];
  [(HUAnnouncementsBrowserViewController *)self _applyTranscriptionText:v86];

  v87 = [HUWaveformView alloc];
  _waveformColor = [(HUAnnouncementsBrowserViewController *)self _waveformColor];
  systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
  v90 = *v26;
  v91 = v26[1];
  v92 = v26[2];
  v93 = v26[3];
  v94 = [(HUWaveformView *)v87 initWithFrame:_waveformColor waveformColor:systemLightGrayColor backgroundColor:*v26, v91, v92, v93];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v94;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  view7 = [(HUAnnouncementsBrowserViewController *)self view];
  [view7 naui_addAutoLayoutSubview:self->_audioWaveformView];

  v97 = [objc_alloc(*(v39 + 1720)) initWithFrame:{v90, v91, v92, v93}];
  announcementDeliveryFailureLabel = self->_announcementDeliveryFailureLabel;
  self->_announcementDeliveryFailureLabel = v97;

  [(UILabel *)self->_announcementDeliveryFailureLabel setAlpha:v38];
  v99 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_announcementDeliveryFailureLabel setFont:v99];

  [(UILabel *)self->_announcementDeliveryFailureLabel setTextAlignment:1];
  secondaryLabelColor3 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_announcementDeliveryFailureLabel setTextColor:secondaryLabelColor3];

  recipientTitle2 = [(HUAnnouncementsBrowserViewController *)self recipientTitle];
  v108 = HULocalizedStringWithFormat(@"HUAnnounceNotDeliveredLabel_Description", @"%@", v102, v103, v104, v105, v106, v107, recipientTitle2);
  [(UILabel *)self->_announcementDeliveryFailureLabel setText:v108];

  [(UILabel *)self->_announcementDeliveryFailureLabel setNumberOfLines:0];
  [(UILabel *)self->_announcementDeliveryFailureLabel setLineBreakMode:0];
  view8 = [(HUAnnouncementsBrowserViewController *)self view];
  [view8 naui_addAutoLayoutSubview:self->_announcementDeliveryFailureLabel];

  v110 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__recordButtonLongPressGesture_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v110;

  v112 = [HURecordingButton alloc];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v114 = [(HURecordingButton *)v112 initWithSize:hf_keyColor backgroundColor:64.0, 64.0];
  recordButton = self->_recordButton;
  self->_recordButton = v114;

  [(HURecordingButton *)self->_recordButton addTarget:self action:sel__recordButtonTapped_ forControlEvents:64];
  [(HURecordingButton *)self->_recordButton addGestureRecognizer:self->_longPressGestureRecognizer];
  view9 = [(HUAnnouncementsBrowserViewController *)self view];
  [view9 naui_addAutoLayoutSubview:self->_recordButton];

  v117 = objc_alloc_init(*(v39 + 1720));
  recordButtonLabel = self->_recordButtonLabel;
  self->_recordButtonLabel = v117;

  v119 = *MEMORY[0x277D76968];
  v120 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_recordButtonLabel setFont:v120];

  [(UILabel *)self->_recordButtonLabel setTextAlignment:1];
  v121 = self->_recordButtonLabel;
  v122 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
  [(UILabel *)v121 setText:v122];

  [(UILabel *)self->_recordButtonLabel setIsAccessibilityElement:0];
  view10 = [(HUAnnouncementsBrowserViewController *)self view];
  [view10 naui_addAutoLayoutSubview:self->_recordButtonLabel];

  v124 = objc_alloc_init(MEMORY[0x277D75220]);
  v125 = v39;
  nextAnnouncementButton = self->_nextAnnouncementButton;
  self->_nextAnnouncementButton = v124;

  glassButtonConfiguration = [MEMORY[0x277D75230] glassButtonConfiguration];
  secondarySystemFillColor = [MEMORY[0x277D75348] secondarySystemFillColor];
  [glassButtonConfiguration setBaseBackgroundColor:secondarySystemFillColor];

  secondarySystemFillColor2 = [MEMORY[0x277D75348] secondarySystemFillColor];
  background = [glassButtonConfiguration background];
  [background setBackgroundColor:secondarySystemFillColor2];

  [(UIButton *)self->_nextAnnouncementButton setConfiguration:glassButtonConfiguration];
  v131 = self->_nextAnnouncementButton;
  hu_fastForwardButtonImage = [MEMORY[0x277D755B8] hu_fastForwardButtonImage];
  [(UIButton *)v131 setImage:hu_fastForwardButtonImage forState:0];

  layer3 = [(UIButton *)self->_nextAnnouncementButton layer];
  [layer3 setCornerRadius:22.0];

  layer4 = [(UIButton *)self->_nextAnnouncementButton layer];
  [layer4 setMasksToBounds:1];

  [(UIButton *)self->_nextAnnouncementButton addTarget:self action:sel__skipToNextAnnouncement_ forControlEvents:64];
  v135 = _HULocalizedStringWithDefaultValue(@"HUAnnounceNextButton_AX_Label_Title", @"HUAnnounceNextButton_AX_Label_Title", 1);
  [(UIButton *)self->_nextAnnouncementButton setAccessibilityLabel:v135];

  [(UIButton *)self->_nextAnnouncementButton setAlpha:v10];
  view11 = [(HUAnnouncementsBrowserViewController *)self view];
  [view11 naui_addAutoLayoutSubview:self->_nextAnnouncementButton];

  text = [(UILabel *)self->_recordButtonLabel text];
  view12 = [(HUAnnouncementsBrowserViewController *)self view];
  [view12 bounds];
  v140 = v139;
  v304 = *MEMORY[0x277D740A8];
  font = [(UILabel *)self->_recordButtonLabel font];
  v305 = font;
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
  [text boundingRectWithSize:1 options:v142 attributes:0 context:{v140, 3.40282347e38}];
  v144 = v143;

  v145 = objc_alloc_init(*(v125 + 1720));
  errorStatusLabel = self->_errorStatusLabel;
  self->_errorStatusLabel = v145;

  v147 = [MEMORY[0x277D74300] preferredFontForTextStyle:v119];
  [(UILabel *)self->_errorStatusLabel setFont:v147];

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [(UILabel *)self->_errorStatusLabel setTextColor:systemRedColor];

  [(UILabel *)self->_errorStatusLabel setTextAlignment:1];
  [(UILabel *)self->_errorStatusLabel setNumberOfLines:0];
  [(UILabel *)self->_errorStatusLabel setAlpha:v38];
  view13 = [(HUAnnouncementsBrowserViewController *)self view];
  [view13 naui_addAutoLayoutSubview:self->_errorStatusLabel];

  v150 = objc_opt_new();
  leadingAnchor = [(UILabel *)self->_largeTitleLabel leadingAnchor];
  view14 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide = [view14 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v155 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  [v150 addObject:v155];

  trailingAnchor = [(UILabel *)self->_largeTitleLabel trailingAnchor];
  view15 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide2 = [view15 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v160 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
  [v150 addObject:v160];

  topAnchor = [(UILabel *)self->_largeTitleLabel topAnchor];
  view16 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide3 = [view16 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v165 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [v150 addObject:v165];

  leadingAnchor3 = [(UILabel *)self->_subTitleLabel leadingAnchor];
  view17 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide4 = [view17 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
  view18 = [(HUAnnouncementsBrowserViewController *)self view];
  [view18 safeAreaInsets];
  v172 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v171];
  [v150 addObject:v172];

  trailingAnchor3 = [(UILabel *)self->_subTitleLabel trailingAnchor];
  view19 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide5 = [view19 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
  view20 = [(HUAnnouncementsBrowserViewController *)self view];
  [view20 safeAreaInsets];
  v179 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v178];
  [v150 addObject:v179];

  topAnchor3 = [(UILabel *)self->_subTitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_largeTitleLabel bottomAnchor];
  v182 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v150 addObject:v182];

  if (self->_announcementGlobeView)
  {
    centerXAnchor = [(UIView *)self->_lightedCircleView centerXAnchor];
    view21 = [(HUAnnouncementsBrowserViewController *)self view];
    centerXAnchor2 = [view21 centerXAnchor];
    v186 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v150 addObject:v186];

    topAnchor4 = [(UIView *)self->_lightedCircleView topAnchor];
    bottomAnchor2 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v189 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:56.0];
    [v150 addObject:v189];

    heightAnchor = [(UIView *)self->_lightedCircleView heightAnchor];
    v191 = [heightAnchor constraintEqualToConstant:148.0];
    [v150 addObject:v191];

    widthAnchor = [(UIView *)self->_lightedCircleView widthAnchor];
    heightAnchor2 = [(UIView *)self->_lightedCircleView heightAnchor];
    v194 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    [v150 addObject:v194];

    centerXAnchor3 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView centerXAnchor];
    view22 = [(HUAnnouncementsBrowserViewController *)self view];
    centerXAnchor4 = [view22 centerXAnchor];
    v198 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v150 addObject:v198];

    topAnchor5 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView topAnchor];
    bottomAnchor3 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v201 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:44.0];
    [v150 addObject:v201];

    heightAnchor3 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView heightAnchor];
    v203 = [heightAnchor3 constraintEqualToConstant:176.0];
    [v150 addObject:v203];

    widthAnchor2 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView widthAnchor];
    heightAnchor4 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView heightAnchor];
    v206 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
    [v150 addObject:v206];

    centerXAnchor5 = [(UILabel *)self->_announcementProgressLabel centerXAnchor];
    view23 = [(HUAnnouncementsBrowserViewController *)self view];
    centerXAnchor6 = [view23 centerXAnchor];
    v210 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v150 addObject:v210];

    topAnchor6 = [(UILabel *)self->_announcementProgressLabel topAnchor];
    bottomAnchor4 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView bottomAnchor];
    v213 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    [v150 addObject:v213];
  }

  leadingAnchor5 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  view24 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide6 = [view24 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide6 leadingAnchor];
  v218 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:100.0];
  audioWaveformViewLeadingConstraint = self->_audioWaveformViewLeadingConstraint;
  self->_audioWaveformViewLeadingConstraint = v218;

  trailingAnchor5 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  view25 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide7 = [view25 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide7 trailingAnchor];
  v224 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-100.0];
  audioWaveformViewTrailingConstraint = self->_audioWaveformViewTrailingConstraint;
  self->_audioWaveformViewTrailingConstraint = v224;

  [v150 addObject:self->_audioWaveformViewLeadingConstraint];
  [v150 addObject:self->_audioWaveformViewTrailingConstraint];
  centerYAnchor = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
  view26 = [(HUAnnouncementsBrowserViewController *)self view];
  centerYAnchor2 = [view26 centerYAnchor];
  v229 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v150 addObject:v229];

  heightAnchor5 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v231 = [heightAnchor5 constraintEqualToConstant:100.0];
  [v150 addObject:v231];

  leadingAnchor7 = [(UILabel *)self->_announcementDeliveryFailureLabel leadingAnchor];
  view27 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide8 = [view27 safeAreaLayoutGuide];
  leadingAnchor8 = [safeAreaLayoutGuide8 leadingAnchor];
  v236 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v150 addObject:v236];

  trailingAnchor7 = [(UILabel *)self->_announcementDeliveryFailureLabel trailingAnchor];
  view28 = [(HUAnnouncementsBrowserViewController *)self view];
  safeAreaLayoutGuide9 = [view28 safeAreaLayoutGuide];
  trailingAnchor8 = [safeAreaLayoutGuide9 trailingAnchor];
  v241 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v150 addObject:v241];

  centerYAnchor3 = [(UILabel *)self->_announcementDeliveryFailureLabel centerYAnchor];
  view29 = [(HUAnnouncementsBrowserViewController *)self view];
  centerYAnchor4 = [view29 centerYAnchor];
  v245 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v150 addObject:v245];

  topAnchor7 = [(HURecordingButton *)self->_recordButton topAnchor];
  bottomAnchor5 = [(UILabel *)self->_announcementDeliveryFailureLabel bottomAnchor];
  v248 = [topAnchor7 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:1.0];
  [v150 addObject:v248];

  topAnchor8 = [(HURecordingButton *)self->_recordButton topAnchor];
  bottomAnchor6 = [(UILabel *)self->_errorStatusLabel bottomAnchor];
  v251 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:20.0];
  [v150 addObject:v251];

  centerXAnchor7 = [(UILabel *)self->_errorStatusLabel centerXAnchor];
  view30 = [(HUAnnouncementsBrowserViewController *)self view];
  centerXAnchor8 = [view30 centerXAnchor];
  v255 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v150 addObject:v255];

  leadingAnchor9 = [(UILabel *)self->_errorStatusLabel leadingAnchor];
  view31 = [(HUAnnouncementsBrowserViewController *)self view];
  leadingAnchor10 = [view31 leadingAnchor];
  v259 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v150 addObject:v259];

  trailingAnchor9 = [(UILabel *)self->_errorStatusLabel trailingAnchor];
  view32 = [(HUAnnouncementsBrowserViewController *)self view];
  trailingAnchor10 = [view32 trailingAnchor];
  v263 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v150 addObject:v263];

  centerXAnchor9 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  view33 = [(HUAnnouncementsBrowserViewController *)self view];
  centerXAnchor10 = [view33 centerXAnchor];
  v267 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v150 addObject:v267];

  heightAnchor6 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v269 = [heightAnchor6 constraintEqualToConstant:64.0];
  [v150 addObject:v269];

  widthAnchor3 = [(HURecordingButton *)self->_recordButton widthAnchor];
  heightAnchor7 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v272 = [widthAnchor3 constraintEqualToAnchor:heightAnchor7];
  [v150 addObject:v272];

  if (_AXSShowAudioTranscriptions())
  {
    [(HUAnnouncementsBrowserViewController *)self _transcriptionStackViewHeight];
    v274 = v273 + 132.0;
  }

  else
  {
    v274 = 132.0;
  }

  topAnchor9 = [(HURecordingButton *)self->_recordButton topAnchor];
  view34 = [(HUAnnouncementsBrowserViewController *)self view];
  centerYAnchor5 = [view34 centerYAnchor];
  v278 = [topAnchor9 constraintEqualToAnchor:centerYAnchor5 constant:v274];
  [v150 addObject:v278];

  centerXAnchor11 = [(UILabel *)self->_recordButtonLabel centerXAnchor];
  centerXAnchor12 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  v281 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  [v150 addObject:v281];

  topAnchor10 = [(UILabel *)self->_recordButtonLabel topAnchor];
  bottomAnchor7 = [(HURecordingButton *)self->_recordButton bottomAnchor];
  v284 = [topAnchor10 constraintEqualToAnchor:bottomAnchor7 constant:6.0];
  [v150 addObject:v284];

  heightAnchor8 = [(UILabel *)self->_recordButtonLabel heightAnchor];
  v286 = [heightAnchor8 constraintEqualToConstant:v144];
  [v150 addObject:v286];

  bottomAnchor8 = [(UILabel *)self->_recordButtonLabel bottomAnchor];
  view35 = [(HUAnnouncementsBrowserViewController *)self view];
  bottomAnchor9 = [view35 bottomAnchor];
  v290 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-20.0];
  [v150 addObject:v290];

  centerYAnchor6 = [(UIButton *)self->_nextAnnouncementButton centerYAnchor];
  centerYAnchor7 = [(HURecordingButton *)self->_recordButton centerYAnchor];
  v293 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  [v150 addObject:v293];

  leadingAnchor11 = [(UIButton *)self->_nextAnnouncementButton leadingAnchor];
  trailingAnchor11 = [(UILabel *)self->_recordButtonLabel trailingAnchor];
  v296 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor11 constant:48.0];
  [v150 addObject:v296];

  heightAnchor9 = [(UIButton *)self->_nextAnnouncementButton heightAnchor];
  v298 = [heightAnchor9 constraintEqualToConstant:44.0];
  [v150 addObject:v298];

  widthAnchor4 = [(UIButton *)self->_nextAnnouncementButton widthAnchor];
  heightAnchor10 = [(UIButton *)self->_nextAnnouncementButton heightAnchor];
  v301 = [widthAnchor4 constraintEqualToAnchor:heightAnchor10];
  [v150 addObject:v301];

  [MEMORY[0x277CCAAD0] activateConstraints:v150];
  [(HUAnnouncementsBrowserViewController *)self _addTranscriptionConstraintsForValidNotificationPayload];
}

- (void)_applyTranscriptionText:(id)text
{
  v10 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (_AXSShowAudioTranscriptions())
  {
    if ([textCopy length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", textCopy];
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUAnnounceTranscript_NoTranscript", @"HUAnnounceTranscript_NoTranscript", 1);
    }
    v5 = ;
    [(UILabel *)self->_transcriptionText setText:v5];

    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      text = [(UILabel *)self->_transcriptionText text];
      *buf = 138412290;
      v9 = text;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_INFO, "Setting transcript text: %@", buf, 0xCu);
    }
  }
}

- (void)_recordButtonLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  switch(state)
  {
    case 4:
      view = [gestureCopy view];
      [(HUAnnouncementsBrowserViewController *)self _deleteRecording:view];

      v7 = MEMORY[0x277D75D18];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke_3;
      v12[3] = &unk_277DB8488;
      v12[4] = self;
      v8 = 0.25;
      v9 = v12;
      goto LABEL_7;
    case 3:
      view2 = [gestureCopy view];
      [(HUAnnouncementsBrowserViewController *)self _stopRecordingAndSendReply:view2];

      v7 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke_2;
      v13[3] = &unk_277DB8488;
      v13[4] = self;
      v8 = 0.25;
      v9 = v13;
      goto LABEL_7;
    case 1:
      view3 = [gestureCopy view];
      [(HUAnnouncementsBrowserViewController *)self _beginRecordingReply:view3];

      v7 = MEMORY[0x277D75D18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke;
      v14[3] = &unk_277DB8488;
      v14[4] = self;
      v8 = 0.25;
      v9 = v14;
LABEL_7:
      [v7 animateWithDuration:v9 animations:v8];
      break;
  }
}

void __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 1.2, 1.2);
  v2 = [*(a1 + 32) recordButton];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) recordButton];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

void __70__HUAnnouncementsBrowserViewController__recordButtonLongPressGesture___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) recordButton];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

- (void)_recordButtonTapped:(id)tapped
{
  v12 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2080;
    v11 = "[HUAnnouncementsBrowserViewController _recordButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped record button", &v8, 0x16u);
  }

  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if (isRecording)
  {
    [(HUAnnouncementsBrowserViewController *)self _stopRecordingAndSendReply:tappedCopy];
  }

  else
  {
    [(HUAnnouncementsBrowserViewController *)self _beginRecordingReply:tappedCopy];
  }
}

- (void)_beginRecordingReply:(id)reply
{
  announcementGlobeView = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [announcementGlobeView stopPlayback];

  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if ((isRecording & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x277CEAB30]);
    [v7 prewarmWithHandler:0];
    feedbackGenerator = [(HUAnnouncementsBrowserViewController *)self feedbackGenerator];
    [feedbackGenerator prepare];

    audioRecorder2 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [audioRecorder2 playAlertSoundForType:0 withCompletion:0];

    audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [audioWaveformView clearPowerLevels];

    audioRecorder3 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [audioRecorder3 prepareRecording];

    recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton startRecording];

    recordButtonLabel = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
    v14 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordingStopLabel_Title", @"HUAnnounceRecordingStopLabel_Title", 1);
    [recordButtonLabel setText:v14];

    v16[4] = self;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke;
    v17[3] = &unk_277DB8488;
    v17[4] = self;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_2;
    v16[3] = &unk_277DB8C28;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:v16 completion:0.25];
    view = [(HUAnnouncementsBrowserViewController *)self view];
    [view layoutIfNeeded];
  }
}

void __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordButtonLabel];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) transcriptionStackView];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) largeTitleLabel];
  v5 = [*(a1 + 32) recipientTitle];
  v12 = HULocalizedStringWithFormat(@"HUAnnounceRecipient_Title", @"%@", v6, v7, v8, v9, v10, v11, v5);
  [v4 setText:v12];

  v13 = [*(a1 + 32) subTitleLabel];
  v14 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSubtitle_Title", @"HUAnnounceSubtitle_Title", 1);
  [v13 setText:v14];

  v15 = [*(a1 + 32) nextAnnouncementButton];
  [v15 setAlpha:0.0];

  v16 = [*(a1 + 32) announcementProgressLabel];
  [v16 setAlpha:0.0];

  CGAffineTransformMakeScale(&v25, 0.1, 0.1);
  v17 = [*(a1 + 32) announcementGlobeView];
  v24 = v25;
  [v17 setTransform:&v24];

  v18 = [*(a1 + 32) announcementGlobeView];
  [v18 setAlpha:0.0];

  v19 = [*(a1 + 32) lightedCircleView];
  [v19 setAlpha:0.0];

  CGAffineTransformMakeScale(&v23, 0.1, 0.1);
  v20 = [*(a1 + 32) lightedCircleView];
  v24 = v23;
  [v20 setTransform:&v24];

  v21 = [*(a1 + 32) nextAnnouncementButton];
  [v21 setIsAccessibilityElement:0];

  v22 = [*(a1 + 32) announcementDeliveryFailureLabel];
  [v22 setAlpha:0.0];
}

uint64_t __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopRecordButton_AX_Label_Title", @"HUAnnounceStopRecordButton_AX_Label_Title", 1);
    v4 = [*(v2 + 32) recordButton];
    [v4 setAccessibilityLabel:v3];

    v5 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopRecordButton_AX_Label_Hint", @"HUAnnounceStopRecordButton_AX_Label_Hint", 1);
    v6 = [*(v2 + 32) recordButton];
    [v6 setAccessibilityHint:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_3;
    v8[3] = &unk_277DB8488;
    v9 = *(v2 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_4;
    v7[3] = &unk_277DB8C28;
    v7[4] = v9;
    return [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:0.5];
  }

  return result;
}

void __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) audioWaveformViewLeadingConstraint];
  [v2 setConstant:0.0];

  v3 = [*(a1 + 32) audioWaveformViewTrailingConstraint];
  [v3 setConstant:0.0];

  v4 = [*(a1 + 32) audioWaveformView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

void __61__HUAnnouncementsBrowserViewController__beginRecordingReply___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) audioRecorder];
    [v3 startRecording];

    v4 = [*(a1 + 32) feedbackGenerator];
    [v4 impactOccurredWithIntensity:1.0];
  }
}

- (void)_stopRecordingAndSendReply:(id)reply
{
  recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
  [recordButton setEnabled:0];

  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [audioRecorder stopRecording];

  audioRecorder2 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [audioRecorder2 playAlertSoundForType:0 withCompletion:0];
}

- (void)_sendAnnouncementReply:(id)reply
{
  replyCopy = reply;
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  if (notificationPayload)
  {
    v6 = notificationPayload;
    shouldNotSendCurrentRecording = [(HUAnnouncementsBrowserViewController *)self shouldNotSendCurrentRecording];

    if (!shouldNotSendCurrentRecording)
    {
      notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
      v9 = [notificationPayload2 objectForKeyedSubscript:*MEMORY[0x277CEAAF0]];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      if (unsignedIntegerValue == 1)
      {
        [(HUAnnouncementsBrowserViewController *)self _sendAnnouncement:replyCopy];
      }

      else
      {
        notificationPayload3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
        v12 = [notificationPayload3 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

        announce = [(HUAnnouncementsBrowserViewController *)self announce];
        recordedAnnouncementURL = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __63__HUAnnouncementsBrowserViewController__sendAnnouncementReply___block_invoke;
        v16[3] = &unk_277DC33D0;
        v17 = v12;
        selfCopy = self;
        v15 = v12;
        [announce broadcastReply:recordedAnnouncementURL forAnnouncementID:v15 completion:v16];
      }
    }
  }
}

void __63__HUAnnouncementsBrowserViewController__sendAnnouncementReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Failed to reply to announcement with ID - [%@] - [%@]", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUAnnouncementsBrowserViewController__sendAnnouncementReply___block_invoke_167;
  v8[3] = &unk_277DB7558;
  v8[4] = *(a1 + 40);
  v9 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)_sendAnnouncement:(id)announcement
{
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [notificationPayload2 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  allKeys = [v5 allKeys];
  if ([allKeys count])
  {
    v9 = objc_opt_new();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke;
    v24[3] = &unk_277DC2600;
    v10 = v9;
    v25 = v10;
    [allKeys na_each:v24];
    announce = [(HUAnnouncementsBrowserViewController *)self announce];
    recordedAnnouncementURL = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2;
    v21[3] = &unk_277DC33D0;
    v22 = v10;
    selfCopy = self;
    v14 = v10;
    [announce sendAnnouncement:recordedAnnouncementURL toRoomsWithIDs:v14 andZonesWithIDs:MEMORY[0x277CBEBF8] inHomeWithID:v13 completion:v21];
  }

  else
  {
    announce2 = [(HUAnnouncementsBrowserViewController *)self announce];
    recordedAnnouncementURL2 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2_172;
    v18[3] = &unk_277DC33D0;
    v19 = v7;
    selfCopy2 = self;
    [announce2 sendAnnouncement:recordedAnnouncementURL2 toHomeWithID:v17 completion:v18];

    v14 = v19;
  }
}

void __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  [*(a1 + 32) na_safeAddObject:v5];
}

void __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error sending announcement to Rooms with IDs [%@] - [%@]", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_171;
  v8[3] = &unk_277DB7558;
  v8[4] = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2_172(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error sending announcement to Home with ID [%@] - [%@]", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_173;
  v8[3] = &unk_277DB7558;
  v8[4] = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)_deleteRecording:(id)recording
{
  [(HUAnnouncementsBrowserViewController *)self _deleteAudioFile];
  audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  [audioWaveformView clearPowerLevels];

  [(HUAnnouncementsBrowserViewController *)self _hideRecordingUI];
}

- (void)_deleteAudioFile
{
  v16 = *MEMORY[0x277D85DE8];
  recordedAnnouncementURL = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
  if (recordedAnnouncementURL)
  {
    v4 = recordedAnnouncementURL;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    recordedAnnouncementURL2 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    path = [recordedAnnouncementURL2 path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      recordedAnnouncementURL3 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
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
}

- (void)_hideRecordingUI
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__HUAnnouncementsBrowserViewController__hideRecordingUI__block_invoke_2;
    v4[3] = &unk_277DB8488;
    v4[4] = self;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __56__HUAnnouncementsBrowserViewController__hideRecordingUI__block_invoke_3;
    v3[3] = &unk_277DB8C28;
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.25];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HUAnnouncementsBrowserViewController__hideRecordingUI__block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__HUAnnouncementsBrowserViewController__hideRecordingUI__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) largeTitleLabel];
  v3 = *(a1 + 32);
  v4 = [v3 notificationPayload];
  v5 = [v3 _announcerNameFromNotificationPayload:v4];
  [v2 setText:v5];

  v6 = [*(a1 + 32) subTitleLabel];
  v7 = [*(a1 + 32) notificationPayload];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];
  [v6 setText:v8];

  v9 = [*(a1 + 32) recordButtonLabel];
  v10 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
  [v9 setText:v10];

  v11 = [*(a1 + 32) recordButtonLabel];
  [v11 setAlpha:1.0];

  v12 = [*(a1 + 32) audioWaveformViewLeadingConstraint];
  [v12 setConstant:100.0];

  v13 = [*(a1 + 32) audioWaveformViewTrailingConstraint];
  [v13 setConstant:-100.0];

  v14 = [*(a1 + 32) announcementGlobeView];
  [v14 setAlpha:1.0];

  v15 = [*(a1 + 32) lightedCircleView];
  [v15 setAlpha:1.0];

  v16 = [*(a1 + 32) lightedCircleView];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  v28 = *MEMORY[0x277CBF2C0];
  v27 = v28;
  v29 = v26;
  v30 = *(MEMORY[0x277CBF2C0] + 32);
  v25 = v30;
  [v16 setTransform:&v28];

  v17 = [*(a1 + 32) announcementGlobeView];
  v28 = v27;
  v29 = v26;
  v30 = v25;
  [v17 setTransform:&v28];

  v18 = [*(a1 + 32) nextAnnouncementButton];
  [v18 setAlpha:1.0];

  v19 = [*(a1 + 32) nextAnnouncementButton];
  [v19 setIsAccessibilityElement:1];

  v20 = [*(a1 + 32) announcementProgressLabel];
  [v20 setAlpha:1.0];

  v21 = [*(a1 + 32) audioWaveformView];
  [v21 setAlpha:0.0];

  v22 = [*(a1 + 32) recordButton];
  [v22 setAlpha:1.0];

  v23 = [*(a1 + 32) transcriptionStackView];
  [v23 setHidden:0];

  v24 = [*(a1 + 32) view];
  [v24 layoutIfNeeded];
}

void __56__HUAnnouncementsBrowserViewController__hideRecordingUI__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) recordButton];
    [v3 setEnabled:1];

    v4 = [*(a1 + 32) recordButton];
    [v4 stopRecording];

    v5 = [*(a1 + 32) view];
    [v5 layoutIfNeeded];
  }
}

- (void)_dismissViewOrDisplayError:(id)error
{
  if (error)
  {
    audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [audioWaveformView setAlpha:0.0];

    announcementDeliveryFailureLabel = [(HUAnnouncementsBrowserViewController *)self announcementDeliveryFailureLabel];
    [announcementDeliveryFailureLabel setAlpha:1.0];

    recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton setEnabled:1];

    recordButtonLabel = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
    v8 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
    [recordButtonLabel setText:v8];

    recordButton2 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton2 stopRecording];
  }

  else
  {
    delegate = [(HUAnnouncementsBrowserViewController *)self delegate];
    if (!delegate)
    {
      return;
    }

    recordButton2 = delegate;
    delegate2 = [(HUAnnouncementsBrowserViewController *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_2825BDB40])
    {
      delegate3 = [(HUAnnouncementsBrowserViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      recordButton2 = [(HUAnnouncementsBrowserViewController *)self delegate];
      notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
      [recordButton2 didSendAnnouncementReplyforNotificationPayload:notificationPayload];
    }

    else
    {
    }
  }
}

- (void)_skipToNextAnnouncement:(id)announcement
{
  announcementGlobeView = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [announcementGlobeView skipToNextAnnouncement];
}

- (double)_transcriptionStackViewHeight
{
  font = [(UILabel *)self->_transcriptionTitleLabel font];
  [font _scaledValueForValue:32.0];
  v5 = v4;

  font2 = [(UILabel *)self->_transcriptionText font];
  [font2 _scaledValueForValue:20.0];
  v8 = v7;

  return v5 + v8 + 6.0;
}

- (void)_configureVisualStyleForLightedCircleView
{
  _lightedCircleBackgroundColorForCurrentInterfaceStyle = [(HUAnnouncementsBrowserViewController *)self _lightedCircleBackgroundColorForCurrentInterfaceStyle];
  lightedCircleView = [(HUAnnouncementsBrowserViewController *)self lightedCircleView];
  [lightedCircleView setBackgroundColor:_lightedCircleBackgroundColorForCurrentInterfaceStyle];

  layer = [(UIView *)self->_lightedCircleView layer];
  LODWORD(v5) = 0.5;
  [layer setShadowOpacity:v5];
  _lightedCircleShadowColorForCurrentInterfaceStyle = [(HUAnnouncementsBrowserViewController *)self _lightedCircleShadowColorForCurrentInterfaceStyle];
  [layer setShadowColor:{objc_msgSend(_lightedCircleShadowColorForCurrentInterfaceStyle, "CGColor")}];

  [layer setShadowOffset:{0.0, 12.0}];
  [layer setShadowRadius:16.0];
  v7 = MEMORY[0x277D75208];
  lightedCircleView2 = [(HUAnnouncementsBrowserViewController *)self lightedCircleView];
  [lightedCircleView2 bounds];
  v9 = [v7 bezierPathWithOvalInRect:?];
  [layer setShadowPath:{objc_msgSend(v9, "CGPath")}];
}

- (id)_lightedCircleBackgroundColorForCurrentInterfaceStyle
{
  v3 = [MEMORY[0x277D75348] colorWithRed:0.31372549 green:0.333333333 blue:0.360784314 alpha:1.0];
  traitCollection = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];

    v3 = whiteColor;
  }

  return v3;
}

- (id)_lightedCircleShadowColorForCurrentInterfaceStyle
{
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  traitCollection = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];

    systemGrayColor = whiteColor;
  }

  return systemGrayColor;
}

- (id)_fontForAnnouncementProgressLabel
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:0x8000 options:0];
  v3 = *MEMORY[0x277D74388];
  v12[0] = *MEMORY[0x277D74398];
  v12[1] = v3;
  v13[0] = &unk_2824923F0;
  v13[1] = &unk_282492408;
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

- (id)_backgroundColorForNextAnnouncementButton
{
  secondarySystemFillColor = [MEMORY[0x277D75348] secondarySystemFillColor];
  traitCollection = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];

    secondarySystemFillColor = systemDarkGrayColor;
  }

  return secondarySystemFillColor;
}

- (id)_waveformColor
{
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  traitCollection = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];

    systemBlackColor = systemWhiteColor;
  }

  return systemBlackColor;
}

- (BOOL)_isNotificationPayloadValid
{
  v26 = *MEMORY[0x277D85DE8];
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!notificationPayload)
  {
    return 0;
  }

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v24 = 138412290;
    v25 = notificationPayload2;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Received Notification with payload %@", &v24, 0xCu);
  }

  notificationPayload3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [notificationPayload3 objectForKeyedSubscript:*MEMORY[0x277CEA7C0]];

  notificationPayload4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v9 = [notificationPayload4 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];

  notificationPayload5 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v11 = [notificationPayload5 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];

  notificationPayload6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v13 = [notificationPayload6 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  notificationPayload7 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v15 = [notificationPayload7 objectForKeyedSubscript:*MEMORY[0x277CEAA10]];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [defaultManager fileExistsAtPath:v11];

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = v19;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "AudioAssetExistsOnDisk = [%d]", &v24, 8u);
  }

  if (v7)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  if (!v9)
  {
    v21 = 0;
  }

  v22 = v21 & v19;

  return v22;
}

- (void)_updateUIBasedOnReachabilityStatus
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(HUAnnouncementsBrowserViewController *)self _isRoomContext])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Checking reachability for context Room", &v29, 2u);
    }

    notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v5 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

    allKeys = [v5 allKeys];
    currentHome = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    firstObject = [allKeys firstObject];
    v10 = [v8 initWithUUIDString:firstObject];
    v11 = [currentHome hf_roomWithIdentifier:v10];

    hf_hasAtLeastOneAnnounceSupportedAccessory = [v11 hf_hasAtLeastOneAnnounceSupportedAccessory];
    if (hf_hasAtLeastOneAnnounceSupportedAccessory)
    {
      hf_hasAtLeastOneReachableHomeMediaAccessory = [v11 hf_hasAtLeastOneReachableHomeMediaAccessory];
    }

    else
    {
      hf_hasAtLeastOneReachableHomeMediaAccessory = 0;
    }

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [v11 uniqueIdentifier];
      v29 = 138412802;
      *v30 = uniqueIdentifier;
      *&v30[8] = 1024;
      v31 = hf_hasAtLeastOneAnnounceSupportedAccessory;
      v32 = 1024;
      v33 = hf_hasAtLeastOneReachableHomeMediaAccessory & 1;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Room ID [%@], hasAtleastOneHomePodInThisRoom:%{BOOL}d, isAtleastOneHomePodOnlineInThisRoom:%{BOOL}d", &v29, 0x18u);
    }

    v22 = hf_hasAtLeastOneAnnounceSupportedAccessory ^ 1;
    hf_hasAtLeastOneReachableHomeMediaAccessory2 = hf_hasAtLeastOneReachableHomeMediaAccessory;
  }

  else
  {
    if ([(HUAnnouncementsBrowserViewController *)self _isHomeContext])
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Checking reachability for context Home", &v29, 2u);
      }

      currentHome2 = [(HUAnnouncementsBrowserViewController *)self currentHome];
      hf_hasAtLeastOneReachableHomeMediaAccessory2 = [currentHome2 hf_hasAtLeastOneReachableHomeMediaAccessory];

      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        currentHome3 = [(HUAnnouncementsBrowserViewController *)self currentHome];
        uniqueIdentifier2 = [currentHome3 uniqueIdentifier];
        v29 = 138412546;
        *v30 = uniqueIdentifier2;
        *&v30[8] = 1024;
        v31 = hf_hasAtLeastOneReachableHomeMediaAccessory2;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Home ID [%@], hf_hasAtLeastOneReachableHomeMediaAccessory:%{BOOL}d", &v29, 0x12u);
      }

      LOBYTE(hf_hasAtLeastOneReachableHomeMediaAccessory) = 0;
    }

    else
    {
      LOBYTE(hf_hasAtLeastOneReachableHomeMediaAccessory) = 0;
      hf_hasAtLeastOneReachableHomeMediaAccessory2 = 0;
    }

    v22 = 1;
  }

  if ([(HUAnnouncementsBrowserViewController *)self _isRoomContext])
  {
    v23 = v22 | hf_hasAtLeastOneReachableHomeMediaAccessory;
  }

  else
  {
    v23 = 0;
  }

  v24 = hf_hasAtLeastOneReachableHomeMediaAccessory2 & [(HUAnnouncementsBrowserViewController *)self _isHomeContext];
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109376;
    *v30 = v23 & 1;
    *&v30[4] = 1024;
    *&v30[6] = v24;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "shouldAllowRecordingForRoom:%{BOOL}d, shouldAllowRecordingForHome:%{BOOL}d", &v29, 0xEu);
  }

  recordedAnnouncementURL = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];

  if (!recordedAnnouncementURL)
  {
    recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton setEnabled:(v23 | v24) & 1];
  }

  view = [(HUAnnouncementsBrowserViewController *)self view];
  [view layoutIfNeeded];
}

- (BOOL)_isRoomContext
{
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!notificationPayload)
  {
    return 0;
  }

  notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [notificationPayload2 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  notificationPayload3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [notificationPayload3 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  if (v5)
  {
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isHomeContext
{
  notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!notificationPayload)
  {
    return 0;
  }

  notificationPayload2 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [notificationPayload2 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  notificationPayload3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [notificationPayload3 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  if (v5)
  {
    v8 = [v7 count] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_announcerNameFromNotificationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277CEA7D0]];
  v5 = [MEMORY[0x277D14CE8] preferredNameFromUserID:v4];
  if ([v5 isEqualToString:v4])
  {
    v6 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277CEA7C0]];

    v5 = v6;
  }

  return v5;
}

- (void)didUpdateAveragePower:(float)power
{
  audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  [audioWaveformView appendPowerLevel:power];
}

- (void)audioRecorderDidStartRecording:(id)recording
{
  recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
  [recordButton setEnabled:1];

  recordButtonLabel = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
  [recordButtonLabel setEnabled:1];
}

- (void)audioRecorderFailedToFinishRecording:(id)recording
{
  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:0 interruptedByUser:0];

  [(HUAnnouncementsBrowserViewController *)self _hideRecordingUI];
}

- (void)audioRecorderFinishedRecording:(id)recording audioFile:(id)file
{
  fileCopy = file;
  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:1 interruptedByUser:0];
  audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [audioRecorder currentRecordedDuration];
  v7 = v6;

  if (v7 >= 0.5)
  {
    [(HUAnnouncementsBrowserViewController *)self setRecordedAnnouncementURL:fileCopy];
    recordButton = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton setEnabled:1];

    audioWaveformView = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [audioWaveformView setAlpha:0.0];

    [(HUAnnouncementsBrowserViewController *)self _sendAnnouncementReply:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordButton_AX_Label_Title", @"HUAnnounceRecordButton_AX_Label_Title", 1);
    recordButton2 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton2 setAccessibilityLabel:v10];

    v12 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordButton_AX_Label_Hint", @"HUAnnounceRecordButton_AX_Label_Hint", 1);
    recordButton3 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [recordButton3 setAccessibilityHint:v12];
  }

  else
  {
    [(HUAnnouncementsBrowserViewController *)self _deleteRecording:0];
  }
}

- (void)didSelectItemWithInfo:(id)info totalNumberOfAnnouncements:(unint64_t)announcements
{
  infoCopy = info;
  largeTitleLabel = [(HUAnnouncementsBrowserViewController *)self largeTitleLabel];
  v7 = [(HUAnnouncementsBrowserViewController *)self _announcerNameFromNotificationPayload:infoCopy];
  [largeTitleLabel setText:v7];

  subTitleLabel = [(HUAnnouncementsBrowserViewController *)self subTitleLabel];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];
  [subTitleLabel setText:v9];

  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  announcementProgressLabel = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
  v13 = unsignedIntegerValue + 1;
  v20 = HULocalizedStringWithFormat(@"HUAnnounceProgressLabel_Description", @"%lu %lu", v14, v15, v16, v17, v18, v19, unsignedIntegerValue + 1);
  [announcementProgressLabel setText:v20];

  announcementProgressLabel2 = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
  [announcementProgressLabel2 setHidden:announcements == 1];

  nextAnnouncementButton = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  v23 = nextAnnouncementButton;
  if (v13 >= announcements)
  {
    [nextAnnouncementButton setEnabled:0];
  }

  else
  {
    announcementGlobeView = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
    [v23 setEnabled:{objc_msgSend(announcementGlobeView, "hasActivePlaybackSession")}];
  }

  nextAnnouncementButton2 = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  v26 = nextAnnouncementButton2;
  if (announcements == 1)
  {
    [nextAnnouncementButton2 setHidden:1];
  }

  else
  {
    announcementGlobeView2 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
    [v26 setHidden:{objc_msgSend(announcementGlobeView2, "hasActivePlaybackSession") ^ 1}];
  }

  v28 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEAAC8]];
  [(HUAnnouncementsBrowserViewController *)self _applyTranscriptionText:v28];
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  if ([reachabilityCopy hf_isHomeMediaAccessory])
  {
    home = [reachabilityCopy home];
    currentHome = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [home isEqual:currentHome];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)transports
{
  transportsCopy = transports;
  if ([transportsCopy hf_isHomeMediaAccessory])
  {
    home = [transportsCopy home];
    currentHome = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [home isEqual:currentHome];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  if ([controllableCopy hf_isHomeMediaAccessory])
  {
    home = [controllableCopy home];
    currentHome = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [home isEqual:currentHome];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)_submitAnalyticsForAnnounceRecordingCompletedSuccessfully:(BOOL)successfully interruptedByUser:(BOOL)user
{
  successfullyCopy = successfully;
  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload:successfully];

  if (v6)
  {
    audioRecorder = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    recordingStopSource = [audioRecorder recordingStopSource];

    audioRecorder2 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [audioRecorder2 currentRecordedDuration];
    v11 = v10;

    notificationPayload = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v25 = [notificationPayload objectForKeyedSubscript:*MEMORY[0x277CEA768]];

    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v13 setObject:v14 forKey:*MEMORY[0x277D13428]];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:!successfullyCopy];
    [v13 setObject:v15 forKey:*MEMORY[0x277D13430]];

    [v13 setObject:v25 forKey:*MEMORY[0x277D13420]];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:recordingStopSource == 0];
    [v13 setObject:v16 forKey:*MEMORY[0x277D13458]];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:(recordingStopSource - 1) < 2];
    [v13 setObject:v17 forKey:*MEMORY[0x277D13450]];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:recordingStopSource == 3];
    [v13 setObject:v18 forKey:*MEMORY[0x277D13448]];

    audioRecorder3 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    routeChangeReason = [audioRecorder3 routeChangeReason];

    if (routeChangeReason)
    {
      audioRecorder4 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
      routeChangeReason2 = [audioRecorder4 routeChangeReason];
      [v13 setObject:routeChangeReason2 forKey:*MEMORY[0x277D13690]];
    }

    [v13 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13460]];
    v23 = MEMORY[0x277D143D8];
    v24 = [v13 copy];
    [v23 sendEvent:18 withData:v24];
  }
}

- (void)_submitAnalyticsForAnnounceNotificationUsage
{
  v9 = objc_opt_new();
  [(HUAnnouncementsBrowserViewController *)self notificationDismissTimeInterval];
  v4 = v3;
  [(HUAnnouncementsBrowserViewController *)self notificationLaunchTimeInterval];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4 - v5];
  [v9 setObject:v6 forKey:*MEMORY[0x277D133E0]];

  v7 = MEMORY[0x277D143D8];
  v8 = [v9 copy];
  [v7 sendEvent:20 withData:v8];
}

- (HUAnnouncementsBrowserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end