@interface HUAnnouncementsBrowserViewController
- (BOOL)_isHomeContext;
- (BOOL)_isNotificationPayloadValid;
- (BOOL)_isRoomContext;
- (HUAnnouncementsBrowserViewController)initWithNotificationPayload:(id)a3 delegate:(id)a4;
- (HUAnnouncementsBrowserViewControllerDelegate)delegate;
- (double)_transcriptionStackViewHeight;
- (id)_announcerNameFromNotificationPayload:(id)a3;
- (id)_backgroundColorForNextAnnouncementButton;
- (id)_fontForAnnouncementProgressLabel;
- (id)_lightedCircleBackgroundColorForCurrentInterfaceStyle;
- (id)_lightedCircleShadowColorForCurrentInterfaceStyle;
- (id)_waveformColor;
- (void)_addCommonTranscriptionConstraints;
- (void)_addTranscriptionConstraintsForValidNotificationPayload;
- (void)_applyTranscriptionText:(id)a3;
- (void)_beginRecordingReply:(id)a3;
- (void)_commonInit;
- (void)_configureSubViewsForValidNotificationPayload;
- (void)_configureVisualStyleForLightedCircleView;
- (void)_deleteAudioFile;
- (void)_deleteRecording:(id)a3;
- (void)_dismissViewOrDisplayError:(id)a3;
- (void)_hideRecordingUI;
- (void)_recordButtonLongPressGesture:(id)a3;
- (void)_recordButtonTapped:(id)a3;
- (void)_sendAnnouncement:(id)a3;
- (void)_sendAnnouncementReply:(id)a3;
- (void)_setupRecipientInformation;
- (void)_skipToNextAnnouncement:(id)a3;
- (void)_stopRecordingAndSendReply:(id)a3;
- (void)_submitAnalyticsForAnnounceNotificationUsage;
- (void)_submitAnalyticsForAnnounceRecordingCompletedSuccessfully:(BOOL)a3 interruptedByUser:(BOOL)a4;
- (void)_updateUIBasedOnReachabilityStatus;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateReachableTransports:(id)a3;
- (void)audioRecorderDidStartRecording:(id)a3;
- (void)audioRecorderFailedToFinishRecording:(id)a3;
- (void)audioRecorderFinishedRecording:(id)a3 audioFile:(id)a4;
- (void)dealloc;
- (void)didSelectItemWithInfo:(id)a3 totalNumberOfAnnouncements:(unint64_t)a4;
- (void)didUpdateAveragePower:(float)a3;
- (void)tearDownAudioActivity;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUAnnouncementsBrowserViewController

- (HUAnnouncementsBrowserViewController)initWithNotificationPayload:(id)a3 delegate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HUAnnouncementsBrowserViewController;
  v9 = [(HUAnnouncementsBrowserViewController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_notificationPayload, a3);
    v11 = [(HUAnnouncementsBrowserViewController *)v10 _isNotificationPayloadValid];
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Notification payload is valid = [%@]", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSince1970];
    v10->_notificationLaunchTimeInterval = v15;

    [(HUAnnouncementsBrowserViewController *)v10 _commonInit];
  }

  return v10;
}

- (void)tearDownAudioActivity
{
  [(HUAnnouncementsBrowserViewController *)self setIsTearingDown:1];
  v3 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    self->_shouldNotSendCurrentRecording = 1;
    v5 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [v5 stopRecording];
  }

  v6 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [v6 teardownAnnouncements];

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  [(HUAnnouncementsBrowserViewController *)self setNotificationDismissTimeInterval:?];

  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceNotificationUsage];
}

- (void)dealloc
{
  v3 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    self->_shouldNotSendCurrentRecording = 1;
    [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:1 interruptedByUser:1];
    v5 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [v5 stopRecording];
  }

  [(HUAnnouncementsBrowserViewController *)self _deleteAudioFile];
  v6 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [v6 teardownAnnouncements];

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
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v3 addAccessoryObserver:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  v5 = [MEMORY[0x277D755B8] hu_fastForwardButtonImage];
  [v4 setImage:v5 forState:0];

  v6 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  v7 = [(HUAnnouncementsBrowserViewController *)self _waveformColor];
  [v6 setWaveformColor:v7];

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

  v9 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  v11 = [MEMORY[0x277D146E8] sharedDispatcher];
  v12 = [v11 allHomesFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HUAnnouncementsBrowserViewController__commonInit__block_invoke;
  v15[3] = &unk_277DBE8D0;
  v16 = v10;
  v17 = self;
  v13 = v10;
  v14 = [v12 addCompletionBlock:v15];
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
  v3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v20 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  if ([v20 count])
  {
    v4 = [v20 allValues];
    if ([v4 count])
    {
      v5 = 0;
      do
      {
        if ([v4 count] > 1 && v5 == objc_msgSend(v4, "count") - 1)
        {
          recipientTitle = self->_recipientTitle;
          v7 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecipientTitle_Concatenator", @"HUAnnounceRecipientTitle_Concatenator", 1);
          v8 = [(NSString *)recipientTitle stringByAppendingString:v7];
          v9 = self->_recipientTitle;
          self->_recipientTitle = v8;
        }

        v10 = self->_recipientTitle;
        v11 = [v4 objectAtIndexedSubscript:v5];
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

        if (++v5 < [v4 count])
        {
          v16 = [(NSString *)self->_recipientTitle stringByAppendingString:@", "];
          v17 = self->_recipientTitle;
          self->_recipientTitle = v16;
        }
      }

      while (v5 < [v4 count]);
    }
  }

  else
  {
    v4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v18 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEAA10]];
    v19 = self->_recipientTitle;
    self->_recipientTitle = v18;
  }
}

