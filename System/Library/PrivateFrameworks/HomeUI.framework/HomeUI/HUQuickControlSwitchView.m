@interface HUQuickControlSwitchView
- (BOOL)_createDecorationIconViewIfNecessary;
- (CGPoint)_knobCenterForMetrics:(id)a3 switchValue:(double)a4;
- (CGRect)_knobFrameForMetrics:(id)a3 switchValue:(double)a4;
- (CGSize)_knobSizeForMetrics:(id)a3;
- (CGSize)intrinsicContentSize;
- (HUQuickControlSwitchView)initWithProfile:(id)a3;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)value;
- (void)_actuateTapticFeedback;
- (void)_createSupplementaryValueLabelIfNecessary;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3;
- (void)_updateKnobViewTintColorAnimated:(BOOL)a3;
- (void)_updateSupplementaryValueLabelAnimated:(BOOL)a3;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setReachabilityState:(unint64_t)a3;
- (void)setSwitchValue:(double)a3;
- (void)setValue:(id)a3;
@end

@implementation HUQuickControlSwitchView

- (HUQuickControlSwitchView)initWithProfile:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = HUQuickControlSwitchView;
  v6 = [(HUQuickControlSwitchView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v8 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUQuickControlSwitchView *)v7 setWellView:v8];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(HUQuickControlSwitchView *)v7 setWellView:v9];

      v8 = [MEMORY[0x277D75348] quaternarySystemFillColor];
      v10 = [(HUQuickControlSwitchView *)v7 wellView];
      [v10 setBackgroundColor:v8];
    }

    v11 = [(HUQuickControlSwitchView *)v7 wellView];
    [v11 setAutoresizingMask:18];

    v12 = [(HUQuickControlSwitchView *)v7 wellView];
    [v12 setClipsToBounds:1];

    v13 = [(HUQuickControlSwitchView *)v7 wellView];
    [(HUQuickControlSwitchView *)v7 addSubview:v13];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlSwitchView *)v7 setKnobView:v14];

    v15 = [MEMORY[0x277D75348] systemWhiteColor];
    v16 = [(HUQuickControlSwitchView *)v7 knobView];
    [v16 setBackgroundColor:v15];

    v17 = [(HUQuickControlSwitchView *)v7 knobView];
    [v17 setClipsToBounds:1];

    v18 = [(HUQuickControlSwitchView *)v7 knobView];
    v19 = [v18 layer];
    [v19 setMasksToBounds:0];

    v20 = [(HUQuickControlSwitchView *)v7 knobView];
    [(HUQuickControlSwitchView *)v7 addSubview:v20];

    v21 = [(HUQuickControlSwitchView *)v7 layer];
    [v21 setAllowsGroupOpacity:0];

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

- (void)setSwitchValue:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
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
  v2 = [(HUQuickControlSwitchView *)self profile];
  v3 = HUQuickControlSliderMetricsForControlSize([v2 controlSize]);
  v4 = [v3 sizeDescriptor];
  [v4 intrinsicSize];
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
  v3 = [(HUQuickControlSwitchView *)self profile];
  v4 = HUDefaultSwitchMetrics[[v3 controlSize]];

  [(HUQuickControlSwitchView *)self switchValue];
  [(HUQuickControlSwitchView *)self _knobFrameForMetrics:v4 switchValue:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(HUQuickControlSwitchView *)self knobView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(HUQuickControlSwitchView *)self knobView];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(HUQuickControlSwitchView *)self decorationIconView];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [(HUQuickControlSwitchView *)self profile];
  v26 = HUQuickControlSliderMetricsForControlSize([v25 controlSize]);
  [v26 widthToCornerRadiusRatio];
  v28 = v27;
  [(HUQuickControlSwitchView *)self bounds];
  v30 = v28 * v29;

  v31 = [(HUQuickControlSwitchView *)self wellView];
  [v31 _setContinuousCornerRadius:v30];

  v32 = [(HUQuickControlSwitchView *)self knobView];
  [v32 _setContinuousCornerRadius:{fmax(v30 + -8.0, 0.0)}];

  [(HUQuickControlSwitchView *)self _knobFrameForMetrics:v4 switchValue:0.0];
  v43 = CGRectInset(v42, 4.0, 0.0);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v37 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  [v37 setFrame:{x, y, width, height}];

  v38 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:v38];

  v39 = [(HUQuickControlSwitchView *)self knobView];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:v39];

  v40 = [(HUQuickControlSwitchView *)self decorationIconView];
  [(HUQuickControlSwitchView *)self bringSubviewToFront:v40];

  [(HUQuickControlSwitchView *)self _updateUIForReachabilityState:[(HUQuickControlSwitchView *)self reachabilityState]];
}

- (CGRect)_knobFrameForMetrics:(id)a3 switchValue:(double)a4
{
  [(HUQuickControlSwitchView *)self _knobSizeForMetrics:?];
  [(HUQuickControlSwitchView *)self _knobCenterForMetrics:a3.var0 switchValue:a4];

  UIRectCenteredAboutPoint();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)_knobSizeForMetrics:(id)a3
{
  [(HUQuickControlSwitchView *)self bounds];
  v6 = v5 + -16.0;
  [(HUQuickControlSwitchView *)self bounds];
  v8 = a3.var0 * v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGPoint)_knobCenterForMetrics:(id)a3 switchValue:(double)a4
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  [(HUQuickControlSwitchView *)self _knobSizeForMetrics:a3.var0];
  v16.size.width = v8;
  v16.size.height = v9;
  v16.origin.x = v6;
  v16.origin.y = v7;
  v17 = CGRectInset(v16, -8.0, -8.0);
  height = v17.size.height;
  [(HUQuickControlSwitchView *)self bounds:v17.origin.x];
  v12 = height * 0.5 + (height * 0.5 + v11 - height - height * 0.5) * (1.0 - a4);
  [(HUQuickControlSwitchView *)self bounds];
  MidX = CGRectGetMidX(v18);
  v14 = v12;
  result.y = v14;
  result.x = MidX;
  return result;
}

