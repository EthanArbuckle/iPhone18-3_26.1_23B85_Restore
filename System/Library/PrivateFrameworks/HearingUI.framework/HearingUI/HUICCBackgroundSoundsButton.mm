@interface HUICCBackgroundSoundsButton
- (BOOL)shouldIncludeIconViewInFooterViews;
- (HUICCBackgroundSoundsButton)initWithFrame:(CGRect)a3;
- (id)_subtitleAttributes;
- (id)accessibilityCustomActions;
- (void)_updateButtonView;
- (void)buttonTapped;
- (void)setSubtitleAttributedText:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)subscribeListeners;
- (void)unsubscribeListeners;
- (void)updateValue;
@end

@implementation HUICCBackgroundSoundsButton

- (HUICCBackgroundSoundsButton)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = HUICCBackgroundSoundsButton;
  v3 = [(HUICCCapsuleButton *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = HUICCButtonVCWithSystemImageName(@"music.quarternote.3");
    buttonVC = v3->_buttonVC;
    v3->_buttonVC = v4;

    v6 = hearingLocString();
    [(CCUILabeledRoundButtonViewController *)v3->_buttonVC setTitle:v6];

    v7 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [v7 addTarget:v3 action:sel_buttonTapped forControlEvents:64];

    v8 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [(HUICCCapsuleButton *)v3 setIconView:v8];

    v9 = objc_alloc(MEMORY[0x277CE6950]);
    v10 = [v9 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [(HUICCBackgroundSoundsButton *)v3 setCountdownTimer:v10];

    v11 = [(HUICCBackgroundSoundsButton *)v3 countdownTimer];
    [v11 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v3;
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUICCCapsuleButton *)self subtitleLabel];
  v6 = [v5 text];
  if (v6)
  {
    v7 = [(HUICCCapsuleButton *)self subtitleLabel];
    v8 = [v7 text];
    v9 = [v8 isEqualToString:v4];
  }

  else
  {
    v9 = v4 == 0;
  }

  v11.receiver = self;
  v11.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v11 setSubtitleText:v4];
  if ((v9 & 1) == 0)
  {
    v10 = [(HUICCCapsuleButton *)self delegate];
    [v10 updateHeight];
  }
}

- (void)setSubtitleAttributedText:(id)a3
{
  v12 = a3;
  v4 = [(HUICCCapsuleButton *)self subtitleLabel];
  v5 = [v4 text];
  if (v5)
  {
    v6 = [(HUICCCapsuleButton *)self subtitleLabel];
    v7 = [v6 text];
    v8 = [v12 string];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = v12 == 0;
  }

  v10 = [(HUICCCapsuleButton *)self subtitleLabel];
  [v10 setAttributedText:v12];

  if ((v9 & 1) == 0)
  {
    v11 = [(HUICCCapsuleButton *)self delegate];
    [v11 updateHeight];
  }
}

- (id)_subtitleAttributes
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = [(HUICCCapsuleButton *)self subtitleLabel];
  v4 = [v3 font];

  v5 = [(HUICCCapsuleButton *)self subtitleLabel];
  v6 = [v5 textColor];

  v7 = objc_alloc_init(MEMORY[0x277D74240]);
  v8 = [(HUICCCapsuleButton *)self subtitleLabel];
  [v7 setAlignment:{objc_msgSend(v8, "textAlignment")}];

  v9 = *MEMORY[0x277D740C0];
  v12[0] = *MEMORY[0x277D740A8];
  v12[1] = v9;
  v13[0] = v4;
  v13[1] = v6;
  v12[2] = *MEMORY[0x277D74118];
  v13[2] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)updateValue
{
  v6.receiver = self;
  v6.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v6 updateValue];
  v3 = [MEMORY[0x277D12E38] sharedUtilities];
  v4 = [v3 routingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HUICCBackgroundSoundsButton_updateValue__block_invoke;
  block[3] = &unk_2796F6D90;
  block[4] = self;
  dispatch_async(v4, block);
}