- (void)_addCommonTranscriptionConstraints
{
  v78[1] = *MEMORY[0x277D85DE8];
  if (_AXSShowAudioTranscriptions())
  {
    v3 = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
    [v3 setAlpha:0.0];

    v4 = [(HUAnnouncementsBrowserViewController *)self transcriptionTitleLabel];
    v5 = [v4 text];
    v6 = [(HUAnnouncementsBrowserViewController *)self view];
    [v6 frame];
    v8 = v7;
    v77 = *MEMORY[0x277D740A8];
    v9 = v77;
    v10 = [(UILabel *)self->_transcriptionTitleLabel font];
    v78[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [v5 boundingRectWithSize:1 options:v11 attributes:0 context:{v8, 3.40282347e38}];
    v13 = v12;

    v14 = [(UILabel *)self->_transcriptionTitleLabel font];
    [v14 lineHeight];
    v16 = ceil(v13 / v15);

    v17 = [(HUAnnouncementsBrowserViewController *)self transcriptionText];
    v18 = [v17 text];
    v19 = [(HUAnnouncementsBrowserViewController *)self view];
    [v19 frame];
    v21 = v20;
    v75 = v9;
    v22 = [(UILabel *)self->_transcriptionText font];
    v76 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [v18 boundingRectWithSize:1 options:v23 attributes:0 context:{v21, 3.40282347e38}];
    v25 = v24;

    v26 = [(UILabel *)self->_transcriptionText font];
    [v26 lineHeight];
    v28 = ceil(v25 / v27);

    v29 = [(UILabel *)self->_transcriptionTitleLabel font];
    [v29 _scaledValueForValue:32.0];
    v31 = v30 * v16;

    v32 = [(UILabel *)self->_transcriptionText font];
    [v32 _scaledValueForValue:20.0];
    v34 = v33 * v28;

    v35 = v31 + v34 + 6.0;
    v36 = [(UIScrollView *)self->_transcriptionScrollView heightAnchor];
    v37 = [v36 constraintEqualToConstant:v35];

    LODWORD(v38) = 1132003328;
    [v37 setPriority:v38];
    p_announcementGlobeView = &self->_announcementGlobeView;
    announcementGlobeView = self->_announcementGlobeView;
    v41 = [(UIScrollView *)self->_transcriptionScrollView topAnchor];
    if (!announcementGlobeView)
    {
      p_announcementGlobeView = &self->_announcementDeliveryFailureLabel;
    }

    v42 = [*p_announcementGlobeView bottomAnchor];
    v73 = [v41 constraintEqualToAnchor:v42 constant:6.0];

    v62 = MEMORY[0x277CCAAD0];
    v74[0] = v37;
    v74[1] = v73;
    v71 = [(UIScrollView *)self->_transcriptionScrollView leadingAnchor];
    v72 = [(HUAnnouncementsBrowserViewController *)self view];
    v70 = [v72 safeAreaLayoutGuide];
    v69 = [v70 leadingAnchor];
    v68 = [v71 constraintEqualToAnchor:v69];
    v74[2] = v68;
    v66 = [(UIScrollView *)self->_transcriptionScrollView trailingAnchor];
    v67 = [(HUAnnouncementsBrowserViewController *)self view];
    v65 = [v67 safeAreaLayoutGuide];
    v64 = [v65 trailingAnchor];
    v63 = [v66 constraintEqualToAnchor:v64];
    v74[3] = v63;
    v60 = [(UIStackView *)self->_transcriptionStackView topAnchor];
    v59 = [(UIScrollView *)self->_transcriptionScrollView topAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v74[4] = v58;
    v57 = [(UIStackView *)self->_transcriptionStackView leadingAnchor];
    v56 = [(UIScrollView *)self->_transcriptionScrollView leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v74[5] = v55;
    v54 = [(UIStackView *)self->_transcriptionStackView trailingAnchor];
    v53 = [(UIScrollView *)self->_transcriptionScrollView trailingAnchor];
    v43 = [v54 constraintEqualToAnchor:v53];
    v74[6] = v43;
    [(UIStackView *)self->_transcriptionStackView bottomAnchor];
    v44 = v61 = v37;
    v45 = [(UIScrollView *)self->_transcriptionScrollView bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v74[7] = v46;
    v47 = [(UIStackView *)self->_transcriptionStackView heightAnchor];
    v48 = [v47 constraintEqualToConstant:v35];
    v74[8] = v48;
    v49 = [(UIStackView *)self->_transcriptionStackView widthAnchor];
    v50 = [(UIScrollView *)self->_transcriptionScrollView widthAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
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
    v4 = [(UIScrollView *)self->_transcriptionScrollView bottomAnchor];
    v5 = [(HURecordingButton *)self->_recordButton topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-20.0];
    v12 = [v3 arrayWithObject:v6];

    v7 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView topAnchor];
    v8 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:40.0];
    [v12 na_safeAddObject:v9];

    v10 = MEMORY[0x277CCAAD0];
    v11 = [v12 copy];
    [v10 activateConstraints:v11];
  }
}

- (void)_configureSubViewsForValidNotificationPayload
{
  v306[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEAAF0]];
  v5 = [v4 unsignedIntegerValue];

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
  v13 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v12 setTextColor:v13];

  v14 = self->_largeTitleLabel;
  v15 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v16 = [(HUAnnouncementsBrowserViewController *)self _announcerNameFromNotificationPayload:v15];
  [(UILabel *)v14 setText:v16];

  [(UILabel *)self->_largeTitleLabel setTextAlignment:1];
  v17 = [(HUAnnouncementsBrowserViewController *)self view];
  [v17 naui_addAutoLayoutSubview:self->_largeTitleLabel];

  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  subTitleLabel = self->_subTitleLabel;
  self->_subTitleLabel = v18;

  v302 = *MEMORY[0x277D76918];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
  [(UILabel *)self->_subTitleLabel setFont:v20];

  v21 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subTitleLabel setTextColor:v21];

  [(UILabel *)self->_subTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subTitleLabel setLineBreakMode:0];
  v22 = self->_subTitleLabel;
  v23 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];
  [(UILabel *)v22 setText:v24];

  [(UILabel *)self->_subTitleLabel setTextAlignment:1];
  v25 = [(HUAnnouncementsBrowserViewController *)self view];
  [v25 naui_addAutoLayoutSubview:self->_subTitleLabel];

  v26 = MEMORY[0x277CBF3A0];
  if (v5)
  {
    v27 = self->_largeTitleLabel;
    v28 = [(HUAnnouncementsBrowserViewController *)self recipientTitle];
    v35 = HULocalizedStringWithFormat(@"HUAnnounceRecipient_Title", @"%@", v29, v30, v31, v32, v33, v34, v28);
    [(UILabel *)v27 setText:v35];

    v36 = self->_subTitleLabel;
    v37 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSubtitle_Title", @"HUAnnounceSubtitle_Title", 1);
    [(UILabel *)v36 setText:v37];
    v38 = 1.0;
    v39 = 0x277D75000;
  }

  else
  {
    v40 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    lightedCircleView = self->_lightedCircleView;
    self->_lightedCircleView = v40;

    [(UIView *)self->_lightedCircleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [(UIView *)self->_lightedCircleView layer];
    [v42 setCornerRadius:74.0];

    [(HUAnnouncementsBrowserViewController *)self _configureVisualStyleForLightedCircleView];
    v43 = [(HUAnnouncementsBrowserViewController *)self view];
    [v43 naui_addAutoLayoutSubview:self->_lightedCircleView];

    v44 = [HUAnnouncementGlobeView alloc];
    v45 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v46 = [(HUAnnouncementGlobeView *)v44 initWithAnnouncementPayload:v45 delegate:self];
    announcementGlobeView = self->_announcementGlobeView;
    self->_announcementGlobeView = v46;

    v48 = [MEMORY[0x277D75348] clearColor];
    v49 = [v48 CGColor];
    v50 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView layer];
    [v50 setBackgroundColor:v49];

    [(HUAnnouncementGlobeView *)self->_announcementGlobeView setOpaque:0];
    v51 = [(HUAnnouncementsBrowserViewController *)self view];
    [v51 naui_addAutoLayoutSubview:self->_announcementGlobeView];

    v39 = 0x277D75000uLL;
    v52 = objc_alloc_init(MEMORY[0x277D756B8]);
    announcementProgressLabel = self->_announcementProgressLabel;
    self->_announcementProgressLabel = v52;

    v54 = [(HUAnnouncementsBrowserViewController *)self _fontForAnnouncementProgressLabel];
    [(UILabel *)self->_announcementProgressLabel setFont:v54];

    v55 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_announcementProgressLabel setTextColor:v55];

    v56 = self->_announcementProgressLabel;
    v63 = HULocalizedStringWithFormat(@"HUAnnounceProgressLabel_Description", @"%lu %lu", v57, v58, v59, v60, v61, v62, 1);
    [(UILabel *)v56 setText:v63];

    [(UILabel *)self->_announcementProgressLabel setTextAlignment:1];
    v37 = [(HUAnnouncementsBrowserViewController *)self view];
    [v37 naui_addAutoLayoutSubview:self->_announcementProgressLabel];
    v38 = 0.0;
    v10 = 1.0;
  }

  v64 = objc_alloc_init(MEMORY[0x277D759D8]);
  transcriptionScrollView = self->_transcriptionScrollView;
  self->_transcriptionScrollView = v64;

  v66 = [(HUAnnouncementsBrowserViewController *)self view];
  [v66 naui_addAutoLayoutSubview:self->_transcriptionScrollView];

  v67 = objc_alloc_init(*(v39 + 1720));
  transcriptionTitleLabel = self->_transcriptionTitleLabel;
  self->_transcriptionTitleLabel = v67;

  [(UILabel *)self->_transcriptionTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_transcriptionTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_transcriptionTitleLabel setLineBreakMode:0];
  v69 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [(UILabel *)self->_transcriptionTitleLabel setFont:v69];

  v70 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_transcriptionTitleLabel setTextColor:v70];

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

  v76 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_transcriptionText setTextColor:v76];

  v77 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_transcriptionText setBackgroundColor:v77];

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
  v85 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v86 = [v85 objectForKeyedSubscript:*MEMORY[0x277CEAAC8]];
  [(HUAnnouncementsBrowserViewController *)self _applyTranscriptionText:v86];

  v87 = [HUWaveformView alloc];
  v88 = [(HUAnnouncementsBrowserViewController *)self _waveformColor];
  v89 = [MEMORY[0x277D75348] systemLightGrayColor];
  v90 = *v26;
  v91 = v26[1];
  v92 = v26[2];
  v93 = v26[3];
  v94 = [(HUWaveformView *)v87 initWithFrame:v88 waveformColor:v89 backgroundColor:*v26, v91, v92, v93];
  audioWaveformView = self->_audioWaveformView;
  self->_audioWaveformView = v94;

  [(HUWaveformView *)self->_audioWaveformView setAlpha:0.0];
  v96 = [(HUAnnouncementsBrowserViewController *)self view];
  [v96 naui_addAutoLayoutSubview:self->_audioWaveformView];

  v97 = [objc_alloc(*(v39 + 1720)) initWithFrame:{v90, v91, v92, v93}];
  announcementDeliveryFailureLabel = self->_announcementDeliveryFailureLabel;
  self->_announcementDeliveryFailureLabel = v97;

  [(UILabel *)self->_announcementDeliveryFailureLabel setAlpha:v38];
  v99 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_announcementDeliveryFailureLabel setFont:v99];

  [(UILabel *)self->_announcementDeliveryFailureLabel setTextAlignment:1];
  v100 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_announcementDeliveryFailureLabel setTextColor:v100];

  v101 = [(HUAnnouncementsBrowserViewController *)self recipientTitle];
  v108 = HULocalizedStringWithFormat(@"HUAnnounceNotDeliveredLabel_Description", @"%@", v102, v103, v104, v105, v106, v107, v101);
  [(UILabel *)self->_announcementDeliveryFailureLabel setText:v108];

  [(UILabel *)self->_announcementDeliveryFailureLabel setNumberOfLines:0];
  [(UILabel *)self->_announcementDeliveryFailureLabel setLineBreakMode:0];
  v109 = [(HUAnnouncementsBrowserViewController *)self view];
  [v109 naui_addAutoLayoutSubview:self->_announcementDeliveryFailureLabel];

  v110 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__recordButtonLongPressGesture_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v110;

  v112 = [HURecordingButton alloc];
  v113 = [MEMORY[0x277D75348] hf_keyColor];
  v114 = [(HURecordingButton *)v112 initWithSize:v113 backgroundColor:64.0, 64.0];
  recordButton = self->_recordButton;
  self->_recordButton = v114;

  [(HURecordingButton *)self->_recordButton addTarget:self action:sel__recordButtonTapped_ forControlEvents:64];
  [(HURecordingButton *)self->_recordButton addGestureRecognizer:self->_longPressGestureRecognizer];
  v116 = [(HUAnnouncementsBrowserViewController *)self view];
  [v116 naui_addAutoLayoutSubview:self->_recordButton];

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
  v123 = [(HUAnnouncementsBrowserViewController *)self view];
  [v123 naui_addAutoLayoutSubview:self->_recordButtonLabel];

  v124 = objc_alloc_init(MEMORY[0x277D75220]);
  v125 = v39;
  nextAnnouncementButton = self->_nextAnnouncementButton;
  self->_nextAnnouncementButton = v124;

  v127 = [MEMORY[0x277D75230] glassButtonConfiguration];
  v128 = [MEMORY[0x277D75348] secondarySystemFillColor];
  [v127 setBaseBackgroundColor:v128];

  v129 = [MEMORY[0x277D75348] secondarySystemFillColor];
  v130 = [v127 background];
  [v130 setBackgroundColor:v129];

  [(UIButton *)self->_nextAnnouncementButton setConfiguration:v127];
  v131 = self->_nextAnnouncementButton;
  v132 = [MEMORY[0x277D755B8] hu_fastForwardButtonImage];
  [(UIButton *)v131 setImage:v132 forState:0];

  v133 = [(UIButton *)self->_nextAnnouncementButton layer];
  [v133 setCornerRadius:22.0];

  v134 = [(UIButton *)self->_nextAnnouncementButton layer];
  [v134 setMasksToBounds:1];

  [(UIButton *)self->_nextAnnouncementButton addTarget:self action:sel__skipToNextAnnouncement_ forControlEvents:64];
  v135 = _HULocalizedStringWithDefaultValue(@"HUAnnounceNextButton_AX_Label_Title", @"HUAnnounceNextButton_AX_Label_Title", 1);
  [(UIButton *)self->_nextAnnouncementButton setAccessibilityLabel:v135];

  [(UIButton *)self->_nextAnnouncementButton setAlpha:v10];
  v136 = [(HUAnnouncementsBrowserViewController *)self view];
  [v136 naui_addAutoLayoutSubview:self->_nextAnnouncementButton];

  v137 = [(UILabel *)self->_recordButtonLabel text];
  v138 = [(HUAnnouncementsBrowserViewController *)self view];
  [v138 bounds];
  v140 = v139;
  v304 = *MEMORY[0x277D740A8];
  v141 = [(UILabel *)self->_recordButtonLabel font];
  v305 = v141;
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
  [v137 boundingRectWithSize:1 options:v142 attributes:0 context:{v140, 3.40282347e38}];
  v144 = v143;

  v145 = objc_alloc_init(*(v125 + 1720));
  errorStatusLabel = self->_errorStatusLabel;
  self->_errorStatusLabel = v145;

  v147 = [MEMORY[0x277D74300] preferredFontForTextStyle:v119];
  [(UILabel *)self->_errorStatusLabel setFont:v147];

  v148 = [MEMORY[0x277D75348] systemRedColor];
  [(UILabel *)self->_errorStatusLabel setTextColor:v148];

  [(UILabel *)self->_errorStatusLabel setTextAlignment:1];
  [(UILabel *)self->_errorStatusLabel setNumberOfLines:0];
  [(UILabel *)self->_errorStatusLabel setAlpha:v38];
  v149 = [(HUAnnouncementsBrowserViewController *)self view];
  [v149 naui_addAutoLayoutSubview:self->_errorStatusLabel];

  v150 = objc_opt_new();
  v151 = [(UILabel *)self->_largeTitleLabel leadingAnchor];
  v152 = [(HUAnnouncementsBrowserViewController *)self view];
  v153 = [v152 safeAreaLayoutGuide];
  v154 = [v153 leadingAnchor];
  v155 = [v151 constraintEqualToAnchor:v154 constant:24.0];
  [v150 addObject:v155];

  v156 = [(UILabel *)self->_largeTitleLabel trailingAnchor];
  v157 = [(HUAnnouncementsBrowserViewController *)self view];
  v158 = [v157 safeAreaLayoutGuide];
  v159 = [v158 trailingAnchor];
  v160 = [v156 constraintEqualToAnchor:v159 constant:-24.0];
  [v150 addObject:v160];

  v161 = [(UILabel *)self->_largeTitleLabel topAnchor];
  v162 = [(HUAnnouncementsBrowserViewController *)self view];
  v163 = [v162 safeAreaLayoutGuide];
  v164 = [v163 topAnchor];
  v165 = [v161 constraintEqualToAnchor:v164 constant:20.0];
  [v150 addObject:v165];

  v166 = [(UILabel *)self->_subTitleLabel leadingAnchor];
  v167 = [(HUAnnouncementsBrowserViewController *)self view];
  v168 = [v167 safeAreaLayoutGuide];
  v169 = [v168 leadingAnchor];
  v170 = [(HUAnnouncementsBrowserViewController *)self view];
  [v170 safeAreaInsets];
  v172 = [v166 constraintEqualToAnchor:v169 constant:v171];
  [v150 addObject:v172];

  v173 = [(UILabel *)self->_subTitleLabel trailingAnchor];
  v174 = [(HUAnnouncementsBrowserViewController *)self view];
  v175 = [v174 safeAreaLayoutGuide];
  v176 = [v175 trailingAnchor];
  v177 = [(HUAnnouncementsBrowserViewController *)self view];
  [v177 safeAreaInsets];
  v179 = [v173 constraintEqualToAnchor:v176 constant:v178];
  [v150 addObject:v179];

  v180 = [(UILabel *)self->_subTitleLabel topAnchor];
  v181 = [(UILabel *)self->_largeTitleLabel bottomAnchor];
  v182 = [v180 constraintEqualToAnchor:v181];
  [v150 addObject:v182];

  if (self->_announcementGlobeView)
  {
    v183 = [(UIView *)self->_lightedCircleView centerXAnchor];
    v184 = [(HUAnnouncementsBrowserViewController *)self view];
    v185 = [v184 centerXAnchor];
    v186 = [v183 constraintEqualToAnchor:v185];
    [v150 addObject:v186];

    v187 = [(UIView *)self->_lightedCircleView topAnchor];
    v188 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v189 = [v187 constraintEqualToAnchor:v188 constant:56.0];
    [v150 addObject:v189];

    v190 = [(UIView *)self->_lightedCircleView heightAnchor];
    v191 = [v190 constraintEqualToConstant:148.0];
    [v150 addObject:v191];

    v192 = [(UIView *)self->_lightedCircleView widthAnchor];
    v193 = [(UIView *)self->_lightedCircleView heightAnchor];
    v194 = [v192 constraintEqualToAnchor:v193];
    [v150 addObject:v194];

    v195 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView centerXAnchor];
    v196 = [(HUAnnouncementsBrowserViewController *)self view];
    v197 = [v196 centerXAnchor];
    v198 = [v195 constraintEqualToAnchor:v197];
    [v150 addObject:v198];

    v199 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView topAnchor];
    v200 = [(UILabel *)self->_subTitleLabel bottomAnchor];
    v201 = [v199 constraintEqualToAnchor:v200 constant:44.0];
    [v150 addObject:v201];

    v202 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView heightAnchor];
    v203 = [v202 constraintEqualToConstant:176.0];
    [v150 addObject:v203];

    v204 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView widthAnchor];
    v205 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView heightAnchor];
    v206 = [v204 constraintEqualToAnchor:v205];
    [v150 addObject:v206];

    v207 = [(UILabel *)self->_announcementProgressLabel centerXAnchor];
    v208 = [(HUAnnouncementsBrowserViewController *)self view];
    v209 = [v208 centerXAnchor];
    v210 = [v207 constraintEqualToAnchor:v209];
    [v150 addObject:v210];

    v211 = [(UILabel *)self->_announcementProgressLabel topAnchor];
    v212 = [(HUAnnouncementGlobeView *)self->_announcementGlobeView bottomAnchor];
    v213 = [v211 constraintEqualToAnchor:v212 constant:10.0];
    [v150 addObject:v213];
  }

  v214 = [(HUWaveformView *)self->_audioWaveformView leadingAnchor];
  v215 = [(HUAnnouncementsBrowserViewController *)self view];
  v216 = [v215 safeAreaLayoutGuide];
  v217 = [v216 leadingAnchor];
  v218 = [v214 constraintEqualToAnchor:v217 constant:100.0];
  audioWaveformViewLeadingConstraint = self->_audioWaveformViewLeadingConstraint;
  self->_audioWaveformViewLeadingConstraint = v218;

  v220 = [(HUWaveformView *)self->_audioWaveformView trailingAnchor];
  v221 = [(HUAnnouncementsBrowserViewController *)self view];
  v222 = [v221 safeAreaLayoutGuide];
  v223 = [v222 trailingAnchor];
  v224 = [v220 constraintEqualToAnchor:v223 constant:-100.0];
  audioWaveformViewTrailingConstraint = self->_audioWaveformViewTrailingConstraint;
  self->_audioWaveformViewTrailingConstraint = v224;

  [v150 addObject:self->_audioWaveformViewLeadingConstraint];
  [v150 addObject:self->_audioWaveformViewTrailingConstraint];
  v226 = [(HUWaveformView *)self->_audioWaveformView centerYAnchor];
  v227 = [(HUAnnouncementsBrowserViewController *)self view];
  v228 = [v227 centerYAnchor];
  v229 = [v226 constraintEqualToAnchor:v228];
  [v150 addObject:v229];

  v230 = [(HUWaveformView *)self->_audioWaveformView heightAnchor];
  v231 = [v230 constraintEqualToConstant:100.0];
  [v150 addObject:v231];

  v232 = [(UILabel *)self->_announcementDeliveryFailureLabel leadingAnchor];
  v233 = [(HUAnnouncementsBrowserViewController *)self view];
  v234 = [v233 safeAreaLayoutGuide];
  v235 = [v234 leadingAnchor];
  v236 = [v232 constraintEqualToAnchor:v235];
  [v150 addObject:v236];

  v237 = [(UILabel *)self->_announcementDeliveryFailureLabel trailingAnchor];
  v238 = [(HUAnnouncementsBrowserViewController *)self view];
  v239 = [v238 safeAreaLayoutGuide];
  v240 = [v239 trailingAnchor];
  v241 = [v237 constraintEqualToAnchor:v240];
  [v150 addObject:v241];

  v242 = [(UILabel *)self->_announcementDeliveryFailureLabel centerYAnchor];
  v243 = [(HUAnnouncementsBrowserViewController *)self view];
  v244 = [v243 centerYAnchor];
  v245 = [v242 constraintEqualToAnchor:v244];
  [v150 addObject:v245];

  v246 = [(HURecordingButton *)self->_recordButton topAnchor];
  v247 = [(UILabel *)self->_announcementDeliveryFailureLabel bottomAnchor];
  v248 = [v246 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v247 multiplier:1.0];
  [v150 addObject:v248];

  v249 = [(HURecordingButton *)self->_recordButton topAnchor];
  v250 = [(UILabel *)self->_errorStatusLabel bottomAnchor];
  v251 = [v249 constraintEqualToAnchor:v250 constant:20.0];
  [v150 addObject:v251];

  v252 = [(UILabel *)self->_errorStatusLabel centerXAnchor];
  v253 = [(HUAnnouncementsBrowserViewController *)self view];
  v254 = [v253 centerXAnchor];
  v255 = [v252 constraintEqualToAnchor:v254];
  [v150 addObject:v255];

  v256 = [(UILabel *)self->_errorStatusLabel leadingAnchor];
  v257 = [(HUAnnouncementsBrowserViewController *)self view];
  v258 = [v257 leadingAnchor];
  v259 = [v256 constraintEqualToAnchor:v258];
  [v150 addObject:v259];

  v260 = [(UILabel *)self->_errorStatusLabel trailingAnchor];
  v261 = [(HUAnnouncementsBrowserViewController *)self view];
  v262 = [v261 trailingAnchor];
  v263 = [v260 constraintEqualToAnchor:v262];
  [v150 addObject:v263];

  v264 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  v265 = [(HUAnnouncementsBrowserViewController *)self view];
  v266 = [v265 centerXAnchor];
  v267 = [v264 constraintEqualToAnchor:v266];
  [v150 addObject:v267];

  v268 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v269 = [v268 constraintEqualToConstant:64.0];
  [v150 addObject:v269];

  v270 = [(HURecordingButton *)self->_recordButton widthAnchor];
  v271 = [(HURecordingButton *)self->_recordButton heightAnchor];
  v272 = [v270 constraintEqualToAnchor:v271];
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

  v275 = [(HURecordingButton *)self->_recordButton topAnchor];
  v276 = [(HUAnnouncementsBrowserViewController *)self view];
  v277 = [v276 centerYAnchor];
  v278 = [v275 constraintEqualToAnchor:v277 constant:v274];
  [v150 addObject:v278];

  v279 = [(UILabel *)self->_recordButtonLabel centerXAnchor];
  v280 = [(HURecordingButton *)self->_recordButton centerXAnchor];
  v281 = [v279 constraintEqualToAnchor:v280];
  [v150 addObject:v281];

  v282 = [(UILabel *)self->_recordButtonLabel topAnchor];
  v283 = [(HURecordingButton *)self->_recordButton bottomAnchor];
  v284 = [v282 constraintEqualToAnchor:v283 constant:6.0];
  [v150 addObject:v284];

  v285 = [(UILabel *)self->_recordButtonLabel heightAnchor];
  v286 = [v285 constraintEqualToConstant:v144];
  [v150 addObject:v286];

  v287 = [(UILabel *)self->_recordButtonLabel bottomAnchor];
  v288 = [(HUAnnouncementsBrowserViewController *)self view];
  v289 = [v288 bottomAnchor];
  v290 = [v287 constraintEqualToAnchor:v289 constant:-20.0];
  [v150 addObject:v290];

  v291 = [(UIButton *)self->_nextAnnouncementButton centerYAnchor];
  v292 = [(HURecordingButton *)self->_recordButton centerYAnchor];
  v293 = [v291 constraintEqualToAnchor:v292];
  [v150 addObject:v293];

  v294 = [(UIButton *)self->_nextAnnouncementButton leadingAnchor];
  v295 = [(UILabel *)self->_recordButtonLabel trailingAnchor];
  v296 = [v294 constraintEqualToAnchor:v295 constant:48.0];
  [v150 addObject:v296];

  v297 = [(UIButton *)self->_nextAnnouncementButton heightAnchor];
  v298 = [v297 constraintEqualToConstant:44.0];
  [v150 addObject:v298];

  v299 = [(UIButton *)self->_nextAnnouncementButton widthAnchor];
  v300 = [(UIButton *)self->_nextAnnouncementButton heightAnchor];
  v301 = [v299 constraintEqualToAnchor:v300];
  [v150 addObject:v301];

  [MEMORY[0x277CCAAD0] activateConstraints:v150];
  [(HUAnnouncementsBrowserViewController *)self _addTranscriptionConstraintsForValidNotificationPayload];
}

