@interface CPUIFocusRingView
- (CPUIFocusRingView)initWithFrame:(CGRect)frame;
- (void)_updateFocusRect;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setRingColor:(id)color;
- (void)setRingGap:(double)gap;
- (void)setRingWidth:(double)width;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIFocusRingView

- (void)_updateFocusRect
{
  focusPath = [(CPUIFocusRingView *)self focusPath];
  [focusPath removeAllPoints];

  [(CPUIFocusRingView *)self setFocusPath:0];

  [(CPUIFocusRingView *)self setNeedsDisplay];
}

- (CPUIFocusRingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CPUIFocusRingView;
  v3 = [(CPUIFocusRingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPUIFocusRingView *)v3 setBackgroundColor:clearColor];

    v3->_cornerRadius = 11.0;
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    ringColor = v3->_ringColor;
    v3->_ringColor = _carSystemFocusColor;

    v3->_ringWidth = 2.0;
    v3->_ringGap = 2.0;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPUIFocusRingView;
  [(CPUIFocusRingView *)&v4 traitCollectionDidChange:change];
  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingWidth:(double)width
{
  if (self->_ringWidth != width)
  {
    self->_ringWidth = width;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingGap:(double)gap
{
  if (self->_ringGap != gap)
  {
    self->_ringGap = gap;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingColor:(id)color
{
  objc_storeStrong(&self->_ringColor, color);

  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CPUIFocusRingView;
  [(CPUIFocusRingView *)&v3 layoutSubviews];
  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18.receiver = self;
  v18.super_class = CPUIFocusRingView;
  [(CPUIFocusRingView *)&v18 drawRect:?];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, (self->_ringGap + self->_ringWidth) * 0.5, (self->_ringGap + self->_ringWidth) * 0.5);
  v8 = v20.origin.x;
  v9 = v20.origin.y;
  v10 = v20.size.width;
  v11 = v20.size.height;
  focusPath = [(CPUIFocusRingView *)self focusPath];

  if (!focusPath)
  {
    v13 = MEMORY[0x277D75208];
    [(CPUIFocusRingView *)self cornerRadius];
    v15 = [v13 _bezierPathWithPillRect:v8 cornerRadius:{v9, v10, v11, v14}];
    [v15 setLineWidth:self->_ringWidth];
    [(CPUIFocusRingView *)self setFocusPath:v15];
  }

  ringColor = [(CPUIFocusRingView *)self ringColor];
  [ringColor setStroke];

  focusPath2 = [(CPUIFocusRingView *)self focusPath];
  [focusPath2 stroke];
}

@end