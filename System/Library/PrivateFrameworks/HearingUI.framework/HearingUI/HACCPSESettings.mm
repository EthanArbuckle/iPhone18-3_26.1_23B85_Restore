@interface HACCPSESettings
- (HACCContentModuleDelegate)delegate;
- (HACCPSESettings)initWithFrame:(CGRect)a3;
- (double)currentAmplification;
- (double)currentBalance;
- (double)currentNoiseSupressor;
- (double)currentTone;
- (double)currentVoiceAmplification;
- (void)addOwnVoiceAmplificationSlider;
- (void)amplificationSliderDidChange:(id)a3;
- (void)balanceSliderDidChange:(id)a3;
- (void)buildSubviews;
- (void)layoutSubviews;
- (void)noiseSliderDidChange:(id)a3;
- (void)removeOwnVoiceAmplificationSlider;
- (void)setCurrentAmplification:(double)a3;
- (void)setCurrentBalance:(double)a3;
- (void)setCurrentNoiseSupressor:(double)a3;
- (void)setCurrentTone:(double)a3;
- (void)setCurrentVoiceAmplification:(double)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)toneSliderDidChange:(id)a3;
- (void)updateAccessibilityBalanceValue;
- (void)updateAccessibilityToneValue;
- (void)updateAccessibilityVoiceAmplificationValue;
- (void)updateValue;
- (void)updateVoiceAmplificationSliderAvailability;
- (void)voiceAmplificationSliderDidChange:(id)a3;
@end

@implementation HACCPSESettings

- (HACCPSESettings)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = HACCPSESettings;
  v3 = [(HACCPSESettings *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__HACCPSESettings_initWithFrame___block_invoke;
    v10[3] = &unk_2796F6D18;
    objc_copyWeak(&v11, &location);
    [v4 registerUpdateBlock:v10 forRetrieveSelector:sel_personalMediaEnabled withListener:v3];

    v5 = [MEMORY[0x277D3A1D0] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__HACCPSESettings_initWithFrame___block_invoke_2;
    v8[3] = &unk_2796F6D18;
    objc_copyWeak(&v9, &location);
    [v5 registerUpdateBlock:v8 forRetrieveSelector:sel_transparencyCustomized withListener:v3];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel_updateVoiceAmplificationSliderAvailability name:*MEMORY[0x277D3A1F0] object:0];

    [(HACCPSESettings *)v3 buildSubviews];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __33__HACCPSESettings_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

void __33__HACCPSESettings_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVoiceAmplificationSliderAvailability];
}

- (void)removeOwnVoiceAmplificationSlider
{
  v3 = [(HACCPSESettings *)self voiceAmplificationSlider];
  [v3 removeFromSuperview];

  v5 = [(HACCPSESettings *)self stackView];
  v4 = [(HACCPSESettings *)self voiceAmplificationSlider];
  [v5 removeArrangedSubview:v4];
}

- (void)addOwnVoiceAmplificationSlider
{
  v3 = HUICCLargeTextEnabled();
  v19 = [MEMORY[0x277D75348] whiteColor];
  v4 = objc_alloc_init(HUISliderConfig);
  [(HUISliderConfig *)v4 setStyle:1];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
  v6 = [v5 imageWithTintColor:v19 renderingMode:1];
  [(HUISliderConfig *)v4 setMinImage:v6];

  v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.wave.3.fill"];
  v8 = [v7 imageWithTintColor:v19 renderingMode:1];
  [(HUISliderConfig *)v4 setMaxImage:v8];

  [(HUISliderConfig *)v4 setIsLargeText:v3];
  v9 = [[HUITitleDarkStepSliderView alloc] initWithConfig:v4];
  voiceAmplificationSlider = self->_voiceAmplificationSlider;
  self->_voiceAmplificationSlider = v9;

  [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider slider];
  [v11 addTarget:self action:sel_voiceAmplificationSliderDidChange_ forControlEvents:4096];

  v12 = self->_voiceAmplificationSlider;
  v13 = paLocString();
  [(HUITitleDarkStepSliderView *)v12 setAccessibilityLabel:v13];

  v14 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider titleLabel];
  v15 = paLocString();
  [v14 setText:v15];

  v16 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider slider];
  [v16 setDrawsEndTicks:0];

  v17 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider slider];
  [v17 setSegmentCount:2];

  v18 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider slider];
  [v18 setRestrictsValuesToTicks:0];

  [(HACCStackView *)self->_stackView addArrangedSubview:self->_voiceAmplificationSlider withSeparator:1];
}