- (void)_applyTranscriptionText:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_AXSShowAudioTranscriptions())
  {
    if ([v4 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
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
      v7 = [(UILabel *)self->_transcriptionText text];
      *buf = 138412290;
      v9 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_INFO, "Setting transcript text: %@", buf, 0xCu);
    }
  }
}

- (void)_recordButtonLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  switch(v5)
  {
    case 4:
      v11 = [v4 view];
      [(HUAnnouncementsBrowserViewController *)self _deleteRecording:v11];

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
      v10 = [v4 view];
      [(HUAnnouncementsBrowserViewController *)self _stopRecordingAndSendReply:v10];

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
      v6 = [v4 view];
      [(HUAnnouncementsBrowserViewController *)self _beginRecordingReply:v6];

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

- (void)_recordButtonTapped:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2080;
    v11 = "[HUAnnouncementsBrowserViewController _recordButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped record button", &v8, 0x16u);
  }

  v6 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  v7 = [v6 isRecording];

  if (v7)
  {
    [(HUAnnouncementsBrowserViewController *)self _stopRecordingAndSendReply:v4];
  }

  else
  {
    [(HUAnnouncementsBrowserViewController *)self _beginRecordingReply:v4];
  }
}

- (void)_beginRecordingReply:(id)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [v4 stopPlayback];

  v5 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  v6 = [v5 isRecording];

  if ((v6 & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x277CEAB30]);
    [v7 prewarmWithHandler:0];
    v8 = [(HUAnnouncementsBrowserViewController *)self feedbackGenerator];
    [v8 prepare];

    v9 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [v9 playAlertSoundForType:0 withCompletion:0];

    v10 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [v10 clearPowerLevels];

    v11 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [v11 prepareRecording];

    v12 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v12 startRecording];

    v13 = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
    v14 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordingStopLabel_Title", @"HUAnnounceRecordingStopLabel_Title", 1);
    [v13 setText:v14];

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
    v15 = [(HUAnnouncementsBrowserViewController *)self view];
    [v15 layoutIfNeeded];
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

