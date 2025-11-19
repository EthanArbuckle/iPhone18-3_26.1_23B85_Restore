@interface HACCLiveListenButton
- (BOOL)shouldIncludeAccessoryViewInFooterViews;
- (BOOL)shouldIncludeIconViewInFooterViews;
- (HACCLiveListenButton)initWithFrame:(CGRect)a3;
- (HACCLiveListenLevelGroup)levelGroup;
- (UIButton)rewindButton;
- (id)_symbolForAudioLevel:(double)a3 isListening:(BOOL)a4 showLevels:(BOOL)a5;
- (id)accessibilityCustomActions;
- (id)accessoryView;
- (id)contentValue;
- (unint64_t)accessibilityTraits;
- (void)_updateAXValueString;
- (void)_updateButtonView;
- (void)liveListenAudioLevelDidChange:(double)a3;
- (void)subscribeListeners;
- (void)toggleLiveListenRewind;
- (void)unsubscribeListeners;
- (void)updateStatusBarOverride;
- (void)updateUI;
- (void)updateUILiveListenControls;
- (void)updateValue;
@end

@implementation HACCLiveListenButton

- (HACCLiveListenButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = HACCLiveListenButton;
  v3 = [(HUICCCapsuleButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = hearingLocString();
    [(HUICCCapsuleButton *)v3 setTitleText:v4];
    v5 = HUICCButtonVCWithSystemImageName(@"mic.fill");
    buttonVC = v3->_buttonVC;
    v3->_buttonVC = v5;

    [(CCUILabeledRoundButtonViewController *)v3->_buttonVC setTitle:v4];
    v7 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [v7 addTarget:v3 action:sel_buttonTapped forControlEvents:64];

    v8 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [(HUICCCapsuleButton *)v3 setIconView:v8];

    if (_os_feature_enabled_impl())
    {
      v9 = [(HACCLiveListenButton *)v3 rewindButton];
      [(HUICCCapsuleButton *)v3 setAccessoryView:v9];
    }

    else
    {
      v10 = [HACCLiveListenLevelGroup alloc];
      v11 = [(HACCLiveListenLevelGroup *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      levelGroup = v3->_levelGroup;
      v3->_levelGroup = v11;

      [(HACCLiveListenLevelGroup *)v3->_levelGroup setHidden:1];
      [(HUICCCapsuleButton *)v3 setAccessoryView:v3->_levelGroup];
    }
  }

  return v3;
}

- (void)subscribeListeners
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "Registering Live Listen listener", buf, 2u);
  }

  objc_initWeak(buf, self);
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x277D12DE8] sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__HACCLiveListenButton_subscribeListeners__block_invoke;
    v11[3] = &unk_2796F7910;
    v5 = &v12;
    objc_copyWeak(&v12, buf);
    v11[4] = self;
    [v4 registerListener:self forLiveListenHandler:v11];

    v6 = [(HUICCCapsuleButton *)self delegate];
    LODWORD(v4) = [v6 isControlCenterModuleExpanded];

    if (v4)
    {
      v7 = [MEMORY[0x277D12DE8] sharedInstance];
      [v7 startObservingRemoteLiveListenUpdates];
    }
  }

  else
  {
    v8 = [MEMORY[0x277D12DE8] sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__HACCLiveListenButton_subscribeListeners__block_invoke_315;
    v9[3] = &unk_2796F7898;
    v5 = &v10;
    objc_copyWeak(&v10, buf);
    [v8 registerListener:self forLiveListenLevelsHandler:v9];
  }

  objc_destroyWeak(v5);
  objc_destroyWeak(buf);
}

void __42__HACCLiveListenButton_subscribeListeners__block_invoke(uint64_t a1, void *a2, char a3, void *a4, double a5)
{
  v9 = a4;
  v11[1] = a2;
  objc_copyWeak(v11, (a1 + 40));
  v12 = a3;
  v10 = v9;
  v11[2] = *&a5;
  AXPerformBlockSynchronouslyOnMainThread();

  objc_destroyWeak(v11);
}

void __42__HACCLiveListenButton_subscribeListeners__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = isLiveListenEnabledForState();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained liveListenState];
  v5 = *(a1 + 56);

  if (v4 != v5)
  {
    v6 = HCLogHearing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) liveListenState];
      v8 = *(a1 + 56);
      v23 = 134218240;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_252166000, v6, OS_LOG_TYPE_DEFAULT, "Update liveListenState from %ld to %ld", &v23, 0x16u);
    }

    v9 = *(a1 + 56);
    v10 = objc_loadWeakRetained((a1 + 48));
    [v10 setLiveListenState:v9];

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 _updateAXValueString];

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 setIsListening:v2];

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 rewindButton];
    [v14 setHidden:v2 ^ 1];

    v15 = objc_loadWeakRetained((a1 + 48));
    v16 = [v15 delegate];
    [v16 updateView];
  }

  v17 = objc_loadWeakRetained((a1 + 48));
  [v17 setIsPlayingBack:*(a1 + 72)];

  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 rewindButton];
  [v19 setSelected:*(a1 + 72)];

  v20 = objc_loadWeakRetained((a1 + 48));
  [v20 setTranscription:*(a1 + 40)];

  v21 = objc_loadWeakRetained((a1 + 48));
  [v21 setAudioLevel:*(a1 + 64)];

  v22 = objc_loadWeakRetained((a1 + 48));
  [v22 updateValue];
}

