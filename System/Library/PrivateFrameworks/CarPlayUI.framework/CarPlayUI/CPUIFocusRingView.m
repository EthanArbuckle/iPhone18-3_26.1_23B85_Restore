@interface CPUIFocusRingView
- (CPUIFocusRingView)initWithFrame:(CGRect)a3;
- (void)_updateFocusRect;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setRingColor:(id)a3;
- (void)setRingGap:(double)a3;
- (void)setRingWidth:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPUIFocusRingView

- (void)_updateFocusRect
{
  v3 = [(CPUIFocusRingView *)self focusPath];
  [v3 removeAllPoints];

  [(CPUIFocusRingView *)self setFocusPath:0];

  [(CPUIFocusRingView *)self setNeedsDisplay];
}

- (CPUIFocusRingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CPUIFocusRingView;
  v3 = [(CPUIFocusRingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(CPUIFocusRingView *)v3 setBackgroundColor:v4];

    v3->_cornerRadius = 11.0;
    v5 = [MEMORY[0x277D75348] _carSystemFocusColor];
    ringColor = v3->_ringColor;
    v3->_ringColor = v5;

    v3->_ringWidth = 2.0;
    v3->_ringGap = 2.0;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUIFocusRingView;
  [(CPUIFocusRingView *)&v4 traitCollectionDidChange:a3];
  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingWidth:(double)a3
{
  if (self->_ringWidth != a3)
  {
    self->_ringWidth = a3;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingGap:(double)a3
{
  if (self->_ringGap != a3)
  {
    self->_ringGap = a3;
    [(CPUIFocusRingView *)self _updateFocusRect];
  }
}

- (void)setRingColor:(id)a3
{
  objc_storeStrong(&self->_ringColor, a3);

  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CPUIFocusRingView;
  [(CPUIFocusRingView *)&v3 layoutSubviews];
  [(CPUIFocusRingView *)self _updateFocusRect];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v12 = [(CPUIFocusRingView *)self focusPath];

  if (!v12)
  {
    v13 = MEMORY[0x277D75208];
    [(CPUIFocusRingView *)self cornerRadius];
    v15 = [v13 _bezierPathWithPillRect:v8 cornerRadius:{v9, v10, v11, v14}];
    [v15 setLineWidth:self->_ringWidth];
    [(CPUIFocusRingView *)self setFocusPath:v15];
  }

  v16 = [(CPUIFocusRingView *)self ringColor];
  [v16 setStroke];

  v17 = [(CPUIFocusRingView *)self focusPath];
  [v17 stroke];
}

@end