- (void)_stopRecordingAndSendReply:(id)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self recordButton];
  [v4 setEnabled:0];

  v5 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [v5 stopRecording];

  v6 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [v6 playAlertSoundForType:0 withCompletion:0];
}

- (void)_sendAnnouncementReply:(id)a3
{
  v4 = a3;
  v5 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  if (v5)
  {
    v6 = v5;
    v7 = [(HUAnnouncementsBrowserViewController *)self shouldNotSendCurrentRecording];

    if (!v7)
    {
      v8 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEAAF0]];
      v10 = [v9 unsignedIntegerValue];

      if (v10 == 1)
      {
        [(HUAnnouncementsBrowserViewController *)self _sendAnnouncement:v4];
      }

      else
      {
        v11 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

        v13 = [(HUAnnouncementsBrowserViewController *)self announce];
        v14 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __63__HUAnnouncementsBrowserViewController__sendAnnouncementReply___block_invoke;
        v16[3] = &unk_277DC33D0;
        v17 = v12;
        v18 = self;
        v15 = v12;
        [v13 broadcastReply:v14 forAnnouncementID:v15 completion:v16];
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

- (void)_sendAnnouncement:(id)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  v8 = [v5 allKeys];
  if ([v8 count])
  {
    v9 = objc_opt_new();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke;
    v24[3] = &unk_277DC2600;
    v10 = v9;
    v25 = v10;
    [v8 na_each:v24];
    v11 = [(HUAnnouncementsBrowserViewController *)self announce];
    v12 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2;
    v21[3] = &unk_277DC33D0;
    v22 = v10;
    v23 = self;
    v14 = v10;
    [v11 sendAnnouncement:v12 toRoomsWithIDs:v14 andZonesWithIDs:MEMORY[0x277CBEBF8] inHomeWithID:v13 completion:v21];
  }

  else
  {
    v15 = [(HUAnnouncementsBrowserViewController *)self announce];
    v16 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HUAnnouncementsBrowserViewController__sendAnnouncement___block_invoke_2_172;
    v18[3] = &unk_277DC33D0;
    v19 = v7;
    v20 = self;
    [v15 sendAnnouncement:v16 toHomeWithID:v17 completion:v18];

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

- (void)_deleteRecording:(id)a3
{
  [(HUAnnouncementsBrowserViewController *)self _deleteAudioFile];
  v4 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  [v4 clearPowerLevels];

  [(HUAnnouncementsBrowserViewController *)self _hideRecordingUI];
}

- (void)_deleteAudioFile
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
    v7 = [v6 path];
    v8 = [v5 fileExistsAtPath:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];
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

- (void)_dismissViewOrDisplayError:(id)a3
{
  if (a3)
  {
    v4 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [v4 setAlpha:0.0];

    v5 = [(HUAnnouncementsBrowserViewController *)self announcementDeliveryFailureLabel];
    [v5 setAlpha:1.0];

    v6 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v6 setEnabled:1];

    v7 = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
    v8 = _HULocalizedStringWithDefaultValue(@"HUAnnounceButton_Title", @"HUAnnounceButton_Title", 1);
    [v7 setText:v8];

    v14 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v14 stopRecording];
  }

  else
  {
    v9 = [(HUAnnouncementsBrowserViewController *)self delegate];
    if (!v9)
    {
      return;
    }

    v14 = v9;
    v10 = [(HUAnnouncementsBrowserViewController *)self delegate];
    if ([v10 conformsToProtocol:&unk_2825BDB40])
    {
      v11 = [(HUAnnouncementsBrowserViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      v14 = [(HUAnnouncementsBrowserViewController *)self delegate];
      v13 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
      [v14 didSendAnnouncementReplyforNotificationPayload:v13];
    }

    else
    {
    }
  }
}

- (void)_skipToNextAnnouncement:(id)a3
{
  v3 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
  [v3 skipToNextAnnouncement];
}

- (double)_transcriptionStackViewHeight
{
  v3 = [(UILabel *)self->_transcriptionTitleLabel font];
  [v3 _scaledValueForValue:32.0];
  v5 = v4;

  v6 = [(UILabel *)self->_transcriptionText font];
  [v6 _scaledValueForValue:20.0];
  v8 = v7;

  return v5 + v8 + 6.0;
}

- (void)_configureVisualStyleForLightedCircleView
{
  v3 = [(HUAnnouncementsBrowserViewController *)self _lightedCircleBackgroundColorForCurrentInterfaceStyle];
  v4 = [(HUAnnouncementsBrowserViewController *)self lightedCircleView];
  [v4 setBackgroundColor:v3];

  v10 = [(UIView *)self->_lightedCircleView layer];
  LODWORD(v5) = 0.5;
  [v10 setShadowOpacity:v5];
  v6 = [(HUAnnouncementsBrowserViewController *)self _lightedCircleShadowColorForCurrentInterfaceStyle];
  [v10 setShadowColor:{objc_msgSend(v6, "CGColor")}];

  [v10 setShadowOffset:{0.0, 12.0}];
  [v10 setShadowRadius:16.0];
  v7 = MEMORY[0x277D75208];
  v8 = [(HUAnnouncementsBrowserViewController *)self lightedCircleView];
  [v8 bounds];
  v9 = [v7 bezierPathWithOvalInRect:?];
  [v10 setShadowPath:{objc_msgSend(v9, "CGPath")}];
}

- (id)_lightedCircleBackgroundColorForCurrentInterfaceStyle
{
  v3 = [MEMORY[0x277D75348] colorWithRed:0.31372549 green:0.333333333 blue:0.360784314 alpha:1.0];
  v4 = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];

    v3 = v6;
  }

  return v3;
}

- (id)_lightedCircleShadowColorForCurrentInterfaceStyle
{
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  v4 = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];

    v3 = v6;
  }

  return v3;
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
  v3 = [MEMORY[0x277D75348] secondarySystemFillColor];
  v4 = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemDarkGrayColor];

    v3 = v6;
  }

  return v3;
}