void __42__HACCLiveListenButton_subscribeListeners__block_invoke_315(uint64_t a1, char a2, double a3)
{
  objc_copyWeak(v5, (a1 + 32));
  v6 = a2;
  v5[1] = *&a3;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v5);
}

void __42__HACCLiveListenButton_subscribeListeners__block_invoke_2_316(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isListening];
  v4 = *(a1 + 48);

  if (v4 != v3)
  {
    v5 = HCLogHearing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v12[0] = 67109120;
      v12[1] = v6;
      _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_DEFAULT, "Update isListening: %d", v12, 8u);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setIsListening:*(a1 + 48)];

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 updateStatusBarOverride];

    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 _updateAXValueString];
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 liveListenAudioLevelDidChange:*(a1 + 40)];

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 updateValue];
}

- (void)unsubscribeListeners
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering Live Listen listener", v7, 2u);
  }

  v4 = _os_feature_enabled_impl();
  v5 = [MEMORY[0x277D12DE8] sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 unregisterLiveListenListener:self];

    v6 = [MEMORY[0x277D12DE8] sharedInstance];
    [v6 stopObservingRemoteLiveListenUpdates];
  }

  else
  {
    [v5 unregisterLiveListenLevelListener:self];
  }
}

- (void)updateStatusBarOverride
{
  v3 = [(HACCLiveListenButton *)self isListening];
  [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarAssertion invalidate];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D66C48]) initWithStatusBarStyleOverrides:1024 forPID:getpid() exclusive:0 showsWhenForeground:0];
    statusBarAssertion = self->_statusBarAssertion;
    self->_statusBarAssertion = v4;

    v6 = self->_statusBarAssertion;
    v7 = hearingLocString();
    [(SBSStatusBarStyleOverridesAssertion *)v6 setStatusString:v7];

    v8 = self->_statusBarAssertion;

    [(SBSStatusBarStyleOverridesAssertion *)v8 acquireWithHandler:&__block_literal_global_3 invalidationHandler:&__block_literal_global_321_0];
  }

  else
  {
    v9 = self->_statusBarAssertion;
    self->_statusBarAssertion = 0;
  }
}

- (id)accessoryView
{
  if (_os_feature_enabled_impl())
  {
    [(HACCLiveListenButton *)self rewindButton];
  }

  else
  {
    [(HACCLiveListenButton *)self levelGroup];
  }
  v3 = ;

  return v3;
}

- (HACCLiveListenLevelGroup)levelGroup
{
  levelGroup = self->_levelGroup;
  if (!levelGroup)
  {
    v4 = [HACCLiveListenLevelGroup alloc];
    v5 = [(HACCLiveListenLevelGroup *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_levelGroup;
    self->_levelGroup = v5;

    levelGroup = self->_levelGroup;
  }

  return levelGroup;
}

- (UIButton)rewindButton
{
  if (_os_feature_enabled_impl() && !self->_rewindButton)
  {
    v3 = [MEMORY[0x277D75220] buttonWithType:0];
    rewindButton = self->_rewindButton;
    self->_rewindButton = v3;

    v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"10.arrow.trianglehead.counterclockwise"];
    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"forward.end.fill"];
    v7 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    [(UIButton *)self->_rewindButton setImage:v5 forState:0];
    [(UIButton *)self->_rewindButton setImage:v6 forState:4];
    [(UIButton *)self->_rewindButton setPreferredSymbolConfiguration:v7 forImageInState:0];
    [(UIButton *)self->_rewindButton setPreferredSymbolConfiguration:v7 forImageInState:4];
    [(UIButton *)self->_rewindButton addTarget:self action:sel_toggleLiveListenRewind forControlEvents:64];
    [(UIButton *)self->_rewindButton setHidden:1];
    v8 = self->_rewindButton;
    v9 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v8 setTintColor:v9];

    objc_initWeak(&location, self);
    v10 = self->_rewindButton;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __36__HACCLiveListenButton_rewindButton__block_invoke;
    v16 = &unk_2796F7960;
    objc_copyWeak(&v17, &location);
    [(UIButton *)v10 setAccessibilityLabelBlock:&v13];
    [(UIButton *)self->_rewindButton setAccessibilityTraitsBlock:&__block_literal_global_342, v13, v14, v15, v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v11 = self->_rewindButton;

  return v11;
}

id __36__HACCLiveListenButton_rewindButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained isPlayingBack];
  v2 = hearingLocString();

  return v2;
}

