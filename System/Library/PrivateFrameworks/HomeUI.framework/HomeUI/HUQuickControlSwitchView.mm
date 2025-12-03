@interface HUQuickControlSwitchView
- (BOOL)_createDecorationIconViewIfNecessary;
- (CGPoint)_knobCenterForMetrics:(id)metrics switchValue:(double)value;
- (CGRect)_knobFrameForMetrics:(id)metrics switchValue:(double)value;
- (CGSize)_knobSizeForMetrics:(id)metrics;
- (CGSize)intrinsicContentSize;
- (HUQuickControlSwitchView)initWithProfile:(id)profile;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)value;
- (void)_actuateTapticFeedback;
- (void)_createSupplementaryValueLabelIfNecessary;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated;
- (void)_updateKnobViewTintColorAnimated:(BOOL)animated;
- (void)_updateSupplementaryValueLabelAnimated:(BOOL)animated;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setProfile:(id)profile;
- (void)setReachabilityState:(unint64_t)state;
- (void)setSwitchValue:(double)value;
- (void)setValue:(id)value;
@end

@implementation HUQuickControlSwitchView

- (HUQuickControlSwitchView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v25.receiver = self;
  v25.super_class = HUQuickControlSwitchView;
  v6 = [(HUQuickControlSwitchView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUQuickControlSwitchView *)v7 setWellView:controlCenterTertiaryMaterial];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(HUQuickControlSwitchView *)v7 setWellView:v9];

      controlCenterTertiaryMaterial = [MEMORY[0x277D75348] quaternarySystemFillColor];
      wellView = [(HUQuickControlSwitchView *)v7 wellView];
      [wellView setBackgroundColor:controlCenterTertiaryMaterial];
    }

    wellView2 = [(HUQuickControlSwitchView *)v7 wellView];
    [wellView2 setAutoresizingMask:18];

    wellView3 = [(HUQuickControlSwitchView *)v7 wellView];
    [wellView3 setClipsToBounds:1];

    wellView4 = [(HUQuickControlSwitchView *)v7 wellView];
    [(HUQuickControlSwitchView *)v7 addSubview:wellView4];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlSwitchView *)v7 setKnobView:v14];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    knobView = [(HUQuickControlSwitchView *)v7 knobView];
    [knobView setBackgroundColor:systemWhiteColor];

    knobView2 = [(HUQuickControlSwitchView *)v7 knobView];
    [knobView2 setClipsToBounds:1];

    knobView3 = [(HUQuickControlSwitchView *)v7 knobView];
    layer = [knobView3 layer];
    [layer setMasksToBounds:0];

    knobView4 = [(HUQuickControlSwitchView *)v7 knobView];
    [(HUQuickControlSwitchView *)v7 addSubview:knobView4];

    layer2 = [(HUQuickControlSwitchView *)v7 layer];
    [layer2 setAllowsGroupOpacity:0];

    LODWORD(v22) = 1148846080;
    [(HUQuickControlSwitchView *)v7 setContentHuggingPriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(HUQuickControlSwitchView *)v7 setContentHuggingPriority:1 forAxis:v23];
    [(HUQuickControlSwitchView *)v7 _updateDecorationIconDescriptorAnimated:0];
    [(HUQuickControlSwitchView *)v7 _updateSupplementaryValueLabelAnimated:0];
    [(HUQuickControlSwitchView *)v7 _updateKnobViewTintColorAnimated:0];
    [(HUQuickControlSwitchView *)v7 _prepareForTapticFeedback];
  }

  return v7;
}

