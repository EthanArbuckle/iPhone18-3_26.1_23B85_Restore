@interface CSEnhancedModalButton
- (CSEnhancedModalButton)initWithFrame:(CGRect)a3;
- (void)_addBackgroundHighlightView;
- (void)_addVisualEffect;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)layoutSubviews;
@end

@implementation CSEnhancedModalButton

- (CSEnhancedModalButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CSEnhancedModalButton;
  v3 = [(CSEnhancedModalButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSEnhancedModalButton *)v3 addTarget:v3 action:sel__buttonPressed_ forControlEvents:5];
    [(CSEnhancedModalButton *)v4 addTarget:v4 action:sel__buttonReleased_ forControlEvents:456];
    v5 = [(CSEnhancedModalButton *)v4 titleLabel];
    [v5 setNumberOfLines:1];
    [v5 setBaselineAdjustment:1];
    [v5 setLineBreakMode:0];
    [v5 setTextAlignment:1];
    [(CSEnhancedModalButton *)v4 setContentEdgeInsets:16.0, 16.0, 16.0, 16.0];
    v6 = [(CSEnhancedModalButton *)v4 layer];
    [v6 setHitTestsAsOpaque:1];

    [(CSEnhancedModalButton *)v4 _addVisualEffect];
    [(CSEnhancedModalButton *)v4 _addBackgroundHighlightView];
  }

  return v4;
}

- (void)_addVisualEffect
{
  v17[5] = *MEMORY[0x277D85DE8];
  effectView = self->_effectView;
  if (effectView)
  {
    [(UIVisualEffectView *)effectView removeFromSuperview];
    v4 = self->_effectView;
    self->_effectView = 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277D75D68]);
  [(UIVisualEffectView *)v5 setAutoresizingMask:18];
  [(UIVisualEffectView *)v5 bs_setHitTestingDisabled:1];
  [(CSEnhancedModalButton *)self _continuousCornerRadius];
  [(UIVisualEffectView *)v5 _setContinuousCornerRadius:?];
  v16 = [MEMORY[0x277D75210] effectWithBlurRadius:30.0];
  v17[0] = v16;
  v6 = MEMORY[0x277D75D58];
  v7 = [MEMORY[0x277D75348] blackColor];
  v8 = [v6 effectCompositingColor:v7 withMode:1010 alpha:0.12];
  v17[1] = v8;
  v9 = MEMORY[0x277D75358];
  v10 = [MEMORY[0x277D755B8] kitImageNamed:@"UICoverSheetButtonLuminanceMap"];
  v11 = [v9 colorEffectLuminanceMap:v10 blendingAmount:0.7];
  v17[2] = v11;
  v12 = [MEMORY[0x277D75358] colorEffectSaturate:2.8];
  v17[3] = v12;
  v13 = [MEMORY[0x277D75358] colorEffectBrightness:-0.13];
  v17[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  [(UIVisualEffectView *)v5 setBackgroundEffects:v14];
  [(CSEnhancedModalButton *)self addSubview:v5];
  [(CSEnhancedModalButton *)self sendSubviewToBack:v5];
  v15 = self->_effectView;
  self->_effectView = v5;
}

- (void)_addBackgroundHighlightView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [(UIVisualEffectView *)self->_effectView contentView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  highlightedView = self->_highlightedView;
  self->_highlightedView = v5;

  [(UIView *)self->_highlightedView setAutoresizingMask:18];
  v7 = [MEMORY[0x277D75348] colorWithRed:0.03125 green:0.03125 blue:0.03125 alpha:1.0];
  [(UIView *)self->_highlightedView setBackgroundColor:v7];

  [(UIView *)self->_highlightedView setAlpha:0.0];
  [(UIView *)self->_highlightedView setUserInteractionEnabled:0];
  v8 = [(UIVisualEffectView *)self->_effectView contentView];
  [v8 addSubview:self->_highlightedView];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = CSEnhancedModalButton;
  [(CSEnhancedModalButton *)&v5 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:a3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSEnhancedModalButton;
  [(CSEnhancedModalButton *)&v4 layoutSubviews];
  effectView = self->_effectView;
  [(CSEnhancedModalButton *)self bounds];
  [(UIVisualEffectView *)effectView setFrame:?];
}

- (void)_buttonPressed:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__CSEnhancedModalButton__buttonPressed___block_invoke;
  v3[3] = &unk_27838B770;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

- (void)_buttonReleased:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__CSEnhancedModalButton__buttonReleased___block_invoke;
  v3[3] = &unk_27838B770;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

@end