- (void)toggleLiveListenRewind
{
  v2 = [(HACCLiveListenButton *)self isPlayingBack];
  v3 = [MEMORY[0x277D12DE8] sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 stopLiveListenRewind];
  }

  else
  {
    [v3 startLiveListenRewind];
  }
}

- (void)liveListenAudioLevelDidChange:(double)a3
{
  v4 = [(HACCLiveListenButton *)self levelGroup];
  [v4 updateLevel:a3];
}

- (id)contentValue
{
  v3 = _os_feature_enabled_impl();
  v4 = MEMORY[0x277CCABB0];
  if (v3)
  {
    [(HACCLiveListenButton *)self liveListenState];
    v5 = isLiveListenEnabledForState();
  }

  else
  {
    v5 = [(HACCLiveListenButton *)self isListening];
  }

  v6 = [v4 numberWithBool:v5];

  return v6;
}

- (void)updateValue
{
  v2.receiver = self;
  v2.super_class = HACCLiveListenButton;
  [(HUICCCapsuleButton *)&v2 updateValue];
  liveListenStreamSelectedAsync();
}

uint64_t __35__HACCLiveListenButton_updateValue__block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isLiveListenAvailable];
  if (*(a1 + 40) & 1) != 0 || (*(a1 + 41))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 currentCalls];
    [*(a1 + 32) setIsLiveListenAvailable:{objc_msgSend(v4, "count") == 0}];
  }

  else
  {
    [*(a1 + 32) setIsLiveListenAvailable:0];
  }

  if (v2 != [*(a1 + 32) isLiveListenAvailable])
  {
    v5 = HCLogHearing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) isLiveListenAvailable];
      v7 = *(a1 + 40);
      v8 = *(a1 + 41);
      v10[0] = 67109632;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_DEFAULT, "Update isLiveListenAvailable: %d (%d %d)", v10, 0x14u);
    }

    [*(a1 + 32) _updateAXValueString];
  }

  return [*(a1 + 32) updateUI];
}

- (void)updateUI
{
  v3 = [(HACCLiveListenButton *)self isListening];
  if (_os_feature_enabled_impl())
  {
    [(HACCLiveListenButton *)self updateUILiveListenControls];
  }

  levelGroup = self->_levelGroup;
  if (v3)
  {
    [(HACCLiveListenLevelGroup *)levelGroup setHidden:0];
    [(HACCLiveListenButton *)self setAccessibilityHintString:0];
    v5 = self;
    v6 = 0;
  }

  else
  {
    [(HACCLiveListenLevelGroup *)levelGroup setHidden:1];
    v7 = hearingLocString();
    [(HACCLiveListenButton *)self setAccessibilityHintString:v7];

    if ([(HACCLiveListenButton *)self enabled])
    {
      [(HACCLiveListenButton *)self setAccessibilityHintString:0];
    }

    else
    {
      v8 = [MEMORY[0x277D12E38] sharedUtilities];
      v9 = [v8 wirelessSplitterEnabled];

      if (v9)
      {
        v10 = hearingLocString();
        [(HACCLiveListenButton *)self setAccessibilityHintString:v10];
      }
    }

    [(HUICCCapsuleButton *)self setSubtitleText:0];
    v6 = [(HACCLiveListenButton *)self enabled]^ 1;
    v5 = self;
  }

  [(HUICCCapsuleButton *)v5 setDimmingState:v6];

  [(HACCLiveListenButton *)self _updateButtonView];
}

- (void)updateUILiveListenControls
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v3 = [(HACCLiveListenButton *)self liveListenState];
  v4 = isLiveListenEnabledForState();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(HACCLiveListenButton *)self enabled]^ 1;
  }

  [(HUICCCapsuleButton *)self setDimmingState:v5];
  [(HACCLiveListenButton *)self setIsListening:v4];
  [(HACCLiveListenButton *)self _updateButtonView];
  if (!isLiveListenEnabledNearbyForState())
  {
    if (v3 != 5)
    {
      [(HUICCCapsuleButton *)self setSubtitleText:0];
      if (v3 > 7)
      {
        return;
      }

      if (((1 << v3) & 0xB) == 0)
      {
        if (((1 << v3) & 0xD0) != 0)
        {
          goto LABEL_19;
        }

        if (v3 != 2)
        {
          return;
        }
      }

LABEL_25:
      v7 = hearingLocString();
      [(HACCLiveListenButton *)self setAccessibilityHintString:v7];

      return;
    }

    [(HACCLiveListenButton *)self isPlayingBack];
    goto LABEL_11;
  }

  if (v3 <= 3)
  {
    if (v3 >= 4)
    {
      return;
    }

    goto LABEL_25;
  }

  if ((v3 - 4) >= 2)
  {
    if (v3 != 7 && v3 != 6)
    {
      return;
    }

LABEL_11:
    v6 = hearingLocString();
    [(HUICCCapsuleButton *)self setSubtitleText:v6];
  }