- (void)updateVoiceAmplificationSliderAvailability
{
  v3 = [MEMORY[0x277D12E00] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HACCPSESettings_updateVoiceAmplificationSliderAvailability__block_invoke;
  v4[3] = &unk_2796F6DB8;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

uint64_t __61__HACCPSESettings_updateVoiceAmplificationSliderAvailability__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = MEMORY[0x277D3A1C8];
  v5 = a4;
  v6 = [v4 sharedInstance];
  [v6 ownVoiceSupportedForAddress:v5];

  _os_feature_enabled_impl();
  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  [v7 yodelEnabledForAddress:v5];

  return AXPerformBlockOnMainThread();
}

void __61__HACCPSESettings_updateVoiceAmplificationSliderAvailability__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
LABEL_4:
    v5 = [*(a1 + 32) stackView];
    v6 = [*(a1 + 32) voiceAmplificationSlider];
    v7 = [v5 containsView:v6];

    if (v7)
    {
      v8 = *(a1 + 32);

      [v8 removeOwnVoiceAmplificationSlider];
    }

    return;
  }

  v2 = [*(a1 + 32) stackView];
  v3 = [*(a1 + 32) voiceAmplificationSlider];
  v4 = [v2 containsView:v3];

  if (v4)
  {
    if (*(a1 + 40))
    {
      return;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 32);

  [v9 addOwnVoiceAmplificationSlider];
}

