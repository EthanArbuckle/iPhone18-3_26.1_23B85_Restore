@interface HUQuickControlSliderView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_permittedValueRange;
- (BOOL)_createDecorationIconViewIfNecessary;
- (CGSize)intrinsicContentSize;
- (HUQuickControlSliderView)initWithProfile:(id)profile;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)secondaryValue;
- (id)value;
- (void)_actuateTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated;
- (void)_updateOffState;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setProfile:(id)profile;
- (void)setRawSliderValue:(double)value;
- (void)setSecondarySliderValue:(double)value;
- (void)setSecondaryValue:(id)value;
- (void)setSliderValue:(double)value;
- (void)setValue:(id)value;
@end

@implementation HUQuickControlSliderView

- (HUQuickControlSliderView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v52.receiver = self;
  v52.super_class = HUQuickControlSliderView;
  v6 = [(HUQuickControlSliderView *)&v52 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    [(HUQuickControlSliderView *)v7 _permittedValueRange];
    v7->_sliderValue = v8;
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUQuickControlSliderView *)v7 setBackgroundView:controlCenterTertiaryMaterial];
    }

    else
    {
      v10 = [[HUQuickControlBackgroundEffectView alloc] initWithEffectType:0];
      [(HUQuickControlSliderView *)v7 setBackgroundView:v10];

      controlCenterTertiaryMaterial = [MEMORY[0x277D75348] quaternarySystemFillColor];
      backgroundView = [(HUQuickControlSliderView *)v7 backgroundView];
      [backgroundView setTintColor:controlCenterTertiaryMaterial];
    }

    backgroundView2 = [(HUQuickControlSliderView *)v7 backgroundView];
    [backgroundView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    backgroundView3 = [(HUQuickControlSliderView *)v7 backgroundView];
    [(HUQuickControlSliderView *)v7 addSubview:backgroundView3];

    layer = [(HUQuickControlSliderView *)v7 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(HUQuickControlSliderView *)v7 layer];
    [layer2 setAllowsGroupBlending:0];

    layer3 = [(HUQuickControlSliderView *)v7 layer];
    [layer3 setMasksToBounds:1];

    v17 = [HUQuickControlSliderValueOverlayView alloc];
    [(HUQuickControlSliderView *)v7 bounds];
    v18 = [(HUQuickControlSliderValueOverlayView *)v17 initWithFrame:?];
    [(HUQuickControlSliderView *)v7 setValueOverlayView:v18];

    profile = [(HUQuickControlSliderView *)v7 profile];
    showGrabbers = [profile showGrabbers];
    valueOverlayView = [(HUQuickControlSliderView *)v7 valueOverlayView];
    [valueOverlayView setShowGrabbers:showGrabbers];

    valueOverlayView2 = [(HUQuickControlSliderView *)v7 valueOverlayView];
    [(HUQuickControlSliderView *)v7 addSubview:valueOverlayView2];

    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlSliderView *)v7 setBorderView:v23];

    clearColor = [MEMORY[0x277D75348] clearColor];
    borderView = [(HUQuickControlSliderView *)v7 borderView];
    [borderView setBackgroundColor:clearColor];

    borderView2 = [(HUQuickControlSliderView *)v7 borderView];
    layer4 = [borderView2 layer];
    [layer4 setBorderWidth:1.0];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    v29 = [systemBlackColor colorWithAlphaComponent:0.0500000007];
    cGColor = [v29 CGColor];
    borderView3 = [(HUQuickControlSliderView *)v7 borderView];
    layer5 = [borderView3 layer];
    [layer5 setBorderColor:cGColor];

    borderView4 = [(HUQuickControlSliderView *)v7 borderView];
    [borderView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    borderView5 = [(HUQuickControlSliderView *)v7 borderView];
    layer6 = [borderView5 layer];
    [layer6 setMasksToBounds:1];

    borderView6 = [(HUQuickControlSliderView *)v7 borderView];
    [(HUQuickControlSliderView *)v7 addSubview:borderView6];

    array = [MEMORY[0x277CBEB18] array];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __44__HUQuickControlSliderView_initWithProfile___block_invoke;
    v49 = &unk_277DB9438;
    v50 = array;
    v38 = v7;
    v51 = v38;
    v39 = array;
    v40 = _Block_copy(&v46);
    v41 = [(HUQuickControlSliderView *)v38 backgroundView:v46];
    v40[2](v40, v41);

    borderView7 = [(HUQuickControlSliderView *)v38 borderView];
    v40[2](v40, borderView7);

    LODWORD(v43) = 1148846080;
    [(HUQuickControlSliderView *)v38 setContentHuggingPriority:0 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(HUQuickControlSliderView *)v38 setContentHuggingPriority:1 forAxis:v44];
    [MEMORY[0x277CCAAD0] activateConstraints:v39];
    [(HUQuickControlSliderView *)v38 _updateOffState];
    [(HUQuickControlSliderView *)v38 _updateDecorationIconDescriptorAnimated:0];
    [(HUQuickControlSliderView *)v38 _prepareForTapticFeedback];
  }

  return v7;
}