- (void)setSwitchValue:(double)value
{
  v4 = fmin(fmax(value, 0.0), 1.0);
  [(HUQuickControlSwitchView *)self clippedValue];
  v6 = v4 > 0.5 && v5 < 0.5;
  if (v6 || (([(HUQuickControlSwitchView *)self clippedValue], v4 < 0.5) ? (v8 = v7 <= 0.5) : (v8 = 1), !v8))
  {
    [(HUQuickControlSwitchView *)self _actuateTapticFeedback];
  }

  [(HUQuickControlSwitchView *)self setClippedValue:v4];
  switchValue = self->_switchValue;
  [(HUQuickControlSwitchView *)self clippedValue];
  if (switchValue != v10)
  {
    [(HUQuickControlSwitchView *)self clippedValue];
    self->_switchValue = v11;
    [(HUQuickControlSwitchView *)self setNeedsLayout];
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      [(HUQuickControlSwitchView *)self layoutIfNeeded];
    }

    [(HUQuickControlSwitchView *)self _updateKnobViewTintColorAnimated:1];
  }
}

- (CGSize)intrinsicContentSize
{
  profile = [(HUQuickControlSwitchView *)self profile];
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
  v41.receiver = self;
  v41.super_class = HUQuickControlSwitchView;
  [(HUQuickControlSwitchView *)&v41 layoutSubviews];
  profile = [(HUQuickControlSwitchView *)self profile];
  v4 = HUDefaultSwitchMetrics[[profile controlSize]];

  [(HUQuickControlSwitchView *)self switchValue];
  [(HUQuickControlSwitchView *)self _knobFrameForMetrics:v4 switchValue:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  knobView = [(HUQuickControlSwitchView *)self knobView];
  [knobView setFrame:{v7, v9, v11, v13}];

  knobView2 = [(HUQuickControlSwitchView *)self knobView];
  [knobView2 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  decorationIconView = [(HUQuickControlSwitchView *)self decorationIconView];
  [decorationIconView setFrame:{v17, v19, v21, v23}];

  profile2 = [(HUQuickControlSwitchView *)self profile];
  v26 = HUQuickControlSliderMetricsForControlSize([profile2 controlSize]);
  [v26 widthToCornerRadiusRatio];
  v28 = v27;
  [(HUQuickControlSwitchView *)self bounds];
  v30 = v28 * v29;

  wellView = [(HUQuickControlSwitchView *)self wellView];
  [wellView _setContinuousCornerRadius:v30];

  knobView3 = [(HUQuickControlSwitchView *)self knobView];
  [knobView3 _setContinuousCornerRadius:{fmax(v30 + -8.0, 0.0)}];

  [(HUQuickControlSwitchView *)self _knobFrameForMetrics:v4 switchValue:0.0];
  v43 = CGRectInset(v42, 4.0, 0.0);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  supplementaryValueLabel = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  [supplementaryValueLabel setFrame:{x, y, width, height}];

  supplementaryValueLabel2 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:supplementaryValueLabel2];

  knobView4 = [(HUQuickControlSwitchView *)self knobView];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:knobView4];

  decorationIconView2 = [(HUQuickControlSwitchView *)self decorationIconView];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:decorationIconView2];

  [(HUQuickControlSwitchView *)self _updateUIForReachabilityState:[(HUQuickControlSwitchView *)self reachabilityState]];
}

- (CGRect)_knobFrameForMetrics:(id)metrics switchValue:(double)value
{
  [(HUQuickControlSwitchView *)self _knobSizeForMetrics:?];
  [(HUQuickControlSwitchView *)self _knobCenterForMetrics:metrics.var0 switchValue:value];

  UIRectCenteredAboutPoint();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)_knobSizeForMetrics:(id)metrics
{
  [(HUQuickControlSwitchView *)self bounds];
  v6 = v5 + -16.0;
  [(HUQuickControlSwitchView *)self bounds];
  v8 = metrics.var0 * v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGPoint)_knobCenterForMetrics:(id)metrics switchValue:(double)value
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  [(HUQuickControlSwitchView *)self _knobSizeForMetrics:metrics.var0];
  v16.size.width = v8;
  v16.size.height = v9;
  v16.origin.x = v6;
  v16.origin.y = v7;
  v17 = CGRectInset(v16, -8.0, -8.0);
  height = v17.size.height;
  [(HUQuickControlSwitchView *)self bounds:v17.origin.x];
  v12 = height * 0.5 + (height * 0.5 + v11 - height - height * 0.5) * (1.0 - value);
  [(HUQuickControlSwitchView *)self bounds];
  MidX = CGRectGetMidX(v18);
  v14 = v12;
  result.y = v14;
  result.x = MidX;
  return result;
}

