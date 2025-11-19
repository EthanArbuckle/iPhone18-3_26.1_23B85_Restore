@interface CPSVibrantButton
- (CPSVibrantButton)initWithButtonType:(int64_t)a3;
- (void)setAdjustFontSizeToFitWidth:(BOOL)a3;
- (void)updateCornerRadius;
@end

@implementation CPSVibrantButton

- (CPSVibrantButton)initWithButtonType:(int64_t)a3
{
  v52[4] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = CPSVibrantButton;
  v4 = [(CPSVibrantButton *)&v50 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    if (a3 == 7 && (_UISolariumEnabled() & 1) != 0)
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

    v10 = [MEMORY[0x277D75220] buttonWithType:a3];
    button = v4->_button;
    v4->_button = v10;

    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = _UISolariumEnabled();
    if (a3 == 7 && v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = [MEMORY[0x277D75230] _glassButtonConfiguration];
      v14 = MEMORY[0x277D75348];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v14 colorNamed:@"closeButtonIconColor" inBundle:v15 compatibleWithTraitCollection:0];
      [(UIButton *)v4->_button setTintColor:v16];

      [(UIButton *)v4->_button setConfiguration:v13];
    }

    [(CPSVibrantButton *)v4 addSubview:v4->_button];
    if (v5)
    {
      v38 = MEMORY[0x277CCAAD0];
      v46 = [(UIView *)v4->_effectView leadingAnchor];
      v44 = [(CPSVibrantButton *)v4 leadingAnchor];
      v42 = [v46 constraintEqualToAnchor:v44];
      v52[0] = v42;
      v40 = [(UIView *)v4->_effectView bottomAnchor];
      v39 = [(CPSVibrantButton *)v4 bottomAnchor];
      v37 = [v40 constraintEqualToAnchor:v39];
      v52[1] = v37;
      v17 = [(UIView *)v4->_effectView topAnchor];
      v18 = [(CPSVibrantButton *)v4 topAnchor];
      [v17 constraintEqualToAnchor:v18];
      v19 = v48 = v5;
      v52[2] = v19;
      v20 = [(UIView *)v4->_effectView trailingAnchor];
      v21 = [(CPSVibrantButton *)v4 trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v52[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      [v38 activateConstraints:v23];

      v5 = v48;
    }

    v45 = MEMORY[0x277CCAAD0];
    v24 = [(UIButton *)v4->_button leadingAnchor];
    if (v5)
    {
      v25 = v4->_effectView;
    }

    else
    {
      v25 = v4;
    }

    v49 = [(CPSVibrantButton *)v25 leadingAnchor];
    v47 = [v24 constraintEqualToAnchor:v49];
    v51[0] = v47;
    v43 = [(UIButton *)v4->_button bottomAnchor];
    v26 = [(CPSVibrantButton *)v4 bottomAnchor];
    v27 = [v43 constraintEqualToAnchor:v26];
    v51[1] = v27;
    v28 = [(UIButton *)v4->_button topAnchor];
    v29 = [(CPSVibrantButton *)v4 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v51[2] = v30;
    [(UIButton *)v4->_button trailingAnchor];
    v31 = v41 = v24;
    v32 = [(CPSVibrantButton *)v4 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
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
  v3 = [(UIButton *)self->_button buttonType];
  v4 = 10.0;
  if (v3 == UIButtonTypeClose)
  {
    [(CPSVibrantButton *)self bounds];
    v4 = CGRectGetWidth(v7) * 0.5;
  }

  effectView = self->_effectView;

  [(UIView *)effectView _setContinuousCornerRadius:v4];
}

- (void)setAdjustFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIButton *)self->_button titleLabel];
  [v4 setAdjustsFontSizeToFitWidth:v3];
}

@end