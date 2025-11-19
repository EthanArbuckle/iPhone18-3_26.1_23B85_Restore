@interface HUShapeLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (HUShapeLayerView)initWithPathLayoutBlock:(id)a3;
- (UIColor)fillColor;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setFillColor:(id)a3;
- (void)setFillColorMatchesTintColor:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation HUShapeLayerView

- (HUShapeLayerView)initWithPathLayoutBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUShapeLayerView;
  v5 = [(HUShapeLayerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUShapeLayerView *)v5 setPathLayoutBlock:v4];
  }

  return v6;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = HUShapeLayerView;
  [(HUShapeLayerView *)&v7 layoutSubviews];
  v3 = [(HUShapeLayerView *)self pathLayoutBlock];
  [(HUShapeLayerView *)self bounds];
  v4 = v3[2](v3);
  v5 = [v4 CGPath];
  v6 = [(HUShapeLayerView *)self layer];
  [v6 setPath:v5];
}

- (UIColor)fillColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(HUShapeLayerView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "fillColor")}];

  return v4;
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  [(HUShapeLayerView *)self setFillColorMatchesTintColor:0];
  v5 = [v4 CGColor];

  v6 = [(HUShapeLayerView *)self layer];
  [v6 setFillColor:v5];
}

- (void)setFillColorMatchesTintColor:(BOOL)a3
{
  if (self->_fillColorMatchesTintColor != a3)
  {
    self->_fillColorMatchesTintColor = a3;
    if (a3)
    {
      v7 = [(HUShapeLayerView *)self tintColor];
      v4 = v7;
      v5 = [v7 CGColor];
      v6 = [(HUShapeLayerView *)self layer];
      [v6 setFillColor:v5];
    }
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = HUShapeLayerView;
  [(HUShapeLayerView *)&v3 didMoveToSuperview];
  [(HUShapeLayerView *)self tintColorDidChange];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = HUShapeLayerView;
  [(HUShapeLayerView *)&v6 tintColorDidChange];
  if ([(HUShapeLayerView *)self fillColorMatchesTintColor])
  {
    v3 = [(HUShapeLayerView *)self tintColor];
    v4 = [v3 CGColor];
    v5 = [(HUShapeLayerView *)self layer];
    [v5 setFillColor:v4];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUShapeLayerView;
    v5 = [(HUShapeLayerView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end