- (void)_updateKnobViewTintColorAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HUQuickControlSwitchView__updateKnobViewTintColorAnimated___block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
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

  v4 = [(HUQuickControlSwitchView *)self feedbackGenerator];
  [v4 prepare];
}

- (void)_actuateTapticFeedback
{
  v3 = [(HUQuickControlSwitchView *)self feedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUQuickControlSwitchView *)self feedbackGenerator];
  [v4 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v3 = HUQuickControlSliderMetricsForControlSize(a3);
  v4 = [v3 sizeDescriptor];

  return v4;
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  [(HUQuickControlSwitchView *)self switchValue];

  return [v2 numberWithDouble:?];
}

- (void)setValue:(id)a3
{
  [a3 doubleValue];

  [(HUQuickControlSwitchView *)self setSwitchValue:?];
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  if (v5 != v6)
  {
    [(HUQuickControlSwitchView *)self invalidateIntrinsicContentSize];
    [(HUQuickControlSwitchView *)self setNeedsLayout];
  }

  [(HUQuickControlSwitchView *)self _updateDecorationIconDescriptorAnimated:1];
  [(HUQuickControlSwitchView *)self _updateSupplementaryValueLabelAnimated:1];

  [(HUQuickControlSwitchView *)self _updateKnobViewTintColorAnimated:1];
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlSwitchView *)self profile];
  v6 = [v5 decorationIconDescriptor];

  if (v6)
  {
    v7 = [(HUQuickControlSwitchView *)self _createDecorationIconViewIfNecessary];
    v11 = [(HUQuickControlSwitchView *)self decorationIconView];
    v8 = [(HUQuickControlSwitchView *)self profile];
    v9 = [v8 decorationIconDescriptor];
    [v11 updateWithIconDescriptor:v9 displayStyle:3 animated:v3 & ~v7];
  }

  else
  {
    v10 = [(HUQuickControlSwitchView *)self decorationIconView];
    [v10 removeFromSuperview];

    [(HUQuickControlSwitchView *)self setDecorationIconView:0];
  }
}

- (void)_updateSupplementaryValueLabelAnimated:(BOOL)a3
{
  v3 = a3;
  v16 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
  v5 = [v16 dynamicFormattingValue];
  v6 = [(HUQuickControlSwitchView *)self profile];
  v7 = [v6 supplementaryFormattedValue];
  v8 = v5;
  v9 = v7;
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
    if (v3)
    {
      v14 = MEMORY[0x277D75D18];
      v15 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
      [v14 transitionWithView:v15 duration:5242880 options:v13 animations:0 completion:0.15];
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
  v3 = [(HUQuickControlSwitchView *)self decorationIconView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlSwitchView *)self setDecorationIconView:v4];

    v5 = [(HUQuickControlSwitchView *)self decorationIconView];
    [v5 setDisplayContext:0];

    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [(HUQuickControlSwitchView *)self decorationIconView];
    [v7 setTintColor:v6];

    v8 = [(HUQuickControlSwitchView *)self decorationIconView];
    [(HUQuickControlSwitchView *)self addSubview:v8];

    [(HUQuickControlSwitchView *)self setNeedsLayout];
  }

  return v3 == 0;
}

- (void)_createSupplementaryValueLabelIfNecessary
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(HUDynamicFormattingLabel);
    [(HUQuickControlSwitchView *)self setSupplementaryValueLabel:v4];

    v22 = *MEMORY[0x277D740C0];
    v5 = [(HUQuickControlSwitchView *)self profile];
    v6 = [v5 tintColor];
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v8 setDefaultAttributes:v7];

    v9 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76918]);
    v21[0] = v9;
    v10 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76968]);
    v21[1] = v10;
    v11 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76938]);
    v21[2] = v11;
    v12 = __69__HUQuickControlSwitchView__createSupplementaryValueLabelIfNecessary__block_invoke(*MEMORY[0x277D76940]);
    v21[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    v14 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v14 setPreferredFonts:v13];

    v15 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v15 setTextAlignment:1];

    v16 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v16 setBaselineAdjustment:1];

    v17 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v17 setAllowsDefaultTighteningForTruncation:1];

    v18 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v18 setAdjustsFontSizeToFitWidth:1];

    v19 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [v19 setMinimumScaleFactor:0.75];

    v20 = [(HUQuickControlSwitchView *)self supplementaryValueLabel];
    [(HUQuickControlSwitchView *)self insertSubview:v20 atIndex:0];
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

- (void)setReachabilityState:(unint64_t)a3
{
  if (self->_reachabilityState != a3)
  {
    self->_reachabilityState = a3;
    [(HUQuickControlSwitchView *)self _updateUIForReachabilityState:?];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [(HUQuickControlSwitchView *)self setAlpha:dbl_20D5CAEC8[a3]];
  }

  [(HUQuickControlSwitchView *)self _updateKnobViewTintColorAnimated:1];
}

@end