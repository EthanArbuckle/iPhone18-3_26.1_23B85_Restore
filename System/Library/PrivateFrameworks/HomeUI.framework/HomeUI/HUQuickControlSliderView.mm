@interface HUQuickControlSliderView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_permittedValueRange;
- (BOOL)_createDecorationIconViewIfNecessary;
- (CGSize)intrinsicContentSize;
- (HUQuickControlSliderView)initWithProfile:(id)a3;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)secondaryValue;
- (id)value;
- (void)_actuateTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3;
- (void)_updateOffState;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setRawSliderValue:(double)a3;
- (void)setSecondarySliderValue:(double)a3;
- (void)setSecondaryValue:(id)a3;
- (void)setSliderValue:(double)a3;
- (void)setValue:(id)a3;
@end

@implementation HUQuickControlSliderView

- (HUQuickControlSliderView)initWithProfile:(id)a3
{
  v5 = a3;
  v52.receiver = self;
  v52.super_class = HUQuickControlSliderView;
  v6 = [(HUQuickControlSliderView *)&v52 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    [(HUQuickControlSliderView *)v7 _permittedValueRange];
    v7->_sliderValue = v8;
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v9 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUQuickControlSliderView *)v7 setBackgroundView:v9];
    }

    else
    {
      v10 = [[HUQuickControlBackgroundEffectView alloc] initWithEffectType:0];
      [(HUQuickControlSliderView *)v7 setBackgroundView:v10];

      v9 = [MEMORY[0x277D75348] quaternarySystemFillColor];
      v11 = [(HUQuickControlSliderView *)v7 backgroundView];
      [v11 setTintColor:v9];
    }

    v12 = [(HUQuickControlSliderView *)v7 backgroundView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(HUQuickControlSliderView *)v7 backgroundView];
    [(HUQuickControlSliderView *)v7 addSubview:v13];

    v14 = [(HUQuickControlSliderView *)v7 layer];
    [v14 setAllowsGroupOpacity:0];

    v15 = [(HUQuickControlSliderView *)v7 layer];
    [v15 setAllowsGroupBlending:0];

    v16 = [(HUQuickControlSliderView *)v7 layer];
    [v16 setMasksToBounds:1];

    v17 = [HUQuickControlSliderValueOverlayView alloc];
    [(HUQuickControlSliderView *)v7 bounds];
    v18 = [(HUQuickControlSliderValueOverlayView *)v17 initWithFrame:?];
    [(HUQuickControlSliderView *)v7 setValueOverlayView:v18];

    v19 = [(HUQuickControlSliderView *)v7 profile];
    v20 = [v19 showGrabbers];
    v21 = [(HUQuickControlSliderView *)v7 valueOverlayView];
    [v21 setShowGrabbers:v20];

    v22 = [(HUQuickControlSliderView *)v7 valueOverlayView];
    [(HUQuickControlSliderView *)v7 addSubview:v22];

    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlSliderView *)v7 setBorderView:v23];

    v24 = [MEMORY[0x277D75348] clearColor];
    v25 = [(HUQuickControlSliderView *)v7 borderView];
    [v25 setBackgroundColor:v24];

    v26 = [(HUQuickControlSliderView *)v7 borderView];
    v27 = [v26 layer];
    [v27 setBorderWidth:1.0];

    v28 = [MEMORY[0x277D75348] systemBlackColor];
    v29 = [v28 colorWithAlphaComponent:0.0500000007];
    v30 = [v29 CGColor];
    v31 = [(HUQuickControlSliderView *)v7 borderView];
    v32 = [v31 layer];
    [v32 setBorderColor:v30];

    v33 = [(HUQuickControlSliderView *)v7 borderView];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

    v34 = [(HUQuickControlSliderView *)v7 borderView];
    v35 = [v34 layer];
    [v35 setMasksToBounds:1];

    v36 = [(HUQuickControlSliderView *)v7 borderView];
    [(HUQuickControlSliderView *)v7 addSubview:v36];

    v37 = [MEMORY[0x277CBEB18] array];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __44__HUQuickControlSliderView_initWithProfile___block_invoke;
    v49 = &unk_277DB9438;
    v50 = v37;
    v38 = v7;
    v51 = v38;
    v39 = v37;
    v40 = _Block_copy(&v46);
    v41 = [(HUQuickControlSliderView *)v38 backgroundView:v46];
    v40[2](v40, v41);

    v42 = [(HUQuickControlSliderView *)v38 borderView];
    v40[2](v40, v42);

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

