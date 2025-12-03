@interface CPSVibrantButton
- (CPSVibrantButton)initWithButtonType:(int64_t)type;
- (void)setAdjustFontSizeToFitWidth:(BOOL)width;
- (void)updateCornerRadius;
@end

@implementation CPSVibrantButton

- (CPSVibrantButton)initWithButtonType:(int64_t)type
{
  v52[4] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = CPSVibrantButton;
  v4 = [(CPSVibrantButton *)&v50 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    if (type == 7 && (_UISolariumEnabled() & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D75D68]);
      v7 = [MEMORY[0x277D75210] effectWithStyle:10];
      v8 = [v6 initWithEffect:v7];
      effectView = v4->_effectView;
      v4->_effectView = v8;

      [(UIView *)v4->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSVibrantButton *)v4 addSubview:v4->_effectView];
      v5 = 1;
    }

    v10 = [MEMORY[0x277D75220] buttonWithType:type];
    button = v4->_button;
    v4->_button = v10;

    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = _UISolariumEnabled();
    if (type == 7 && v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
      v14 = MEMORY[0x277D75348];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v14 colorNamed:@"closeButtonIconColor" inBundle:v15 compatibleWithTraitCollection:0];
      [(UIButton *)v4->_button setTintColor:v16];

      [(UIButton *)v4->_button setConfiguration:_glassButtonConfiguration];
    }

    [(CPSVibrantButton *)v4 addSubview:v4->_button];
    if (v5)
    {
      v38 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(UIView *)v4->_effectView leadingAnchor];
      leadingAnchor2 = [(CPSVibrantButton *)v4 leadingAnchor];
      v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v52[0] = v42;
      bottomAnchor = [(UIView *)v4->_effectView bottomAnchor];
      bottomAnchor2 = [(CPSVibrantButton *)v4 bottomAnchor];
      v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v52[1] = v37;
      topAnchor = [(UIView *)v4->_effectView topAnchor];
      topAnchor2 = [(CPSVibrantButton *)v4 topAnchor];
      [topAnchor constraintEqualToAnchor:topAnchor2];
      v19 = v48 = v5;
      v52[2] = v19;
      trailingAnchor = [(UIView *)v4->_effectView trailingAnchor];
      trailingAnchor2 = [(CPSVibrantButton *)v4 trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v52[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      [v38 activateConstraints:v23];

      v5 = v48;
    }

    v45 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(UIButton *)v4->_button leadingAnchor];
    if (v5)
    {
      v25 = v4->_effectView;
    }

    else
    {
      v25 = v4;
    }

    leadingAnchor4 = [(CPSVibrantButton *)v25 leadingAnchor];
    v47 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v51[0] = v47;
    bottomAnchor3 = [(UIButton *)v4->_button bottomAnchor];
    bottomAnchor4 = [(CPSVibrantButton *)v4 bottomAnchor];
    v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v51[1] = v27;
    topAnchor3 = [(UIButton *)v4->_button topAnchor];
    topAnchor4 = [(CPSVibrantButton *)v4 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v51[2] = v30;
    [(UIButton *)v4->_button trailingAnchor];
    v31 = v41 = leadingAnchor3;
    trailingAnchor3 = [(CPSVibrantButton *)v4 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:trailingAnchor3];
    v51[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v45 activateConstraints:v34];

    v35 = v4;
  }

  return v4;
}

- (void)updateCornerRadius
{
  [(CPSVibrantButton *)self layoutIfNeeded];
  buttonType = [(UIButton *)self->_button buttonType];
  v4 = 10.0;
  if (buttonType == UIButtonTypeClose)
  {
    [(CPSVibrantButton *)self bounds];
    v4 = CGRectGetWidth(v7) * 0.5;
  }

  effectView = self->_effectView;

  [(UIView *)effectView _setContinuousCornerRadius:v4];
}

- (void)setAdjustFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:widthCopy];
}

@end