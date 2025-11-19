@interface HACCSlider
- (BOOL)_isSubModule;
- (HACCContentModuleDelegate)delegate;
- (HACCSlider)initWithModule:(unint64_t)a3 andDelegate:(id)a4;
- (id)_sliderConfig;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)contentValue;
- (unint64_t)numberOfSteps;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setNumberOfSteps:(unint64_t)a3;
- (void)setValue:(double)a3 andNotify:(BOOL)a4;
- (void)sliderDidChange:(id)a3;
- (void)updateValue;
- (void)updateValueString;
@end

@implementation HACCSlider

- (HACCSlider)initWithModule:(unint64_t)a3 andDelegate:(id)a4
{
  v42[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v41.receiver = self;
  v41.super_class = HACCSlider;
  v7 = [(HACCSlider *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(HACCSlider *)v7 setModule:a3];
    [(HACCSlider *)v8 setDelegate:v6];
    v9 = [HUITitleDarkStepSliderView alloc];
    [(HACCSlider *)v8 _sliderConfig];
    v10 = v40 = v6;
    v11 = [(HUITitleDarkStepSliderView *)v9 initWithConfig:v10];
    sliderView = v8->_sliderView;
    v8->_sliderView = v11;

    v13 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [v13 setSupportsVibrancy:1];

    v14 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [v14 setDrawsEndTicks:0];

    v15 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    v16 = [MEMORY[0x277D75348] whiteColor];
    [v15 setMinimumTrackTintColor:v16];

    v17 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    v18 = [MEMORY[0x277D75348] whiteColor];
    [v17 setTickColor:v18];

    [(HUITitleDarkStepSliderView *)v8->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [v19 addTarget:v8 action:sel_sliderDidChange_ forControlEvents:4096];

    [(HACCSlider *)v8 addSubview:v8->_sliderView];
    v35 = MEMORY[0x277CCAAD0];
    v39 = [(HUITitleDarkStepSliderView *)v8->_sliderView leadingAnchor];
    v38 = [(HACCSlider *)v8 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v42[0] = v37;
    v36 = [(HUITitleDarkStepSliderView *)v8->_sliderView trailingAnchor];
    v20 = [(HACCSlider *)v8 trailingAnchor];
    v21 = [v36 constraintEqualToAnchor:v20];
    v42[1] = v21;
    v22 = [(HUITitleDarkStepSliderView *)v8->_sliderView topAnchor];
    v23 = [(HACCSlider *)v8 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v42[2] = v24;
    v25 = [(HUITitleDarkStepSliderView *)v8->_sliderView bottomAnchor];
    v26 = [(HACCSlider *)v8 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v42[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v35 activateConstraints:v28];

    v29 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v8->_numberFormatter;
    v8->_numberFormatter = v29;

    [(NSNumberFormatter *)v8->_numberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v8->_numberFormatter setPercentSymbol:&stru_28645E540];
    [(NSNumberFormatter *)v8->_numberFormatter setMaximumFractionDigits:0];
    v31 = v8->_numberFormatter;
    v32 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v33 = [(NSNumberFormatter *)v31 stringFromNumber:v32];
    [(NSNumberFormatter *)v31 setNotANumberSymbol:v33];

    v6 = v40;
    [(HACCSlider *)v8 updateValue];
  }

  return v8;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HACCSlider;
  [(HACCSlider *)&v14 layoutSubviews];
  v3 = [MEMORY[0x277CFC968] controlCenterModuleBackgroundMaterial];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 visualStylingProviderForCategory:2];
    v5 = [v4 _visualStylingForStyle:1];
    if ([(HACCSlider *)self module]== 11 || [(HACCSlider *)self module]== 10)
    {
      v6 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      v7 = [v5 color];
      [v6 setMinimumTrackTintColor:v7];

      v8 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      v9 = [v8 _minTrackView];
      [v9 mt_replaceVisualStyling:v5];
    }

    v10 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
    v11 = [v5 color];
    [v10 setMaximumTrackTintColor:v11];

    v12 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
    v13 = [v12 _maxTrackView];
    [v13 mt_replaceVisualStyling:v5];
  }
}

- (BOOL)_isSubModule
{
  v3 = [(HACCSlider *)self providesOwnSeparator];
  if (v3)
  {
    v4 = [(HACCSlider *)self module]- 1;
    v5 = [(HACCSlider *)self delegate];
    LOBYTE(v4) = [v5 shouldDisplayControlForModule:v4];

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (id)_sliderConfig
{
  v3 = HUICCMenuTextLabel();
  v4 = HUICCMenuTextLabel();
  v5 = [(HACCSlider *)self _isSubModule];
  switch([(HACCSlider *)self module])
  {
    case 1uLL:
    case 2uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
    case 12uLL:
    case 13uLL:
      v14 = hearingLocString();
      [v3 setText:v14];

      v11 = 0;
      v12 = 0;
      v9 = 0;
      v13 = 3;
      break;
    case 3uLL:
    case 6uLL:
    case 14uLL:
    case 25uLL:
    case 26uLL:
      v6 = [MEMORY[0x277D75348] whiteColor];
      v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
      v8 = [v7 imageWithTintColor:v6 renderingMode:1];

      v9 = v8;
      objc_initWeak(&location, self);
      v10 = MEMORY[0x277D750C8];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __27__HACCSlider__sliderConfig__block_invoke;
      v21[3] = &unk_2796F7398;
      objc_copyWeak(&v22, &location);
      v11 = [v10 actionWithHandler:v21];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);

      v3 = 0;
      v12 = 0;
      v13 = 2;
      break;
    case 9uLL:
      v17 = [MEMORY[0x277D75348] whiteColor];
      v18 = [MEMORY[0x277D755B8] _systemImageNamed:@"circle.fill"];
      v13 = 1;
      v9 = [v18 imageWithTintColor:v17 renderingMode:1];

      v19 = [MEMORY[0x277D755B8] _systemImageNamed:@"sun.max"];
      v12 = [v19 imageWithTintColor:v17 renderingMode:1];

      v4 = 0;
      v3 = 0;
      v11 = 0;
      break;
    case 10uLL:
    case 11uLL:
      v20 = hearingLocString();
      [v3 setText:v20];

      v11 = 0;
      v12 = 0;
      v9 = 0;
      v13 = 4;
      break;
    default:

      v4 = 0;
      v3 = 0;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v13 = 0;
      break;
  }

  v15 = objc_alloc_init(HUISliderConfig);
  [(HUISliderConfig *)v15 setStyle:v13];
  [(HUISliderConfig *)v15 setMinImage:v9];
  [(HUISliderConfig *)v15 setMaxImage:v12];
  [(HUISliderConfig *)v15 setMinTextLabel:v3];
  [(HUISliderConfig *)v15 setMinImageAction:v11];
  [(HUISliderConfig *)v15 setValueLabel:v4];
  [(HUISliderConfig *)v15 setProvidesOwnSeparator:[(HACCSlider *)self providesOwnSeparator]];
  [(HUISliderConfig *)v15 setIsSubmenuSlider:v5];
  [(HUISliderConfig *)v15 setIsLargeText:HUICCLargeTextEnabled()];

  return v15;
}

void __27__HACCSlider__sliderConfig__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained sliderView];
  v4 = [v3 slider];
  [v4 setValue:0.0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v5 = [v7 sliderView];
  v6 = [v5 slider];
  [v6 sendActionsForControlEvents:4096];
}

- (void)setNumberOfSteps:(unint64_t)a3
{
  v5 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
  [v5 setSegmentCount:a3];

  sliderView = self->_sliderView;

  [(HUITitleDarkStepSliderView *)sliderView setNeedsLayout];
}

- (unint64_t)numberOfSteps
{
  v2 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
  v3 = [v2 segmentCount];

  return v3;
}

- (void)sliderDidChange:(id)a3
{
  [a3 value];
  v5 = v4;

  [(HACCSlider *)self setValue:1 andNotify:v5];
}

- (void)setValue:(double)a3 andNotify:(BOOL)a4
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v5 = llround(fmin(a3, 1.0) * 100.0) / 100.0;
  if (self->_value != v5)
  {
    v6 = a4;
    numberOfSteps = self->_numberOfSteps;
    if (v5 != 1.0 && numberOfSteps >= 2)
    {
      v9 = 1.0 / numberOfSteps;
      v10 = v5 / v9;
      v5 = v9 * llroundf(v10);
    }

    self->_value = v5;
    [(HACCSlider *)self setNeedsLayout];
    [(HACCSlider *)self layoutIfNeeded];
    if (v6)
    {
      v11 = [(HACCSlider *)self delegate];
      [v11 controlDidActivate:self];
    }
  }

  [(HACCSlider *)self updateValueString];
}

- (void)updateValueString
{
  v3 = [(HACCSlider *)self module];
  v4 = 0.0;
  if (v3 <= 0x1A)
  {
    if (((1 << v3) & 0x60073FE) != 0)
    {
      value = self->_value;
LABEL_4:
      v4 = value;
      goto LABEL_5;
    }

    if (((1 << v3) & 0xC00) != 0)
    {
      value = self->_value + -0.5 + self->_value + -0.5;
      goto LABEL_4;
    }
  }

LABEL_5:
  v11 = [(HACCSlider *)self sliderView];
  v6 = [v11 valueLabel];
  numberFormatter = self->_numberFormatter;
  *&v8 = v4;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v10 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v9];
  [v6 setText:v10];
}

- (void)updateValue
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(HACCSlider *)self delegate];
  v5 = [v4 currentHearingDevice];

  v6 = 0;
  v7 = 0.0;
  v8 = 0;
  switch([(HACCSlider *)self module])
  {
    case 1uLL:
      [v5 leftMixedVolume];
      v7 = v9;
      v10 = [v5 leftMixedVolumeSteps];
      goto LABEL_26;
    case 2uLL:
      [v5 rightMixedVolume];
      v7 = v31;
      v10 = [v5 rightMixedVolumeSteps];
LABEL_26:
      v8 = v10;
      goto LABEL_42;
    case 3uLL:
      [v5 combinedVolumeForProperty:0x4000000000];
      v7 = v23;
      v24 = [v5 leftMixedVolumeSteps];
      v25 = [v5 rightMixedVolumeSteps];
      goto LABEL_17;
    case 4uLL:
      [v5 leftMicrophoneVolume];
      v7 = v41;
      v42 = [v5 leftMicrophoneVolumeSteps];
      goto LABEL_35;
    case 5uLL:
      [v5 rightMicrophoneVolume];
      v7 = v43;
      v42 = [v5 rightMicrophoneVolumeSteps];
LABEL_35:
      v8 = v42;
      goto LABEL_42;
    case 6uLL:
      [v5 combinedVolumeForProperty:64];
      v7 = v26;
      v24 = [v5 leftMicrophoneVolumeSteps];
      v25 = [v5 rightMicrophoneVolumeSteps];
LABEL_17:
      if (v24 <= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      v8 = v27;
      goto LABEL_42;
    case 7uLL:
      [v5 leftSensitivity];
      v7 = v32;
      v33 = [v5 leftSensitivitySteps];
      goto LABEL_29;
    case 8uLL:
      [v5 rightSensitivity];
      v7 = v34;
      v33 = [v5 rightSensitivitySteps];
LABEL_29:
      v8 = v33;
      goto LABEL_42;
    case 9uLL:
      [v5 combinedVolumeForProperty:0x80000000];
      v7 = v46;
      v47 = [v5 leftSensitivitySteps];
      v48 = [v5 rightSensitivitySteps];
      if (v47 <= v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = v47;
      }

      v8 = v49;
LABEL_42:
      v6 = hearingLocString();
      break;
    case 10uLL:
      v16 = v5;
      v17 = 0x2000000000;
      goto LABEL_37;
    case 11uLL:
      v16 = v5;
      v17 = 0x1000000000;
LABEL_37:
      [v16 combinedVolumeForProperty:v17];
      v7 = v44;
      v45 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [v45 setRestrictsValuesToTicks:0];

      v6 = hearingLocString();
      v8 = 2;
      break;
    case 12uLL:
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__0;
      v65 = __Block_byref_object_dispose__0;
      v66 = [v5 leftSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        v28 = [v5 leftPrograms];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __25__HACCSlider_updateValue__block_invoke;
        v60[3] = &unk_2796F73C0;
        v60[4] = &v61;
        [v28 enumerateObjectsUsingBlock:v60];
      }

      [v5 leftStreamVolume];
      v20 = v29;
      LODWORD(v8) = [v5 leftStreamVolumeSteps];
      v30 = MEMORY[0x277CCACA8];
      v22 = hearingLocString();
      if ([v62[5] isStream])
      {
        [v62[5] name];
      }

      else
      {
        hearingLocString();
      }
      v50 = ;
      v51 = [v30 stringWithFormat:v22, v50];
      goto LABEL_49;
    case 13uLL:
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__0;
      v65 = __Block_byref_object_dispose__0;
      v66 = [v5 rightSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        v18 = [v5 rightPrograms];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __25__HACCSlider_updateValue__block_invoke_2;
        v59[3] = &unk_2796F73C0;
        v59[4] = &v61;
        [v18 enumerateObjectsUsingBlock:v59];
      }

      [v5 rightStreamVolume];
      v20 = v19;
      LODWORD(v8) = [v5 rightStreamVolumeSteps];
      v21 = MEMORY[0x277CCACA8];
      v22 = hearingLocString();
      if ([v62[5] isStream])
      {
        [v62[5] name];
      }

      else
      {
        hearingLocString();
      }
      v50 = ;
      v51 = [v21 stringWithFormat:v22, v50];
LABEL_49:
      v6 = v51;
      v7 = v20;
      v8 = v8;

      goto LABEL_50;
    case 14uLL:
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__0;
      v65 = __Block_byref_object_dispose__0;
      v66 = [v5 rightSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        v11 = [v5 programs];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __25__HACCSlider_updateValue__block_invoke_3;
        v58[3] = &unk_2796F73C0;
        v58[4] = &v61;
        [v11 enumerateObjectsUsingBlock:v58];
      }

      [v5 combinedVolumeForProperty:128];
      v13 = v12;
      v14 = [v5 leftStreamVolumeSteps];
      v15 = [v5 rightStreamVolumeSteps];
      if (v14 <= v15)
      {
        LODWORD(v8) = v15;
      }

      else
      {
        LODWORD(v8) = v14;
      }

      if ([v62[5] isStream])
      {
        [v62[5] name];
      }

      else
      {
        hearingLocString();
      }
      v6 = ;
      v7 = v13;
      v8 = v8;
LABEL_50:
      _Block_object_dispose(&v61, 8);

      break;
    case 25uLL:
      v35 = [MEMORY[0x277D12E18] sharedInstance];
      [v35 relativeVolume];
      v7 = v36;

      v37 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [v37 setRestrictsValuesToTicks:0];

      goto LABEL_32;
    case 26uLL:
      v38 = [MEMORY[0x277D12E18] sharedInstance];
      [v38 mediaVolume];
      v7 = v39;

      v40 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [v40 setRestrictsValuesToTicks:0];

LABEL_32:
      v6 = hearingLocString();
      v8 = 0;
      break;
    default:
      break;
  }

  [(HACCSlider *)self updateValueString];
  v52 = [(HACCSlider *)self sliderView];
  v53 = [v52 titleLabel];
  [v53 setText:v6];

  v54 = [(HACCSlider *)self sliderView];
  v55 = [v54 slider];
  *&v56 = v7;
  [v55 setValue:v56];

  v57 = [(HACCSlider *)self sliderView];
  [v57 setIsSubmenu:{-[HACCSlider _isSubModule](self, "_isSubModule")}];

  [(HACCSlider *)self setNumberOfSteps:v8];
  [(HACCSlider *)self setValue:0 andNotify:v7];

  objc_autoreleasePoolPop(v3);
}

