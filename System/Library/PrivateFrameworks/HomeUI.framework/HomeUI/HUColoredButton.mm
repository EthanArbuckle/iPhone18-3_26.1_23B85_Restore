@interface HUColoredButton
- (HUColoredButton)initWithFrame:(CGRect)frame highlightedAlpha:(double)alpha highlightedTextAlpha:(double)textAlpha;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundColorFollowsTintColor:(BOOL)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation HUColoredButton

- (HUColoredButton)initWithFrame:(CGRect)frame highlightedAlpha:(double)alpha highlightedTextAlpha:(double)textAlpha
{
  v11.receiver = self;
  v11.super_class = HUColoredButton;
  v7 = [(HUColoredButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    [(HUColoredButton *)v7 setHighlightedAlpha:alpha];
    [(HUColoredButton *)v8 setHighlightedTextAlpha:textAlpha];
    _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    [(HUColoredButton *)v8 setConfiguration:_tintedGlassButtonConfiguration];
  }

  return v8;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = HUColoredButton;
  [(HUColoredButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    [(HUColoredButton *)self highlightedAlpha];
  }

  [(HUColoredButton *)self setAlpha:v5];
}

- (void)setBackgroundColorFollowsTintColor:(BOOL)color
{
  if (self->_backgroundColorFollowsTintColor != color)
  {
    self->_backgroundColorFollowsTintColor = color;
    if (color)
    {
      tintColor = [(HUColoredButton *)self tintColor];
      [(HUColoredButton *)self setBackgroundColor:tintColor];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  configuration = [(HUColoredButton *)self configuration];
  background = [configuration background];
  [background setBackgroundColor:colorCopy];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = HUColoredButton;
  [(HUColoredButton *)&v4 tintColorDidChange];
  if ([(HUColoredButton *)self backgroundColorFollowsTintColor])
  {
    tintColor = [(HUColoredButton *)self tintColor];
    [(HUColoredButton *)self setBackgroundColor:tintColor];
  }
}

@end