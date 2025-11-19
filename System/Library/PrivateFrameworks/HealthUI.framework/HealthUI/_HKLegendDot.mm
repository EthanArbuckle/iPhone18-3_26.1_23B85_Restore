@interface _HKLegendDot
- (CGSize)intrinsicContentSize;
- (_HKLegendDot)init;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)setDotColor:(id)a3;
- (void)setInnerDotColor:(id)a3;
@end

@implementation _HKLegendDot

- (_HKLegendDot)init
{
  v20.receiver = self;
  v20.super_class = _HKLegendDot;
  v2 = [(_HKLegendDot *)&v20 initWithFrame:0.0, 0.0, 8.0, 8.0];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] blackColor];
    v4 = [v3 CGColor];

    v5 = [(_HKLegendDot *)v2 layer];
    [v5 setBackgroundColor:v4];

    v6 = [(_HKLegendDot *)v2 layer];
    [v6 setMasksToBounds:1];

    v7 = [(_HKLegendDot *)v2 layer];
    [v7 setCornerRadius:4.0];

    LODWORD(v8) = 1148846080;
    [(_HKLegendDot *)v2 setContentHuggingPriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(_HKLegendDot *)v2 setContentHuggingPriority:0 forAxis:v9];
    [(_HKLegendDot *)v2 setInnerDotColor:0];
    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(_HKLegendDot *)v2 setInnerDotLayer:v10];

    v11 = [(_HKLegendDot *)v2 innerDotLayer];
    [v11 setBackgroundColor:v4];

    v12 = [(_HKLegendDot *)v2 innerDotLayer];
    [v12 setMasksToBounds:1];

    v13 = [(_HKLegendDot *)v2 innerDotLayer];
    [v13 setCornerRadius:2.0];

    v14 = [(_HKLegendDot *)v2 innerDotLayer];
    [v14 setBounds:{0.0, 0.0, 4.0, 4.0}];

    v15 = [(_HKLegendDot *)v2 layer];
    v16 = [(_HKLegendDot *)v2 innerDotLayer];
    [v15 addSublayer:v16];

    v17 = [(_HKLegendDot *)v2 layer];
    [v17 setDelegate:v2];

    v18 = [(_HKLegendDot *)v2 innerDotLayer];
    [v18 setHidden:1];
  }

  return v2;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = [(_HKLegendDot *)self layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(_HKLegendDot *)self innerDotLayer];
  [v11 setPosition:{v6 + v10 * 0.5, v8 + v10 * 0.5}];
}

- (void)setDotColor:(id)a3
{
  objc_storeStrong(&self->_dotColor, a3);
  v5 = a3;
  v6 = [(UIColor *)self->_dotColor CGColor];

  v7 = [(_HKLegendDot *)self layer];
  [v7 setBackgroundColor:v6];

  [(_HKLegendDot *)self setNeedsDisplay];
}

- (void)setInnerDotColor:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_innerDotColor, a3);
  if (v8)
  {
    v5 = [v8 CGColor];
    v6 = [(_HKLegendDot *)self innerDotLayer];
    [v6 setBackgroundColor:v5];
  }

  v7 = [(_HKLegendDot *)self innerDotLayer];
  [v7 setHidden:v8 == 0];
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