- (void)setSliderValue:(double)a3
{
  [(HUQuickControlSliderView *)self setRawSliderValue:?];
  [(HUQuickControlSliderView *)self _permittedValueRange];
  v7 = fmax(v6, fmin(a3, v5));
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

- (void)setSecondarySliderValue:(double)a3
{
  [(HUQuickControlSliderView *)self _permittedValueRange];
  v7 = fmax(v6, fmin(a3, v5));
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

- (void)setRawSliderValue:(double)a3
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_rawSliderValue = a3;

    [(HUQuickControlSliderView *)self _updateOffState];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUQuickControlSliderView *)self profile];
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
  v65.receiver = self;
  v65.super_class = HUQuickControlSliderView;
  [(HUQuickControlSliderView *)&v65 layoutSubviews];
  [(HUQuickControlSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUQuickControlSliderView *)self profile];
  v12 = HUQuickControlSliderMetricsForControlSize([v11 controlSize]);
  [v12 widthToCornerRadiusRatio];
  v14 = v13;
  [(HUQuickControlSliderView *)self bounds];
  [(HUQuickControlSliderView *)self _setContinuousCornerRadius:v14 * v15];

  [(HUQuickControlSliderView *)self _continuousCornerRadius];
  v17 = v16;
  v18 = [(HUQuickControlSliderView *)self borderView];
  [v18 _setContinuousCornerRadius:v17];

  v19 = [(HUQuickControlSliderView *)self profile];
  v20 = [v19 controlSize];
  v21 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v21 setControlSize:v20];

  v22 = [(HUQuickControlSliderView *)self profile];
  LODWORD(v20) = [v22 hasSecondaryValue];

  if (!v20)
  {
    v23 = [(HUQuickControlSliderView *)self profile];
    v24 = [v23 preferredFillSection];

    [(HUQuickControlSliderView *)self sliderValue];
    v26 = v25;
    if (v24)
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
  v32 = [(HUQuickControlSliderView *)self profile];
  v33 = [v32 hasSecondaryValue];

  if (v33)
  {
    [(HUQuickControlSliderView *)self bounds];
    v35 = v34 - v6;
    [(HUQuickControlSliderView *)self secondarySliderValue];
    v37 = v36;
    [(HUQuickControlSliderView *)self bounds];
    v10 = v35 - v37 * v38;
  }

  v39 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v39 setHasSecondGrabber:v33];

  v40 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v40 setFrame:{v4, v6, v8, v10}];

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __42__HUQuickControlSliderView_layoutSubviews__block_invoke;
  v64[3] = &unk_277DBE5A8;
  v64[4] = self;
  v41 = __42__HUQuickControlSliderView_layoutSubviews__block_invoke(v64);
  v42 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v42 setPrimaryGrabberLocation:v41];

  v43 = [(HUQuickControlSliderView *)self profile];
  v44 = [v43 tintColor];
  v45 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v45 setLayerColor:v44];

  v46 = [(HUQuickControlSliderView *)self profile];
  v47 = [v46 tintColor];
  v48 = [(HUQuickControlSliderView *)self traitCollection];
  [v48 userInterfaceStyle];
  v49 = [(HUQuickControlSliderView *)self showOffState];
  v51 = borderColorSurroundingColor(v47, v50, v49);

  v52 = [v51 CGColor];
  v53 = [(HUQuickControlSliderView *)self borderView];
  v54 = [v53 layer];
  [v54 setBorderColor:v52];

  HUDefaultSizeForIconSize();
  v56 = v55;
  v58 = v57;
  [(HUQuickControlSliderView *)self bounds];
  v60 = v59 * 0.5 - v56 * 0.5;
  [(HUQuickControlSliderView *)self bounds];
  v62 = v61 - v58 - v60 + 4.0;
  v63 = [(HUQuickControlSliderView *)self decorationIconView];
  [v63 setFrame:{v60, v62, v56, v58}];

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
  v3 = [(HUQuickControlSliderView *)self profile];
  v4 = [v3 hasOffState];

  v5 = self;
  if (v4)
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
    v5 = self;
  }

  else
  {
    v8 = 0;
  }

  [(HUQuickControlSliderView *)v5 setShowOffState:v8];
  v9 = [(HUQuickControlSliderView *)self showOffState];
  v10 = [(HUQuickControlSliderView *)self valueOverlayView];
  [v10 setOff:v9];

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

  v4 = [(HUQuickControlSliderView *)self feedbackGenerator];
  [v4 prepare];
}

