@interface HUColoredButton
- (HUColoredButton)initWithFrame:(CGRect)a3 highlightedAlpha:(double)a4 highlightedTextAlpha:(double)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundColorFollowsTintColor:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation HUColoredButton

- (HUColoredButton)initWithFrame:(CGRect)a3 highlightedAlpha:(double)a4 highlightedTextAlpha:(double)a5
{
  v11.receiver = self;
  v11.super_class = HUColoredButton;
  v7 = [(HUColoredButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    [(HUColoredButton *)v7 setHighlightedAlpha:a4];
    [(HUColoredButton *)v8 setHighlightedTextAlpha:a5];
    v9 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    [(HUColoredButton *)v8 setConfiguration:v9];
  }

  return v8;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HUColoredButton;
  [(HUColoredButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (v3)
  {
    [(HUColoredButton *)self highlightedAlpha];
  }

  [(HUColoredButton *)self setAlpha:v5];
}

- (void)setBackgroundColorFollowsTintColor:(BOOL)a3
{
  if (self->_backgroundColorFollowsTintColor != a3)
  {
    self->_backgroundColorFollowsTintColor = a3;
    if (a3)
    {
      v4 = [(HUColoredButton *)self tintColor];
      [(HUColoredButton *)self setBackgroundColor:v4];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v6 = [(HUColoredButton *)self configuration];
  v5 = [v6 background];
  [v5 setBackgroundColor:v4];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = HUColoredButton;
  [(HUColoredButton *)&v4 tintColorDidChange];
  if ([(HUColoredButton *)self backgroundColorFollowsTintColor])
  {
    v3 = [(HUColoredButton *)self tintColor];
    [(HUColoredButton *)self setBackgroundColor:v3];
  }
}

@end