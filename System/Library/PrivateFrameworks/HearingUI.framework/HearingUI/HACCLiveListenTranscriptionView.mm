@interface HACCLiveListenTranscriptionView
- (HACCContentModuleDelegate)delegate;
- (HACCLiveListenTranscriptionView)initWithFrame:(CGRect)frame;
- (double)_heightConstant;
- (void)_scrollToBottomIfNecessary;
- (void)_updateDeviceLockStatus:(BOOL)status;
- (void)_updateVoiceOverAnnouncement:(id)announcement;
- (void)_voiceOverAnnounceUtterance:(id)utterance fromIndex:(unint64_t)index;
- (void)dealloc;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)subscribeListeners;
- (void)updateValue;
@end

@implementation HACCLiveListenTranscriptionView

- (HACCLiveListenTranscriptionView)initWithFrame:(CGRect)frame
{
  v71[5] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = HACCLiveListenTranscriptionView;
  v3 = [(HACCLiveListenTranscriptionView *)&v68 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HACCCapsuleDarkBackground);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(HACCCapsuleDarkBackground *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HACCLiveListenTranscriptionView *)v3 addSubview:v3->_backgroundView];
    [(HACCCapsuleDarkBackground *)v3->_backgroundView sizeToFit];
    heightAnchor = [(HACCLiveListenTranscriptionView *)v3 heightAnchor];
    [(HACCLiveListenTranscriptionView *)v3 _heightConstant];
    v7 = [heightAnchor constraintEqualToConstant:?];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v7;

    v49 = MEMORY[0x277CCAAD0];
    v71[0] = v3->_heightConstraint;
    leadingAnchor = [(HACCCapsuleDarkBackground *)v3->_backgroundView leadingAnchor];
    leadingAnchor2 = [(HACCLiveListenTranscriptionView *)v3 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v71[1] = v55;
    trailingAnchor = [(HACCCapsuleDarkBackground *)v3->_backgroundView trailingAnchor];
    trailingAnchor2 = [(HACCLiveListenTranscriptionView *)v3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v71[2] = v10;
    topAnchor = [(HACCCapsuleDarkBackground *)v3->_backgroundView topAnchor];
    topAnchor2 = [(HACCLiveListenTranscriptionView *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v71[3] = v13;
    bottomAnchor = [(HACCCapsuleDarkBackground *)v3->_backgroundView bottomAnchor];
    bottomAnchor2 = [(HACCLiveListenTranscriptionView *)v3 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v71[4] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:5];
    [v49 activateConstraints:v17];

    v18 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v3->_scrollView;
    v3->_scrollView = v18;

    [(UIScrollView *)v3->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setBackgroundColor:0];
    [(UIScrollView *)v3->_scrollView setDelegate:v3];
    [(HACCLiveListenTranscriptionView *)v3 addSubview:v3->_scrollView];
    v47 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(UIScrollView *)v3->_scrollView leadingAnchor];
    leadingAnchor4 = [(HACCLiveListenTranscriptionView *)v3 leadingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v70[0] = v56;
    trailingAnchor3 = [(UIScrollView *)v3->_scrollView trailingAnchor];
    trailingAnchor4 = [(HACCLiveListenTranscriptionView *)v3 trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v70[1] = v20;
    topAnchor3 = [(UIScrollView *)v3->_scrollView topAnchor];
    topAnchor4 = [(HACCLiveListenTranscriptionView *)v3 topAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v70[2] = v23;
    bottomAnchor3 = [(UIScrollView *)v3->_scrollView bottomAnchor];
    bottomAnchor4 = [(HACCLiveListenTranscriptionView *)v3 bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v70[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    [v47 activateConstraints:v27];

    v28 = HUICCMenuTextLabel();
    transcriptionLabel = v3->_transcriptionLabel;
    v3->_transcriptionLabel = v28;

    [(UIScrollView *)v3->_scrollView addSubview:v3->_transcriptionLabel];
    -[UILabel setTextAlignment:](v3->_transcriptionLabel, "setTextAlignment:", 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HACCLiveListenTranscriptionView semanticContentAttribute](v3, "semanticContentAttribute")}] == 1));
    [(UILabel *)v3->_transcriptionLabel setLineBreakMode:0];
    [(UILabel *)v3->_transcriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_transcriptionLabel setNumberOfLines:0];
    v30 = v3->_transcriptionLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v30 setTextColor:whiteColor];

    [(UILabel *)v3->_transcriptionLabel sizeToFit];
    v32 = v3->_transcriptionLabel;
    v33 = _AXSBrailleInputDeviceConnected();
    v34 = MEMORY[0x277D765D0];
    if (!v33)
    {
      v34 = MEMORY[0x277D765A8];
    }

    [(UILabel *)v32 setAccessibilityTraits:*v34];
    visualStylingProvider = v3->_visualStylingProvider;
    transcriptionLabel = [(HACCLiveListenTranscriptionView *)v3 transcriptionLabel];
    [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:transcriptionLabel withStyle:1];

    v48 = MEMORY[0x277CCAAD0];
    leadingAnchor5 = [(UILabel *)v3->_transcriptionLabel leadingAnchor];
    leadingAnchor6 = [(HACCLiveListenTranscriptionView *)v3 leadingAnchor];
    v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:20.0];
    v69[0] = v57;
    trailingAnchor5 = [(UILabel *)v3->_transcriptionLabel trailingAnchor];
    trailingAnchor6 = [(HACCLiveListenTranscriptionView *)v3 trailingAnchor];
    v37 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
    v69[1] = v37;
    topAnchor5 = [(UILabel *)v3->_transcriptionLabel topAnchor];
    topAnchor6 = [(UIScrollView *)v3->_scrollView topAnchor];
    v40 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:20.0];
    v69[2] = v40;
    bottomAnchor5 = [(UILabel *)v3->_transcriptionLabel bottomAnchor];
    bottomAnchor6 = [(UIScrollView *)v3->_scrollView bottomAnchor];
    v43 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-20.0];
    v69[3] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    [v48 activateConstraints:v44];

    objc_initWeak(&location, v3);
    v45 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__HACCLiveListenTranscriptionView_initWithFrame___block_invoke;
    handler[3] = &unk_2796F6EC8;
    objc_copyWeak(&v66, &location);
    notify_register_dispatch("com.apple.springboard.passcodeLockedOrBlocked", &v3->_lockStateNotifyToken, MEMORY[0x277D85CD0], handler);

    objc_copyWeak(&v64, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __49__HACCLiveListenTranscriptionView_initWithFrame___block_invoke(uint64_t a1, int token)
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = state64;
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3 != 0;
    _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_DEFAULT, "Device lock state changed: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDeviceLockStatus:v3 != 0];
}

