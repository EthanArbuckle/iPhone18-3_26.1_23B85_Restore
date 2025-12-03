@interface _HKReferenceRangeDotViewDot
- (_HKReferenceRangeDotViewDot)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setDotColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _HKReferenceRangeDotViewDot

- (_HKReferenceRangeDotViewDot)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _HKReferenceRangeDotViewDot;
  v3 = [(_HKReferenceRangeDotViewDot *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_HKReferenceRangeDotViewDot *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)setDotColor:(id)color
{
  colorCopy = color;
  if (self->_dotColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_dotColor, color);
    [(_HKReferenceRangeDotViewDot *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _HKReferenceRangeDotViewDot;
  [(_HKReferenceRangeDotViewDot *)&v4 traitCollectionDidChange:change];
  [(_HKReferenceRangeDotViewDot *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v7.receiver = self;
  v7.super_class = _HKReferenceRangeDotViewDot;
  [(_HKReferenceRangeDotViewDot *)&v7 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  dotColor = self->_dotColor;
  blackColor = dotColor;
  if (!dotColor)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  CGContextSetFillColorWithColor(CurrentContext, [blackColor CGColor]);
  if (!dotColor)
  {
  }

  [(_HKReferenceRangeDotViewDot *)self bounds];
  v9 = CGRectInset(v8, 1.0, 1.0);
  CGContextFillEllipseInRect(CurrentContext, v9);
  CGContextRestoreGState(CurrentContext);
}

@end