void __44__HUQuickControlSliderView_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 topAnchor];
  v6 = [*(a1 + 40) topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = *(a1 + 32);
  v9 = [v4 bottomAnchor];
  v10 = [*(a1 + 40) bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v8 addObject:v11];

  v12 = *(a1 + 32);
  v13 = [v4 leadingAnchor];
  v14 = [*(a1 + 40) leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v12 addObject:v15];

  v16 = *(a1 + 32);
  v19 = [v4 trailingAnchor];

  v17 = [*(a1 + 40) trailingAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
  [v16 addObject:v18];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_permittedValueRange
{
  v2 = 0.0;
  v3 = 1.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)setSliderValue:(double)value
{
  [(HUQuickControlSliderView *)self setRawSliderValue:?];
  [(HUQuickControlSliderView *)self _permittedValueRange];
  v7 = fmax(v6, fmin(value, v5));
  [(HUQuickControlSliderView *)self primaryNormalizedValue];
  v9 = v8 >= 1.0 || v7 < 1.0;
  if (!v9 || ([(HUQuickControlSliderView *)self primaryNormalizedValue], v10 > 0.0) && v7 <= 0.0)
  {
    [(HUQuickControlSliderView *)self _actuateTapticFeedback];
  }

  [(HUQuickControlSliderView *)self setPrimaryNormalizedValue:v7];
  sliderValue = self->_sliderValue;
  [(HUQuickControlSliderView *)self primaryNormalizedValue];
  if (sliderValue != v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__HUQuickControlSliderView_setSliderValue___block_invoke;
    v13[3] = &unk_277DB8488;
    v13[4] = self;
    [(HUQuickControlSliderView *)self naui_performAnimateableConstraintChanges:v13];
  }
}

uint64_t __43__HUQuickControlSliderView_setSliderValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) primaryNormalizedValue];
  *(*(a1 + 32) + 432) = v2;
  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

- (void)setSecondarySliderValue:(double)value
{
  [(HUQuickControlSliderView *)self _permittedValueRange];
  v7 = fmax(v6, fmin(value, v5));
  [(HUQuickControlSliderView *)self secondaryNormalizedValue];
  v9 = v8 >= 1.0 || v7 < 1.0;
  if (!v9 || ([(HUQuickControlSliderView *)self secondaryNormalizedValue], v10 > 0.0) && v7 <= 0.0)
  {
    [(HUQuickControlSliderView *)self _actuateTapticFeedback];
  }

  [(HUQuickControlSliderView *)self setSecondaryNormalizedValue:v7];
  secondarySliderValue = self->_secondarySliderValue;
  [(HUQuickControlSliderView *)self secondaryNormalizedValue];
  if (secondarySliderValue != v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HUQuickControlSliderView_setSecondarySliderValue___block_invoke;
    v13[3] = &unk_277DB8488;
    v13[4] = self;
    [(HUQuickControlSliderView *)self naui_performAnimateableConstraintChanges:v13];
  }
}

uint64_t __52__HUQuickControlSliderView_setSecondarySliderValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) secondaryNormalizedValue];
  *(*(a1 + 32) + 440) = v2;
  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

- (void)setRawSliderValue:(double)value
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_rawSliderValue = value;

    [(HUQuickControlSliderView *)self _updateOffState];
  }
}