- (void)_updateKnobViewTintColorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HUQuickControlSwitchView__updateKnobViewTintColorAnimated___block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (animatedCopy)
  {
    v6 = [HUAnimationSettings settingsWithDuration:3 curve:0.15];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HUQuickControlSwitchView__updateKnobViewTintColorAnimated___block_invoke_2;
    v8[3] = &unk_277DC05C0;
    v9 = v5;
    v7 = [HUAnimationApplier applyAnimationSettings:v6 withStaticApplier:v8 completion:0];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __61__HUQuickControlSwitchView__updateKnobViewTintColorAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) switchValue];
  if (v2 > 0.5 && [*(a1 + 32) reachabilityState] == 2)
  {
    v5 = [*(a1 + 32) profile];
    v3 = [v5 tintColor];
    v4 = [*(a1 + 32) knobView];
    [v4 setBackgroundColor:v3];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemMidGrayColor];
    v3 = [*(a1 + 32) knobView];
    [v3 setBackgroundColor:v5];
  }
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D755F0]);
  [(HUQuickControlSwitchView *)self setFeedbackGenerator:v3];

  feedbackGenerator = [(HUQuickControlSwitchView *)self feedbackGenerator];
  [feedbackGenerator prepare];
}

- (void)_actuateTapticFeedback
{
  feedbackGenerator = [(HUQuickControlSwitchView *)self feedbackGenerator];
  [feedbackGenerator impactOccurred];

  feedbackGenerator2 = [(HUQuickControlSwitchView *)self feedbackGenerator];
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
  [(HUQuickControlSwitchView *)self switchValue];

  return [v2 numberWithDouble:?];
}

- (void)setValue:(id)value
{
  [value doubleValue];

  [(HUQuickControlSwitchView *)self setSwitchValue:?];
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  controlSize = [(HUQuickControlViewProfile *)self->_profile controlSize];
  controlSize2 = [(HUQuickControlViewProfile *)profileCopy controlSize];
  profile = self->_profile;
  self->_profile = profileCopy;

  if (controlSize != controlSize2)
  {
    [(HUQuickControlSwitchView *)self invalidateIntrinsicContentSize];
    [(HUQuickControlSwitchView *)self setNeedsLayout];
  }

  [(HUQuickControlSwitchView *)self _updateDecorationIconDescriptorAnimated:1];
  [(HUQuickControlSwitchView *)self _updateSupplementaryValueLabelAnimated:1];

  [(HUQuickControlSwitchView *)self _updateKnobViewTintColorAnimated:1];
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  profile = [(HUQuickControlSwitchView *)self profile];
  decorationIconDescriptor = [profile decorationIconDescriptor];

  if (decorationIconDescriptor)
  {
    _createDecorationIconViewIfNecessary = [(HUQuickControlSwitchView *)self _createDecorationIconViewIfNecessary];
    decorationIconView = [(HUQuickControlSwitchView *)self decorationIconView];
    profile2 = [(HUQuickControlSwitchView *)self profile];
    decorationIconDescriptor2 = [profile2 decorationIconDescriptor];
    [decorationIconView updateWithIconDescriptor:decorationIconDescriptor2 displayStyle:3 animated:animatedCopy & ~_createDecorationIconViewIfNecessary];
  }

  else
  {
    decorationIconView2 = [(HUQuickControlSwitchView *)self decorationIconView];
    [decorationIconView2 removeFromSuperview];

    [(HUQuickControlSwitchView *)self setDecorationIconView:0];
  }
}