- (id)_waveformColor
{
  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [(HUAnnouncementsBrowserViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemWhiteColor];

    v3 = v6;
  }

  return v3;
}

- (BOOL)_isNotificationPayloadValid
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!v3)
  {
    return 0;
  }

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v24 = 138412290;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Received Notification with payload %@", &v24, 0xCu);
  }

  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEA7C0]];

  v8 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];

  v10 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];

  v12 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  v14 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CEAA10]];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 fileExistsAtPath:v11];

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

    v4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

    v6 = [v5 allKeys];
    v7 = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [v6 firstObject];
    v10 = [v8 initWithUUIDString:v9];
    v11 = [v7 hf_roomWithIdentifier:v10];

    v12 = [v11 hf_hasAtLeastOneAnnounceSupportedAccessory];
    if (v12)
    {
      v13 = [v11 hf_hasAtLeastOneReachableHomeMediaAccessory];
    }

    else
    {
      v13 = 0;
    }

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v11 uniqueIdentifier];
      v29 = 138412802;
      *v30 = v21;
      *&v30[8] = 1024;
      v31 = v12;
      v32 = 1024;
      v33 = v13 & 1;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Room ID [%@], hasAtleastOneHomePodInThisRoom:%{BOOL}d, isAtleastOneHomePodOnlineInThisRoom:%{BOOL}d", &v29, 0x18u);
    }

    v22 = v12 ^ 1;
    v16 = v13;
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

      v15 = [(HUAnnouncementsBrowserViewController *)self currentHome];
      v16 = [v15 hf_hasAtLeastOneReachableHomeMediaAccessory];

      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(HUAnnouncementsBrowserViewController *)self currentHome];
        v19 = [v18 uniqueIdentifier];
        v29 = 138412546;
        *v30 = v19;
        *&v30[8] = 1024;
        v31 = v16;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Home ID [%@], hf_hasAtLeastOneReachableHomeMediaAccessory:%{BOOL}d", &v29, 0x12u);
      }

      LOBYTE(v13) = 0;
    }

    else
    {
      LOBYTE(v13) = 0;
      v16 = 0;
    }

    v22 = 1;
  }

  if ([(HUAnnouncementsBrowserViewController *)self _isRoomContext])
  {
    v23 = v22 | v13;
  }

  else
  {
    v23 = 0;
  }

  v24 = v16 & [(HUAnnouncementsBrowserViewController *)self _isHomeContext];
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109376;
    *v30 = v23 & 1;
    *&v30[4] = 1024;
    *&v30[6] = v24;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "shouldAllowRecordingForRoom:%{BOOL}d, shouldAllowRecordingForHome:%{BOOL}d", &v29, 0xEu);
  }

  v26 = [(HUAnnouncementsBrowserViewController *)self recordedAnnouncementURL];

  if (!v26)
  {
    v27 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v27 setEnabled:(v23 | v24) & 1];
  }

  v28 = [(HUAnnouncementsBrowserViewController *)self view];
  [v28 layoutIfNeeded];
}