- (CGSize)intrinsicContentSize
{
  profile = [(HUQuickControlSliderView *)self profile];
  v3 = HUQuickControlSliderMetricsForControlSize([profile controlSize]);
  sizeDescriptor = [v3 sizeDescriptor];
  [sizeDescriptor intrinsicSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v65.receiver = self;
  v65.super_class = HUQuickControlSliderView;
  [(HUQuickControlSliderView *)&v65 layoutSubviews];
  [(HUQuickControlSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  profile = [(HUQuickControlSliderView *)self profile];
  v12 = HUQuickControlSliderMetricsForControlSize([profile controlSize]);
  [v12 widthToCornerRadiusRatio];
  v14 = v13;
  [(HUQuickControlSliderView *)self bounds];
  [(HUQuickControlSliderView *)self _setContinuousCornerRadius:v14 * v15];

  [(HUQuickControlSliderView *)self _continuousCornerRadius];
  v17 = v16;
  borderView = [(HUQuickControlSliderView *)self borderView];
  [borderView _setContinuousCornerRadius:v17];

  profile2 = [(HUQuickControlSliderView *)self profile];
  controlSize = [profile2 controlSize];
  valueOverlayView = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView setControlSize:controlSize];

  profile3 = [(HUQuickControlSliderView *)self profile];
  LODWORD(controlSize) = [profile3 hasSecondaryValue];

  if (!controlSize)
  {
    profile4 = [(HUQuickControlSliderView *)self profile];
    preferredFillSection = [profile4 preferredFillSection];

    [(HUQuickControlSliderView *)self sliderValue];
    v26 = v25;
    if (preferredFillSection)
    {
      [(HUQuickControlSliderView *)self bounds];
      v10 = (1.0 - v26) * v27;
      goto LABEL_6;
    }

    [(HUQuickControlSliderView *)self bounds];
    v10 = v26 * v28;
  }

  [(HUQuickControlSliderView *)self sliderValue];
  v30 = 1.0 - v29;
  [(HUQuickControlSliderView *)self bounds];
  v6 = v30 * v31;
LABEL_6:
  profile5 = [(HUQuickControlSliderView *)self profile];
  hasSecondaryValue = [profile5 hasSecondaryValue];

  if (hasSecondaryValue)
  {
    [(HUQuickControlSliderView *)self bounds];
    v35 = v34 - v6;
    [(HUQuickControlSliderView *)self secondarySliderValue];
    v37 = v36;
    [(HUQuickControlSliderView *)self bounds];
    v10 = v35 - v37 * v38;
  }

  valueOverlayView2 = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView2 setHasSecondGrabber:hasSecondaryValue];

  valueOverlayView3 = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView3 setFrame:{v4, v6, v8, v10}];

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __42__HUQuickControlSliderView_layoutSubviews__block_invoke;
  v64[3] = &unk_277DBE5A8;
  v64[4] = self;
  v41 = __42__HUQuickControlSliderView_layoutSubviews__block_invoke(v64);
  valueOverlayView4 = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView4 setPrimaryGrabberLocation:v41];

  profile6 = [(HUQuickControlSliderView *)self profile];
  tintColor = [profile6 tintColor];
  valueOverlayView5 = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView5 setLayerColor:tintColor];

  profile7 = [(HUQuickControlSliderView *)self profile];
  tintColor2 = [profile7 tintColor];
  traitCollection = [(HUQuickControlSliderView *)self traitCollection];
  [traitCollection userInterfaceStyle];
  showOffState = [(HUQuickControlSliderView *)self showOffState];
  v51 = borderColorSurroundingColor(tintColor2, v50, showOffState);

  cGColor = [v51 CGColor];
  borderView2 = [(HUQuickControlSliderView *)self borderView];
  layer = [borderView2 layer];
  [layer setBorderColor:cGColor];

  HUDefaultSizeForIconSize();
  v56 = v55;
  v58 = v57;
  [(HUQuickControlSliderView *)self bounds];
  v60 = v59 * 0.5 - v56 * 0.5;
  [(HUQuickControlSliderView *)self bounds];
  v62 = v61 - v58 - v60 + 4.0;
  decorationIconView = [(HUQuickControlSliderView *)self decorationIconView];
  [decorationIconView setFrame:{v60, v62, v56, v58}];

  [(HUQuickControlSliderView *)self _updateUIForReachabilityState:[(HUQuickControlSliderView *)self reachabilityState]];
}

BOOL __42__HUQuickControlSliderView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 hasSecondaryValue];

  if (v3)
  {
    return 0;
  }

  v5 = [*(a1 + 32) profile];
  v6 = [v5 preferredFillSection];

  return v6 != 0;
}

- (void)_updateOffState
{
  profile = [(HUQuickControlSliderView *)self profile];
  hasOffState = [profile hasOffState];

  selfCopy2 = self;
  if (hasOffState)
  {
    [(HUQuickControlSliderView *)self rawSliderValue];
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x277D85DD0];
    v11[2] = __43__HUQuickControlSliderView__updateOffState__block_invoke;
    v11[3] = &unk_277DC25B0;
    v11[4] = self;
    *&v11[5] = round(v6 * 100.0) / 100.0;
    __43__HUQuickControlSliderView__updateOffState__block_invoke(v11);
    v8 = v7 != 0;
    selfCopy2 = self;
  }

  else
  {
    v8 = 0;
  }

  [(HUQuickControlSliderView *)selfCopy2 setShowOffState:v8];
  showOffState = [(HUQuickControlSliderView *)self showOffState];
  valueOverlayView = [(HUQuickControlSliderView *)self valueOverlayView];
  [valueOverlayView setOff:showOffState];

  [(HUQuickControlSliderView *)self _updateDecorationIconDescriptorAnimated:0];
}