void __49__HACCLiveListenTranscriptionView_initWithFrame___block_invoke_287(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  out_token = 0;
  notify_register_check("com.apple.springboard.passcodeLockedOrBlocked", &out_token);
  v5 = 0;
  notify_get_state(out_token, &v5);
  v2 = v5;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v2 != 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "Initial device lock state: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDeviceLockStatus:v2 != 0];
}

- (void)dealloc
{
  notify_cancel(self->_lockStateNotifyToken);
  v3.receiver = self;
  v3.super_class = HACCLiveListenTranscriptionView;
  [(HACCLiveListenTranscriptionView *)&v3 dealloc];
}

- (void)subscribeListeners
{
  objc_initWeak(&location, self);
  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HACCLiveListenTranscriptionView_subscribeListeners__block_invoke;
  v4[3] = &unk_2796F6F18;
  objc_copyWeak(&v5, &location);
  [mEMORY[0x277D12DE8] registerListener:self forLiveListenHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__HACCLiveListenTranscriptionView_subscribeListeners__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a4;
  objc_copyWeak(v9, (a1 + 32));
  v8 = v7;
  v10 = a3;
  v9[1] = a2;
  AXPerformBlockOnMainThread();

  objc_destroyWeak(v9);
}

void __53__HACCLiveListenTranscriptionView_subscribeListeners__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTranscription:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setIsPlayingBack:*(a1 + 56)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setLiveListenState:*(a1 + 48)];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 updateValue];
}

- (void)updateValue
{
  v3 = [(NSString *)self->_transcription length];
  transcriptionLabel = self->_transcriptionLabel;
  if (!v3)
  {
    [(UILabel *)self->_transcriptionLabel setAlpha:0.7];
    v7 = self->_transcriptionLabel;
    goto LABEL_7;
  }

  deviceIsLocked = [(HACCLiveListenTranscriptionView *)self deviceIsLocked];
  v6 = 1.0;
  if (deviceIsLocked)
  {
    v6 = 0.7;
  }

  [(UILabel *)transcriptionLabel setAlpha:v6];
  if ([(HACCLiveListenTranscriptionView *)self deviceIsLocked])
  {
    v7 = self->_transcriptionLabel;
LABEL_7:
    v8 = hearingLocString();
    [(UILabel *)v7 setText:v8];

    goto LABEL_8;
  }

  transcriptionLabel = [(HACCLiveListenTranscriptionView *)self transcriptionLabel];
  text = [transcriptionLabel text];
  v12 = [text isEqualToString:self->_transcription];

  if ((v12 & 1) == 0)
  {
    isPlayingBack = self->_isPlayingBack;
    transcriptionLabel2 = [(HACCLiveListenTranscriptionView *)self transcriptionLabel];
    v15 = transcriptionLabel2;
    v16 = 1.0;
    if (isPlayingBack)
    {
      v16 = 0.7;
    }

    [transcriptionLabel2 setAlpha:v16];

    transcriptionLabel3 = [(HACCLiveListenTranscriptionView *)self transcriptionLabel];
    [transcriptionLabel3 setText:self->_transcription];

    [(HACCLiveListenTranscriptionView *)self _updateVoiceOverAnnouncement:self->_transcription];
  }

LABEL_8:
  [(HACCLiveListenTranscriptionView *)self _scrollToBottomIfNecessary];
  [(HACCLiveListenTranscriptionView *)self _heightConstant];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:?];
}

