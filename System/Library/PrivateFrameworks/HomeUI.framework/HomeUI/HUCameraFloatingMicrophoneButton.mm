@interface HUCameraFloatingMicrophoneButton
+ (id)_createBackgroundEffect;
- (HUCameraFloatingMicrophoneButton)initWithFrame:(CGRect)frame;
- (void)_setupConstraintSet;
- (void)_updateAlpha;
- (void)_updateSelectionState;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)updateConstraints;
@end

@implementation HUCameraFloatingMicrophoneButton

- (HUCameraFloatingMicrophoneButton)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HUCameraFloatingMicrophoneButton;
  v3 = [(HUCameraFloatingMicrophoneButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    _createBackgroundEffect = [objc_opt_class() _createBackgroundEffect];
    v6 = [v4 initWithEffect:_createBackgroundEffect];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v6;

    [(UIVisualEffectView *)v3->_backgroundView _setCornerRadius:4.0];
    [(UIVisualEffectView *)v3->_backgroundView setUserInteractionEnabled:0];
    [(HUCameraFloatingMicrophoneButton *)v3 naui_addAutoLayoutSubview:v3->_backgroundView];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    microphoneLabel = v3->_microphoneLabel;
    v3->_microphoneLabel = v8;

    v10 = [MEMORY[0x277D180C8] staticPreferredFontForTextStyle:*MEMORY[0x277D769C0] traits:64];
    [(UILabel *)v3->_microphoneLabel setFont:v10];

    v11 = _HULocalizedStringWithDefaultValue(@"HUCameraFloatingMicrophoneButtonTitle", @"HUCameraFloatingMicrophoneButtonTitle", 1);
    [(UILabel *)v3->_microphoneLabel setText:v11];

    [(UILabel *)v3->_microphoneLabel _setTextColorFollowsTintColor:1];
    [(UILabel *)v3->_microphoneLabel setBaselineAdjustment:1];
    [(HUCameraFloatingMicrophoneButton *)v3 naui_addAutoLayoutSubview:v3->_microphoneLabel];
    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    microphoneImageView = v3->_microphoneImageView;
    v3->_microphoneImageView = v12;

    [(HUCameraFloatingMicrophoneButton *)v3 naui_addAutoLayoutSubview:v3->_microphoneImageView];
    [(HUCameraFloatingMicrophoneButton *)v3 _setupConstraintSet];
    [(HUCameraFloatingMicrophoneButton *)v3 _updateSelectionState];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(HUCameraFloatingMicrophoneButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = HUCameraFloatingMicrophoneButton;
    [(HUCameraFloatingMicrophoneButton *)&v5 setSelected:selectedCopy];
    [(HUCameraFloatingMicrophoneButton *)self _updateSelectionState];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = HUCameraFloatingMicrophoneButton;
  [(HUCameraFloatingMicrophoneButton *)&v4 setHighlighted:highlighted];
  [(HUCameraFloatingMicrophoneButton *)self _updateAlpha];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = HUCameraFloatingMicrophoneButton;
  [(HUCameraFloatingMicrophoneButton *)&v4 setEnabled:enabled];
  [(HUCameraFloatingMicrophoneButton *)self _updateAlpha];
}

+ (id)_createBackgroundEffect
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
  v3 = [MEMORY[0x277D75210] effectWithBlurRadius:12.0];
  v4 = MEMORY[0x277D75D58];
  v5 = [MEMORY[0x277D75348] colorWithWhite:0.282352941 alpha:0.72];
  v6 = [v4 effectCompositingColor:v5];

  v7 = MEMORY[0x277D75D58];
  v11[0] = v3;
  v11[1] = v2;
  v11[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v9 = [v7 effectCombiningEffects:v8];

  return v9;
}

- (void)_updateAlpha
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HUCameraFloatingMicrophoneButton *)self isEnabled])
  {
    if ([(HUCameraFloatingMicrophoneButton *)self isHighlighted])
    {
      v3 = 0.4;
    }

    else
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.4;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  microphoneLabel = [(HUCameraFloatingMicrophoneButton *)self microphoneLabel];
  v15[0] = microphoneLabel;
  microphoneImageView = [(HUCameraFloatingMicrophoneButton *)self microphoneImageView];
  v15[1] = microphoneImageView;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAlpha:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_updateSelectionState
{
  if (([(HUCameraFloatingMicrophoneButton *)self isSelected]& 1) != 0)
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v3 = ;
  [(HUCameraFloatingMicrophoneButton *)self setTintColor:v3];

  if ([(HUCameraFloatingMicrophoneButton *)self isSelected])
  {
    v4 = @"floatingMicrophoneOn";
  }

  else
  {
    v4 = @"floatingMicrophoneOff";
  }

  v7 = HUImageNamed(v4);
  v5 = [v7 imageWithRenderingMode:2];
  microphoneImageView = [(HUCameraFloatingMicrophoneButton *)self microphoneImageView];
  [microphoneImageView setImage:v5];
}

- (void)_setupConstraintSet
{
  v3 = [objc_alloc(MEMORY[0x277D2C958]) initWithOwningView:self constraintBuilder:&__block_literal_global_170];
  constraintSet = self->_constraintSet;
  self->_constraintSet = v3;
}

id __55__HUCameraFloatingMicrophoneButton__setupConstraintSet__block_invoke(uint64_t a1, void *a2)
{
  v32[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAD0];
  v3 = a2;
  v31 = [v3 backgroundView];
  v30 = [v2 hu_constraintsSizingAnchorProvider:v31 toAnchorProvider:v3];
  v32[0] = v30;
  v29 = [v3 heightAnchor];
  v28 = [v29 constraintEqualToConstant:45.0];
  v32[1] = v28;
  v27 = [v3 microphoneImageView];
  v26 = [v27 leadingAnchor];
  v25 = [v3 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:20.0];
  v32[2] = v24;
  v23 = [v3 microphoneImageView];
  v22 = [v23 centerYAnchor];
  v21 = [v3 centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v32[3] = v20;
  v19 = [v3 microphoneLabel];
  v17 = [v19 leadingAnchor];
  v18 = [v3 microphoneImageView];
  v16 = [v18 trailingAnchor];
  v4 = [v17 constraintEqualToAnchor:v16 constant:4.0];
  v32[4] = v4;
  v5 = [v3 microphoneLabel];
  v6 = [v5 centerYAnchor];
  v7 = [v3 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v32[5] = v8;
  v9 = [v3 microphoneLabel];
  v10 = [v9 trailingAnchor];
  v11 = [v3 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11 constant:-20.0];
  v32[6] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:7];
  v15 = [v13 na_arrayByFlattening];

  return v15;
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = HUCameraFloatingMicrophoneButton;
  [(HUCameraFloatingMicrophoneButton *)&v4 updateConstraints];
  constraintSet = [(HUCameraFloatingMicrophoneButton *)self constraintSet];
  [constraintSet activateIfNeeded];
}

@end