- (void)buildSubviews
{
  v3 = [MEMORY[0x277D12E00] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__HACCPSESettings_buildSubviews__block_invoke;
  v4[3] = &unk_2796F6DB8;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

void __32__HACCPSESettings_buildSubviews__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v4 = v5;
  AXPerformBlockOnMainThread();
}

void __32__HACCPSESettings_buildSubviews__block_invoke_2(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v101 = v3;
    _os_log_impl(&dword_252166000, v2, OS_LOG_TYPE_DEFAULT, "Found PSE device with version %lu", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v96 = *(a1 + 48) > 1uLL;
  }

  else
  {
    v96 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = *(a1 + 48) > 3uLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 ownVoiceSupportedForAddress:*(a1 + 32)];

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  if ([v7 yodelEnabledForAddress:*(a1 + 32)])
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v97 = v8;

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v10 = *(a1 + 40);
  v11 = *(v10 + 432);
  *(v10 + 432) = v9;

  [*(*(a1 + 40) + 432) setNumberStyle:3];
  [*(*(a1 + 40) + 432) setPercentSymbol:&stru_28645E540];
  [*(*(a1 + 40) + 432) setMaximumFractionDigits:0];
  v12 = *(*(a1 + 40) + 432);
  v13 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v14 = [v12 stringFromNumber:v13];
  [v12 setNotANumberSymbol:v14];

  v98 = [MEMORY[0x277D75348] whiteColor];
  v95 = HUICCLargeTextEnabled();
  v15 = objc_alloc_init(HACCStackView);
  v16 = *(a1 + 40);
  v17 = *(v16 + 440);
  *(v16 + 440) = v15;

  [*(*(a1 + 40) + 440) setAxis:1];
  [*(*(a1 + 40) + 440) setAlignment:0];
  [*(*(a1 + 40) + 440) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) addSubview:*(*(a1 + 40) + 440)];
  v90 = MEMORY[0x277CCAAD0];
  v94 = [*(*(a1 + 40) + 440) leadingAnchor];
  v93 = [*(a1 + 40) leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v99[0] = v92;
  v91 = [*(*(a1 + 40) + 440) trailingAnchor];
  v18 = [*(a1 + 40) trailingAnchor];
  v19 = [v91 constraintEqualToAnchor:v18];
  v99[1] = v19;
  v20 = [*(*(a1 + 40) + 440) topAnchor];
  v21 = [*(a1 + 40) topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v99[2] = v22;
  v23 = [*(*(a1 + 40) + 440) bottomAnchor];
  v24 = [*(a1 + 40) bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v99[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:4];
  [v90 activateConstraints:v26];

  v27 = objc_alloc_init(HUISliderConfig);
  [(HUISliderConfig *)v27 setStyle:2];
  v28 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
  v29 = [v28 imageWithTintColor:v98 renderingMode:1];
  [(HUISliderConfig *)v27 setMinImage:v29];

  v30 = HUICCMenuTextLabel();
  [(HUISliderConfig *)v27 setValueLabel:v30];

  [(HUISliderConfig *)v27 setIsLargeText:v95];
  v31 = [[HUITitleDarkStepSliderView alloc] initWithConfig:v27];
  v32 = *(a1 + 40);
  v33 = *(v32 + 448);
  *(v32 + 448) = v31;

  [*(*(a1 + 40) + 448) setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [*(*(a1 + 40) + 448) slider];
  [v34 addTarget:*(a1 + 40) action:sel_amplificationSliderDidChange_ forControlEvents:4096];

  v35 = *(*(a1 + 40) + 448);
  v36 = hearingLocString();
  [v35 setAccessibilityLabel:v36];

  v37 = [*(*(a1 + 40) + 448) titleLabel];
  v38 = hearingLocString();
  [v37 setText:v38];

  v39 = [*(*(a1 + 40) + 448) slider];
  [v39 setDrawsEndTicks:0];

  [*(*(a1 + 40) + 440) addArrangedSubview:*(*(a1 + 40) + 448) withSeparator:0];
  v40 = objc_alloc_init(HUISliderConfig);
  [(HUISliderConfig *)v40 setStyle:3];
  v41 = HUICCMenuTextLabel();
  [(HUISliderConfig *)v40 setMinTextLabel:v41];

  v42 = [(HUISliderConfig *)v40 minTextLabel];
  v43 = hearingLocString();
  [v42 setText:v43];

  v44 = HUICCMenuTextLabel();
  [(HUISliderConfig *)v40 setValueLabel:v44];

  v45 = [(HUISliderConfig *)v40 valueLabel];
  v46 = hearingLocString();
  [v45 setText:v46];

  [(HUISliderConfig *)v40 setIsLargeText:v95];
  v47 = [[HUITitleDarkStepSliderView alloc] initWithConfig:v40];
  v48 = *(a1 + 40);
  v49 = *(v48 + 456);
  *(v48 + 456) = v47;

  [*(*(a1 + 40) + 456) setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [*(*(a1 + 40) + 456) slider];
  [v50 addTarget:*(a1 + 40) action:sel_balanceSliderDidChange_ forControlEvents:4096];

  v51 = *(*(a1 + 40) + 456);
  v52 = hearingLocString();
  [v51 setAccessibilityLabel:v52];

  v53 = [*(*(a1 + 40) + 456) titleLabel];
  v54 = hearingLocString();
  [v53 setText:v54];

  v55 = [*(*(a1 + 40) + 456) slider];
  [v55 setDrawsEndTicks:0];

  v56 = [*(*(a1 + 40) + 456) slider];
  [v56 setSegmentCount:2];

  v57 = [*(*(a1 + 40) + 456) slider];
  [v57 setRestrictsValuesToTicks:0];

  [*(*(a1 + 40) + 440) addArrangedSubview:*(*(a1 + 40) + 456) withSeparator:1];
  v58 = objc_alloc_init(HUISliderConfig);
  [(HUISliderConfig *)v58 setStyle:1];
  v59 = [MEMORY[0x277D755B8] _systemImageNamed:@"circlebadge.fill"];
  v60 = [v59 imageWithTintColor:v98 renderingMode:1];
  [(HUISliderConfig *)v58 setMinImage:v60];

  v61 = [MEMORY[0x277D755B8] _systemImageNamed:@"sun.max.fill"];
  v62 = [v61 imageWithTintColor:v98 renderingMode:1];
  [(HUISliderConfig *)v58 setMaxImage:v62];

  [(HUISliderConfig *)v58 setIsLargeText:v95];
  v63 = [[HUITitleDarkStepSliderView alloc] initWithConfig:v58];
  v64 = *(a1 + 40);
  v65 = *(v64 + 464);
  *(v64 + 464) = v63;

  [*(*(a1 + 40) + 464) setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = [*(*(a1 + 40) + 464) slider];
  [v66 addTarget:*(a1 + 40) action:sel_toneSliderDidChange_ forControlEvents:4096];

  v67 = *(*(a1 + 40) + 464);
  v68 = hearingLocString();
  [v67 setAccessibilityLabel:v68];

  v69 = [*(*(a1 + 40) + 464) titleLabel];
  v70 = hearingLocString();
  [v69 setText:v70];

  v71 = [*(*(a1 + 40) + 464) slider];
  [v71 setDrawsEndTicks:0];

  v72 = [*(*(a1 + 40) + 464) slider];
  [v72 setSegmentCount:2];

  v73 = [*(*(a1 + 40) + 464) slider];
  [v73 setRestrictsValuesToTicks:0];

  [*(*(a1 + 40) + 440) addArrangedSubview:*(*(a1 + 40) + 464) withSeparator:1];
  if (v96)
  {
    v74 = objc_alloc_init(HUISliderConfig);
    [(HUISliderConfig *)v74 setStyle:2];
    v75 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
    v76 = [v75 imageWithTintColor:v98 renderingMode:1];
    [(HUISliderConfig *)v74 setMinImage:v76];

    v77 = HUICCMenuTextLabel();
    [(HUISliderConfig *)v74 setValueLabel:v77];

    [(HUISliderConfig *)v74 setIsLargeText:v95];
    v78 = [[HUITitleDarkStepSliderView alloc] initWithConfig:v74];
    v79 = *(a1 + 40);
    v80 = *(v79 + 472);
    *(v79 + 472) = v78;

    [*(*(a1 + 40) + 472) setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [*(*(a1 + 40) + 472) slider];
    [v81 addTarget:*(a1 + 40) action:sel_noiseSliderDidChange_ forControlEvents:4096];

    v82 = *(*(a1 + 40) + 472);
    v83 = paLocString();
    [v82 setAccessibilityLabel:v83];

    v84 = [*(*(a1 + 40) + 472) titleLabel];
    v85 = paLocString();
    [v84 setText:v85];

    v86 = [*(*(a1 + 40) + 464) slider];
    [v86 setDrawsEndTicks:0];

    v87 = [*(*(a1 + 40) + 464) slider];
    [v87 setSegmentCount:2];

    v88 = [*(*(a1 + 40) + 464) slider];
    [v88 setRestrictsValuesToTicks:0];

    [*(*(a1 + 40) + 440) addArrangedSubview:*(*(a1 + 40) + 472) withSeparator:1];
  }

  v89 = *(a1 + 40);
  if (v97)
  {
    [v89 addOwnVoiceAmplificationSlider];
  }

  else
  {
    [v89 removeOwnVoiceAmplificationSlider];
  }

  [*(a1 + 40) updateValue];
}

- (double)currentBalance
{
  v2 = [(HACCPSESettings *)self delegate];
  v3 = [v2 currentDeviceAddress];

  v4 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v4 transparencyBalanceForAddress:v3];
  v6 = v5;

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 balanceForAddress:v3];
    v6 = v10;
  }

  return v6;
}

- (void)setCurrentBalance:(double)a3
{
  v4 = [(HACCPSESettings *)self delegate];
  v8 = [v4 currentDeviceAddress];

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 yodelEnabledForAddress:v8];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v7 setBalance:v8 forAddress:a3];
  }

  else
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v7 setTransparencyBalance:v8 forAddress:a3];
  }
}