- (void)_updateSupplementaryValueLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  supplementaryValueLabel = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  dynamicFormattingValue = [supplementaryValueLabel dynamicFormattingValue];
  profile = [(HUQuickControlSwitchView *)self profile];
  supplementaryFormattedValue = [profile supplementaryFormattedValue];
  v8 = dynamicFormattingValue;
  v9 = supplementaryFormattedValue;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (v8)
    {
      v11 = [v8 isEqual:v9];

      if (v11)
      {
        return;
      }
    }

    else
    {
    }

    [(HUQuickControlSwitchView *)self _createSupplementaryValueLabelIfNecessary];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__HUQuickControlSwitchView__updateSupplementaryValueLabelAnimated___block_invoke;
    aBlock[3] = &unk_277DB8488;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      v14 = MEMORY[0x277D75D18];
      supplementaryValueLabel2 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
      [v14 transitionWithView:supplementaryValueLabel2 duration:5242880 options:v13 animations:0 completion:0.15];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

void __67__HUQuickControlSwitchView__updateSupplementaryValueLabelAnimated___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) profile];
  v2 = [v4 supplementaryFormattedValue];
  v3 = [*(a1 + 32) supplementaryValueLabel];
  [v3 setDynamicFormattingValue:v2];
}

- (BOOL)_createDecorationIconViewIfNecessary
{
  decorationIconView = [(HUQuickControlSwitchView *)self decorationIconView];

  if (!decorationIconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlSwitchView *)self setDecorationIconView:v4];

    decorationIconView2 = [(HUQuickControlSwitchView *)self decorationIconView];
    [decorationIconView2 setDisplayContext:0];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    decorationIconView3 = [(HUQuickControlSwitchView *)self decorationIconView];
    [decorationIconView3 setTintColor:systemWhiteColor];

    decorationIconView4 = [(HUQuickControlSwitchView *)self decorationIconView];
    [(HUQuickControlSwitchView *)self addSubview:decorationIconView4];

    [(HUQuickControlSwitchView *)self setNeedsLayout];
  }

  return decorationIconView == 0;
}

- (void)_createSupplementaryValueLabelIfNecessary
{
  v23[1] = *MEMORY[0x277D85DE8];
  supplementaryValueLabel = [(HUQuickControlSwitchView *)self supplementaryValueLabel];

  if (!supplementaryValueLabel)
  {
    v4 = objc_alloc_init(HUDynamicFormattingLabel);
    [(HUQuickControlSwitchView *)self setSupplementaryValueLabel:v4];

    v22 = *MEMORY[0x277D740C0];
    profile = [(HUQuickControlSwitchView *)self profile];
    tintColor = [profile tintColor];
    v23[0] = tintColor;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    supplementaryValueLabel2 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel2 setDefaultAttributes:v7];

    v9 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76918]);
    v21[0] = v9;
    v10 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76968]);
    v21[1] = v10;
    v11 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76938]);
    v21[2] = v11;
    v12 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76940]);
    v21[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    supplementaryValueLabel3 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel3 setPreferredFonts:v13];

    supplementaryValueLabel4 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel4 setTextAlignment:1];

    supplementaryValueLabel5 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel5 setBaselineAdjustment:1];

    supplementaryValueLabel6 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel6 setAllowsDefaultTighteningForTruncation:1];

    supplementaryValueLabel7 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel7 setAdjustsFontSizeToFitWidth:1];

    supplementaryValueLabel8 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [supplementaryValueLabel8 setMinimumScaleFactor:0.75];

    supplementaryValueLabel9 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [(HUQuickControlSwitchView *)self insertSubview:supplementaryValueLabel9 atIndex:0];
  }
}

id __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D180C8];
  v2 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a1];
  v3 = [v1 fontDescriptorWithMonospacedDigitsForFontDescriptor:v2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)setReachabilityState:(unint64_t)state
{
  if (self->_reachabilityState != state)
  {
    self->_reachabilityState = state;
    [(HUQuickControlSwitchView *)self _updateUIForReachabilityState:?];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state <= 2)
  {
    [(HUQuickControlSwitchView *)self setAlpha:dbl_20D5CAEC8[state]];
  }

  [(HUQuickControlSwitchView *)self _updateKnobViewTintColorAnimated:1];
}

@end