void __25__HACCSlider_updateValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __25__HACCSlider_updateValue__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __25__HACCSlider_updateValue__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)contentValue
{
  v2 = MEMORY[0x277CCABB0];
  [(HACCSlider *)self value];

  return [v2 numberWithDouble:?];
}

- (id)accessibilityLabel
{
  v3 = [(HACCSlider *)self delegate];
  v4 = [v3 currentHearingDevice];

  v5 = [(HACCSlider *)self module];
  v6 = 0;
  switch(v5)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0x1AuLL:
      v6 = hearingLocString();
      break;
    case 0xCuLL:
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__0;
      v29 = __Block_byref_object_dispose__0;
      v30 = [v4 leftSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        v12 = [v4 leftPrograms];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __32__HACCSlider_accessibilityLabel__block_invoke;
        v24[3] = &unk_2796F73C0;
        v24[4] = &v25;
        [v12 enumerateObjectsUsingBlock:v24];
      }

      v13 = MEMORY[0x277CCACA8];
      v9 = hearingLocString();
      if ([v26[5] isStream])
      {
        [v26[5] name];
      }

      else
      {
        hearingLocString();
      }
      v20 = ;
      v21 = [v13 stringWithFormat:v9, v20];
      goto LABEL_25;
    case 0xDuLL:
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__0;
      v29 = __Block_byref_object_dispose__0;
      v30 = [v4 rightSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        v10 = [v4 rightPrograms];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __32__HACCSlider_accessibilityLabel__block_invoke_2;
        v23[3] = &unk_2796F73C0;
        v23[4] = &v25;
        [v10 enumerateObjectsUsingBlock:v23];
      }

      v11 = MEMORY[0x277CCACA8];
      v9 = hearingLocString();
      if ([v26[5] isStream])
      {
        [v26[5] name];
      }

      else
      {
        hearingLocString();
      }
      v20 = ;
      v21 = [v11 stringWithFormat:v9, v20];
      goto LABEL_25;
    case 0xEuLL:
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__0;
      v29 = __Block_byref_object_dispose__0;
      v30 = [v4 rightSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        v7 = [v4 programs];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __32__HACCSlider_accessibilityLabel__block_invoke_3;
        v22[3] = &unk_2796F73C0;
        v22[4] = &v25;
        [v7 enumerateObjectsUsingBlock:v22];
      }

      v8 = MEMORY[0x277CCACA8];
      v9 = hearingLocString();
      if ([v26[5] isStream])
      {
        [v26[5] name];
      }

      else
      {
        hearingLocString();
      }
      v20 = ;
      v21 = [v8 stringWithFormat:v9, v20];
LABEL_25:
      v6 = v21;

      _Block_object_dispose(&v25, 8);
      break;
    case 0x19uLL:
      v14 = MEMORY[0x277CCACA8];
      v15 = hearingLocString();
      v16 = [MEMORY[0x277D12E18] sharedInstance];
      v17 = [v16 selectedComfortSound];
      v18 = [v17 localizedName];
      v6 = [v14 stringWithFormat:v15, v18];

      break;
    default:
      break;
  }

  return v6;
}

void __32__HACCSlider_accessibilityLabel__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __32__HACCSlider_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __32__HACCSlider_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)accessibilityValue
{
  v2 = [(HACCSlider *)self sliderView];
  v3 = [v2 valueLabel];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (void)accessibilityDecrement
{
  [(HUITitleDarkStepSliderView *)self->_sliderView accessibilityDecrement];

  [(HACCSlider *)self updateValueString];
}

- (void)accessibilityIncrement
{
  [(HUITitleDarkStepSliderView *)self->_sliderView accessibilityIncrement];

  [(HACCSlider *)self updateValueString];
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end