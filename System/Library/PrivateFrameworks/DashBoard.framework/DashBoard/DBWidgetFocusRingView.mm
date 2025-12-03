@interface DBWidgetFocusRingView
- (DBWidgetFocusRingView)initWithFrame:(CGRect)frame;
- (void)_updateFocusRect;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setRingColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBWidgetFocusRingView

- (void)_updateFocusRect
{
  focusPath = [(DBWidgetFocusRingView *)self focusPath];
  [focusPath removeAllPoints];

  [(DBWidgetFocusRingView *)self setFocusPath:0];

  [(DBWidgetFocusRingView *)self setNeedsDisplay];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DBWidgetFocusRingView;
  [(DBWidgetFocusRingView *)&v3 layoutSubviews];
  [(DBWidgetFocusRingView *)self _updateFocusRect];
}

- (DBWidgetFocusRingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = DBWidgetFocusRingView;
  v3 = [(DBWidgetFocusRingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(DBWidgetFocusRingView *)v3 setBackgroundColor:clearColor];

    v3->_cornerRadius = 11.0;
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    ringColor = v3->_ringColor;
    v3->_ringColor = _carSystemFocusColor;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = DBWidgetFocusRingView;
  [(DBWidgetFocusRingView *)&v4 traitCollectionDidChange:change];
  [(DBWidgetFocusRingView *)self _updateFocusRect];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(DBWidgetFocusRingView *)self _updateFocusRect];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18.receiver = self;
  v18.super_class = DBWidgetFocusRingView;
  [(DBWidgetFocusRingView *)&v18 drawRect:?];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, 1.0, 1.0);
  v8 = v20.origin.x;
  v9 = v20.origin.y;
  v10 = v20.size.width;
  v11 = v20.size.height;
  focusPath = [(DBWidgetFocusRingView *)self focusPath];

  if (!focusPath)
  {
    v13 = MEMORY[0x277D75208];
    [(DBWidgetFocusRingView *)self cornerRadius];
    v15 = [v13 _bezierPathWithPillRect:v8 cornerRadius:{v9, v10, v11, v14}];
    [v15 setLineWidth:2.0];
    [(DBWidgetFocusRingView *)self setFocusPath:v15];
  }

  ringColor = [(DBWidgetFocusRingView *)self ringColor];
  [ringColor setStroke];

  focusPath2 = [(DBWidgetFocusRingView *)self focusPath];
  [focusPath2 stroke];
}

- (void)setRingColor:(id)color
{
  objc_storeStrong(&self->_ringColor, color);

  [(DBWidgetFocusRingView *)self setNeedsDisplay];
}

@end