LABEL_19:

  [(HACCLiveListenButton *)self setAccessibilityHintString:0];
}

- (id)_symbolForAudioLevel:(double)a3 isListening:(BOOL)a4 showLevels:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v20[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = [MEMORY[0x277D75348] redColor];
    v20[0] = v8;
    v9 = v20;
  }

  else
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
    v19 = v8;
    v9 = &v19;
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v11 = _os_feature_enabled_impl() & v5;
  v12 = (v11 & v6) == 0;
  if ((v11 & v6) != 0)
  {
    v13 = @"microphone.and.signal.meter.fill";
  }

  else
  {
    v13 = @"mic.fill";
  }

  if (v12)
  {
    a3 = 1.0;
  }

  v14 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v10];
  v15 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:23.0];
  v16 = [v14 configurationByApplyingConfiguration:v15];

  v17 = [MEMORY[0x277D755B8] _systemImageNamed:v13 variableValue:v16 withConfiguration:a3];

  return v17;
}

- (void)_updateButtonView
{
  v3 = [(HACCLiveListenButton *)self isListening];
  if (_os_feature_enabled_impl())
  {
    [(HACCLiveListenButton *)self liveListenState];
    if (isLiveListenEnabledForState())
    {
      [(HACCLiveListenButton *)self liveListenState];
      v4 = isLiveListenEnabledNearbyForState() ^ 1;
      v3 = 1;
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [(HACCLiveListenButton *)self audioLevel];
  v5 = [(HACCLiveListenButton *)self _symbolForAudioLevel:v3 isListening:v4 showLevels:?];
  v6 = hearingLocString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HACCLiveListenButton__updateButtonView__block_invoke;
  v9[3] = &unk_2796F7008;
  v9[4] = self;
  v10 = v5;
  v12 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __41__HACCLiveListenButton__updateButtonView__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buttonVC];
  [v2 setGlyphImage:*(a1 + 40)];

  v3 = [*(a1 + 32) buttonVC];
  [v3 setEnabled:*(a1 + 56)];

  v4 = [*(a1 + 32) iconView];
  v6[0] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 setAccessibilityUserInputLabels:v5];
}

- (void)_updateAXValueString
{
  [(HACCLiveListenButton *)self setAccessibilityValueString:0];
  if (_os_feature_enabled_impl())
  {
    v3 = [(HACCLiveListenButton *)self liveListenState];
    if (v3 != 5 && v3 != 4)
    {
      return;
    }
  }

  else if (![(HACCLiveListenButton *)self isListening]&& ![(HACCLiveListenButton *)self enabled])
  {
    return;
  }

  v4 = hearingLocString();
  [(HACCLiveListenButton *)self setAccessibilityValueString:v4];
}

- (unint64_t)accessibilityTraits
{
  if ([(HACCLiveListenButton *)self isListening])
  {
    v3 = MEMORY[0x277D76548];
  }

  else
  {
    v4 = [(HACCLiveListenButton *)self isEnabled];
    v3 = MEMORY[0x277D76580];
    if (v4)
    {
      v3 = MEMORY[0x277D76578];
    }
  }

  return *v3;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v19.receiver = self;
  v19.super_class = HACCLiveListenButton;
  v4 = [(HUICCCapsuleButton *)&v19 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(HUICCCapsuleButton *)self iconView];
  if (v6)
  {
    v7 = v6;
    v8 = [(HACCLiveListenButton *)self isEnabled];

    if (v8)
    {
      [(HACCLiveListenButton *)self isListening];
      v9 = hearingLocString();
      objc_initWeak(&location, self);
      v10 = objc_alloc(MEMORY[0x277D75088]);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __50__HACCLiveListenButton_accessibilityCustomActions__block_invoke;
      v16 = &unk_2796F6F90;
      objc_copyWeak(&v17, &location);
      v11 = [v10 initWithName:v9 actionHandler:&v13];
      [v5 addObject:{v11, v13, v14, v15, v16}];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

uint64_t __50__HACCLiveListenButton_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonTapped];

  return 1;
}

- (BOOL)shouldIncludeIconViewInFooterViews
{
  v3 = [(HUICCCapsuleButton *)self iconView];
  if (v3)
  {
    v4 = [(HACCLiveListenButton *)self isEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldIncludeAccessoryViewInFooterViews
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(HACCLiveListenButton *)self accessoryView];
  if (v3)
  {
    v4 = [(HACCLiveListenButton *)self isListening];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end