- (void)_actuateTapticFeedback
{
  v3 = [(HUQuickControlSliderView *)self feedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUQuickControlSliderView *)self feedbackGenerator];
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
  [(HUQuickControlSliderView *)self sliderValue];

  return [v2 numberWithDouble:?];
}

- (void)setValue:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &unk_282492000;
  }

  [v4 doubleValue];

  [(HUQuickControlSliderView *)self setSliderValue:?];
}

- (id)secondaryValue
{
  v2 = MEMORY[0x277CCABB0];
  [(HUQuickControlSliderView *)self secondarySliderValue];

  return [v2 numberWithDouble:?];
}

- (void)setSecondaryValue:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &unk_282492000;
  }

  [v4 doubleValue];

  [(HUQuickControlSliderView *)self setSecondarySliderValue:?];
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  [(HUQuickControlSliderView *)self _updateOffState];
  [(HUQuickControlSliderView *)self setNeedsLayout];
  if (v5 != v6)
  {

    [(HUQuickControlSliderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [(HUQuickControlSliderView *)self setAlpha:dbl_20D5CB090[a3]];
  }
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlSliderView *)self profile];
  v6 = [v5 decorationIconDescriptor];

  if (v6)
  {
    v7 = [(HUQuickControlSliderView *)self _createDecorationIconViewIfNecessary];
    v8 = [(HUQuickControlSliderView *)self decorationIconView];
    v9 = [(HUQuickControlSliderView *)self profile];
    v10 = [v9 decorationIconDescriptor];
    [v8 updateWithIconDescriptor:v10 displayStyle:3 animated:v3 & ~v7];

    v11 = [(HUQuickControlSliderView *)self profile];
    v12 = [v11 tintColor];
    LODWORD(v8) = HUIsLightColor(v12);

    if (v8)
    {
      [MEMORY[0x277D75348] systemGrayTintColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v15 = ;
    v14 = [(HUQuickControlSliderView *)self decorationIconView];
    [v14 setTintColor:v15];
  }

  else
  {
    v13 = [(HUQuickControlSliderView *)self decorationIconView];
    [v13 removeFromSuperview];

    [(HUQuickControlSliderView *)self setDecorationIconView:0];
  }
}

- (BOOL)_createDecorationIconViewIfNecessary
{
  v3 = [(HUQuickControlSliderView *)self decorationIconView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlSliderView *)self setDecorationIconView:v4];

    v5 = [(HUQuickControlSliderView *)self decorationIconView];
    [v5 setDisplayContext:0];

    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [(HUQuickControlSliderView *)self decorationIconView];
    [v7 setTintColor:v6];

    v8 = [(HUQuickControlSliderView *)self decorationIconView];
    [(HUQuickControlSliderView *)self addSubview:v8];

    [(HUQuickControlSliderView *)self setNeedsLayout];
  }

  return v3 == 0;
}

@end