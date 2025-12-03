@interface SUUIRoundedRectButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIRoundedRectButton)initWithFrame:(CGRect)frame;
- (id)_basicAnimationWithKeyPath:(id)path;
- (void)_reloadColors;
- (void)_reloadFonts;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSubtitleWithLabel:(id)label;
- (void)setTitleEdgeInsets:(UIEdgeInsets)insets;
- (void)tintColorDidChange;
@end

@implementation SUUIRoundedRectButton

- (SUUIRoundedRectButton)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SUUIRoundedRectButton;
  v3 = [(SUUIRoundedRectButton *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIRoundedRectButton *)v3 setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
    titleLabel = [(SUUIRoundedRectButton *)v4 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    titleLabel2 = [(SUUIRoundedRectButton *)v4 titleLabel];
    [titleLabel2 setMinimumScaleFactor:0.933333333];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v4->_borderView;
    v4->_borderView = v7;

    [(UIView *)v4->_borderView setAutoresizingMask:18];
    v9 = v4->_borderView;
    [(SUUIRoundedRectButton *)v4 bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)v4->_borderView setUserInteractionEnabled:0];
    [(SUUIRoundedRectButton *)v4 addSubview:v4->_borderView];
    layer = [(UIView *)v4->_borderView layer];
    tintColor = [(SUUIRoundedRectButton *)v4 tintColor];
    [layer setBorderColor:{objc_msgSend(tintColor, "CGColor")}];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer setBorderWidth:1.0 / v13];

    [layer setCornerRadius:7.0];
    [(SUUIRoundedRectButton *)v4 _reloadColors];
    [(SUUIRoundedRectButton *)v4 _reloadFonts];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__reloadFonts name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v4 dealloc];
}

- (void)setSubtitleWithLabel:(id)label
{
  labelCopy = label;
  if (self->_subtitleLabel != labelCopy)
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

    objc_storeStrong(&self->_subtitleLabel, label);
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v6 setEnabled:?];
  v5 = 0.33;
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  [(SUUIRoundedRectButton *)self setAlpha:v5];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(SUUIRoundedRectButton *)self isHighlighted]!= highlighted)
  {
    layer = [(UIView *)self->_borderView layer];
    [layer removeAnimationForKey:@"borderWidth"];
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [layer setCompositingFilter:v6];

    v7 = [(SUUIRoundedRectButton *)self _basicAnimationWithKeyPath:@"backgroundColor"];
    [v7 setDuration:0.12];
    if (highlightedCopy)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v7 setFromValue:{objc_msgSend(clearColor, "CGColor")}];

      [(SUUIRoundedRectButton *)self tintColor];
    }

    else
    {
      tintColor = [(SUUIRoundedRectButton *)self tintColor];
      [v7 setFromValue:{objc_msgSend(tintColor, "CGColor")}];

      [MEMORY[0x277D75348] clearColor];
    }
    v10 = ;
    [v7 setToValue:{objc_msgSend(v10, "CGColor")}];

    [v7 setDelegate:self];
    [layer addAnimation:v7 forKey:@"borderWidth"];
  }

  v11.receiver = self;
  v11.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v11 setHighlighted:highlightedCopy];
}

- (void)setTitleEdgeInsets:(UIEdgeInsets)insets
{
  if (self->_subtitleLabel)
  {
    insets.top = insets.top + -14.0;
  }

  v3.receiver = self;
  v3.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v3 setTitleEdgeInsets:insets.top, insets.left, insets.bottom, insets.right];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = SUUIRoundedRectButton;
  [(SUUIRoundedRectButton *)&v5 sizeThatFits:fits.width, 45.0];
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(SUUIRoundedRectButton *)self isHighlighted:stop];
  layer = [(UIView *)self->_borderView layer];
  if (v5)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [layer setCompositingFilter:v6];
  }

  else
  {
    [layer setCompositingFilter:0];
  }
}

- (id)_basicAnimationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:path];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (void)_reloadColors
{
  tintColor = [(SUUIRoundedRectButton *)self tintColor];
  layer = [(UIView *)self->_borderView layer];
  v4 = tintColor;
  [layer setBorderColor:{objc_msgSend(tintColor, "CGColor")}];

  [(UILabel *)self->_subtitleLabel setTextColor:tintColor];
  [(SUUIRoundedRectButton *)self setTitleColor:tintColor forState:0];
}

- (void)_reloadFonts
{
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
  titleLabel = [(SUUIRoundedRectButton *)self titleLabel];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [titleLabel setFont:v4];
}

@end