- (double)currentTone
{
  v2 = [(HACCPSESettings *)self delegate];
  v3 = [v2 currentDeviceAddress];

  v4 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v4 transparencyToneForAddress:v3];
  v6 = v5;

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 toneForAddress:v3];
    v6 = v10;
  }

  return v6;
}

- (void)setCurrentTone:(double)a3
{
  v4 = [(HACCPSESettings *)self delegate];
  v8 = [v4 currentDeviceAddress];

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 yodelEnabledForAddress:v8];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v7 setTone:v8 forAddress:a3];
  }

  else
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v7 setTransparencyTone:v8 forAddress:a3];
  }
}

- (double)currentAmplification
{
  v2 = [(HACCPSESettings *)self delegate];
  v3 = [v2 currentDeviceAddress];

  v4 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v4 transparencyAmplificationForAddress:v3];
  v6 = v5;

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 amplificationForAddress:v3];
    v6 = v10;
  }

  return v6;
}

- (void)setCurrentAmplification:(double)a3
{
  v4 = [(HACCPSESettings *)self delegate];
  v8 = [v4 currentDeviceAddress];

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 yodelEnabledForAddress:v8];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v7 setAmplification:v8 forAddress:a3];
  }

  else
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v7 setTransparencyAmplification:v8 forAddress:a3];
  }
}

