@interface _HKLegendDot
- (CGSize)intrinsicContentSize;
- (_HKLegendDot)init;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setDotColor:(id)color;
- (void)setInnerDotColor:(id)color;
@end

@implementation _HKLegendDot

- (_HKLegendDot)init
{
  v20.receiver = self;
  v20.super_class = _HKLegendDot;
  v2 = [(_HKLegendDot *)&v20 initWithFrame:0.0, 0.0, 8.0, 8.0];
  if (v2)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];

    layer = [(_HKLegendDot *)v2 layer];
    [layer setBackgroundColor:cGColor];

    layer2 = [(_HKLegendDot *)v2 layer];
    [layer2 setMasksToBounds:1];

    layer3 = [(_HKLegendDot *)v2 layer];
    [layer3 setCornerRadius:4.0];

    LODWORD(v8) = 1148846080;
    [(_HKLegendDot *)v2 setContentHuggingPriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(_HKLegendDot *)v2 setContentHuggingPriority:0 forAxis:v9];
    [(_HKLegendDot *)v2 setInnerDotColor:0];
    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(_HKLegendDot *)v2 setInnerDotLayer:v10];

    innerDotLayer = [(_HKLegendDot *)v2 innerDotLayer];
    [innerDotLayer setBackgroundColor:cGColor];

    innerDotLayer2 = [(_HKLegendDot *)v2 innerDotLayer];
    [innerDotLayer2 setMasksToBounds:1];

    innerDotLayer3 = [(_HKLegendDot *)v2 innerDotLayer];
    [innerDotLayer3 setCornerRadius:2.0];

    innerDotLayer4 = [(_HKLegendDot *)v2 innerDotLayer];
    [innerDotLayer4 setBounds:{0.0, 0.0, 4.0, 4.0}];

    layer4 = [(_HKLegendDot *)v2 layer];
    innerDotLayer5 = [(_HKLegendDot *)v2 innerDotLayer];
    [layer4 addSublayer:innerDotLayer5];

    layer5 = [(_HKLegendDot *)v2 layer];
    [layer5 setDelegate:v2];

    innerDotLayer6 = [(_HKLegendDot *)v2 innerDotLayer];
    [innerDotLayer6 setHidden:1];
  }

  return v2;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layer = [(_HKLegendDot *)self layer];
  [layer bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  innerDotLayer = [(_HKLegendDot *)self innerDotLayer];
  [innerDotLayer setPosition:{v6 + v10 * 0.5, v8 + v10 * 0.5}];
}

- (void)setDotColor:(id)color
{
  objc_storeStrong(&self->_dotColor, color);
  colorCopy = color;
  cGColor = [(UIColor *)self->_dotColor CGColor];

  layer = [(_HKLegendDot *)self layer];
  [layer setBackgroundColor:cGColor];

  [(_HKLegendDot *)self setNeedsDisplay];
}

- (void)setInnerDotColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_innerDotColor, color);
  if (colorCopy)
  {
    cGColor = [colorCopy CGColor];
    innerDotLayer = [(_HKLegendDot *)self innerDotLayer];
    [innerDotLayer setBackgroundColor:cGColor];
  }

  innerDotLayer2 = [(_HKLegendDot *)self innerDotLayer];
  [innerDotLayer2 setHidden:colorCopy == 0];
}

- (CGSize)intrinsicContentSize
{
  v2 = 8.0;
  v3 = 8.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end