- (BOOL)_isRoomContext
{
  v3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

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
  v3 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEA9F8]];

  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEAA80]];

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

- (id)_announcerNameFromNotificationPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEA7D0]];
  v5 = [MEMORY[0x277D14CE8] preferredNameFromUserID:v4];
  if ([v5 isEqualToString:v4])
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEA7C0]];

    v5 = v6;
  }

  return v5;
}

- (void)didUpdateAveragePower:(float)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
  [v4 appendPowerLevel:a3];
}

- (void)audioRecorderDidStartRecording:(id)a3
{
  v4 = [(HUAnnouncementsBrowserViewController *)self recordButton];
  [v4 setEnabled:1];

  v5 = [(HUAnnouncementsBrowserViewController *)self recordButtonLabel];
  [v5 setEnabled:1];
}

- (void)audioRecorderFailedToFinishRecording:(id)a3
{
  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:0 interruptedByUser:0];

  [(HUAnnouncementsBrowserViewController *)self _hideRecordingUI];
}

- (void)audioRecorderFinishedRecording:(id)a3 audioFile:(id)a4
{
  v14 = a4;
  [(HUAnnouncementsBrowserViewController *)self _submitAnalyticsForAnnounceRecordingCompletedSuccessfully:1 interruptedByUser:0];
  v5 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
  [v5 currentRecordedDuration];
  v7 = v6;

  if (v7 >= 0.5)
  {
    [(HUAnnouncementsBrowserViewController *)self setRecordedAnnouncementURL:v14];
    v8 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v8 setEnabled:1];

    v9 = [(HUAnnouncementsBrowserViewController *)self audioWaveformView];
    [v9 setAlpha:0.0];

    [(HUAnnouncementsBrowserViewController *)self _sendAnnouncementReply:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordButton_AX_Label_Title", @"HUAnnounceRecordButton_AX_Label_Title", 1);
    v11 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v11 setAccessibilityLabel:v10];

    v12 = _HULocalizedStringWithDefaultValue(@"HUAnnounceRecordButton_AX_Label_Hint", @"HUAnnounceRecordButton_AX_Label_Hint", 1);
    v13 = [(HUAnnouncementsBrowserViewController *)self recordButton];
    [v13 setAccessibilityHint:v12];
  }

  else
  {
    [(HUAnnouncementsBrowserViewController *)self _deleteRecording:0];
  }
}