void __42__HUICCBackgroundSoundsButton_updateValue__block_invoke(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = hearingLocString();
  v3 = [MEMORY[0x277D12E38] sharedUtilities];
  v4 = [v3 backgroundSoundsRouteDecision];

  v5 = [MEMORY[0x277D12E18] sharedInstance];
  v6 = [v5 comfortSoundsEnabled];

  if (v6)
  {
    v7 = [MEMORY[0x277D12E18] sharedInstance];
    v8 = [v7 selectedComfortSound];
    v9 = [v8 localizedName];

    v10 = [MEMORY[0x277D12E18] sharedInstance];
    LODWORD(v8) = [v10 timerEnabled];

    if (v8)
    {
      v11 = [MEMORY[0x277D12E18] sharedInstance];
      [v11 activeTimerEndTimeStamp];
      v13 = v12;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v15 = v13 - v14;

      if (v15 <= 0.0)
      {
        v30 = 0;
      }

      else
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = comfortSoundsLocString();
        v18 = comfortSoundsCountdownString();
        v19 = [v16 stringWithFormat:v17, v9, v18];

        v20 = comfortSoundsCountdownString();
        v21 = [v19 rangeOfString:v20];
        v23 = v22;

        v24 = [*(a1 + 32) _subtitleAttributes];
        v25 = *MEMORY[0x277D740A8];
        v26 = [v24 valueForKey:*MEMORY[0x277D740A8]];
        v27 = [v26 fontDescriptor];
        [v27 pointSize];
        v29 = v28;

        v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v19 attributes:v24];
        v42 = v25;
        v31 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:v29 weight:*MEMORY[0x277D74418]];
        v43[0] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        [v30 setAttributes:v32 range:{v21, v23}];

        v9 = v19;
      }

      v34 = [*(a1 + 32) countdownTimer];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __42__HUICCBackgroundSoundsButton_updateValue__block_invoke_2;
      v41[3] = &unk_2796F6D90;
      v41[4] = *(a1 + 32);
      [v34 afterDelay:v41 processBlock:1.0];
    }

    else
    {
      v30 = 0;
    }

    v33 = 0;
    if (!v30 && v9)
    {
      v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
      v33 = 0;
    }
  }

  else
  {
    if (v4 == 3 || v4 == 2)
    {
      v33 = hearingLocString();
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v33 = 0;
    }

    v30 = 0;
  }

  v38 = v2;
  v39 = v30;
  v40 = v33;
  v35 = v33;
  v36 = v30;
  v37 = v2;
  AXPerformBlockOnMainThread();
}

uint64_t __42__HUICCBackgroundSoundsButton_updateValue__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setTitleText:*(a1 + 40)];
  [*(a1 + 32) setSubtitleAttributedText:*(a1 + 48)];
  [*(a1 + 32) _updateButtonView];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v3 setAxHintStr:v2];
}

- (void)buttonTapped
{
  v4.receiver = self;
  v4.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v4 buttonTapped];
  v3 = [(HUICCBackgroundSoundsButton *)self countdownTimer];
  [v3 cancel];

  [(HUICCBackgroundSoundsButton *)self updateValue];
}

- (void)_updateButtonView
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D12E18] sharedInstance];
  v4 = [v3 comfortSoundsEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    v18[0] = v5;
    v6 = [MEMORY[0x277D75348] blackColor];
    v18[1] = v6;
    v7 = v18;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    v17[0] = v5;
    v6 = [MEMORY[0x277D75348] whiteColor];
    v17[1] = v6;
    v7 = v17;
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v9 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v8];
  v10 = hearingLocString();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HUICCBackgroundSoundsButton__updateButtonView__block_invoke;
  block[3] = &unk_2796F7008;
  block[4] = self;
  v14 = v9;
  v16 = v4;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__HUICCBackgroundSoundsButton__updateButtonView__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buttonVC];
  v3 = [*(a1 + 32) buttonVC];
  v4 = [v3 glyphImage];
  v5 = [v4 imageByApplyingSymbolConfiguration:*(a1 + 40)];
  [v2 setGlyphImage:v5];

  v6 = [*(a1 + 32) buttonVC];
  [v6 setEnabled:*(a1 + 56)];

  v7 = [*(a1 + 32) iconView];
  v9[0] = *(a1 + 48);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 setAccessibilityUserInputLabels:v8];
}

- (void)subscribeListeners
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "BS button: Registering Live Listen listener", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [MEMORY[0x277D12DE8] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke;
  v5[3] = &unk_2796F7898;
  objc_copyWeak(&v6, buf);
  [v4 registerListener:self forLiveListenLevelsHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isListening];

  if (v5 != a2)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setIsListening:a2];

    objc_copyWeak(&v7, (a1 + 32));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v7);
  }
}

void __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

- (void)unsubscribeListeners
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "BS button: Unregistering Live Listen listener", v5, 2u);
  }

  v4 = [MEMORY[0x277D12DE8] sharedInstance];
  [v4 unregisterLiveListenLevelListener:self];

  [(HUICCBackgroundSoundsButton *)self setIsListening:0];
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v18.receiver = self;
  v18.super_class = HUICCBackgroundSoundsButton;
  v4 = [(HUICCCapsuleButton *)&v18 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(HUICCCapsuleButton *)self iconView];

  if (v6)
  {
    v7 = [MEMORY[0x277D12E18] sharedInstance];
    [v7 comfortSoundsEnabled];

    v8 = hearingLocString();
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x277D75088]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__HUICCBackgroundSoundsButton_accessibilityCustomActions__block_invoke;
    v15 = &unk_2796F6F90;
    objc_copyWeak(&v16, &location);
    v10 = [v9 initWithName:v8 actionHandler:&v12];
    [v5 addObject:{v10, v12, v13, v14, v15}];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __57__HUICCBackgroundSoundsButton_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonTapped];

  return 1;
}

- (BOOL)shouldIncludeIconViewInFooterViews
{
  v2 = [(HUICCCapsuleButton *)self iconView];
  v3 = v2 != 0;

  return v3;
}

@end