- (double)currentNoiseSupressor
{
  v2 = [(HACCPSESettings *)self delegate];
  v3 = [v2 currentDeviceAddress];

  v4 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v4 transparencyNoiseSupressorForAddress:v3];
  v6 = v5;

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 noiseSupressorForAddress:v3];
    v6 = v10;
  }

  return v6;
}

- (void)setCurrentNoiseSupressor:(double)a3
{
  v4 = [(HACCPSESettings *)self delegate];
  v8 = [v4 currentDeviceAddress];

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 yodelEnabledForAddress:v8];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v7 setNoiseSupressor:v8 forAddress:a3];
  }

  else
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v7 setTransparencyNoiseSupressor:v8 forAddress:a3];
  }
}

- (double)currentVoiceAmplification
{
  v2 = [(HACCPSESettings *)self delegate];
  v3 = [v2 currentDeviceAddress];

  v4 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v4 transparencyOwnVoiceForAddress:v3];
  v6 = v5;

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:v3];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 ownVoiceForAddress:v3];
    v6 = v10;
  }

  return v6;
}

- (void)setCurrentVoiceAmplification:(double)a3
{
  v4 = [(HACCPSESettings *)self delegate];
  v8 = [v4 currentDeviceAddress];

  v5 = [MEMORY[0x277D3A1C8] sharedInstance];
  v6 = [v5 yodelEnabledForAddress:v8];

  if (v6)
  {
    v7 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v7 setOwnVoice:v8 forAddress:a3];
  }

  else
  {
    v7 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v7 setTransparencyOwnVoice:v8 forAddress:a3];
  }
}

- (void)updateAccessibilityBalanceValue
{
  [(HACCPSESettings *)self currentBalance];
  v4 = v3;
  v14 = paLocString();
  if (v4 > 0.5)
  {
    v5 = paLocString();

    v14 = v5;
  }

  v6 = v4 + -0.5;
  v7 = paLocString();
  if (v6 != 0.0)
  {
    v8 = fabs(v6);
    v9 = MEMORY[0x277CCACA8];
    numberFormatter = self->_numberFormatter;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8 + v8];
    v12 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v11];
    v13 = [v9 stringWithFormat:v14, v12];

    v7 = v13;
  }

  [(HUITitleDarkStepSliderView *)self->_balanceSlider setAccessibilityValue:v7];
}

- (void)updateAccessibilityToneValue
{
  [(HACCPSESettings *)self currentTone];
  v4 = v3;
  v14 = paLocString();
  if (v4 > 0.5)
  {
    v5 = paLocString();

    v14 = v5;
  }

  v6 = v4 + -0.5;
  v7 = paLocString();
  if (v6 != 0.0)
  {
    v8 = fabs(v6);
    v9 = MEMORY[0x277CCACA8];
    numberFormatter = self->_numberFormatter;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8 + v8];
    v12 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v11];
    v13 = [v9 stringWithFormat:v14, v12];

    v7 = v13;
  }

  [(HUITitleDarkStepSliderView *)self->_toneSlider setAccessibilityValue:v7];
}

- (void)updateAccessibilityVoiceAmplificationValue
{
  [(HACCPSESettings *)self currentBalance];
  v4 = v3;
  v14 = paLocString();
  if (v4 > 0.5)
  {
    v5 = paLocString();

    v14 = v5;
  }

  v6 = v4 + -0.5;
  v7 = paLocString();
  if (v6 != 0.0)
  {
    v8 = fabs(v6);
    v9 = MEMORY[0x277CCACA8];
    numberFormatter = self->_numberFormatter;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8 + v8];
    v12 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v11];
    v13 = [v9 stringWithFormat:v14, v12];

    v7 = v13;
  }

  [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider setAccessibilityValue:v7];
}

- (void)amplificationSliderDidChange:(id)a3
{
  [a3 value];
  v5 = v4;
  numberFormatter = self->_numberFormatter;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v7];

  v8 = [(HUITitleDarkStepSliderView *)self->_amplificationSlider valueLabel];
  [v8 setText:v9];

  [(HUITitleDarkStepSliderView *)self->_amplificationSlider setAccessibilityValue:v9];
  [(HACCPSESettings *)self setCurrentAmplification:v5];
}

