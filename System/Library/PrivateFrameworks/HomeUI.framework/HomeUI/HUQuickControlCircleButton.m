@interface HUQuickControlCircleButton
- (HUQuickControlCircleButton)initWithFrame:(CGRect)a3;
- (double)fontSize;
- (void)_adjustTitleColor;
- (void)_controlStateChanged;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setFontSize:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelectedColor:(id)a3;
@end

@implementation HUQuickControlCircleButton

- (HUQuickControlCircleButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = HUQuickControlCircleButton;
  v3 = [(HUQuickControlCircleButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUQuickControlCircleButton *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    [(HUQuickControlCircleButton *)v4 setFontSize:21.0];
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [(HUQuickControlCircleButton *)v4 setTitleColor:v6 forState:0];

    v7 = [(HUQuickControlCircleButton *)v4 titleLabel];
    [v7 setAdjustsFontSizeToFitWidth:1];

    v8 = [[HUQuickControlBackgroundEffectView alloc] initWithEffectType:1];
    [(HUQuickControlCircleButton *)v4 setBackgroundView:v8];

    v9 = [(HUQuickControlCircleButton *)v4 backgroundView];
    [v9 setUserInteractionEnabled:0];

    v10 = [(HUQuickControlCircleButton *)v4 backgroundView];
    [(HUQuickControlCircleButton *)v4 insertSubview:v10 atIndex:0];

    v11 = [(HUQuickControlCircleButton *)v4 backgroundView];
    v12 = [v11 tintColor];
    [(HUQuickControlCircleButton *)v4 setStandardBackgroundColor:v12];
  }

  return v4;
}

- (double)fontSize
{
  v2 = [(HUQuickControlCircleButton *)self titleLabel];
  v3 = [v2 font];
  [v3 pointSize];
  v5 = v4;

  return v5;
}

- (void)setFontSize:(double)a3
{
  v5 = [MEMORY[0x277D74300] systemFontOfSize:a3 weight:*MEMORY[0x277D74420]];
  v4 = [(HUQuickControlCircleButton *)self titleLabel];
  [v4 setFont:v5];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlCircleButton;
  [(HUQuickControlCircleButton *)&v4 setEnabled:a3];
  [(HUQuickControlCircleButton *)self _controlStateChanged];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlCircleButton;
  [(HUQuickControlCircleButton *)&v4 setHighlighted:a3];
  [(HUQuickControlCircleButton *)self _controlStateChanged];
}

- (void)setSelectedColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_selectedColor, a3);
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  [(HUQuickControlCircleButton *)self setBackgroundColor:v5];
  v6 = [(HUQuickControlCircleButton *)self backgroundView];
  [v6 setHidden:v7 != 0];

  [(HUQuickControlCircleButton *)self _adjustTitleColor];
}

- (void)_adjustTitleColor
{
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [(HUQuickControlCircleButton *)self selectedColor];
  [v3 _luminanceDifferenceFromColor:v4];
  v6 = v5;

  v7 = [(HUQuickControlCircleButton *)self selectedColor];

  if (v7 && v6 < 0.1)
  {
    v8 = [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  v9 = v8;
  [(HUQuickControlCircleButton *)self setTitleColor:v8 forState:0];
}

- (void)_controlStateChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__HUQuickControlCircleButton__controlStateChanged__block_invoke;
  v2[3] = &unk_277DB8488;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.2];
}

void __50__HUQuickControlCircleButton__controlStateChanged__block_invoke(uint64_t a1)
{
  v2 = 1.0;
  if ([*(a1 + 32) isHighlighted])
  {
    v3 = 0.3;
  }

  else
  {
    v3 = 1.0;
  }

  [*(a1 + 32) setAlpha:v3];
  if ([*(a1 + 32) isHighlighted])
  {
    v4 = 0.3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [*(a1 + 32) backgroundView];
  [v5 setAlpha:v4];

  if (([*(a1 + 32) isHighlighted] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEnabled") & 1) == 0)
  {
    v2 = 0.3;
  }

  v6 = [*(a1 + 32) titleLabel];
  [v6 setAlpha:v2];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUQuickControlCircleButton;
  [(HUQuickControlCircleButton *)&v19 layoutSubviews];
  [(HUQuickControlCircleButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUQuickControlCircleButton *)self backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(HUQuickControlCircleButton *)self bounds];
  v13 = v12 * 0.5;
  v14 = [(HUQuickControlCircleButton *)self backgroundView];
  v15 = [v14 layer];
  [v15 setCornerRadius:v13];

  [(HUQuickControlCircleButton *)self bounds];
  v17 = v16 * 0.5;
  v18 = [(HUQuickControlCircleButton *)self layer];
  [v18 setCornerRadius:v17];
}

@end