@interface NTKVictoryLogoButton
- (NTKVictoryLogoButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NTKVictoryLogoButton

- (NTKVictoryLogoButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKVictoryLogoButton;
  v3 = [(NTKAdjustableTapTargetButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKAdjustableTapTargetButton *)v3 setTouchEdgeInsets:-20.0, -20.0, -20.0, -20.0];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = NTKVictoryLogoButton;
  [(NTKVictoryLogoButton *)&v11 setHighlighted:?];
  v5 = MEMORY[0x277D75D18];
  if (highlightedCopy)
  {
    v6 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v7 = __39__NTKVictoryLogoButton_setHighlighted___block_invoke;
  }

  else
  {
    v6 = &v8;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v7 = __39__NTKVictoryLogoButton_setHighlighted___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_27877DB10;
  v6[4] = self;
  [v5 animateWithDuration:0.15 animations:{v8, v9}];
}

uint64_t __39__NTKVictoryLogoButton_setHighlighted___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.9, 0.9);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.6];
}

uint64_t __39__NTKVictoryLogoButton_setHighlighted___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

@end