- (void)balanceSliderDidChange:(id)a3
{
  [a3 value];
  [(HACCPSESettings *)self setCurrentBalance:v4];

  [(HACCPSESettings *)self updateAccessibilityBalanceValue];
}

- (void)toneSliderDidChange:(id)a3
{
  [a3 value];
  [(HACCPSESettings *)self setCurrentTone:v4];

  [(HACCPSESettings *)self updateAccessibilityToneValue];
}

- (void)noiseSliderDidChange:(id)a3
{
  [a3 value];
  v5 = v4;
  numberFormatter = self->_numberFormatter;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v7];

  v8 = [(HUITitleDarkStepSliderView *)self->_noiseSupressorSlider valueLabel];
  [v8 setText:v9];

  [(HUITitleDarkStepSliderView *)self->_noiseSupressorSlider setAccessibilityValue:v9];
  [(HACCPSESettings *)self setCurrentNoiseSupressor:v5];
}

- (void)voiceAmplificationSliderDidChange:(id)a3
{
  [a3 value];
  v5 = v4;
  numberFormatter = self->_numberFormatter;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v7];

  v8 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider valueLabel];
  [v8 setText:v9];

  [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider setAccessibilityValue:v9];
  [(HACCPSESettings *)self setCurrentVoiceAmplification:v5];
}

