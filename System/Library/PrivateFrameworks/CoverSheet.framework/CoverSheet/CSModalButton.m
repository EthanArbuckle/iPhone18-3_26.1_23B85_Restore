@interface CSModalButton
- (CSModalButton)initWithFrame:(CGRect)a3;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setVisualEffect:(id)a3;
@end

@implementation CSModalButton

- (CSModalButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CSModalButton;
  v3 = [(CSModalButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(CSModalButton *)v3 setTitleColor:v4 forState:0];

    v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    [(CSModalButton *)v3 setTitleColor:v5 forState:1];

    [(CSModalButton *)v3 addTarget:v3 action:sel__buttonPressed_ forControlEvents:5];
    [(CSModalButton *)v3 addTarget:v3 action:sel__buttonReleased_ forControlEvents:456];
    v6 = [(CSModalButton *)v3 titleLabel];
    [v6 setNumberOfLines:1];
    [v6 setBaselineAdjustment:1];
    [v6 setLineBreakMode:0];
    [v6 setTextAlignment:1];
    [(CSModalButton *)v3 setBackgroundColor:0];
    [(CSModalButton *)v3 setContentEdgeInsets:16.0, 16.0, 16.0, 16.0];
    v7 = [(CSModalButton *)v3 layer];
    [v7 setHitTestsAsOpaque:1];
  }

  return v3;
}

- (void)setVisualEffect:(id)a3
{
  v4 = a3;
  effectView = self->_effectView;
  if (v4)
  {
    v11 = v4;
    if (!effectView)
    {
      v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
      [(UIVisualEffectView *)v6 setAutoresizingMask:18];
      [(UIVisualEffectView *)v6 bs_setHitTestingDisabled:1];
      [(CSModalButton *)self _continuousCornerRadius];
      [(UIVisualEffectView *)v6 _setContinuousCornerRadius:?];
      v7 = self->_backgroundColor;
      [(CSModalButton *)self setBackgroundColor:0];
      [(CSModalButton *)self addSubview:v6];
      v8 = self->_effectView;
      self->_effectView = v6;
      v9 = v6;

      [(CSModalButton *)self setBackgroundColor:v7];
      effectView = self->_effectView;
    }

    effectView = [(UIVisualEffectView *)effectView setEffect:v11];
  }

  else
  {
    if (!effectView)
    {
      goto LABEL_8;
    }

    v11 = 0;
    [(UIVisualEffectView *)effectView removeFromSuperview];
    v10 = self->_effectView;
    self->_effectView = 0;
  }

  v4 = v11;
LABEL_8:

  MEMORY[0x2821F96F8](effectView, v4);
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_isPressed)
  {
    v6 = [v4 copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v6;
  }

  effectView = self->_effectView;
  if (effectView)
  {
    v9 = [(UIVisualEffectView *)effectView contentView];
    [v9 setBackgroundColor:v5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CSModalButton;
    [(CSModalButton *)&v10 setBackgroundColor:v5];
  }
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = CSModalButton;
  [(CSModalButton *)&v5 _setContinuousCornerRadius:?];
  [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:a3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSModalButton;
  [(CSModalButton *)&v4 layoutSubviews];
  effectView = self->_effectView;
  [(CSModalButton *)self bounds];
  [(UIVisualEffectView *)effectView setFrame:?];
}

- (void)_buttonPressed:(id)a3
{
  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = 0;
  [(UIColor *)self->_backgroundColor getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  self->_isPressed = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__CSModalButton__buttonPressed___block_invoke;
  v4[3] = &unk_27838C860;
  v4[4] = self;
  v4[5] = v8;
  v4[6] = v7;
  v4[7] = v6;
  v4[8] = v5;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
}

void __32__CSModalButton__buttonPressed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75348] colorWithRed:*(a1 + 40) green:*(a1 + 48) blue:*(a1 + 56) alpha:*(a1 + 64) * 0.5];
  [v1 setBackgroundColor:v2];
}

- (void)_buttonReleased:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__CSModalButton__buttonReleased___block_invoke;
  v4[3] = &unk_27838B770;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__CSModalButton__buttonReleased___block_invoke_2;
  v3[3] = &unk_27838B9B8;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.2];
}

@end