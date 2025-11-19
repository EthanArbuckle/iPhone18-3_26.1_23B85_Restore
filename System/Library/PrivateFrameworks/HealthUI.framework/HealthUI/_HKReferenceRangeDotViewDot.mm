@interface _HKReferenceRangeDotViewDot
- (_HKReferenceRangeDotViewDot)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setDotColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _HKReferenceRangeDotViewDot

- (_HKReferenceRangeDotViewDot)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _HKReferenceRangeDotViewDot;
  v3 = [(_HKReferenceRangeDotViewDot *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(_HKReferenceRangeDotViewDot *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setDotColor:(id)a3
{
  v5 = a3;
  if (self->_dotColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dotColor, a3);
    [(_HKReferenceRangeDotViewDot *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _HKReferenceRangeDotViewDot;
  [(_HKReferenceRangeDotViewDot *)&v4 traitCollectionDidChange:a3];
  [(_HKReferenceRangeDotViewDot *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _HKReferenceRangeDotViewDot;
  [(_HKReferenceRangeDotViewDot *)&v7 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  dotColor = self->_dotColor;
  v6 = dotColor;
  if (!dotColor)
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
  }

  CGContextSetFillColorWithColor(CurrentContext, [v6 CGColor]);
  if (!dotColor)
  {
  }

  [(_HKReferenceRangeDotViewDot *)self bounds];
  v9 = CGRectInset(v8, 1.0, 1.0);
  CGContextFillEllipseInRect(CurrentContext, v9);
  CGContextRestoreGState(CurrentContext);
}

@end