- (void)updateValue
{
  [(HACCPSESettings *)self currentAmplification];
  v4 = v3;
  v5 = [(HUITitleDarkStepSliderView *)self->_amplificationSlider valueLabel];
  numberFormatter = self->_numberFormatter;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v8 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v7];
  [v5 setText:v8];

  v9 = [(HUITitleDarkStepSliderView *)self->_amplificationSlider slider];
  *&v10 = v4;
  [v9 setValue:v10];

  v11 = [(HUITitleDarkStepSliderView *)self->_balanceSlider slider];
  [(HACCPSESettings *)self currentBalance];
  *&v12 = v12;
  [v11 setValue:v12];

  v13 = [(HUITitleDarkStepSliderView *)self->_toneSlider slider];
  [(HACCPSESettings *)self currentTone];
  *&v14 = v14;
  [v13 setValue:v14];

  [(HACCPSESettings *)self currentNoiseSupressor];
  v16 = v15;
  v17 = [(HUITitleDarkStepSliderView *)self->_noiseSupressorSlider valueLabel];
  v18 = self->_numberFormatter;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v20 = [(NSNumberFormatter *)v18 stringFromNumber:v19];
  [v17 setText:v20];

  v21 = [(HUITitleDarkStepSliderView *)self->_noiseSupressorSlider slider];
  *&v22 = v16;
  [v21 setValue:v22];

  v23 = [(HUITitleDarkStepSliderView *)self->_voiceAmplificationSlider slider];
  [(HACCPSESettings *)self currentVoiceAmplification];
  *&v24 = v24;
  [v23 setValue:v24];

  [(HACCPSESettings *)self updateAccessibilityBalanceValue];
  [(HACCPSESettings *)self updateAccessibilityToneValue];
  [(HACCPSESettings *)self updateAccessibilityVoiceAmplificationValue];
  v25 = [(HUITitleDarkStepSliderView *)self->_amplificationSlider valueLabel];
  v26 = self->_numberFormatter;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v28 = [(NSNumberFormatter *)v26 stringFromNumber:v27];
  [v25 setText:v28];

  amplificationSlider = self->_amplificationSlider;
  v30 = [(HUITitleDarkStepSliderView *)amplificationSlider valueLabel];
  v31 = [v30 text];
  [(HUITitleDarkStepSliderView *)amplificationSlider setAccessibilityValue:v31];

  noiseSupressorSlider = self->_noiseSupressorSlider;
  v33 = [(HUITitleDarkStepSliderView *)noiseSupressorSlider valueLabel];
  v34 = [v33 text];
  [(HUITitleDarkStepSliderView *)noiseSupressorSlider setAccessibilityValue:v34];

  voiceAmplificationSlider = self->_voiceAmplificationSlider;
  v36 = [(HUITitleDarkStepSliderView *)voiceAmplificationSlider valueLabel];
  v37 = [v36 text];
  [(HUITitleDarkStepSliderView *)voiceAmplificationSlider setAccessibilityValue:v37];

  v38 = HUICCLargeTextEnabled();
  [(HUITitleDarkStepSliderView *)self->_amplificationSlider setIsLargeText:v38];
  [(HUITitleDarkStepSliderView *)self->_balanceSlider setIsLargeText:v38];
  [(HUITitleDarkStepSliderView *)self->_toneSlider setIsLargeText:v38];
  [(HUITitleDarkStepSliderView *)self->_noiseSupressorSlider setIsLargeText:v38];
  v39 = self->_voiceAmplificationSlider;

  [(HUITitleDarkStepSliderView *)v39 setIsLargeText:v38];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HACCPSESettings;
  [(HACCPSESettings *)&v5 layoutSubviews];
  v3 = [MEMORY[0x277CFC968] controlCenterModuleBackgroundMaterial];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 visualStylingProviderForCategory:2];
    [(HACCPSESettings *)self setVisualStylingProvider:v4 forCategory:2];
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [(HACCPSESettings *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HACCPSESettings_setVisualStylingProvider_forCategory___block_invoke;
    v10[3] = &unk_2796F6CA8;
    v11 = v6;
    v12 = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __56__HACCPSESettings_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1)
{
  v50 = [*(a1 + 32) _visualStylingForStyle:1];
  v2 = [*(a1 + 40) amplificationSlider];
  v3 = [v2 slider];
  v4 = [v50 color];
  [v3 setMaximumTrackTintColor:v4];

  v5 = [*(a1 + 40) amplificationSlider];
  v6 = [v5 slider];
  v7 = [v6 _maxTrackView];
  [v7 mt_replaceVisualStyling:v50];

  v8 = [*(a1 + 40) balanceSlider];
  v9 = [v8 slider];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v9 setMinimumTrackTintColor:v10];

  v11 = [*(a1 + 40) balanceSlider];
  v12 = [v11 slider];
  v13 = [v12 _minTrackView];
  [v13 mt_replaceVisualStyling:v50];

  v14 = [*(a1 + 40) balanceSlider];
  v15 = [v14 slider];
  v16 = [v50 color];
  [v15 setMaximumTrackTintColor:v16];

  v17 = [*(a1 + 40) balanceSlider];
  v18 = [v17 slider];
  v19 = [v18 _maxTrackView];
  [v19 mt_replaceVisualStyling:v50];

  v20 = [*(a1 + 40) toneSlider];
  v21 = [v20 slider];
  v22 = [MEMORY[0x277D75348] clearColor];
  [v21 setMinimumTrackTintColor:v22];

  v23 = [*(a1 + 40) toneSlider];
  v24 = [v23 slider];
  v25 = [v24 _minTrackView];
  [v25 mt_replaceVisualStyling:v50];

  v26 = [*(a1 + 40) toneSlider];
  v27 = [v26 slider];
  v28 = [v50 color];
  [v27 setMaximumTrackTintColor:v28];

  v29 = [*(a1 + 40) toneSlider];
  v30 = [v29 slider];
  v31 = [v30 _maxTrackView];
  [v31 mt_replaceVisualStyling:v50];

  v32 = [*(a1 + 40) noiseSupressorSlider];
  v33 = [v32 slider];
  v34 = [v50 color];
  [v33 setMaximumTrackTintColor:v34];

  v35 = [*(a1 + 40) noiseSupressorSlider];
  v36 = [v35 slider];
  v37 = [v36 _maxTrackView];
  [v37 mt_replaceVisualStyling:v50];

  v38 = [*(a1 + 40) voiceAmplificationSlider];
  v39 = [v38 slider];
  v40 = [MEMORY[0x277D75348] clearColor];
  [v39 setMinimumTrackTintColor:v40];

  v41 = [*(a1 + 40) voiceAmplificationSlider];
  v42 = [v41 slider];
  v43 = [v42 _minTrackView];
  [v43 mt_replaceVisualStyling:v50];

  v44 = [*(a1 + 40) voiceAmplificationSlider];
  v45 = [v44 slider];
  v46 = [v50 color];
  [v45 setMaximumTrackTintColor:v46];

  v47 = [*(a1 + 40) voiceAmplificationSlider];
  v48 = [v47 slider];
  v49 = [v48 _maxTrackView];
  [v49 mt_replaceVisualStyling:v50];
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end