- (void)didSelectItemWithInfo:(id)a3 totalNumberOfAnnouncements:(unint64_t)a4
{
  v29 = a3;
  v6 = [(HUAnnouncementsBrowserViewController *)self largeTitleLabel];
  v7 = [(HUAnnouncementsBrowserViewController *)self _announcerNameFromNotificationPayload:v29];
  [v6 setText:v7];

  v8 = [(HUAnnouncementsBrowserViewController *)self subTitleLabel];
  v9 = [v29 objectForKeyedSubscript:*MEMORY[0x277CEAAA0]];
  [v8 setText:v9];

  v10 = [v29 objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  v11 = [v10 unsignedIntegerValue];

  v12 = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
  v13 = v11 + 1;
  v20 = HULocalizedStringWithFormat(@"HUAnnounceProgressLabel_Description", @"%lu %lu", v14, v15, v16, v17, v18, v19, v11 + 1);
  [v12 setText:v20];

  v21 = [(HUAnnouncementsBrowserViewController *)self announcementProgressLabel];
  [v21 setHidden:a4 == 1];

  v22 = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  v23 = v22;
  if (v13 >= a4)
  {
    [v22 setEnabled:0];
  }

  else
  {
    v24 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
    [v23 setEnabled:{objc_msgSend(v24, "hasActivePlaybackSession")}];
  }

  v25 = [(HUAnnouncementsBrowserViewController *)self nextAnnouncementButton];
  v26 = v25;
  if (a4 == 1)
  {
    [v25 setHidden:1];
  }

  else
  {
    v27 = [(HUAnnouncementsBrowserViewController *)self announcementGlobeView];
    [v26 setHidden:{objc_msgSend(v27, "hasActivePlaybackSession") ^ 1}];
  }

  v28 = [v29 objectForKeyedSubscript:*MEMORY[0x277CEAAC8]];
  [(HUAnnouncementsBrowserViewController *)self _applyTranscriptionText:v28];
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v7 = a3;
  if ([v7 hf_isHomeMediaAccessory])
  {
    v4 = [v7 home];
    v5 = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)a3
{
  v7 = a3;
  if ([v7 hf_isHomeMediaAccessory])
  {
    v4 = [v7 home];
    v5 = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v7 = a3;
  if ([v7 hf_isHomeMediaAccessory])
  {
    v4 = [v7 home];
    v5 = [(HUAnnouncementsBrowserViewController *)self currentHome];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      [(HUAnnouncementsBrowserViewController *)self _updateUIBasedOnReachabilityStatus];
    }
  }
}

- (void)_submitAnalyticsForAnnounceRecordingCompletedSuccessfully:(BOOL)a3 interruptedByUser:(BOOL)a4
{
  v4 = a3;
  v6 = [(HUAnnouncementsBrowserViewController *)self notificationPayload:a3];

  if (v6)
  {
    v7 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    v8 = [v7 recordingStopSource];

    v9 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    [v9 currentRecordedDuration];
    v11 = v10;

    v12 = [(HUAnnouncementsBrowserViewController *)self notificationPayload];
    v25 = [v12 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v13 setObject:v14 forKey:*MEMORY[0x277D13428]];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:!v4];
    [v13 setObject:v15 forKey:*MEMORY[0x277D13430]];

    [v13 setObject:v25 forKey:*MEMORY[0x277D13420]];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v8 == 0];
    [v13 setObject:v16 forKey:*MEMORY[0x277D13458]];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:(v8 - 1) < 2];
    [v13 setObject:v17 forKey:*MEMORY[0x277D13450]];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:v8 == 3];
    [v13 setObject:v18 forKey:*MEMORY[0x277D13448]];

    v19 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
    v20 = [v19 routeChangeReason];

    if (v20)
    {
      v21 = [(HUAnnouncementsBrowserViewController *)self audioRecorder];
      v22 = [v21 routeChangeReason];
      [v13 setObject:v22 forKey:*MEMORY[0x277D13690]];
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