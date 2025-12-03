@interface HUQuickControlCircleButton
- (HUQuickControlCircleButton)initWithFrame:(CGRect)frame;
- (double)fontSize;
- (void)_adjustTitleColor;
- (void)_controlStateChanged;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setFontSize:(double)size;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelectedColor:(id)color;
@end

@implementation HUQuickControlCircleButton

- (HUQuickControlCircleButton)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = HUQuickControlCircleButton;
  v3 = [(HUQuickControlCircleButton *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(HUQuickControlCircleButton *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    [(HUQuickControlCircleButton *)v4 setFontSize:21.0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(HUQuickControlCircleButton *)v4 setTitleColor:systemWhiteColor forState:0];

    titleLabel = [(HUQuickControlCircleButton *)v4 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    v8 = [[HUQuickControlBackgroundEffectView alloc] initWithEffectType:1];
    [(HUQuickControlCircleButton *)v4 setBackgroundView:v8];

    backgroundView = [(HUQuickControlCircleButton *)v4 backgroundView];
    [backgroundView setUserInteractionEnabled:0];

    backgroundView2 = [(HUQuickControlCircleButton *)v4 backgroundView];
    [(HUQuickControlCircleButton *)v4 insertSubview:backgroundView2 atIndex:0];

    backgroundView3 = [(HUQuickControlCircleButton *)v4 backgroundView];
    tintColor = [backgroundView3 tintColor];
    [(HUQuickControlCircleButton *)v4 setStandardBackgroundColor:tintColor];
  }

  return v4;
}

- (double)fontSize
{
  titleLabel = [(HUQuickControlCircleButton *)self titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v5 = v4;

  return v5;
}

- (void)setFontSize:(double)size
{
  v5 = [MEMORY[0x277D74300] systemFontOfSize:size weight:*MEMORY[0x277D74420]];
  titleLabel = [(HUQuickControlCircleButton *)self titleLabel];
  [titleLabel setFont:v5];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = HUQuickControlCircleButton;
  [(HUQuickControlCircleButton *)&v4 setEnabled:enabled];
  [(HUQuickControlCircleButton *)self _controlStateChanged];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = HUQuickControlCircleButton;
  [(HUQuickControlCircleButton *)&v4 setHighlighted:highlighted];
  [(HUQuickControlCircleButton *)self _controlStateChanged];
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_selectedColor, color);
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v5 = 0;
  }

  [(HUQuickControlCircleButton *)self setBackgroundColor:v5];
  backgroundView = [(HUQuickControlCircleButton *)self backgroundView];
  [backgroundView setHidden:colorCopy != 0];

  [(HUQuickControlCircleButton *)self _adjustTitleColor];
}

- (void)_adjustTitleColor
{
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  selectedColor = [(HUQuickControlCircleButton *)self selectedColor];
  [systemWhiteColor _luminanceDifferenceFromColor:selectedColor];
  v6 = v5;

  selectedColor2 = [(HUQuickControlCircleButton *)self selectedColor];

  if (selectedColor2 && v6 < 0.1)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    systemBlackColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  v9 = systemBlackColor;
  [(HUQuickControlCircleButton *)self setTitleColor:systemBlackColor forState:0];
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
  backgroundView = [(HUQuickControlCircleButton *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

  [(HUQuickControlCircleButton *)self bounds];
  v13 = v12 * 0.5;
  backgroundView2 = [(HUQuickControlCircleButton *)self backgroundView];
  layer = [backgroundView2 layer];
  [layer setCornerRadius:v13];

  [(HUQuickControlCircleButton *)self bounds];
  v17 = v16 * 0.5;
  layer2 = [(HUQuickControlCircleButton *)self layer];
  [layer2 setCornerRadius:v17];
}

@end