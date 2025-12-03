@interface _FCUIActivityControlBackgroundView
- (_FCUIActivityControlBackgroundView)initWithControlStyle:(int64_t)style;
- (_FCUIActivityControlBackgroundView)initWithFrame:(CGRect)frame;
- (void)_configureHighlightViewIfNecessary;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _FCUIActivityControlBackgroundView

- (_FCUIActivityControlBackgroundView)initWithControlStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = _FCUIActivityControlBackgroundView;
  result = [(_FCUIActivityControlBackgroundView *)&v5 init];
  if (result)
  {
    result->_controlStyle = style;
  }

  return result;
}

- (_FCUIActivityControlBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _FCUIActivityControlBackgroundView;
  v3 = [(_FCUIActivityControlBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [(_FCUIActivityControlBackgroundView *)v3 setBackgroundColor:tertiarySystemFillColor];

    [(_FCUIActivityControlBackgroundView *)v3 setAutoresizesSubviews:1];
    [(_FCUIActivityControlBackgroundView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = _FCUIActivityControlBackgroundView;
  [(_FCUIActivityControlBackgroundView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:radius];
}

- (void)_setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = _FCUIActivityControlBackgroundView;
  [(_FCUIActivityControlBackgroundView *)&v5 _setCornerRadius:?];
  [(UIView *)self->_highlightView _setCornerRadius:radius];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if (highlighted)
    {
      [(_FCUIActivityControlBackgroundView *)self _configureHighlightViewIfNecessary];
      highlightView = self->_highlightView;
      v5 = 0.1;
      if (self->_controlStyle)
      {
        v5 = 1.0;
      }
    }

    else
    {
      highlightView = self->_highlightView;
      v5 = 0.0;
    }

    [(UIView *)highlightView setAlpha:v5];
  }
}

- (void)_configureHighlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72___FCUIActivityControlBackgroundView__configureHighlightViewIfNecessary__block_invoke;
    v4[3] = &unk_27901A470;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

@end