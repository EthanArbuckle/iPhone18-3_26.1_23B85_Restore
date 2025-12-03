@interface HACCSlider
- (BOOL)_isSubModule;
- (HACCContentModuleDelegate)delegate;
- (HACCSlider)initWithModule:(unint64_t)module andDelegate:(id)delegate;
- (id)_sliderConfig;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)contentValue;
- (unint64_t)numberOfSteps;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setNumberOfSteps:(unint64_t)steps;
- (void)setValue:(double)value andNotify:(BOOL)notify;
- (void)sliderDidChange:(id)change;
- (void)updateValue;
- (void)updateValueString;
@end

@implementation HACCSlider

- (HACCSlider)initWithModule:(unint64_t)module andDelegate:(id)delegate
{
  v42[4] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = HACCSlider;
  v7 = [(HACCSlider *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(HACCSlider *)v7 setModule:module];
    [(HACCSlider *)v8 setDelegate:delegateCopy];
    v9 = [HUITitleDarkStepSliderView alloc];
    [(HACCSlider *)v8 _sliderConfig];
    v10 = v40 = delegateCopy;
    v11 = [(HUITitleDarkStepSliderView *)v9 initWithConfig:v10];
    sliderView = v8->_sliderView;
    v8->_sliderView = v11;

    slider = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [slider setSupportsVibrancy:1];

    slider2 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [slider2 setDrawsEndTicks:0];

    slider3 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [slider3 setMinimumTrackTintColor:whiteColor];

    slider4 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [slider4 setTickColor:whiteColor2];

    [(HUITitleDarkStepSliderView *)v8->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    slider5 = [(HUITitleDarkStepSliderView *)v8->_sliderView slider];
    [slider5 addTarget:v8 action:sel_sliderDidChange_ forControlEvents:4096];

    [(HACCSlider *)v8 addSubview:v8->_sliderView];
    v35 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(HUITitleDarkStepSliderView *)v8->_sliderView leadingAnchor];
    leadingAnchor2 = [(HACCSlider *)v8 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v37;
    trailingAnchor = [(HUITitleDarkStepSliderView *)v8->_sliderView trailingAnchor];
    trailingAnchor2 = [(HACCSlider *)v8 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[1] = v21;
    topAnchor = [(HUITitleDarkStepSliderView *)v8->_sliderView topAnchor];
    topAnchor2 = [(HACCSlider *)v8 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[2] = v24;
    bottomAnchor = [(HUITitleDarkStepSliderView *)v8->_sliderView bottomAnchor];
    bottomAnchor2 = [(HACCSlider *)v8 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

    delegateCopy = v40;
    [(HACCSlider *)v8 updateValue];
  }

  return v8;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HACCSlider;
  [(HACCSlider *)&v14 layoutSubviews];
  controlCenterModuleBackgroundMaterial = [MEMORY[0x277CFC968] controlCenterModuleBackgroundMaterial];
  if (objc_opt_respondsToSelector())
  {
    v4 = [controlCenterModuleBackgroundMaterial visualStylingProviderForCategory:2];
    v5 = [v4 _visualStylingForStyle:1];
    if ([(HACCSlider *)self module]== 11 || [(HACCSlider *)self module]== 10)
    {
      slider = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      color = [v5 color];
      [slider setMinimumTrackTintColor:color];

      slider2 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      _minTrackView = [slider2 _minTrackView];
      [_minTrackView mt_replaceVisualStyling:v5];
    }

    slider3 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
    color2 = [v5 color];
    [slider3 setMaximumTrackTintColor:color2];

    slider4 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
    _maxTrackView = [slider4 _maxTrackView];
    [_maxTrackView mt_replaceVisualStyling:v5];
  }
}

- (BOOL)_isSubModule
{
  providesOwnSeparator = [(HACCSlider *)self providesOwnSeparator];
  if (providesOwnSeparator)
  {
    v4 = [(HACCSlider *)self module]- 1;
    delegate = [(HACCSlider *)self delegate];
    LOBYTE(v4) = [delegate shouldDisplayControlForModule:v4];

    LOBYTE(providesOwnSeparator) = v4;
  }

  return providesOwnSeparator;
}

- (id)_sliderConfig
{
  v3 = HUICCMenuTextLabel();
  v4 = HUICCMenuTextLabel();
  _isSubModule = [(HACCSlider *)self _isSubModule];
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
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
      v8 = [v7 imageWithTintColor:whiteColor renderingMode:1];

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
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v18 = [MEMORY[0x277D755B8] _systemImageNamed:@"circle.fill"];
      v13 = 1;
      v9 = [v18 imageWithTintColor:whiteColor2 renderingMode:1];

      v19 = [MEMORY[0x277D755B8] _systemImageNamed:@"sun.max"];
      v12 = [v19 imageWithTintColor:whiteColor2 renderingMode:1];

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
  [(HUISliderConfig *)v15 setIsSubmenuSlider:_isSubModule];
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

- (void)setNumberOfSteps:(unint64_t)steps
{
  slider = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
  [slider setSegmentCount:steps];

  sliderView = self->_sliderView;

  [(HUITitleDarkStepSliderView *)sliderView setNeedsLayout];
}

- (unint64_t)numberOfSteps
{
  slider = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
  segmentCount = [slider segmentCount];

  return segmentCount;
}

- (void)sliderDidChange:(id)change
{
  [change value];
  v5 = v4;

  [(HACCSlider *)self setValue:1 andNotify:v5];
}

- (void)setValue:(double)value andNotify:(BOOL)notify
{
  if (value < 0.0)
  {
    value = 0.0;
  }

  v5 = llround(fmin(value, 1.0) * 100.0) / 100.0;
  if (self->_value != v5)
  {
    notifyCopy = notify;
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
    if (notifyCopy)
    {
      delegate = [(HACCSlider *)self delegate];
      [delegate controlDidActivate:self];
    }
  }

  [(HACCSlider *)self updateValueString];
}

- (void)updateValueString
{
  module = [(HACCSlider *)self module];
  v4 = 0.0;
  if (module <= 0x1A)
  {
    if (((1 << module) & 0x60073FE) != 0)
    {
      value = self->_value;
LABEL_4:
      v4 = value;
      goto LABEL_5;
    }

    if (((1 << module) & 0xC00) != 0)
    {
      value = self->_value + -0.5 + self->_value + -0.5;
      goto LABEL_4;
    }
  }

LABEL_5:
  sliderView = [(HACCSlider *)self sliderView];
  valueLabel = [sliderView valueLabel];
  numberFormatter = self->_numberFormatter;
  *&v8 = v4;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v10 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v9];
  [valueLabel setText:v10];
}

- (void)updateValue
{
  v3 = objc_autoreleasePoolPush();
  delegate = [(HACCSlider *)self delegate];
  currentHearingDevice = [delegate currentHearingDevice];

  v6 = 0;
  v7 = 0.0;
  v8 = 0;
  switch([(HACCSlider *)self module])
  {
    case 1uLL:
      [currentHearingDevice leftMixedVolume];
      v7 = v9;
      leftMixedVolumeSteps = [currentHearingDevice leftMixedVolumeSteps];
      goto LABEL_26;
    case 2uLL:
      [currentHearingDevice rightMixedVolume];
      v7 = v31;
      leftMixedVolumeSteps = [currentHearingDevice rightMixedVolumeSteps];
LABEL_26:
      v8 = leftMixedVolumeSteps;
      goto LABEL_42;
    case 3uLL:
      [currentHearingDevice combinedVolumeForProperty:0x4000000000];
      v7 = v23;
      leftMixedVolumeSteps2 = [currentHearingDevice leftMixedVolumeSteps];
      rightMixedVolumeSteps = [currentHearingDevice rightMixedVolumeSteps];
      goto LABEL_17;
    case 4uLL:
      [currentHearingDevice leftMicrophoneVolume];
      v7 = v41;
      leftMicrophoneVolumeSteps = [currentHearingDevice leftMicrophoneVolumeSteps];
      goto LABEL_35;
    case 5uLL:
      [currentHearingDevice rightMicrophoneVolume];
      v7 = v43;
      leftMicrophoneVolumeSteps = [currentHearingDevice rightMicrophoneVolumeSteps];
LABEL_35:
      v8 = leftMicrophoneVolumeSteps;
      goto LABEL_42;
    case 6uLL:
      [currentHearingDevice combinedVolumeForProperty:64];
      v7 = v26;
      leftMixedVolumeSteps2 = [currentHearingDevice leftMicrophoneVolumeSteps];
      rightMixedVolumeSteps = [currentHearingDevice rightMicrophoneVolumeSteps];
LABEL_17:
      if (leftMixedVolumeSteps2 <= rightMixedVolumeSteps)
      {
        v27 = rightMixedVolumeSteps;
      }

      else
      {
        v27 = leftMixedVolumeSteps2;
      }

      v8 = v27;
      goto LABEL_42;
    case 7uLL:
      [currentHearingDevice leftSensitivity];
      v7 = v32;
      leftSensitivitySteps = [currentHearingDevice leftSensitivitySteps];
      goto LABEL_29;
    case 8uLL:
      [currentHearingDevice rightSensitivity];
      v7 = v34;
      leftSensitivitySteps = [currentHearingDevice rightSensitivitySteps];
LABEL_29:
      v8 = leftSensitivitySteps;
      goto LABEL_42;
    case 9uLL:
      [currentHearingDevice combinedVolumeForProperty:0x80000000];
      v7 = v46;
      leftSensitivitySteps2 = [currentHearingDevice leftSensitivitySteps];
      rightSensitivitySteps = [currentHearingDevice rightSensitivitySteps];
      if (leftSensitivitySteps2 <= rightSensitivitySteps)
      {
        v49 = rightSensitivitySteps;
      }

      else
      {
        v49 = leftSensitivitySteps2;
      }

      v8 = v49;
LABEL_42:
      v6 = hearingLocString();
      break;
    case 10uLL:
      v16 = currentHearingDevice;
      v17 = 0x2000000000;
      goto LABEL_37;
    case 11uLL:
      v16 = currentHearingDevice;
      v17 = 0x1000000000;
LABEL_37:
      [v16 combinedVolumeForProperty:v17];
      v7 = v44;
      slider = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [slider setRestrictsValuesToTicks:0];

      v6 = hearingLocString();
      v8 = 2;
      break;
    case 12uLL:
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__0;
      v65 = __Block_byref_object_dispose__0;
      leftSelectedStreamingProgram = [currentHearingDevice leftSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        leftPrograms = [currentHearingDevice leftPrograms];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __25__HACCSlider_updateValue__block_invoke;
        v60[3] = &unk_2796F73C0;
        v60[4] = &v61;
        [leftPrograms enumerateObjectsUsingBlock:v60];
      }

      [currentHearingDevice leftStreamVolume];
      v20 = v29;
      LODWORD(v8) = [currentHearingDevice leftStreamVolumeSteps];
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
      leftSelectedStreamingProgram = [currentHearingDevice rightSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        rightPrograms = [currentHearingDevice rightPrograms];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __25__HACCSlider_updateValue__block_invoke_2;
        v59[3] = &unk_2796F73C0;
        v59[4] = &v61;
        [rightPrograms enumerateObjectsUsingBlock:v59];
      }

      [currentHearingDevice rightStreamVolume];
      v20 = v19;
      LODWORD(v8) = [currentHearingDevice rightStreamVolumeSteps];
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
      leftSelectedStreamingProgram = [currentHearingDevice rightSelectedStreamingProgram];
      if (([v62[5] isStream] & 1) == 0)
      {
        programs = [currentHearingDevice programs];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __25__HACCSlider_updateValue__block_invoke_3;
        v58[3] = &unk_2796F73C0;
        v58[4] = &v61;
        [programs enumerateObjectsUsingBlock:v58];
      }

      [currentHearingDevice combinedVolumeForProperty:128];
      v13 = v12;
      leftStreamVolumeSteps = [currentHearingDevice leftStreamVolumeSteps];
      rightStreamVolumeSteps = [currentHearingDevice rightStreamVolumeSteps];
      if (leftStreamVolumeSteps <= rightStreamVolumeSteps)
      {
        LODWORD(v8) = rightStreamVolumeSteps;
      }

      else
      {
        LODWORD(v8) = leftStreamVolumeSteps;
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
      mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
      [mEMORY[0x277D12E18] relativeVolume];
      v7 = v36;

      slider2 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [slider2 setRestrictsValuesToTicks:0];

      goto LABEL_32;
    case 26uLL:
      mEMORY[0x277D12E18]2 = [MEMORY[0x277D12E18] sharedInstance];
      [mEMORY[0x277D12E18]2 mediaVolume];
      v7 = v39;

      slider3 = [(HUITitleDarkStepSliderView *)self->_sliderView slider];
      [slider3 setRestrictsValuesToTicks:0];

LABEL_32:
      v6 = hearingLocString();
      v8 = 0;
      break;
    default:
      break;
  }

  [(HACCSlider *)self updateValueString];
  sliderView = [(HACCSlider *)self sliderView];
  titleLabel = [sliderView titleLabel];
  [titleLabel setText:v6];

  sliderView2 = [(HACCSlider *)self sliderView];
  slider4 = [sliderView2 slider];
  *&v56 = v7;
  [slider4 setValue:v56];

  sliderView3 = [(HACCSlider *)self sliderView];
  [sliderView3 setIsSubmenu:{-[HACCSlider _isSubModule](self, "_isSubModule")}];

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
  delegate = [(HACCSlider *)self delegate];
  currentHearingDevice = [delegate currentHearingDevice];

  module = [(HACCSlider *)self module];
  v6 = 0;
  switch(module)
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
      leftSelectedStreamingProgram = [currentHearingDevice leftSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        leftPrograms = [currentHearingDevice leftPrograms];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __32__HACCSlider_accessibilityLabel__block_invoke;
        v24[3] = &unk_2796F73C0;
        v24[4] = &v25;
        [leftPrograms enumerateObjectsUsingBlock:v24];
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
      leftSelectedStreamingProgram = [currentHearingDevice rightSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        rightPrograms = [currentHearingDevice rightPrograms];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __32__HACCSlider_accessibilityLabel__block_invoke_2;
        v23[3] = &unk_2796F73C0;
        v23[4] = &v25;
        [rightPrograms enumerateObjectsUsingBlock:v23];
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
      leftSelectedStreamingProgram = [currentHearingDevice rightSelectedStreamingProgram];
      if (([v26[5] isStream] & 1) == 0)
      {
        programs = [currentHearingDevice programs];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __32__HACCSlider_accessibilityLabel__block_invoke_3;
        v22[3] = &unk_2796F73C0;
        v22[4] = &v25;
        [programs enumerateObjectsUsingBlock:v22];
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
      mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
      selectedComfortSound = [mEMORY[0x277D12E18] selectedComfortSound];
      localizedName = [selectedComfortSound localizedName];
      v6 = [v14 stringWithFormat:v15, localizedName];

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
  sliderView = [(HACCSlider *)self sliderView];
  valueLabel = [sliderView valueLabel];
  accessibilityLabel = [valueLabel accessibilityLabel];

  return accessibilityLabel;
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