void __43__HUQuickControlSliderView__updateOffState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) profile];
  [v1 preferredFillSection];
}

- (void)_prepareForTapticFeedback
{
  v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:3];
  [(HUQuickControlSliderView *)self setFeedbackGenerator:v3];

  feedbackGenerator = [(HUQuickControlSliderView *)self feedbackGenerator];
  [feedbackGenerator prepare];
}

- (void)_actuateTapticFeedback
{
  feedbackGenerator = [(HUQuickControlSliderView *)self feedbackGenerator];
  [feedbackGenerator impactOccurred];

  feedbackGenerator2 = [(HUQuickControlSliderView *)self feedbackGenerator];
  [feedbackGenerator2 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  v3 = HUQuickControlSliderMetricsForControlSize(size);
  sizeDescriptor = [v3 sizeDescriptor];

  return sizeDescriptor;
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  [(HUQuickControlSliderView *)self sliderValue];

  return [v2 numberWithDouble:?];
}

- (void)setValue:(id)value
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &unk_282492000;
  }

  [valueCopy doubleValue];

  [(HUQuickControlSliderView *)self setSliderValue:?];
}

- (id)secondaryValue
{
  v2 = MEMORY[0x277CCABB0];
  [(HUQuickControlSliderView *)self secondarySliderValue];

  return [v2 numberWithDouble:?];
}

- (void)setSecondaryValue:(id)value
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &unk_282492000;
  }

  [valueCopy doubleValue];

  [(HUQuickControlSliderView *)self setSecondarySliderValue:?];
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  controlSize = [(HUQuickControlViewProfile *)self->_profile controlSize];
  controlSize2 = [(HUQuickControlViewProfile *)profileCopy controlSize];
  profile = self->_profile;
  self->_profile = profileCopy;

  [(HUQuickControlSliderView *)self _updateOffState];
  [(HUQuickControlSliderView *)self setNeedsLayout];
  if (controlSize != controlSize2)
  {

    [(HUQuickControlSliderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state <= 2)
  {
    [(HUQuickControlSliderView *)self setAlpha:dbl_20D5CB090[state]];
  }
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  profile = [(HUQuickControlSliderView *)self profile];
  decorationIconDescriptor = [profile decorationIconDescriptor];

  if (decorationIconDescriptor)
  {
    _createDecorationIconViewIfNecessary = [(HUQuickControlSliderView *)self _createDecorationIconViewIfNecessary];
    decorationIconView = [(HUQuickControlSliderView *)self decorationIconView];
    profile2 = [(HUQuickControlSliderView *)self profile];
    decorationIconDescriptor2 = [profile2 decorationIconDescriptor];
    [decorationIconView updateWithIconDescriptor:decorationIconDescriptor2 displayStyle:3 animated:animatedCopy & ~_createDecorationIconViewIfNecessary];

    profile3 = [(HUQuickControlSliderView *)self profile];
    tintColor = [profile3 tintColor];
    LODWORD(decorationIconView) = HUIsLightColor(tintColor);

    if (decorationIconView)
    {
      [MEMORY[0x277D75348] systemGrayTintColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v15 = ;
    decorationIconView2 = [(HUQuickControlSliderView *)self decorationIconView];
    [decorationIconView2 setTintColor:v15];
  }

  else
  {
    decorationIconView3 = [(HUQuickControlSliderView *)self decorationIconView];
    [decorationIconView3 removeFromSuperview];

    [(HUQuickControlSliderView *)self setDecorationIconView:0];
  }
}

- (BOOL)_createDecorationIconViewIfNecessary
{
  decorationIconView = [(HUQuickControlSliderView *)self decorationIconView];

  if (!decorationIconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlSliderView *)self setDecorationIconView:v4];

    decorationIconView2 = [(HUQuickControlSliderView *)self decorationIconView];
    [decorationIconView2 setDisplayContext:0];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    decorationIconView3 = [(HUQuickControlSliderView *)self decorationIconView];
    [decorationIconView3 setTintColor:systemWhiteColor];

    decorationIconView4 = [(HUQuickControlSliderView *)self decorationIconView];
    [(HUQuickControlSliderView *)self addSubview:decorationIconView4];

    [(HUQuickControlSliderView *)self setNeedsLayout];
  }

  return decorationIconView == 0;
}

@end