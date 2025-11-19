@interface SUUIRoundedRectButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIRoundedRectButton)initWithFrame:(CGRect)a3;
- (id)_basicAnimationWithKeyPath:(id)a3;
- (void)_reloadColors;
- (void)_reloadFonts;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSubtitleWithLabel:(id)a3;
- (void)setTitleEdgeInsets:(UIEdgeInsets)a3;
- (void)tintColorDidChange;
@end

@implementation SUUIRoundedRectButton

- (SUUIRoundedRectButton)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = SUUIRoundedRectButton;
  v3 = [(SUUIRoundedRectButton *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIRoundedRectButton *)v3 setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
    v5 = [(SUUIRoundedRectButton *)v4 titleLabel];
    [v5 setAdjustsFontSizeToFitWidth:1];

    v6 = [(SUUIRoundedRectButton *)v4 titleLabel];
    [v6 setMinimumScaleFactor:0.933333333];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v4->_borderView;
    v4->_borderView = v7;

    [(UIView *)v4->_borderView setAutoresizingMask:18];
    v9 = v4->_borderView;
    [(SUUIRoundedRectButton *)v4 bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)v4->_borderView setUserInteractionEnabled:0];
    [(SUUIRoundedRectButton *)v4 addSubview:v4->_borderView];
    v10 = [(UIView *)v4->_borderView layer];
    v11 = [(SUUIRoundedRectButton *)v4 tintColor];
    [v10 setBorderColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    [v10 setBorderWidth:1.0 / v13];

    [v10 setCornerRadius:7.0];
    [(SUUIRoundedRectButton *)v4 _reloadColors];
    [(SUUIRoundedRectButton *)v4 _reloadFonts];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v4 selector:sel__reloadFonts name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v4 dealloc];
}

- (void)setSubtitleWithLabel:(id)a3
{
  v5 = a3;
  if (self->_subtitleLabel != v5)
  {
    [(SUUIRoundedRectButton *)self titleEdgeInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ([(UILabel *)self->_subtitleLabel isDescendantOfView:self])
    {
      [(UILabel *)self->_subtitleLabel removeFromSuperview];
      v7 = v7 + 14.0;
    }

    objc_storeStrong(&self->_subtitleLabel, a3);
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      [(SUUIRoundedRectButton *)self insertSubview:subtitleLabel belowSubview:self->_borderView];
      [(SUUIRoundedRectButton *)self _reloadColors];
      v7 = v7 + -14.0;
    }

    v15.receiver = self;
    v15.super_class = SUUIRoundedRectButton;
    [(SUUIRoundedRectButton *)&v15 setTitleEdgeInsets:v7, v9, v11, v13];
  }
}

- (void)layoutSubviews
{
  if (self->_subtitleLabel)
  {
    [(SUUIRoundedRectButton *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UILabel *)self->_subtitleLabel frame];
    v12 = v11;
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    [(UILabel *)self->_subtitleLabel setFrame:0.0, CGRectGetMaxY(v14) - v12 + -5.0, v8, v12];
  }

  v13.receiver = self;
  v13.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v13 layoutSubviews];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v6 setEnabled:?];
  v5 = 0.33;
  if (v3)
  {
    v5 = 1.0;
  }

  [(SUUIRoundedRectButton *)self setAlpha:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SUUIRoundedRectButton *)self isHighlighted]!= a3)
  {
    v5 = [(UIView *)self->_borderView layer];
    [v5 removeAnimationForKey:@"borderWidth"];
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v5 setCompositingFilter:v6];

    v7 = [(SUUIRoundedRectButton *)self _basicAnimationWithKeyPath:@"backgroundColor"];
    [v7 setDuration:0.12];
    if (v3)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
      [v7 setFromValue:{objc_msgSend(v8, "CGColor")}];

      [(SUUIRoundedRectButton *)self tintColor];
    }

    else
    {
      v9 = [(SUUIRoundedRectButton *)self tintColor];
      [v7 setFromValue:{objc_msgSend(v9, "CGColor")}];

      [MEMORY[0x277D75348] clearColor];
    }
    v10 = ;
    [v7 setToValue:{objc_msgSend(v10, "CGColor")}];

    [v7 setDelegate:self];
    [v5 addAnimation:v7 forKey:@"borderWidth"];
  }

  v11.receiver = self;
  v11.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v11 setHighlighted:v3];
}

- (void)setTitleEdgeInsets:(UIEdgeInsets)a3
{
  if (self->_subtitleLabel)
  {
    a3.top = a3.top + -14.0;
  }

  v3.receiver = self;
  v3.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v3 setTitleEdgeInsets:a3.top, a3.left, a3.bottom, a3.right];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v5 sizeThatFits:a3.width, 45.0];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  [(SUUIRoundedRectButton *)self _reloadColors];
  v3.receiver = self;
  v3.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v3 tintColorDidChange];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(SUUIRoundedRectButton *)self isHighlighted:a3];
  v7 = [(UIView *)self->_borderView layer];
  if (v5)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v7 setCompositingFilter:v6];
  }

  else
  {
    [v7 setCompositingFilter:0];
  }
}

- (id)_basicAnimationWithKeyPath:(id)a3
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:a3];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (void)_reloadColors
{
  v5 = [(SUUIRoundedRectButton *)self tintColor];
  v3 = [(UIView *)self->_borderView layer];
  v4 = v5;
  [v3 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  [(UILabel *)self->_subtitleLabel setTextColor:v5];
  [(SUUIRoundedRectButton *)self setTitleColor:v5 forState:0];
}

- (void)_reloadFonts
{
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
  v3 = [(SUUIRoundedRectButton *)self titleLabel];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [v3 setFont:v4];
}

@end