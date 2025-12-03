@interface HUShapeLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (HUShapeLayerView)initWithPathLayoutBlock:(id)block;
- (UIColor)fillColor;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setFillColor:(id)color;
- (void)setFillColorMatchesTintColor:(BOOL)color;
- (void)tintColorDidChange;
@end

@implementation HUShapeLayerView

- (HUShapeLayerView)initWithPathLayoutBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = HUShapeLayerView;
  v5 = [(HUShapeLayerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUShapeLayerView *)v5 setPathLayoutBlock:blockCopy];
  }

  return v6;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = HUShapeLayerView;
  [(HUShapeLayerView *)&v7 layoutSubviews];
  pathLayoutBlock = [(HUShapeLayerView *)self pathLayoutBlock];
  [(HUShapeLayerView *)self bounds];
  v4 = pathLayoutBlock[2](pathLayoutBlock);
  cGPath = [v4 CGPath];
  layer = [(HUShapeLayerView *)self layer];
  [layer setPath:cGPath];
}

- (UIColor)fillColor
{
  v2 = MEMORY[0x277D75348];
  layer = [(HUShapeLayerView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "fillColor")}];

  return v4;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  [(HUShapeLayerView *)self setFillColorMatchesTintColor:0];
  cGColor = [colorCopy CGColor];

  layer = [(HUShapeLayerView *)self layer];
  [layer setFillColor:cGColor];
}

- (void)setFillColorMatchesTintColor:(BOOL)color
{
  if (self->_fillColorMatchesTintColor != color)
  {
    self->_fillColorMatchesTintColor = color;
    if (color)
    {
      tintColor = [(HUShapeLayerView *)self tintColor];
      v4 = tintColor;
      cGColor = [tintColor CGColor];
      layer = [(HUShapeLayerView *)self layer];
      [layer setFillColor:cGColor];
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
    tintColor = [(HUShapeLayerView *)self tintColor];
    cGColor = [tintColor CGColor];
    layer = [(HUShapeLayerView *)self layer];
    [layer setFillColor:cGColor];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUShapeLayerView;
    v5 = [(HUShapeLayerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end