- (double)_heightConstant
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 lineHeight];
  v4 = v3;
  [v2 pointSize];
  v6 = (v4 + (v4 - v5) * 0.5) * 3.0 + 20.0;

  return v6;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  self->_lastUserScrollDate = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (void)_scrollToBottomIfNecessary
{
  [(UIScrollView *)self->_scrollView contentSize];
  v4 = v3;
  [(NSLayoutConstraint *)self->_heightConstraint constant];
  if (v4 > v5)
  {
    lastUserScrollDate = self->_lastUserScrollDate;
    if (!lastUserScrollDate || ([(NSDate *)lastUserScrollDate timeIntervalSinceNow], fabs(v7) > 5.0))
    {
      scrollView = self->_scrollView;
      [(UIScrollView *)scrollView contentSize];
      v10 = v9;
      [(NSLayoutConstraint *)self->_heightConstraint constant];

      [(UIScrollView *)scrollView setContentOffset:1 animated:0.0, v10 - v11];
    }
  }
}

- (void)_updateDeviceLockStatus:(BOOL)status
{
  statusCopy = status;
  if ([(HACCLiveListenTranscriptionView *)self deviceIsLocked]!= status)
  {
    [(HACCLiveListenTranscriptionView *)self setDeviceIsLocked:statusCopy];
    AXPerformBlockOnMainThread();
  }
}

- (void)_updateVoiceOverAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  transcriptionLabel = [(HACCLiveListenTranscriptionView *)self transcriptionLabel];
  accessibilityElementIsFocused = [transcriptionLabel accessibilityElementIsFocused];

  if (accessibilityElementIsFocused)
  {
    voAnnouncementTimer = [(HACCLiveListenTranscriptionView *)self voAnnouncementTimer];

    if (!voAnnouncementTimer)
    {
      v8 = objc_alloc(MEMORY[0x277CE6950]);
      v9 = [v8 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
      [(HACCLiveListenTranscriptionView *)self setVoAnnouncementTimer:v9];
    }

    v10 = [announcementCopy componentsSeparatedByString:@"\n"];
    v11 = [v10 count];
    if (v11 <= [(HACCLiveListenTranscriptionView *)self lastVOAnnouncedUtteranceIndex])
    {
      [(HACCLiveListenTranscriptionView *)self setLastVOAnnouncedUtteranceIndex:0x7FFFFFFFFFFFFFFFLL];
      [(HACCLiveListenTranscriptionView *)self setLastVOAnnouncedUtterance:0];
    }

    [(AXDispatchTimer *)self->_voAnnouncementTimer cancel];
    if ([v10 count] >= 2)
    {
      v12 = [v10 count] - 2;
      v13 = [v10 objectAtIndex:v12];
      if (-[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") == 0x7FFFFFFFFFFFFFFFLL || v12 > -[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") || v12 == -[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") && (-[HACCLiveListenTranscriptionView lastVOAnnouncedUtterance](self, "lastVOAnnouncedUtterance"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v13 isEqualToString:v19], v19, (v20 & 1) == 0))
      {
        [(HACCLiveListenTranscriptionView *)self _voiceOverAnnounceUtterance:v13 fromIndex:v12];
      }
    }

    v14 = [v10 count] - 1;
    v15 = [v10 objectAtIndex:v14];
    if (-[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") == 0x7FFFFFFFFFFFFFFFLL || v14 > -[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") || v14 == -[HACCLiveListenTranscriptionView lastVOAnnouncedUtteranceIndex](self, "lastVOAnnouncedUtteranceIndex") && (-[HACCLiveListenTranscriptionView lastVOAnnouncedUtterance](self, "lastVOAnnouncedUtterance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v15 isEqualToString:v17], v17, (v18 & 1) == 0))
    {
      voAnnouncementTimer = self->_voAnnouncementTimer;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__HACCLiveListenTranscriptionView__updateVoiceOverAnnouncement___block_invoke;
      v21[3] = &unk_2796F6F40;
      v21[4] = self;
      v22 = v15;
      v23 = v14;
      [(AXDispatchTimer *)voAnnouncementTimer afterDelay:v21 processBlock:2.0];
    }
  }
}

- (void)_voiceOverAnnounceUtterance:(id)utterance fromIndex:(unint64_t)index
{
  utteranceCopy = utterance;
  transcriptionLabel = [(HACCLiveListenTranscriptionView *)self transcriptionLabel];
  accessibilityElementIsFocused = [transcriptionLabel accessibilityElementIsFocused];

  if (accessibilityElementIsFocused)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [utteranceCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v12 length])
    {
      v10 = [MEMORY[0x277CE6B98] stringWithString:v12];
      [v10 setAttribute:&unk_2864654E0 forKey:*MEMORY[0x277CE6BC8]];
      [v10 setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6CA0]];
      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v10);
      [(HACCLiveListenTranscriptionView *)self setLastVOAnnouncedUtterance:v12];
      [(HACCLiveListenTranscriptionView *)self setLastVOAnnouncedUtteranceIndex:index];
    }

    v11 = v12;
  }

  else
  {
    v11 = utteranceCopy;
  }
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end